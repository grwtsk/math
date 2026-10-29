/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No root import.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenGapIntegrability
import Mathlib.Tactic

/-!
# Strict positive pivot-16 gap integrals

Use the exact positive open intervals (9,16) and (16,25), their positive
Lebesgue measure, global nonnegativity and actual integrability to obtain
strictly positive gap integrals. This is the genuine analytic supplier
for the strict pivot moment inequalities, subject to Lean verification.
No Weil-class admissibility or RH follows.
-/
set_option autoImplicit false
noncomputable section

open MeasureTheory
namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenGapIntegralPositive

open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenPivot
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenGapIntegrability

theorem stageThreeSixteenGap_integral_pos :
    0 < ∫ x in Set.Ioi (0 : ℝ), stageThreeSixteenGap x := by
  refine (setIntegral_pos_iff_support_of_nonneg_ae ?_
    stageThreeSixteenGap_integrableOn).2 ?_
  · filter_upwards [self_mem_ae_restrict measurableSet_Ioi] with x hx
    exact stageThreeSixteenGap_nonnegative hx
  · have hs :
        Set.Ioo (9 : ℝ) 16 ⊆
          Function.support stageThreeSixteenGap ∩ Set.Ioi (0 : ℝ) := by
      intro x hx
      constructor
      · rw [Function.mem_support]
        exact ne_of_gt (stageThreeSixteenGap_pos hx)
      · exact lt_trans (by norm_num) hx.1
    have hv : 0 < volume (Set.Ioo (9 : ℝ) 16) := by
      rw [Real.volume_Ioo]
      exact ENNReal.ofReal_pos.mpr (by norm_num)
    exact hv.trans_le (measure_mono hs)

theorem stageFourSixteenGap_integral_pos :
    0 < ∫ x in Set.Ioi (0 : ℝ), stageFourSixteenGap x := by
  refine (setIntegral_pos_iff_support_of_nonneg_ae ?_
    stageFourSixteenGap_integrableOn).2 ?_
  · filter_upwards [self_mem_ae_restrict measurableSet_Ioi] with x hx
    exact stageFourSixteenGap_nonnegative hx
  · have hs :
        Set.Ioo (16 : ℝ) 25 ⊆
          Function.support stageFourSixteenGap ∩ Set.Ioi (0 : ℝ) := by
      intro x hx
      constructor
      · rw [Function.mem_support]
        exact ne_of_gt (stageFourSixteenGap_pos hx)
      · exact lt_trans (by norm_num) hx.1
    have hv : 0 < volume (Set.Ioo (16 : ℝ) 25) := by
      rw [Real.volume_Ioo]
      exact ENNReal.ofReal_pos.mpr (by norm_num)
    exact hv.trans_le (measure_mono hs)

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentSixteenGapIntegralPositive
