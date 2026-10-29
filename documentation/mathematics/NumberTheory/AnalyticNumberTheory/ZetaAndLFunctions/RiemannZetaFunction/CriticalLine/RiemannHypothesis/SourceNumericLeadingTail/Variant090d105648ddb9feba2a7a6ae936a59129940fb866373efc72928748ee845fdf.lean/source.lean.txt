import SourceLeadingTailBudget
import ActualFullKappaNumericBounds

/-!
Numerical transfer costs for the genuine leading signed arithmetic frontier.
Every kappa is its original full-positive fractional-part integral. Actual
Moebius signs, floor cutoff, signed tail and original all-real target remain.
No uniform leading arithmetic witness is produced.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceNumericLeadingTail

open SourceLeadingTailBudget SourceRenormalizedActualSignedTail
open SourceCompleteCorrectedAbelPairing SourceUnconditionalCorrectedCalibration
open SourceFullPositiveKappa
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

noncomputable section

/-- Numerical fixed error cost follows only from genuine full-positive coefficients. -/
theorem leadingFixedErrorBudget_le_numeric : leadingFixedErrorBudget ≤ 29688 := by
  have hh := RH16IndependentChallengeNext.actualFullPositiveKappa_four_abs_bounds
  unfold leadingFixedErrorBudget
  linarith [hh.1, hh.2.1, hh.2.2.1, hh.2.2.2]

/-- The complete actual short-jet approximation has an explicit fixed numerical error. -/
theorem renormalized_tail_sub_leading_abs_le_numeric {A : ℝ} (hA : 25600 ≤ A) :
    |renormalizedActualSignedTail A - actualLeadingRenormalizedTail A| ≤ 29688 :=
  (renormalized_tail_sub_actual_leading_abs_le_fixed hA).trans leadingFixedErrorBudget_le_numeric

/-- Both numerical comparisons keep the entire actual complete source and signed leading tail. -/
theorem actual_leading_complete_pairing_numeric_comparisons {A : ℝ} (hA : 25600 ≤ A) :
    completeCorrectedAbelPairing A - 29695 ≤ actualLeadingRenormalizedTail A ∧
      actualLeadingRenormalizedTail A ≤ completeCorrectedAbelPairing A + 29692 := by
  have he := abs_le.mp (renormalized_tail_sub_leading_abs_le_numeric hA)
  have hc := renormalized_tail_complete_pairing_comparisons A hA
  constructor <;> linarith [he.1, he.2, hc.1, hc.2]

/-- The original residual has a completely unconditional numerical leading-source calibration. -/
theorem residual_sub_actual_leading_sub_zeta_abs_lt_numeric
    {A : ℝ} (hA : 25600 ≤ A) :
    |mertensResidual A - actualLeadingRenormalizedTail A -
      (riemannZeta (1 / 2)).re| < 1484753 / 50 := by
  have hc := residual_sub_renormalized_tail_sub_zeta_abs_lt A hA
  have he := renormalized_tail_sub_leading_abs_le_numeric hA
  have ht := abs_add_le
    (mertensResidual A - renormalizedActualSignedTail A - (riemannZeta (1 / 2)).re)
    (renormalizedActualSignedTail A - actualLeadingRenormalizedTail A)
  have hx : mertensResidual A - actualLeadingRenormalizedTail A - (riemannZeta (1 / 2)).re =
      (mertensResidual A - renormalizedActualSignedTail A - (riemannZeta (1 / 2)).re) +
        (renormalizedActualSignedTail A - actualLeadingRenormalizedTail A) := by ring
  rw [← hx] at ht
  linarith

/-- The simplified actual arithmetic frontier is equivalent at each fixed head radius. -/
theorem actual_leading_upper_iff_complete_pairing_upper_at_radius
    (R : ℝ) (hR : 25600 ≤ R) :
    (∃ K : ℝ, ∀ A : ℝ, R ≤ A → actualLeadingRenormalizedTail A ≤ K) ↔
      (∃ K : ℝ, ∀ A : ℝ, R ≤ A → completeCorrectedAbelPairing A ≤ K) :=
  (actual_leading_upper_iff_renormalized_upper_at_radius R hR).trans
    (renormalized_tail_upper_iff_complete_pairing_upper_at_radius R hR)

/-- The original target needs only a genuine uniform upper bound on the actual joined leading tail. -/
theorem estimate_of_actual_leading_signed_tail_numeric {K R : ℝ} (hR : 25600 ≤ R)
    (htail : ∀ A : ℝ, R ≤ A → actualLeadingRenormalizedTail A ≤ K) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_renormalized_actual_signed_tail (K := K + 29688) hR
  intro A hRA
  have he := (abs_le.mp (renormalized_tail_sub_leading_abs_le_numeric (hR.trans hRA))).2
  have ht := htail A hRA
  linarith

end
end FormalResearch.RiemannHypothesis.SourceNumericLeadingTail
