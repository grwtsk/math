import SourceActualRieszCriticalCenter

/-!
The authentic fixed critical center is transferred to the full real arithmetic
Riesz readout. The independently rational finite payment remains explicit and
is bounded on every real source scale. No uniform signed or area bound follows.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualRieszFixedCenterTransfer
open MeasureTheory Set
open SourcePairing SourceActualRieszCenteredReconstruction SourceActualRieszCriticalCenter
open SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateMertensResidual

/-- Literal real centered primitive with the independently calibrated fixed slope. -/
def actualFixedCenteredMangoldtRieszPrimitive (b t : ℝ) : ℝ :=
  actualMangoldtRieszPrimitive t - actualRieszLimitingLinearCenter * t - b

/-- The complete fixed-center source profile has genuine finite integrability. -/
theorem actualFixedCenteredMangoldtRiesz_intervalIntegrable {A : ℝ}
    (hA : 1 ≤ A) (b : ℝ) :
    IntervalIntegrable (actualFixedCenteredMangoldtRieszPrimitive b) volume 0 (2 * A) := by
  apply ContinuousOn.intervalIntegrable
  rw [uIcc_of_le (by linarith : 0 ≤ 2 * A)]
  exact ((actualMangoldtRieszPrimitive_continuousOn (2 * A)).sub
    (continuous_const.mul continuous_id).continuousOn).sub continuous_const.continuousOn

/-- The full signed integral keeps the exact finite payment after fixed centering. -/
theorem actualFixedCenteredMangoldtRiesz_readout {A : ℝ} (hA : 1 ≤ A) (b : ℝ) :
    (∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
      actualFixedCenteredMangoldtRieszPrimitive b t) =
        mertensResidual A - archimedeanMultiplier 0 / 2 -
          (actualRieszLimitingLinearCenter - actualRieszLinearCenter A) := by
  have hp : 0 < A := by linarith
  let C'' := deriv (deriv (sourceCorrelation explicitSecondDerivative A))
  let δ := actualRieszLimitingLinearCenter - actualRieszLinearCenter A
  have hc : Continuous C'' := (sourceCorrelation_deriv_contDiff hp).continuous_deriv_one
  have hprofile : ContinuousOn (actualCenteredMangoldtRieszPrimitive A b) (Icc 0 (2 * A)) :=
    ((actualMangoldtRieszPrimitive_continuousOn (2 * A)).sub
      (continuous_const.mul continuous_id).continuousOn).sub continuous_const.continuousOn
  have hi : IntervalIntegrable
      (fun t => C'' t * actualCenteredMangoldtRieszPrimitive A b t) volume 0 (2 * A) := by
    apply ContinuousOn.intervalIntegrable
    rw [uIcc_of_le (by linarith : 0 ≤ 2 * A)]
    exact hc.continuousOn.mul hprofile
  have hlinear := ((continuous_id.mul hc).const_mul δ).intervalIntegrable 0 (2 * A)
  have he : (fun t => C'' t * actualFixedCenteredMangoldtRieszPrimitive b t) =
      fun t => C'' t * actualCenteredMangoldtRieszPrimitive A b t - δ * (t * C'' t) := by
    funext t
    unfold actualFixedCenteredMangoldtRieszPrimitive actualCenteredMangoldtRieszPrimitive
    dsimp only [δ]
    ring
  rw [he, intervalIntegral.integral_sub hi hlinear,
    intervalIntegral.integral_const_mul]
  have hm := (actualCorrelation_Riesz_curvature_moments hA).2
  rw [show (∫ t in 0..2 * A, t * C'' t) = 1 from hm, mul_one,
    actualCenteredMangoldtRiesz_readout hA b]

/-- One-sided source transfer retains the exact sign and the full quadratic price. -/
theorem actualFixedCenteredMangoldtRiesz_paid_bounds {A : ℝ} (hA : 1 ≤ A) (b : ℝ) :
    (∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
      actualFixedCenteredMangoldtRieszPrimitive b t) ≤
        mertensResidual A - archimedeanMultiplier 0 / 2 ∧
      mertensResidual A - archimedeanMultiplier 0 / 2 ≤
        (∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
          actualFixedCenteredMangoldtRieszPrimitive b t) + 56 / A ^ 2 := by
  have hδ := actualRiesz_finite_center_payment_bound (show 0 < A by linarith)
  rw [actualFixedCenteredMangoldtRiesz_readout hA b]
  constructor <;> linarith [hδ.1,hδ.2]

/-- The actual fixed-center readout differs by this proved vanishing finite cost. -/
theorem actualFixedCenteredMangoldtRiesz_error_bound {A : ℝ} (hA : 1 ≤ A) (b : ℝ) :
    |mertensResidual A - archimedeanMultiplier 0 / 2 -
      (∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
        actualFixedCenteredMangoldtRieszPrimitive b t)| ≤ 56 / A ^ 2 := by
  have hδ := actualRiesz_finite_center_payment_bound (show 0 < A by linarith)
  rw [actualFixedCenteredMangoldtRiesz_readout hA b]
  have he : mertensResidual A - archimedeanMultiplier 0 / 2 -
      (mertensResidual A - archimedeanMultiplier 0 / 2 -
        (actualRieszLimitingLinearCenter - actualRieszLinearCenter A)) =
          actualRieszLimitingLinearCenter - actualRieszLinearCenter A := by ring
  rw [he,abs_of_nonneg hδ.1]
  exact hδ.2

end FormalResearch.RiemannHypothesis.SourceActualRieszFixedCenterTransfer
