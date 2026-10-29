/-
Actual compact Gaussian logarithmic windows and their Fourier densities.
Adapted from OpenAI math, source project author OpenAI, Apache-2.0, commit
1581d4cbdd69a0faf34b2089614fe2a814316a6a:
lean/OAI/NumberTheory/DirichletL/Detector/GaussianLogWindow.lean,
SHA256 e508f509619ab460fd408a82752c3d2694af63fcc8e6a5ec01d9b31910945d02;
GaussianCoupled.lean density definition/positive-profile identity only,
SHA256 21a6117120a386823e2f596b2b5e2e52e7cf4ffebddffac10de8ed320ba9cb5e.
Mathlib Analysis/Calculus/IteratedDeriv/Lemmas.lean:
Copyright (c) 2023 Chris Birkbeck. All rights reserved.
Authors: Chris Birkbeck, Ruben Van de Velde.
Mathlib Analysis/Distribution/SchwartzSpace/Basic.lean:
Copyright (c) 2022 Moritz Doll. All rights reserved. Author: Moritz Doll.
Fourier, Cauchy, Gaussian and imported individual author notices remain retained.
Released under Apache-2.0 as described in LICENSE.
Mathematical direction: grwtsk contributors; formal implementation: OpenAI Codex.
No coupled separation, cutoff, Hecke/calibration or physical-row theorem is inferred.
-/
import GRWTSK.Analysis.MellinTransform.GaussianLogFlow
import GRWTSK.Analysis.Fourier.SchwartzMoments
import Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas

namespace GRWTSK.Analysis.MellinTransform.GaussianLogWindow
noncomputable section
open scoped Classical ContDiff Topology SchwartzMap FourierTransform
open Filter Set MeasureTheory
open GRWTSK.Analysis.MellinTransform.GaussianLogFlow
open GRWTSK.Analysis.MellinTransform.NormalizedGaussian
open GRWTSK.Analysis.Fourier.SchwartzMoments

lemma gaussianFlow_real_smooth (R : ℝ) : ContDiff ℝ ∞ (fun s : ℝ=>gaussianFlow R (s:ℂ)) := by
  rw [contDiff_iff_contDiffAt]
  intro s
  have hf : ContDiffAt ℂ ∞ (gaussianFlow R) (s:ℂ) := (gaussianFlow_analytic R _).contDiffAt
  exact (hf.restrict_scalars ℝ).comp s Complex.ofRealCLM.contDiff.contDiffAt

