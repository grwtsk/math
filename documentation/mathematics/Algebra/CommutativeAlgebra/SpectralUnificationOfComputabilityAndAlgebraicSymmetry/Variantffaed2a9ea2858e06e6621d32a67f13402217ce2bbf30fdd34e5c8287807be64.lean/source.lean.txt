import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceCorrelationPolynomial

/-!
# A persistent negative lobe of the actual source correlation

The exact source polynomial has a negative value fifteen units inside its
positive support boundary at every real scale at least fifteen. This excludes
an eventual nonnegative-correlation shortcut. It does not give a sign to the
complete Möbius pairing or refute the remaining signed-tail bound.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateSourceSeamObstruction

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity BridgeNormalization
open EstimateSourceCorrelationPolynomial

noncomputable section

/-- A negative source lobe persists at every real source scale `A ≥ 15`.
The point is inside the actual support and the normalization is unchanged. -/
theorem sourceCorrelation_seam_neg (A : ℝ) (hA : 15 ≤ A) :
    sourceCorrelation explicitSecondDerivative A (2 * A - 15) < 0 := by
  have hA1 : 1 ≤ A := by linarith
  have hA0 : 0 < A := by linarith
  have hAn : A ≠ 0 := ne_of_gt hA0
  have hv : 0 ≤ 2 - 15 / A := by
    have ht : 15 / A ≤ 2 := (div_le_iff₀ hA0).mpr (by linarith)
    linarith
  have hv2 : 2 - 15 / A ≤ 2 := sub_le_self _ (by positivity)
  have ht : A * (2 - 15 / A) = 2 * A - 15 := by field_simp
  rw [← ht, sourceCorrelation_eq_polynomial A _ hA1 hv hv2]
  have halg : bumpCorrelation (2 - 15 / A) / 16 -
      (1 / A ^ 2) * bumpCorrelationSecond (2 - 15 / A) / 2 +
      (1 / A ^ 2) ^ 2 * bumpCorrelationFourth (2 - 15 / A) =
      -(455625 * (21152708708203125 + 39698670531093750 * (A - 15) +
        19438586772750000 * (A - 15)^2 + 4578940532700000 * (A - 15)^3 +
        614846274300000 * (A - 15)^4 + 49701147912000 * (A - 15)^5 +
        2395655558400 * (A - 15)^6 + 63360028160 * (A - 15)^7 +
        705106688 * (A - 15)^8)) / (544544 * A^17) := by
    dsimp [bumpCorrelation, bumpCorrelationSecond, bumpCorrelationFourth]
    field_simp
    ring
  rw [halg]
  have hy : 0 ≤ A - 15 := sub_nonneg.mpr hA
  have hpoly : 0 < 455625 * (21152708708203125 + 39698670531093750 * (A - 15) +
      19438586772750000 * (A - 15)^2 + 4578940532700000 * (A - 15)^3 +
      614846274300000 * (A - 15)^4 + 49701147912000 * (A - 15)^5 +
      2395655558400 * (A - 15)^6 + 63360028160 * (A - 15)^7 +
      705106688 * (A - 15)^8) := by positivity
  exact div_neg_of_neg_of_pos
    (div_neg_of_neg_of_pos (neg_neg_of_pos hpoly) (by positivity))
    (source_normalization_pos A hA1)

/-- No eventual all-support nonnegativity assertion is true for this source.
This concerns source correlation only, not the signed arithmetic residual. -/
theorem not_eventually_sourceCorrelation_nonnegative :
    ¬ ∃ R : ℝ, ∀ A : ℝ, R ≤ A → 1 ≤ A →
      ∀ t : ℝ, 0 ≤ t → t ≤ 2 * A →
        0 ≤ sourceCorrelation explicitSecondDerivative A t := by
  rintro ⟨R, h⟩
  let A : ℝ := max R 15
  have hRA : R ≤ A := le_max_left _ _
  have hA : 15 ≤ A := le_max_right _ _
  have hp := h A hRA (by linarith) (2 * A - 15) (by linarith) (by linarith)
  exact (sourceCorrelation_seam_neg A hA).not_ge hp

end
end EstimateSourceSeamObstruction
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
