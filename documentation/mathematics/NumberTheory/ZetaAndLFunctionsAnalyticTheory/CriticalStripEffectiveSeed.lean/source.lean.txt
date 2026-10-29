/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinBounds
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRealAxisBase

set_option autoImplicit false

/-!
# A rational-height zero-free seed from the actual Mellin kernel

The conservative derivative bound |M'|<=16 on Re(s)>=1/2 gives an explicit height
1/16. The argument uses real-axis sign ONLY at the real projection, transporting
that value by a proved complex mean-value bound. The functional equation reflects
left-side target zeros; no equality of the normalized function at mirror points
is assumed. The bound is classical and deliberately nonoptimal. It does not prove
WindowRH 1, supply any full later shell, or improve an all-height Weil comparison.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent

open Complex MeasureTheory Set

noncomputable section

/-- The real-projection Mellin value is genuinely real, not just of nonnegative real part. -/
theorem fractionalMellin_ofReal_im_zero {σ : ℝ} (hσ : 0 < σ) :
    (fractionalMellin (σ : ℂ)).im = 0 := by
  have hi := fractionalMellin_integrable (s := (σ : ℂ)) (by simpa using hσ)
  rw [fractionalMellin_eq_integral, ← integral_im hi]
  apply integral_eq_zero_of_ae
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  have ht0 : 0 ≤ t := (zero_lt_one.trans ht).le
  have hpow : (t : ℂ) ^ (-((σ : ℂ) + 1)) =
      ((t ^ (-(σ + 1)) : ℝ) : ℂ) := by
    simpa only [Complex.ofReal_neg, Complex.ofReal_add, Complex.ofReal_one] using
      (Complex.ofReal_cpow ht0 (-(σ + 1))).symm
  rw [hpow]
  simp only [Complex.mul_im, Complex.sub_re, Complex.sub_im, Complex.ofReal_im,
    Complex.natCast_im, sub_self, mul_zero, zero_mul, add_zero]

/-- A uniform derivative estimate, including the boundary Re(s)=1/2. -/
theorem fractionalMellin_deriv_norm_le_sixteen {s : ℂ}
    (hs : (1 / 2 : ℝ) ≤ s.re) : ‖deriv fractionalMellin s‖ ≤ 16 := by
  have h := fractionalMellin_deriv_norm_le (a := 1 / 4)
    (by norm_num : (0 : ℝ) < 1 / 4) (by linarith : 2 * (1 / 4 : ℝ) ≤ s.re)
  norm_num at h
  exact h

/-- This is vertical transport of the same function, not preservation by a height label. -/
theorem fractionalMellin_vertical_variation {s : ℂ} (hs : (1 / 2 : ℝ) ≤ s.re) :
    ‖fractionalMellin s - fractionalMellin (s.re : ℂ)‖ ≤ 16 * |s.im| := by
  let V : Set ℂ := {z | (1 / 2 : ℝ) ≤ z.re}
  have hconv : Convex ℝ V :=
    (convex_Ici (1 / 2 : ℝ)).linear_preimage Complex.reCLM.toLinearMap
  have hF : ∀ z ∈ V, DifferentiableAt ℂ fractionalMellin z := by
    intro z hz
    exact fractionalMellin_differentiableAt (by change (1 / 2 : ℝ) ≤ z.re at hz; linarith)
  have hderiv : ∀ z ∈ V, ‖deriv fractionalMellin z‖ ≤ (16 : ℝ) := by
    intro z hz
    exact fractionalMellin_deriv_norm_le_sixteen hz
  have hc : (s.re : ℂ) ∈ V := by simpa only [V, mem_setOf_eq, ofReal_re] using hs
  have hz : s ∈ V := hs
  have h := Convex.norm_image_sub_le_of_norm_deriv_le hF hderiv hconv hc hz
  have hdiff : s - (s.re : ℂ) = (s.im : ℂ) * I := by
    apply Complex.ext <;> simp
  simpa only [hdiff, norm_mul, Complex.norm_real, Real.norm_eq_abs,
    Complex.norm_I, mul_one] using h

