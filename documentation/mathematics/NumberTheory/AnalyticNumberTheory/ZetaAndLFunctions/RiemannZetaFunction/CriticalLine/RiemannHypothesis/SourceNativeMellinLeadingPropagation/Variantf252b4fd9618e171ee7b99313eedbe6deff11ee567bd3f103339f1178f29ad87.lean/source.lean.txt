import SourceNativeConstantCompensation
import SourceLeadingCesaroPropagation

/-!
Native leading-tail propagation of the literal c=2 growing head and the full
compensated angular contour. Their signed arithmetic upper bounds remain inputs.
The real radius and all native analytic constants are retained.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceNativeMellinLeadingPropagation
open SourceNativeAngularTail SourceNativeMertensTransfer SourceNativeConstantCompensation
open SourceNativeDirichlet SourceLeadingCesaroPropagation SourceLeadingTailBudget
noncomputable section

/-- The actual growing-height signed head pays its native K2/R^9 tail budget exactly once. -/
theorem leading_tail_of_native_signed_head (K R : ℝ) (hR : 1 ≤ R)
    (hhead : ∀ A : ℝ, R ≤ A → (angularHead A (growingHeight A)).re ≤ K) :
    ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤ K + twoLineTailConstant / R ^ 9 -
        (riemannZeta (1 / 2)).re + 3103 / 50 := by
  intro A hA
  apply actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA)
  exact mertensResidual_upper_of_signed_head hR hhead A ((le_max_right _ _).trans hA)

/-- The actual full compensated contour pays only its exact constant D2 before calibration. -/
theorem leading_tail_of_native_compensated_contour (K R : ℝ) (hR : 1 ≤ R)
    (hcomp : ∀ A : ℝ, R ≤ A → (compensatedAngularContour A).re ≤ K) :
    ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤ rightLineMajorant 2 + K -
        (riemannZeta (1 / 2)).re + 3103 / 50 := by
  intro A hA
  apply actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA)
  exact mertensResidual_upper_of_compensated hR hcomp A ((le_max_right _ _).trans hA)

end
end FormalResearch.RiemannHypothesis.SourceNativeMellinLeadingPropagation
