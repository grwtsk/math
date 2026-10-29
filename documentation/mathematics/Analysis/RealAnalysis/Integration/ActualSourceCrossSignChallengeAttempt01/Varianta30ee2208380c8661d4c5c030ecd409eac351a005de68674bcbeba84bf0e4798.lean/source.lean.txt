import SourceMixedCurvatureCross
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation

/-!
Concrete hostile sign controls for the actual normalized source kernel.
These finite coefficient rows are chosen as diagnostic controls. They do not
equal the actual arithmetic time/column rows and do not determine their sign.
AI attribution: OpenAI Codex independent mathematical challenge.
-/

set_option autoImplicit false

namespace RH16IndependentChallenge

open MeasureTheory
open scoped BigOperators
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation

noncomputable section

/-- The source mixed kernel at zero is strictly negative, using actual unit normalization. -/
theorem actual_mixed_kernel_at_zero_strictly_negative (A : ℝ) (hA : 1 ≤ A) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) 0 -
      sourceCorrelation explicitSecondDerivative A 0 / 4 < 0 := by
  rw [sourceCorrelation_second_deriv_eq_integral (by linarith : 0 < A),
    actual_correlation_at_zero A hA]
  have he : 0 ≤ ∫ v : ℝ, deriv (normalizedTest explicitSecondDerivative A) v *
      deriv (normalizedTest explicitSecondDerivative A) (v - 0) := by
    apply integral_nonneg
    intro v
    simpa only [sub_zero, ← pow_two] using
      sq_nonneg (deriv (normalizedTest explicitSecondDerivative A) v)
  linarith

/-- Equal singleton coefficient rows give a strictly negative actual mixed-kernel pairing. -/
theorem actual_same_singleton_mixed_cross_negative (A : ℝ) (hA : 1 ≤ A) :
    (∑ _i ∈ ({()} : Finset Unit), ∑ _j ∈ ({()} : Finset Unit),
      (1 : ℝ) * 1 *
        (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (0 - 0) -
          sourceCorrelation explicitSecondDerivative A (0 - 0) / 4)) < 0 := by
  simpa only [Finset.sum_singleton, one_mul, sub_self] using
    actual_mixed_kernel_at_zero_strictly_negative A hA

/-- Changing just the independent second coefficient reverses that actual-source sign. -/
theorem actual_opposite_singleton_mixed_cross_positive (A : ℝ) (hA : 1 ≤ A) :
    (∑ _i ∈ ({()} : Finset Unit), ∑ _j ∈ ({()} : Finset Unit),
      (1 : ℝ) * (-1) *
        (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (0 - 0) -
          sourceCorrelation explicitSecondDerivative A (0 - 0) / 4)) > 0 := by
  simpa only [Finset.sum_singleton, one_mul, neg_one_mul, sub_self] using
    neg_pos.mpr (actual_mixed_kernel_at_zero_strictly_negative A hA)

end
end RH16IndependentChallenge
