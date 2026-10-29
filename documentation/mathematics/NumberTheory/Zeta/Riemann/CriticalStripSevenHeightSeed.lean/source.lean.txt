/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSixHeightSeed
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSevenHeightBernstein

set_option autoImplicit false

/-!
# Height seven from a joint bound on the unchanged quartic source

The actual reference R4, multiplier A5, centered quartic tail, finite model, and
homotopy are ALL inherited unchanged. The improvement is the complete joint
squared-norm inequality on 1/2<=Re(s)<=1, |Im(s)|<=7. The exact positive
rectangle certificate retains the real-part denominator Re(s)+3 instead of
independently maximizing each factor. The source error is at most 31/32 of
|R4|; |R4|>=11/16 then yields |H|>=11/512.

The canonical zero mirror supplies left-side exclusion only. No reflected norm
identity, multiplicity, spectral positivity, or all-height limit is inferred.
All declarations are SOURCE SCRIPTS pending exact elaboration and axiom audit.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.QuarticPrimitive

open Complex Set
noncomputable section

/-- Shared factors on the source-error side; s+2 is retained for the later step. -/
def sevenJointNumerator (s : ℂ) : ℝ :=
  ‖s‖ * ‖s - 1‖ * ‖s + 1‖ * ‖s + 3‖

/-- The denominator includes Re(s)+3, not the unrelated norm |s+3|. -/
def sevenJointDenominator (s : ℂ) : ℝ :=
  (s.re + 3) * ‖s + 4‖ * ‖s + 5‖ * ‖9 - s‖

lemma sevenJointNumerator_nonneg (s : ℂ) : 0 ≤ sevenJointNumerator s := by
  unfold sevenJointNumerator
  positivity

lemma sevenJointDenominator_nonneg {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) :
    0 ≤ sevenJointDenominator s := by
  have hs3 : 0 ≤ s.re + 3 := by linarith
  unfold sevenJointDenominator
  positivity

lemma sevenJointNumerator_sq (s : ℂ) :
    sevenJointNumerator s ^ 2 = SevenHeightCertificate.numerator s.re (s.im ^ 2) := by
  simp only [sevenJointNumerator, mul_pow, Complex.sq_norm, Complex.normSq_apply,
    Complex.add_re, Complex.add_im, Complex.sub_re, Complex.sub_im,
    Complex.one_re, Complex.one_im, Complex.ofNat_re, Complex.ofNat_im,
    add_zero, sub_zero, SevenHeightCertificate.numerator]
  ring

lemma sevenJointDenominator_sq (s : ℂ) :
    sevenJointDenominator s ^ 2 = SevenHeightCertificate.denominator s.re (s.im ^ 2) := by
  simp only [sevenJointDenominator, mul_pow, Complex.sq_norm, Complex.normSq_apply,
    Complex.add_re, Complex.add_im, Complex.sub_re, Complex.sub_im,
    Complex.one_re, Complex.one_im, Complex.ofNat_re, Complex.ofNat_im,
    add_zero, sub_zero, zero_sub, SevenHeightCertificate.denominator]
  ring

/-- The degree-(8,4) real certificate controls the whole continuum of source points.
Taking square roots is justified by separate nonnegativity proofs. -/
theorem sevenHeight_joint_bound {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (7 : ℝ)) :
    sevenJointNumerator s ≤ (31 / 32 : ℝ) * sevenJointDenominator s := by
  have hy2 : s.im ^ 2 ≤ (49 : ℝ) := by
    have h := mul_le_mul hy hy (abs_nonneg s.im) (by norm_num : (0 : ℝ) ≤ 7)
    nlinarith [sq_abs s.im]
  have hc := SevenHeightCertificate.squared_ratio_bound hx hx1 (sq_nonneg s.im) hy2
  rw [← sevenJointNumerator_sq, ← sevenJointDenominator_sq] at hc
  apply (sq_le_sq₀ (sevenJointNumerator_nonneg s)
    (mul_nonneg (by norm_num) (sevenJointDenominator_nonneg hx))).mp
  nlinarith

