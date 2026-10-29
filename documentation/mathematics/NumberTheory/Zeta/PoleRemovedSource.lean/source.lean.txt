/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Lean and Mathlib retain their original attribution and licenses.
Status: candidate proof source, NOT elaborated in the pinned environment.
-/
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.Analysis.SpecialFunctions.Gamma.Beta
import Mathlib.Analysis.SpecialFunctions.Gamma.Deriv
import Mathlib.Analysis.Analytic.Order
import Mathlib.Tactic

/-! # Removing the pole of zeta without assigning a totalized quotient value

N(s)=s(s-1) completedRiemannZeta₀(s)+1 is twice the standard entire xi function.
D(s)=2*pi^(-s/2)*Gamma(s/2+1) is nonzero on Re(s)>1/2. The function R=N/D is
holomorphic there, equals (s-1)*zeta(s) away from 1, and has R(1)=1.
The reflection step below uses N(1-s)=N(s), not a formula evaluated at a Gamma
pole. The excluded negative-even zeros are precisely accounted for.
-/
set_option autoImplicit false
noncomputable section
open Filter Set
open scoped Topology
namespace GRWTSK.NumberTheory.Zeta.PoleRemovedSource

def halfPlane : Set ℂ := {s : ℂ | (1/2 : ℝ) < s.re}

def numerator (s : ℂ) : ℂ :=
  s*(s-1)*completedRiemannZeta₀ s+1

def denominator (s : ℂ) : ℂ :=
  2*Complex.exp ((-s/2)*(Real.log Real.pi : ℂ))*Complex.Gamma (s/2+1)

def poleRemoved (s : ℂ) : ℂ := numerator s / denominator s

theorem halfPlane_open : IsOpen halfPlane :=
  isOpen_lt continuous_const Complex.continuous_re

