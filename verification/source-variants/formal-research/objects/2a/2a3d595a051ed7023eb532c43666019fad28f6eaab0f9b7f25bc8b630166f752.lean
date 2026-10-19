import scratch.common_mean_20261004.FiveModeMatrix
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

/-!
Exact conditional transports for a future independently proved matrix witness.
No witness is constructed here and no finite certificate is used as one.
Originating direction: grwtsk contributors. Proof assistance: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace CommonMeanScratch
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- Reuse the established finite-prefix consumer; the missing eventual bound
and matrix-entry admission are explicit hypotheses, not inferred from coordinates. -/
theorem estimate_of_matrix_tail (D R : ℝ) (hR : 1 ≤ R)
    (hg : ∀ A : ℝ, R ≤ A → GammaEntryIntegrability A)
    (hbound : ∀ A : ℝ, R ≤ A →
      -D ≤ dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A))) :
    CorrelationAssembly.EstimateObligation := by
  apply EstimateTailReduction.estimate_of_quadratic_tail_lower_bound
  refine ⟨-D, R, hR, ?_⟩
  intro A hRA
  have hA := hR.trans hRA
  rw [← geometric_matrix_dictionary A hA (hg A hRA), ← matrix_dot_eq_contraction]
  exact hbound A hRA

/-- The actual Mertens residual is the full original closed prime-power moment.
The full gamma upper bound is an explicit premise; it is not supplied by a
finite interval certificate for larger scales. -/
theorem residual_upper_of_matrix_lower (A D a0 : ℝ) (hA : 1 ≤ A)
    (hg : GammaEntryIntegrability A)
    (hbound : -D ≤ dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A)))
    (hgamma : archimedeanValue explicitSecondDerivative A ≤ a0 + 390/A^2)
    (ha0 : a0 ≤ 0) :
    EstimateMertensResidual.mertensResidual A ≤ 195 + D/2 := by
  have hq := hbound
  rw [matrix_dot_eq_contraction, geometric_matrix_dictionary A hA hg,
    sourceQuadraticValue] at hq
  have hres : EstimateMertensResidual.mertensResidual A =
      primePowerContribution explicitSecondDerivative A := by
    rw [EstimateMertensResidual.mertensResidual_eq_closedPrimeMoment A hA]
    exact (EstimatePrimeSmoothDefect.primePowerContribution_eq_closedPrimeMoment A hA).symm
  rw [hres]
  have hA2 : (1 : ℝ) ≤ A^2 := by nlinarith [sq_nonneg (A-1)]
  have hApos : 0 < A^2 := by linarith
  have hquot : 390/A^2 ≤ (390 : ℝ) := by
    rw [div_le_iff₀ hApos]
    nlinarith
  linarith

end CommonMeanScratch