/-- The cancelled s+2 factor is restored before connecting to the actual A5. -/
theorem sevenHeight_multiplier_bound {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (7 : ℝ)) :
    ‖multiplier s‖ ≤ (31 / 32 : ℝ) * (s.re + 3) * referenceFactors s := by
  have h := mul_le_mul_of_nonneg_right (sevenHeight_joint_bound hx hx1 hy)
    (norm_nonneg (s + 2))
  calc
    ‖multiplier s‖ = sevenJointNumerator s * ‖s + 2‖ := by
      simp only [multiplier, CubicPrimitive.multiplier, norm_mul, sevenJointNumerator]
      ring
    _ ≤ ((31 / 32 : ℝ) * sevenJointDenominator s) * ‖s + 2‖ := h
    _ = (31 / 32 : ℝ) * (s.re + 3) * referenceFactors s := by
      unfold sevenJointDenominator referenceFactors
      ring

/-- The SAME quartic integral is evaluated with sigma=Re(s). Its exact real-part
factor cancels only after the joint inequality and positivity are established. -/
theorem sevenHeight_source_error {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (7 : ℝ)) :
    ‖poleNormalizedZeta s - reference s‖ ≤ (31 / 32 : ℝ) * ‖reference s‖ := by
  have hs : 0 < s.re := by linarith
  have hs3 : 0 < s.re + 3 := by linarith
  have htail : ‖centeredTail 1 s‖ ≤ 1 / (720 * (s.re + 3)) := by
    simpa only [Real.one_rpow] using
      (centeredTail_norm_le (T := 1) (σ := s.re) le_rfl hs le_rfl)
  have heq : poleNormalizedZeta s - reference s = -multiplier s * centeredTail 1 s := by
    rw [source_identity hs]
    ring
  rw [heq, norm_mul, norm_neg]
  calc
    _ ≤ ((31 / 32 : ℝ) * (s.re + 3) * referenceFactors s) *
        (1 / (720 * (s.re + 3))) :=
      mul_le_mul (sevenHeight_multiplier_bound hx hx1 hy) htail
        (norm_nonneg _) (by unfold referenceFactors; positivity)
    _ = (31 / 32 : ℝ) * ‖reference s‖ := by
      rw [reference_norm]
      field_simp [hs3.ne'] <;> ring

/-- Same finite model and integer-cutoff residual. No new endpoint correction is
introduced by sharpening a norm inequality. -/
theorem finiteModel_relative_error_sevenHeight {N : ℕ} {s : ℂ}
    (hN : 1 ≤ N) (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hy : |s.im| ≤ (7 : ℝ)) :
    ‖poleNormalizedZeta s - finiteModel N s‖ ≤
      (31 / 32 : ℝ) * ‖reference s‖ * (N : ℝ) ^ (-(s.re + 3)) := by
  have hs : 0 < s.re := by linarith
  have hs3 : 0 < s.re + 3 := by linarith
  have hNP : 0 ≤ (N : ℝ) ^ (-(s.re + 3)) := Real.rpow_nonneg (by positivity) _
  calc
    _ ≤ ‖multiplier s‖ * ((N : ℝ) ^ (-(s.re + 3)) / (720 * (s.re + 3))) :=
      finiteModel_error hN hs le_rfl
    _ ≤ ((31 / 32 : ℝ) * (s.re + 3) * referenceFactors s) *
        ((N : ℝ) ^ (-(s.re + 3)) / (720 * (s.re + 3))) :=
      mul_le_mul_of_nonneg_right (sevenHeight_multiplier_bound hx hx1 hy)
        (div_nonneg hNP (by positivity))
    _ = _ := by
      rw [reference_norm]
      field_simp [hs3.ne'] <;> ring

lemma norm_lower_from_sevenHeight_enclosure {s v : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (he : ‖v - reference s‖ ≤ (31 / 32 : ℝ) * ‖reference s‖) :
    (11 / 512 : ℝ) ≤ ‖v‖ := by
  have htri : ‖reference s‖ ≤ ‖v‖ + ‖v - reference s‖ := by
    calc
      _ = ‖v - (v - reference s)‖ := by congr 1; ring
      _ ≤ _ := norm_sub_le _ _
  have hr := reference_norm_lower hx hx1
  nlinarith

theorem poleNormalized_norm_lower_sevenHeight {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (7 : ℝ)) :
    (11 / 512 : ℝ) ≤ ‖poleNormalizedZeta s‖ :=
  norm_lower_from_sevenHeight_enclosure hx hx1 (sevenHeight_source_error hx hx1 hy)

theorem poleNormalized_nonzero_sevenHeight {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (7 : ℝ)) :
    poleNormalizedZeta s ≠ 0 := by
  intro hz
  have h := poleNormalized_norm_lower_sevenHeight hx hx1 hy
  rw [hz, norm_zero] at h
  norm_num at h

/-- Canonical critical reflection supplies zero exclusion on the left half. It
is not an equality of reflected H-values, norms, or analytic multiplicities. -/
theorem nontrivialZetaZero_height_gt_seven {z : ℂ} (hz : NontrivialZetaZero z) :
    (7 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := by
  by_contra hnot
  have hy : |z.im| ≤ (7 : ℝ) := by
    simpa only [ZetaCommutatorRoot.heightAt_eq_im] using le_of_not_gt hnot
  by_cases hx : (1 / 2 : ℝ) ≤ z.re
  · exact poleNormalized_nonzero_sevenHeight hx hz.mem_critical_strip.2.le hy
      (poleNormalizedZeta_zero_of_target hz)
  · have hm := hz.critical_reflection
    have hmx : (1 / 2 : ℝ) ≤ (criticalReflection z).re := by
      have h := lt_of_not_ge hx
      simp only [criticalReflection, Complex.sub_re, Complex.one_re, Complex.conj_re]
      linarith
    have hmy : |(criticalReflection z).im| ≤ (7 : ℝ) := by
      simpa [criticalReflection] using hy
    exact poleNormalized_nonzero_sevenHeight hmx hm.mem_critical_strip.2.le hmy
      (poleNormalizedZeta_zero_of_target hm)

theorem noTargetZero_sevenHeight :
    NoTargetZero {z : ℂ | |ZetaCommutatorRoot.root.heightAt z| ≤ (7 : ℝ)} := by
  intro z hz hzero
  exact (not_le_of_gt (nontrivialZetaZero_height_gt_seven hzero)) hz

theorem windowRH_seven : WindowRH 7 := by
  intro z hz hzero
  have hh : |ZetaCommutatorRoot.root.heightAt z| ≤ (7 : ℝ) := by
    simpa only [heightWindow, Set.mem_setOf_eq, Nat.cast_ofNat] using hz
  exact False.elim ((not_le_of_gt (nontrivialZetaZero_height_gt_seven hzero)) hh)

theorem shellRH_six : ShellRH 6 := (window_succ_iff 6).mp windowRH_seven |>.2

/-- This time the EXISTING corrected-quartic homotopy itself gains a larger domain. -/
theorem deformation_norm_lower_sevenHeight {s : ℂ} {t : ℝ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (7 : ℝ))
    (ht : 0 ≤ t) (ht1 : t ≤ 1) : (11 / 512 : ℝ) ≤ ‖deformation t s‖ := by
  apply norm_lower_from_sevenHeight_enclosure hx hx1
  have heq : deformation t s - reference s = (t : ℂ) * (poleNormalizedZeta s - reference s) := by
    unfold deformation
    ring
  rw [heq, norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg ht]
  exact (mul_le_of_le_one_left (norm_nonneg _) ht1).trans (sevenHeight_source_error hx hx1 hy)

theorem inverse_deformation_differentiableAt_sevenHeight {s : ℂ} {t : ℝ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (7 : ℝ))
    (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    DifferentiableAt ℂ (fun z => (deformation t z)⁻¹) s := by
  apply (deformation_differentiableAt t s).inv
  intro hz
  have h := deformation_norm_lower_sevenHeight hx hx1 hy ht ht1
  rw [hz, norm_zero] at h
  norm_num at h

/-- Height eight remains a genuine new obligation. -/
theorem window_eight_of_shell (h : ShellRH 7) : WindowRH 8 :=
  (window_succ_iff 7).mpr ⟨windowRH_seven, h⟩

theorem all_windows_of_above_seven
    (hstep : ∀ N : ℕ, 7 ≤ N → WindowRH N → ShellRH N) : ∀ N : ℕ, WindowRH N := by
  intro N
  induction N with
  | zero => exact windowRH_mono windowRH_seven (by decide)
  | succ N ih =>
    by_cases hsmall : N + 1 ≤ 7
    · exact windowRH_mono windowRH_seven hsmall
    · exact (window_succ_iff N).mpr ⟨ih, hstep N (by omega) ih⟩

theorem rh_of_above_seven
    (hstep : ∀ N : ℕ, 7 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  all_windowRH_iff_rh.mp (all_windows_of_above_seven hstep)

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.QuarticPrimitive