noncomputable def gaussianLogWindow (V : SchwartzMap ℝ ℂ) (hV : HasCompactSupport (V:ℝ→ℂ)) (R : ℝ) : SchwartzMap ℝ ℂ :=
  (hV.mul_right (f':=fun s : ℝ=>gaussianFlow R (s:ℂ))).toSchwartzMap
    (V.smooth'.mul (gaussianFlow_real_smooth R))
@[simp] lemma gaussianLogWindow_apply (V : SchwartzMap ℝ ℂ) (hV : HasCompactSupport (V:ℝ→ℂ))
    (R s : ℝ) : gaussianLogWindow V hV R s=V s*gaussianFlow R (s:ℂ) := rfl

lemma gaussianLogWindow_derivative_outside (V : SchwartzMap ℝ ℂ) (hV : HasCompactSupport (V:ℝ→ℂ))
    (L : ℝ) (hbox : ∀s,V s≠0→|s|≤L) (R y : ℝ) (hy : L < |y|) (n : ℕ) :
    iteratedDeriv n (gaussianLogWindow V hV R) y=0 := by
  have he : (gaussianLogWindow V hV R:ℝ→ℂ)=ᶠ[𝓝 y](fun _=>0) := by
    have hu : {x : ℝ | L < |x|}∈𝓝 y := (isOpen_lt continuous_const continuous_abs).mem_nhds hy
    filter_upwards [hu] with x hx
    have hv : V x=0 := by by_contra h; exact (not_lt_of_ge (hbox x h)) hx
    simp only [gaussianLogWindow_apply,hv,zero_mul]
  rw [he.iteratedDeriv_eq n]
  simp

lemma gaussianLogWindow_derivative_bound (V : SchwartzMap ℝ ℂ) (hV : HasCompactSupport (V:ℝ→ℂ))
    (L : ℝ) (hL : 0≤L) (a : ℝ) (n : ℕ) :
    ∃C : ℝ,0<C ∧ ∀R : ℝ,0<R→∀y : ℝ,|y|≤L→
      ‖iteratedDeriv n (gaussianLogWindow V hV R) y‖≤C*R^(-a) := by
  choose B hB hbound using fun i : ℕ=>gaussianFlow_derivative_bound a L hL i
  let A (i : ℕ) := SchwartzMap.seminorm ℝ 0 i V
  let C := ∑i∈Finset.range (n+1),(n.choose i:ℝ)*A i*B (n-i)
  have hA (i : ℕ) : 0≤A i := apply_nonneg _ _
  have hC : 0≤C := Finset.sum_nonneg (fun i _=>mul_nonneg (mul_nonneg (Nat.cast_nonneg _) (hA i)) (hB _).le)
  refine ⟨C+1,by positivity,?_⟩
  intro R hR y hy
  change ‖iteratedDeriv n (fun s : ℝ=>V s*gaussianFlow R (s:ℂ)) y‖≤_
  rw [iteratedDeriv_fun_mul (f:=(V:ℝ→ℂ)) (g:=fun s : ℝ=>gaussianFlow R (s:ℂ))
    (V.smooth'.contDiffAt.of_le (by exact_mod_cast (le_top : (n : ℕ∞) ≤ ⊤)))
    ((gaussianFlow_real_smooth R).contDiffAt.of_le (by exact_mod_cast (le_top : (n : ℕ∞) ≤ ⊤)))]
  calc
    _ ≤ ∑i∈Finset.range (n+1),‖(n.choose i:ℂ)*iteratedDeriv i V y*
        iteratedDeriv (n-i) (fun s : ℝ=>gaussianFlow R (s:ℂ)) y‖ := norm_sum_le _ _
    _ ≤ ∑i∈Finset.range (n+1),((n.choose i:ℝ)*A i)*(B (n-i)*R^(-a)) := by
      apply Finset.sum_le_sum
      intro i hi
      rw [norm_mul,norm_mul,Complex.norm_natCast]
      have hv : ‖iteratedDeriv i V y‖≤A i := by
        simpa only [pow_zero,one_mul] using SchwartzMap.le_seminorm' ℝ 0 i V y
      exact mul_le_mul (mul_le_mul_of_nonneg_left hv (Nat.cast_nonneg _))
        (hbound _ R hR y hy) (norm_nonneg _) (mul_nonneg (Nat.cast_nonneg _) (hA i))
    _ = C*R^(-a) := by simp only [C,Finset.sum_mul]; apply Finset.sum_congr rfl; intros; ring
    _ ≤ (C+1)*R^(-a) := by nlinarith [Real.rpow_pos_of_pos hR (-a)]

theorem gaussianLogWindow_seminorm (V : SchwartzMap ℝ ℂ) (hV : HasCompactSupport (V:ℝ→ℂ))
    (L : ℝ) (hL : 0≤L) (hbox : ∀s,V s≠0→|s|≤L) (a : ℝ) (k n : ℕ) :
    ∃C : ℝ,0<C ∧ ∀R : ℝ,0<R→
      SchwartzMap.seminorm ℝ k n (gaussianLogWindow V hV R)≤C*R^(-a) := by
  obtain ⟨B,hB,hbound⟩ := gaussianLogWindow_derivative_bound V hV L hL a n
  refine ⟨(1+L^k)*B,by positivity,?_⟩
  intro R hR
  apply SchwartzMap.seminorm_le_bound' ℝ k n _ (by positivity)
  intro y
  by_cases hy : |y|≤L
  · calc
      _ ≤ L^k*(B*R^(-a)) := mul_le_mul (pow_le_pow_left₀ (abs_nonneg _) hy k)
        (hbound R hR y hy) (norm_nonneg _) (pow_nonneg hL _)
      _ ≤ _ := by nlinarith [mul_pos hB (Real.rpow_pos_of_pos hR (-a))]
  · rw [gaussianLogWindow_derivative_outside V hV L hbox R y (lt_of_not_ge hy) n,norm_zero,mul_zero]
    positivity

theorem gaussianLogWindow_fourier_moment (V : SchwartzMap ℝ ℂ) (hV : HasCompactSupport (V:ℝ→ℂ))
    (L : ℝ) (hL : 0≤L) (hbox : ∀s,V s≠0→|s|≤L) (a : ℝ) (J : ℕ) :
    ∃C : ℝ,0<C ∧ ∀R : ℝ,0<R→
      (∫t : ℝ,(1+‖t‖)^J*‖(𝓕 (gaussianLogWindow V hV R)) t‖)≤C*R^(-a) := by
  let p := (MeasureTheory.volume : MeasureTheory.Measure ℝ).integrablePower
  let K := J+p
  choose B hB hb using fun q : ℕ×ℕ=>gaussianLogWindow_seminorm V hV L hL hbox a q.1 q.2
  let C := (∑i∈Finset.range (K+1),(B (0,i)+B (p,i)))+1
  have hC : 0<C := by
    have hh : 0≤∑i∈Finset.range (K+1),(B (0,i)+B (p,i)) :=
      Finset.sum_nonneg (fun i _=>add_nonneg (hB _).le (hB _).le)
    dsimp only [C]; linarith
  let D := (2:ℝ)^J*(coefficientMomentBound 0 C+coefficientMomentBound J C)
  have hD : 0≤D := mul_nonneg (by positivity)
    (add_nonneg (coefficientMomentBound_nonneg _ _ hC.le)
      (coefficientMomentBound_nonneg _ _ hC.le))
  refine ⟨D+1,by positivity,?_⟩
  intro R hR
  have hcancel : R^a*R^(-a)=1 := by rw [←Real.rpow_add hR]; simp
  have hsource (i : ℕ) (hi : i≤J+(MeasureTheory.volume : MeasureTheory.Measure ℝ).integrablePower) :
      R^a*(SchwartzMap.seminorm ℝ 0 i (gaussianLogWindow V hV R)+
        SchwartzMap.seminorm ℝ p i (gaussianLogWindow V hV R))≤C := by
    have hbi : B (0,i)+B (p,i)≤C := by
      have hh := Finset.single_le_sum (s:=Finset.range (K+1)) (a:=i)
        (f:=fun i=>B (0,i)+B (p,i))
        (fun i _=>add_nonneg (hB _).le (hB _).le) (Finset.mem_range.mpr (by dsimp only [K,p]; omega))
      dsimp only [C]; linarith
    calc
      _ ≤ R^a*(B (0,i)*R^(-a)+B (p,i)*R^(-a)) :=
        mul_le_mul_of_nonneg_left (add_le_add (hb (0,i) R hR) (hb (p,i) R hR)) (by positivity)
      _ = B (0,i)+B (p,i) := by rw [←add_mul]; calc
        _=(B (0,i)+B (p,i))*(R^a*R^(-a)) := by ring
        _=_ := by rw [hcancel,mul_one]
      _ ≤ C := hbi
  have hh := uniform_fourier_one_plus_moment (gaussianLogWindow V hV R) J
    (R^a) C (by positivity) hC.le hsource
  change R^a*(∫t : ℝ,(1+‖t‖)^J*‖(𝓕 (gaussianLogWindow V hV R)) t‖)≤D at hh
  have hp := mul_le_mul_of_nonneg_left hh (Real.rpow_pos_of_pos hR (-a)).le
  have hc' : R^(-a)*R^a=1 := by rw [mul_comm,hcancel]
  rw [←mul_assoc,hc',one_mul] at hp
  exact hp.trans (by nlinarith [Real.rpow_pos_of_pos hR (-a)])


/-- The actual window is compact for every real scale. -/
lemma gaussianLogWindow_compact (V : SchwartzMap ℝ ℂ) (hV : HasCompactSupport (V:ℝ→ℂ)) (R : ℝ) :
    HasCompactSupport (gaussianLogWindow V hV R:ℝ→ℂ) := by
  exact hV.mul_right

/-- Compactness produces the support box used by the seminorm and Fourier moment proofs. -/
lemma gaussianLogWindow_support_box (V : SchwartzMap ℝ ℂ) (hV : HasCompactSupport (V:ℝ→ℂ)) :
    ∃ L : ℝ,0<L ∧ ∀s : ℝ,V s≠0→|s|≤L := by
  obtain ⟨L,hL,hbox⟩ := hV.isBounded.exists_pos_norm_le
  refine ⟨L,hL,?_⟩
  intro s hs
  simpa only [Real.norm_eq_abs] using hbox s (subset_tsupport V hs)

lemma gaussianLogWindow_apply_positive (V : SchwartzMap ℝ ℂ) (hV : HasCompactSupport (V:ℝ→ℂ))
    (R : ℝ) (hR : 0<R) (s : ℝ) :
    gaussianLogWindow V hV R s=V s*gaussianMellinProfile (R*Real.exp s) := by
  rw [gaussianLogWindow_apply,gaussianFlow_real R hR]

/-- The positive-profile function is actually integrable. -/
lemma gaussianLogWindow_positive_integrable (V : SchwartzMap ℝ ℂ)
    (hV : HasCompactSupport (V:ℝ→ℂ)) (R : ℝ) (hR : 0<R) :
    Integrable (fun s : ℝ=>V s*gaussianMellinProfile (R*Real.exp s)) := by
  have h := (gaussianLogWindow V hV R).integrable (μ:=volume)
  have he : (gaussianLogWindow V hV R:ℝ→ℂ)=(fun s : ℝ=>V s*gaussianMellinProfile (R*Real.exp s)) := by
    funext s
    exact gaussianLogWindow_apply_positive V hV R hR s
  rw [he] at h
  exact h

/-- The exact actual density; Fourier uses Mathlib's forward exp(-2*pi*i*s*t) convention. -/
noncomputable def gaussianJointDensity (V : SchwartzMap ℝ ℂ)
    (hV : HasCompactSupport (V:ℝ→ℂ)) (R : ℝ) : SchwartzMap ℝ ℂ :=
  𝓕 (gaussianLogWindow V hV R)

lemma gaussianJointDensity_eq_fourier_positive (V : SchwartzMap ℝ ℂ)
    (hV : HasCompactSupport (V:ℝ→ℂ)) (R : ℝ) (hR : 0<R) :
    (gaussianJointDensity V hV R:ℝ→ℂ)=𝓕 (fun s : ℝ=>V s*gaussianMellinProfile (R*Real.exp s)) := by
  have he : (gaussianLogWindow V hV R:ℝ→ℂ)=(fun s : ℝ=>V s*gaussianMellinProfile (R*Real.exp s)) := by
    funext s
    exact gaussianLogWindow_apply_positive V hV R hR s
  change 𝓕 (gaussianLogWindow V hV R:ℝ→ℂ)=_
  rw [he]

lemma gaussianJointDensity_integral (V : SchwartzMap ℝ ℂ)
    (hV : HasCompactSupport (V:ℝ→ℂ)) (R : ℝ) (hR : 0<R) (t : ℝ) :
    gaussianJointDensity V hV R t=
      ∫s : ℝ,Complex.exp (((-2*Real.pi*inner ℝ s t:ℝ):ℂ)*Complex.I)*
        (V s*gaussianMellinProfile (R*Real.exp s)) := by
  rw [gaussianJointDensity_eq_fourier_positive V hV R hR,Real.fourier_eq']
  simp only [smul_eq_mul]

/-- The exact positive-profile Fourier integrand is integrable, not just a totalized integral. -/
lemma gaussianJointDensity_integrand_integrable (V : SchwartzMap ℝ ℂ)
    (hV : HasCompactSupport (V:ℝ→ℂ)) (R : ℝ) (hR : 0<R) (t : ℝ) :
    Integrable (fun s : ℝ=>Complex.exp (((-2*Real.pi*inner ℝ s t:ℝ):ℂ)*Complex.I)*
      (V s*gaussianMellinProfile (R*Real.exp s))) := by
  have h := (Real.fourierIntegral_convergent_iff t).mpr
    (gaussianLogWindow_positive_integrable V hV R hR)
  simpa only [Circle.smul_def,Real.fourierChar_apply,mul_neg,neg_mul,smul_eq_mul] using h

/-- All actual Fourier density moments are integrable, even before imposing a positive-scale bound. -/
lemma gaussianJointDensity_moment_integrable (V : SchwartzMap ℝ ℂ)
    (hV : HasCompactSupport (V:ℝ→ℂ)) (R : ℝ) (J : ℕ) :
    Integrable (fun t : ℝ=>(1+‖t‖)^J*‖gaussianJointDensity V hV R t‖) :=
  fourier_one_plus_moment_integrable (gaussianLogWindow V hV R) J

/-- A support box is produced from compactness, and one moment constant precedes every R>0. -/
theorem gaussianJointDensity_moment (V : SchwartzMap ℝ ℂ)
    (hV : HasCompactSupport (V:ℝ→ℂ)) (a : ℝ) (J : ℕ) :
    ∃C : ℝ,0<C ∧ ∀R : ℝ,0<R→
      Integrable (fun t : ℝ=>(1+‖t‖)^J*‖gaussianJointDensity V hV R t‖) ∧
      (∫t : ℝ,(1+‖t‖)^J*‖gaussianJointDensity V hV R t‖)≤C*R^(-a) := by
  obtain ⟨L,hL,hbox⟩ := gaussianLogWindow_support_box V hV
  obtain ⟨C,hC,hbound⟩ := gaussianLogWindow_fourier_moment V hV L hL.le hbox a J
  refine ⟨C,hC,?_⟩
  intro R hR
  exact ⟨gaussianJointDensity_moment_integrable V hV R J,hbound R hR⟩

end
end GRWTSK.Analysis.MellinTransform.GaussianLogWindow