theorem halfPlane_convex : Convex ℝ halfPlane := by
  intro x hx y hy a b ha hb hab
  change (1/2 : ℝ) < (a • x+b • y).re
  simp only [Complex.add_re, Complex.real_smul, Complex.mul_re,
    Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
  change (1/2 : ℝ) < x.re at hx
  change (1/2 : ℝ) < y.re at hy
  by_cases ha0 : a=0
  · have hb1 : b=1 := by linarith
    simpa [ha0, hb1] using hy
  · have hap : 0<a := lt_of_le_of_ne ha (Ne.symm ha0)
    have h1 := mul_pos hap (sub_pos.mpr hx)
    have h2 := mul_nonneg hb (sub_nonneg.mpr hy.le)
    nlinarith

theorem halfPlane_preconnected : IsPreconnected halfPlane :=
  halfPlane_convex.isPreconnected

theorem one_mem_halfPlane : (1 : ℂ) ∈ halfPlane := by norm_num [halfPlane]
theorem two_mem_halfPlane : (2 : ℂ) ∈ halfPlane := by norm_num [halfPlane]

theorem numerator_differentiable : Differentiable ℂ numerator := by
  intro s
  unfold numerator
  exact (((differentiableAt_id.mul (differentiableAt_id.sub_const 1)).mul
    (differentiable_completedZeta₀ s)).add_const 1)

theorem numerator_one_sub (s : ℂ) : numerator (1-s)=numerator s := by
  simp only [numerator, completedRiemannZeta₀_one_sub]
  ring

theorem numerator_one : numerator 1=1 := by simp [numerator]
theorem numerator_zero : numerator 0=1 := by simp [numerator]

/-- The positive real pi base fixes the principal complex power unambiguously. -/
theorem denominator_eq_classical (s : ℂ) :
    denominator s=2*(Real.pi : ℂ)^(-s/2)*Complex.Gamma (s/2+1) := by
  have hp : (Real.pi : ℂ) ≠ 0 := by exact_mod_cast Real.pi_ne_zero
  rw [Complex.cpow_def_of_ne_zero hp, ← Complex.ofReal_log Real.pi_pos.le]
  simp only [denominator]
  congr 2
  congr 1
  ring

/-- Gamma poles in this normalization are exactly the excluded negative evens. -/
theorem gammaArgument_avoids_poles {s : ℂ}
    (htriv : ¬∃ n : ℕ, s = -2*((n : ℂ)+1)) :
    ∀ n : ℕ, s/2+1 ≠ -(n : ℂ) := by
  intro n hn
  apply htriv
  refine ⟨n, ?_⟩
  linear_combination 2*hn

theorem halfPlane_gammaArgument {s : ℂ} (hs : s ∈ halfPlane) :
    ∀ n : ℕ, s/2+1 ≠ -(n : ℂ) := by
  intro n hn
  have hr := congrArg Complex.re hn
  have hnonneg : 0 ≤ (n : ℝ) := Nat.cast_nonneg n
  change (1/2 : ℝ)<s.re at hs
  norm_num at hr
  linarith

theorem denominator_ne_zero_of_nontrivial {s : ℂ}
    (htriv : ¬∃ n : ℕ, s = -2*((n : ℂ)+1)) : denominator s ≠ 0 := by
  unfold denominator
  exact mul_ne_zero (mul_ne_zero (by norm_num) (Complex.exp_ne_zero _))
    (Complex.Gamma_ne_zero (gammaArgument_avoids_poles htriv))

theorem denominator_ne_zero {s : ℂ} (hs : s ∈ halfPlane) : denominator s ≠ 0 := by
  unfold denominator
  exact mul_ne_zero (mul_ne_zero (by norm_num) (Complex.exp_ne_zero _))
    (Complex.Gamma_ne_zero (halfPlane_gammaArgument hs))

theorem denominator_differentiableAt {s : ℂ} (hs : s ∈ halfPlane) :
    DifferentiableAt ℂ denominator s := by
  have hlin : DifferentiableAt ℂ (fun z : ℂ => z/2+1) s := by fun_prop
  have hg := (Complex.differentiableAt_Gamma (s/2+1)
    (halfPlane_gammaArgument hs)).comp s hlin
  unfold denominator
  exact ((show DifferentiableAt ℂ
    (fun z : ℂ => 2*Complex.exp ((-z/2)*(Real.log Real.pi : ℂ))) s by
      fun_prop).mul hg)

theorem poleRemoved_differentiableOn : DifferentiableOn ℂ poleRemoved halfPlane := by
  intro s hs
  exact ((numerator_differentiable s).div
    (denominator_differentiableAt hs) (denominator_ne_zero hs)).differentiableWithinAt

theorem poleRemoved_analyticOn : AnalyticOnNhd ℂ poleRemoved halfPlane :=
  poleRemoved_differentiableOn.analyticOnNhd halfPlane_open

/-- This algebraic identity only uses s!=1; it does not cancel a totalized Gamma pole. -/
theorem poleRemoved_eq_mul {s : ℂ} (hs : s ≠ 1) :
    poleRemoved s=(s-1)*riemannZeta s := by
  have h1 : 1-s ≠ 0 := sub_ne_zero.mpr (Ne.symm hs)
  have halg : numerator s=(s-1)*(s*completedRiemannZeta₀ s-1-s/(1-s)) := by
    unfold numerator
    field_simp [h1]; ring
  rw [riemannZeta_eq_mul_completedRiemannZeta₀, ← denominator_eq_classical,
    ← mul_div_assoc, ← halg]
  rfl

/-- The pole coordinate is obtained by a punctured limit, not 0*zeta(1). -/
theorem poleRemoved_one : poleRemoved 1=1 := by
  have hcont := (poleRemoved_analyticOn 1 one_mem_halfPlane).continuousAt
  have he : poleRemoved =ᶠ[𝓝[≠] (1 : ℂ)]
      (fun s => (s-1)*riemannZeta s) := by
    filter_upwards [self_mem_nhdsWithin] with s hs
    exact poleRemoved_eq_mul hs
  have hlim : Tendsto poleRemoved (𝓝[≠] (1 : ℂ)) (𝓝 1) :=
    riemannZeta_residue_one.congr' he.symm
  exact tendsto_nhds_unique hcont.continuousWithinAt hlim

/-- The neighborhood identity retains the actual derivative of zeta. -/
theorem poleRemoved_deriv {s : ℂ} (hs : s ≠ 1) :
    deriv poleRemoved s=riemannZeta s+(s-1)*deriv riemannZeta s := by
  have he : poleRemoved =ᶠ[𝓝 s] (fun z => (z-1)*riemannZeta z) := by
    filter_upwards [isOpen_compl_singleton.mem_nhds hs] with z hz
    exact poleRemoved_eq_mul hz
  rw [he.deriv_eq]
  have hd := (((hasDerivAt_id s).sub_const 1).mul
    (differentiableAt_riemannZeta hs).hasDerivAt).deriv
  simpa only [one_mul, Pi.mul_def, id_eq] using hd

/-- A nontrivial zeta zero is a zero of the entire numerator.
Gamma nonvanishing is proved before reversing a quotient identity. -/
theorem numerator_zero_of_nontrivial_zeta_zero {s : ℂ}
    (hz : riemannZeta s=0) (hs : s ≠ 1)
    (htriv : ¬∃ n : ℕ, s = -2*((n : ℂ)+1)) : numerator s=0 := by
  have hp : poleRemoved s=0 := by rw [poleRemoved_eq_mul hs, hz, mul_zero]
  have hd := denominator_ne_zero_of_nontrivial htriv
  exact (div_eq_zero_iff.mp hp).resolve_right hd

/-- Reflection is performed on the entire numerator. -/
theorem reflected_poleRemoved_zero {s : ℂ} (hn : numerator s=0) :
    poleRemoved (1-s)=0 := by
  simp only [poleRemoved, numerator_one_sub, hn, zero_div]

end GRWTSK.NumberTheory.Zeta.PoleRemovedSource