/-- If 1/2<=Re(s)<=1 and |Im(s)|<=1/16, the actual entire normalized source is nonzero.
The comparison residual has norm at most 9/16, strictly below the forced value 1. -/
theorem poleNormalized_nonzero_on_effective_right_seed {s : ℂ}
    (hleft : (1 / 2 : ℝ) ≤ s.re) (hright : s.re ≤ 1)
    (hheight : |s.im| ≤ (1 / 16 : ℝ)) : poleNormalizedZeta s ≠ 0 := by
  intro hzero
  have hspos : 0 < s.re := by linarith
  have hsne : s ≠ 0 := by
    intro heq
    have : s.re = 0 := by simp [heq]
    linarith
  have hid := poleNormalized_eq_fractional hspos
  have hfactor : s * (1 - (s - 1) * fractionalMellin s) = 0 := by
    calc
      _ = fractionalPoleModel s := by unfold fractionalPoleModel; ring
      _ = poleNormalizedZeta s := hid.symm
      _ = 0 := hzero
  have hone : (s - 1) * fractionalMellin s = 1 :=
    (sub_eq_zero.mp ((mul_eq_zero.mp hfactor).resolve_left hsne)).symm
  let a : ℂ := fractionalMellin (s.re : ℂ)
  have haRe : 0 ≤ a.re := fractionalMellin_re_nonneg hspos
  have haIm : a.im = 0 := fractionalMellin_ofReal_im_zero hspos
  have hrealTerm : ((s - 1) * a).re ≤ 0 := by
    simp only [Complex.mul_re, Complex.sub_re, Complex.one_re, haIm,
      mul_zero, sub_zero]
    exact mul_nonpos_of_nonpos_of_nonneg (sub_nonpos.mpr hright) haRe
  have hdecomp : (s - 1) * fractionalMellin s =
      (s - 1) * a + (s - 1) * (fractionalMellin s - a) := by ring
  have hforced : (1 : ℝ) ≤ ((s - 1) * (fractionalMellin s - a)).re := by
    have h := congrArg Complex.re hdecomp
    rw [hone, Complex.one_re, Complex.add_re] at h
    linarith
  have hvar : ‖fractionalMellin s - a‖ ≤ 1 := by
    have h := fractionalMellin_vertical_variation hleft
    have hb : 16 * |s.im| ≤ (1 : ℝ) := by linarith
    exact h.trans hb
  have hfactorNorm : ‖s - 1‖ ≤ (9 / 16 : ℝ) := by
    have h := Complex.norm_le_abs_re_add_abs_im (s - 1)
    simp only [Complex.sub_re, Complex.one_re, Complex.sub_im, Complex.one_im,
      sub_zero, abs_of_nonpos (sub_nonpos.mpr hright)] at h
    linarith
  have hres : ‖(s - 1) * (fractionalMellin s - a)‖ ≤ (9 / 16 : ℝ) := by
    rw [norm_mul]
    calc
      _ ≤ (9 / 16 : ℝ) * 1 :=
        mul_le_mul hfactorNorm hvar (norm_nonneg _) (by norm_num)
      _ = 9 / 16 := by ring
  have hcontra := hforced.trans (Complex.re_le_norm _)
  linarith

/-- The functional mirror gives the effective seed for ALL canonical target zeros.
Only the zero predicate is reflected, not function values or weighted divisor sums. -/
theorem nontrivialZetaZero_height_gt_one_sixteenth {z : ℂ}
    (hz : NontrivialZetaZero z) :
    (1 / 16 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := by
  by_contra hnot
  have hheight : |z.im| ≤ (1 / 16 : ℝ) := by
    simpa only [ZetaCommutatorRoot.heightAt_eq_im] using le_of_not_gt hnot
  have hstrip := hz.mem_critical_strip
  by_cases hright : (1 / 2 : ℝ) ≤ z.re
  · exact poleNormalized_nonzero_on_effective_right_seed hright hstrip.2.le hheight
      (poleNormalizedZeta_zero_of_target hz)
  · have hmir := hz.critical_reflection
    have hmre : (criticalReflection z).re = 1 - z.re := by simp [criticalReflection]
    have hmheight : |(criticalReflection z).im| ≤ (1 / 16 : ℝ) := by
      simpa [criticalReflection] using hheight
    have hmleft : (1 / 2 : ℝ) ≤ (criticalReflection z).re := by
      rw [hmre]
      linarith [lt_of_not_ge hright]
    exact poleNormalized_nonzero_on_effective_right_seed hmleft
      hmir.mem_critical_strip.2.le hmheight (poleNormalizedZeta_zero_of_target hmir)

/-- A rational-height statement, not a claim about any positive natural shell. -/
theorem noTargetZero_effective_seed :
    NoTargetZero {z : ℂ | |ZetaCommutatorRoot.root.heightAt z| ≤ (1 / 16 : ℝ)} := by
  intro z hz hzero
  exact (not_le_of_gt (nontrivialZetaZero_height_gt_one_sixteenth hzero)) hz

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
