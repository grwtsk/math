import SourceEndpointRadiusTriangularFollowthrough
import SourceResidualBudget

/-!
Explicit all-real original lower constants for the actual signed triangular
and conditional truncated branches. The original real finite-prefix consumer
is reused; no positivity assumption on the supplied signed K is introduced.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceTriangularExplicitLower
open SourceEndpointRadiusTriangularFollowthrough SourceAdaptiveTriangularConsumer
open RH16ResumeBudget RH16EndpointRadius
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
noncomputable section

/-- The raw signed upper witness yields an explicit original lower constant at the same R. -/
theorem all_real_lower_of_triangular_upper (K R : ℝ) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → triangularInterior A ≤ K) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 * (K + 1 / 2 + endpointBudget R + C_F)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  obtain ⟨C_F, hF0, hF⟩ := residual_tail_of_triangular_upper K R hR hG
  exact ⟨C_F, hF0, all_real_source_lower_of_residual_tail
    (K + 1 / 2 + endpointBudget R + C_F) R hR hF⟩

/-- The analytic truncation premise remains explicit and contributes a total one-unit loss. -/
theorem all_real_lower_of_truncated_smoothing_upper (K R : ℝ) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → smoothedInterior A ≤ K)
    (hTrunc : ∀ A : ℝ, R ≤ A → TruncationDiscrepancy A) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 * (K + 1 + endpointBudget R + C_F)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  obtain ⟨C_F, hF0, hF⟩ := residual_tail_of_truncated_smoothing_upper K R hR hG hTrunc
  exact ⟨C_F, hF0, all_real_source_lower_of_residual_tail
    (K + 1 + endpointBudget R + C_F) R hR hF⟩

/-- The original source multiplier doubles the half-unit loss exactly once. -/
theorem triangular_tail_lower_budget (K R C_F : ℝ) :
    archimedeanMultiplier 0 - 2 * (K + 1 / 2 + endpointBudget R + C_F) =
      archimedeanMultiplier 0 - 2 * K - 1 - 2 * endpointBudget R - 2 * C_F := by
  ring

end
end FormalResearch.RiemannHypothesis.SourceTriangularExplicitLower
