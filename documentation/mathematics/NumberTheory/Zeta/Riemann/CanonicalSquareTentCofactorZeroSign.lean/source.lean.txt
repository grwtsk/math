/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No root import.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentMixedWeightClassification
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction

/-!
# Exact sign supplier interface for the first mixed-coordinate cofactor

The cofactorZero compares stages three and four. Positivity of the two
ordinary moments together with a strict descending ratio of reciprocal
to ordinary moments forces cofactorZero to be positive. The strict ratio
inequality is an EXPLICIT UNDICHARGED source premise. This is a bounded
algebraic bridge toward determining the actual exceptional weight, not
proof of an integral inequality or a classical Weil transport.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCofactorZeroSign

open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentCorrection
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram

/-- A strict reciprocal/ordinary ratio ordering at stages three and
four forces the source's actual first cofactor to be positive. -/
theorem cofactorZero_pos_of_ratio_order
    (hpositive : 0 < realOrdinaryMoment 1 ∧
      0 < realOrdinaryMoment 2)
    (hratio :
      realMultiplicativeMoment 2 / realOrdinaryMoment 2 <
      realMultiplicativeMoment 1 / realOrdinaryMoment 1) :
    (0 : ℝ) <
      realOrdinaryMoment 2 * realMultiplicativeMoment 1 -
      realOrdinaryMoment 1 * realMultiplicativeMoment 2 := by
  have h1 := hpositive.1
  have h2 := hpositive.2
  have hh := (div_lt_div_iff₀ h2 h1).mp hratio
  nlinarith


/-- The same strict moment-ratio premise makes the actual complex
cofactorZero nonzero. The missing analytic input is precisely hratio. -/
theorem cofactorZero_ne_zero_of_ratio_order
    (hratio :
      realMultiplicativeMoment 2 / realOrdinaryMoment 2 <
      realMultiplicativeMoment 1 / realOrdinaryMoment 1) :
    cofactorZero ≠ 0 := by
  have hpositive :
      0 < realOrdinaryMoment 1 ∧ 0 < realOrdinaryMoment 2 :=
    ⟨realOrdinaryMoment_pos 1, realOrdinaryMoment_pos 2⟩
  have hpos := cofactorZero_pos_of_ratio_order hpositive hratio
  intro hz
  unfold cofactorZero at hz
  have hreal :
      realOrdinaryMoment 2 * realMultiplicativeMoment 1 -
      realOrdinaryMoment 1 * realMultiplicativeMoment 2 = 0 := by
    exact_mod_cast hz
  exact (ne_of_gt hpos) hreal

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCofactorZeroSign
