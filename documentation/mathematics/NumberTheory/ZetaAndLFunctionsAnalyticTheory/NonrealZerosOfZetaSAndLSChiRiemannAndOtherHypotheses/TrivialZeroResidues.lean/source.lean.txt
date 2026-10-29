/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.LogarithmicPrincipalPart
import GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions
import Mathlib.NumberTheory.LSeries.Nonvanishing
import Mathlib.Analysis.SpecialFunctions.Gamma.Deriv
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv
import Mathlib.Tactic.NormNum
import Mathlib.Tactic

set_option autoImplicit false

/-!
# The actual negative-even zeta zeros are simple

The functional equation is used on the open left half-plane, not just at a
single point. Its non-sine factor is differentiable there and nonzero at each
negative even integer. Thus the actual derivative is nonzero, and the negative
logarithmic derivative has scaled-limit coefficient -1. No simple-zero premise
or arbitrary multiplicity is supplied. This is a local result, not a contour
identity or a nontrivial-zero counting theorem. SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED; all proof scripts require exact-head replay.
-/

namespace GRWTSK.RiemannHypothesis.TrivialZeroResidues

open Filter Set
open scoped Topology
open GRWTSK.Analysis.Complex.LogarithmicPrincipalPart

noncomputable section

/-- Start at -2, not at zero. These points are outside the canonical nontrivial divisor. -/
def trivialPoint (k : ℕ) : ℂ := -2 * ((k : ℂ) + 1)

theorem trivialPoint_re_neg (k : ℕ) : (trivialPoint k).re < 0 := by
  have hr : (trivialPoint k).re = -2 * ((k : ℝ) + 1) := by simp [trivialPoint]
  rw [hr]
  nlinarith [Nat.cast_nonneg (α := ℝ) k]

@[simp] theorem trivialPoint_im (k : ℕ) : (trivialPoint k).im = 0 := by
  simp [trivialPoint]

theorem trivialPoint_injective : Function.Injective trivialPoint := by
  intro j k he
  have hr := congrArg Complex.re he
  simp [trivialPoint] at hr
  exact hr

theorem zeta_trivialPoint (k : ℕ) : riemannZeta (trivialPoint k) = 0 :=
  riemannZeta_neg_two_mul_nat_add_one k

theorem trivialPoint_not_nontrivial (k : ℕ) : ¬ NontrivialZetaZero (trivialPoint k) := by
  intro hz
  exact hz.2.1 ⟨k, rfl⟩

/-- The independent functional-equation factor, with the power convention explicit. -/
def reflectedUnit (s : ℂ) : ℂ :=
  2 * Complex.exp (Complex.log (2 * (Real.pi : ℂ)) * (s - 1)) *
    Complex.Gamma (1 - s) * riemannZeta (1 - s)

/-- A neighborhood identity, not an equality only at a zero. -/
theorem zeta_eq_reflectedUnit_mul_sin {s : ℂ} (hs : s.re < 0) :
    riemannZeta s = reflectedUnit s * Complex.sin ((Real.pi : ℂ) * s / 2) := by
  have hneg : ∀ k : ℕ, 1 - s ≠ -(k : ℂ) := by
    intro k he
    have hr := congrArg Complex.re he
    have hk : (0 : ℝ) ≤ k := Nat.cast_nonneg k
    simp only [Complex.sub_re, Complex.one_re, Complex.neg_re, Complex.natCast_re] at hr
    linarith
  have hne : 1 - s ≠ (1 : ℂ) := by
    intro he
    have hr := congrArg Complex.re he
    simp only [Complex.sub_re, Complex.one_re] at hr
    linarith
  have hb : 2 * (Real.pi : ℂ) ≠ 0 :=
    mul_ne_zero (by norm_num) (Complex.ofReal_ne_zero.mpr Real.pi_ne_zero)
  have he := riemannZeta_one_sub hneg hne
  rw [sub_sub_cancel, Complex.cpow_def_of_ne_zero hb] at he
  have hcos : Complex.cos ((Real.pi : ℂ) * (1 - s) / 2) =
      Complex.sin ((Real.pi : ℂ) * s / 2) := by
    rw [show (Real.pi : ℂ) * (1 - s) / 2 =
      (Real.pi : ℂ) / 2 - (Real.pi : ℂ) * s / 2 by ring,
      Complex.cos_pi_div_two_sub]
  rw [hcos, show -(1 - s) = s - 1 by ring] at he
  simpa only [reflectedUnit, mul_assoc, mul_comm, mul_left_comm] using he

theorem reflectedUnit_differentiableAt {s : ℂ} (hs : s.re < 0) :
    DifferentiableAt ℂ reflectedUnit s := by
  have hneg : ∀ k : ℕ, 1 - s ≠ -(k : ℂ) := by
    intro k he
    have hr := congrArg Complex.re he
    have hk : (0 : ℝ) ≤ k := Nat.cast_nonneg k
    simp only [Complex.sub_re, Complex.one_re, Complex.neg_re, Complex.natCast_re] at hr
    linarith
  have hne : 1 - s ≠ (1 : ℂ) := by
    intro he
    have hr := congrArg Complex.re he
    simp only [Complex.sub_re, Complex.one_re] at hr
    linarith
  have hG : DifferentiableAt ℂ (fun u : ℂ => Complex.Gamma (1 - u)) s :=
    (Complex.differentiableAt_Gamma (1 - s) hneg).comp s (by fun_prop)
  have hZ : DifferentiableAt ℂ (fun u : ℂ => riemannZeta (1 - u)) s :=
    (differentiableAt_riemannZeta hne).comp s (by fun_prop)
  unfold reflectedUnit
  exact ((by fun_prop : DifferentiableAt ℂ
    (fun u : ℂ => 2 * Complex.exp (Complex.log (2 * (Real.pi : ℂ)) * (u - 1))) s).mul hG).mul hZ

/-- Gamma is evaluated at a positive integer; no claim about its totalized pole values is used. -/
theorem reflectedUnit_trivialPoint_ne_zero (k : ℕ) : reflectedUnit (trivialPoint k) ≠ 0 := by
  have harg : 1 - trivialPoint k = ((2 * (k + 1) : ℕ) : ℂ) + 1 := by
    simp only [trivialPoint, Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
    ring
  have hG : Complex.Gamma (1 - trivialPoint k) ≠ 0 := by
    rw [harg, Complex.Gamma_nat_eq_factorial]
    exact_mod_cast Nat.factorial_ne_zero (2 * (k + 1))
  have hZ : riemannZeta (1 - trivialPoint k) ≠ 0 :=
    riemannZeta_ne_zero_of_one_le_re (by
      have hn := trivialPoint_re_neg k
      simp only [Complex.sub_re, Complex.one_re]
      linarith)
  exact mul_ne_zero (mul_ne_zero (mul_ne_zero (by norm_num)
    (Complex.exp_ne_zero _)) hG) hZ

theorem sine_trivialPoint (k : ℕ) :
    Complex.sin ((Real.pi : ℂ) * trivialPoint k / 2) = 0 := by
  rw [show (Real.pi : ℂ) * trivialPoint k / 2 =
    -(((k + 1 : ℕ) : ℂ) * (Real.pi : ℂ)) by
      simp only [trivialPoint, Nat.cast_add, Nat.cast_one]; ring,
    Complex.sin_neg, Complex.sin_nat_mul_pi, neg_zero]

theorem cosine_trivialPoint_ne_zero (k : ℕ) :
    Complex.cos ((Real.pi : ℂ) * trivialPoint k / 2) ≠ 0 := by
  rcases Complex.sin_eq_zero_iff_cos_eq.mp (sine_trivialPoint k) with he | he
  · rw [he]; exact one_ne_zero
  · rw [he]; norm_num

/-- Differentiate the actual neighborhood identity before evaluating at the zero. -/
theorem deriv_zeta_trivialPoint (k : ℕ) :
    deriv riemannZeta (trivialPoint k) = reflectedUnit (trivialPoint k) *
      (Complex.cos ((Real.pi : ℂ) * trivialPoint k / 2) * ((Real.pi : ℂ) / 2)) := by
  have hnear : riemannZeta =ᶠ[𝓝 (trivialPoint k)]
      fun s => reflectedUnit s * Complex.sin ((Real.pi : ℂ) * s / 2) :=
    eventuallyEq_of_mem ((isOpen_lt Complex.continuous_re continuous_const).mem_nhds
      (trivialPoint_re_neg k)) (fun s hs => zeta_eq_reflectedUnit_mul_sin hs)
  have hsin : HasDerivAt (fun s : ℂ => Complex.sin ((Real.pi : ℂ) * s / 2))
      (Complex.cos ((Real.pi : ℂ) * trivialPoint k / 2) * ((Real.pi : ℂ) / 2))
      (trivialPoint k) := by
    simpa using (((hasDerivAt_id (trivialPoint k)).const_mul (Real.pi : ℂ)).div_const 2).csin
  rw [hnear.deriv_eq]
  have hd := ((reflectedUnit_differentiableAt
    (trivialPoint_re_neg k)).hasDerivAt.mul hsin).deriv
  simpa only [Pi.mul_def, sine_trivialPoint, mul_zero, zero_add] using hd

/-- Every actual negative-even zero is simple; simplicity is not a theorem argument. -/
theorem deriv_zeta_trivialPoint_ne_zero (k : ℕ) : deriv riemannZeta (trivialPoint k) ≠ 0 := by
  rw [deriv_zeta_trivialPoint]
  exact mul_ne_zero (reflectedUnit_trivialPoint_ne_zero k)
    (mul_ne_zero (cosine_trivialPoint_ne_zero k)
      (div_ne_zero (Complex.ofReal_ne_zero.mpr Real.pi_ne_zero) (by norm_num)))

theorem trivialPoint_scaled_limit (k : ℕ) :
    Tendsto (fun s => (s - trivialPoint k) * (-logDeriv riemannZeta s))
      (𝓝[≠] (trivialPoint k)) (𝓝 (-1)) := by
  have hne : trivialPoint k ≠ 1 := by
    intro he
    have hn := trivialPoint_re_neg k
    rw [he] at hn
    norm_num at hn
  have ha := analyticOn_riemannZeta (trivialPoint k) hne
  simpa only [mul_neg] using
    (ha.tendsto_mul_logDeriv_simple_zero (zeta_trivialPoint k)
      (deriv_zeta_trivialPoint_ne_zero k)).neg

/-- Continuous multipliers give the coefficient at the exact negative-even point. -/
theorem trivialPoint_weighted_limit (k : ℕ) (F : ℂ → ℂ)
    (hF : ContinuousAt F (trivialPoint k)) :
    Tendsto (fun s => (s - trivialPoint k) * (-logDeriv riemannZeta s * F s))
      (𝓝[≠] (trivialPoint k)) (𝓝 (-F (trivialPoint k))) := by
  simpa using tendsto_scaled_weighted_neg_logDeriv riemannZeta F (trivialPoint k) (-1)
    (trivialPoint_scaled_limit k) hF

end
end GRWTSK.RiemannHypothesis.TrivialZeroResidues
