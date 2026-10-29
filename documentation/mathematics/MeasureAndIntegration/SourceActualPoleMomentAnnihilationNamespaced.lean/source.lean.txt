-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.PlainMomentPrimitive.Varianteacf3c094cef82e3f12249491ab2a196a6b24cb8436708cd8b9b85f1e2cbccbf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eacf3c094cef82e3f12249491ab2a196a6b24cb8436708cd8b9b85f1e2cbccbf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.PlainMomentPrimitive.Varianteacf3c094cef82e3f12249491ab2a196a6b24cb8436708cd8b9b85f1e2cbccbf","mathematical_subject":"Analysis.Integration","original_sha256":"eacf3c094cef82e3f12249491ab2a196a6b24cb8436708cd8b9b85f1e2cbccbf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-joint/concurrent-followthrough/20261007T043249Z/SourceActualPoleMomentAnnihilation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualPsiContinuousFrontier

/-!
Exact pole-moment annihilation for the unchanged compact actual source.
Full positive-axis source zeros and genuine compact FTC justify the separate
pole integrals before removing their signed reciprocal coefficients. Actual
Psi, the natural closed floor, all prime powers and the unit remain unchanged.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.PlainMomentPrimitive.Varianteacf3c094cef82e3f12249491ab2a196a6b24cb8436708cd8b9b85f1e2cbccbf

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation
open MeasureTheory Set
open scoped BigOperators
open SourceActualPsiContinuousFrontier SourceActualFactorialTailDecomposition
open SourceActualFactorialJointCancellation SourceCancelledFactorialSectorBudget
open SourceStrictComplementaryAbel SourceStrictComplementaryLocalization
open SourceFullPositiveKappa SourceLeadingFullKappaReduction SourceFullDivisorLogInventory
open SourcePairing SourcePositiveSampling
open ContinuousResearch.ActualIntegerInventory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateMobiusSplit EstimateMertensAbel
noncomputable section

private def plainMomentPrimitive (A x : ℝ) : ℝ := x * plainProfile A 1 x
private def logMomentPrimitive (A x : ℝ) : ℝ := x * logProfile A 1 x

private theorem plainMoment_contDiff {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (plainMomentPrimitive A) := contDiff_id.mul (plainProfile_contDiff hA 1)

private theorem logMoment_contDiff {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (logMomentPrimitive A) := contDiff_id.mul (logProfile_contDiff hA 1)

private theorem plainMoment_compact {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (plainMomentPrimitive A) := (plainProfile_hasCompactSupport hA 1).mul_left

private theorem logMoment_compact {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (logMomentPrimitive A) := (logProfile_hasCompactSupport hA 1).mul_left

private theorem plainMoment_deriv_eq {A : ℝ} (hA : 0 < A) (x : ℝ) :
    deriv (plainMomentPrimitive A) x = plainProfile A 1 x + x * deriv (plainProfile A 1) x := by
  change deriv (id * plainProfile A 1) x = _
  simpa only [id_eq, one_mul] using
    ((hasDerivAt_id x).mul ((plainProfile_contDiff hA 1).differentiable
      one_ne_zero x).hasDerivAt).deriv

private theorem logMoment_deriv_eq {A x : ℝ} (hA : 0 < A) (hx : 0 < x) :
    deriv (logMomentPrimitive A) x = logProfile A 1 x + plainProfile A 1 x +
      x * Real.log x * deriv (plainProfile A 1) x := by
  have hh := ((plainProfile_contDiff hA 1).differentiable one_ne_zero x).hasDerivAt
  have hlog := (Real.hasDerivAt_log hx.ne').mul hh
  have he : Real.log * plainProfile A 1 = logProfile A 1 :=
    (funext (logProfile_eq_log_mul A 1)).symm
  rw [he] at hlog
  have hprod := ((hasDerivAt_id x).mul hlog).deriv
  change deriv (logMomentPrimitive A) x = _ at hprod
  simp only [id_eq, one_mul] at hprod
  rw [hprod]
  field_simp
  ring

/-- Genuine positive-axis L1 of the first actual pole derivative weight. -/
theorem actual_plain_pole_derivative_integrable (A : ℝ) (hA : 0 < A) :
    IntegrableOn (fun x => x * deriv (plainProfile A 1) x) (Ioi (0 : ℝ)) := by
  have hd : Integrable (deriv (plainMomentPrimitive A)) :=
    ((plainMoment_contDiff hA).continuous_deriv le_rfl).integrable_of_hasCompactSupport
      (plainMoment_compact hA).deriv
  apply (hd.integrableOn.sub (plainProfile_integrable hA 1).integrableOn).congr
  filter_upwards with x
  simp only [Pi.sub_apply]
  rw [plainMoment_deriv_eq hA x]
  simp only [add_sub_cancel_left]

/-- Compact FTC and the maintained full-axis source zero annihilate the first pole moment. -/
theorem actual_plain_pole_derivative_integral_zero (A : ℝ) (hA : 1 ≤ A) :
    (∫ x in Ioi (0 : ℝ), x * deriv (plainProfile A 1) x) = 0 := by
  have hp : 0 < A := by linarith
  have hz := HasCompactSupport.integral_Ioi_deriv_eq
    (plainMoment_contDiff hp) (plainMoment_compact hp) (0 : ℝ)
  simp only [plainMomentPrimitive, zero_mul, neg_zero] at hz
  rw [integral_congr_ae (by filter_upwards with x; exact plainMoment_deriv_eq hp x),
    integral_add (plainProfile_integrable hp 1).integrableOn
      (actual_plain_pole_derivative_integrable A hp),
    plainProfile_positive_integral_zero hA 1, zero_add] at hz
  exact hz

/-- Genuine positive-axis L1 of the logarithmic actual pole derivative weight. -/
theorem actual_log_pole_derivative_integrable (A : ℝ) (hA : 0 < A) :
    IntegrableOn (fun x => x * Real.log x * deriv (plainProfile A 1) x) (Ioi (0 : ℝ)) := by
  have hd : Integrable (deriv (logMomentPrimitive A)) :=
    ((logMoment_contDiff hA).continuous_deriv le_rfl).integrable_of_hasCompactSupport
      (logMoment_compact hA).deriv
  apply ((hd.integrableOn.sub (logProfile_integrable hA 1).integrableOn).sub
    (plainProfile_integrable hA 1).integrableOn).congr
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
  simp only [Pi.sub_apply]
  rw [logMoment_deriv_eq hA hx]
  ring

/-- The genuine full logarithmic source zero also annihilates the next actual pole moment. -/
theorem actual_log_pole_derivative_integral_zero (A : ℝ) (hA : 1 ≤ A) :
    (∫ x in Ioi (0 : ℝ), x * Real.log x * deriv (plainProfile A 1) x) = 0 := by
  have hp : 0 < A := by linarith
  have hz := HasCompactSupport.integral_Ioi_deriv_eq
    (logMoment_contDiff hp) (logMoment_compact hp) (0 : ℝ)
  simp only [logMomentPrimitive, zero_mul, neg_zero] at hz
  rw [integral_congr_ae (by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
    exact logMoment_deriv_eq hp hx),
    integral_add (f := fun x => logProfile A 1 x + plainProfile A 1 x)
      ((logProfile_integrable hp 1).integrableOn.add
        (plainProfile_integrable hp 1).integrableOn)
          (actual_log_pole_derivative_integrable A hp),
    integral_add (logProfile_integrable hp 1).integrableOn
      (plainProfile_integrable hp 1).integrableOn,
    logProfile_positive_integral_zero hA 1, plainProfile_positive_integral_zero hA 1] at hz
  simpa only [zero_add] using hz

/-- The complete continuous Mellin polynomial has its own genuine derivative L1. -/
theorem actual_mellin_pole_derivative_integrable (A : ℝ) (hA : 0 < A) :
    IntegrableOn (fun x => x * (Real.log x - 1) * deriv (plainProfile A 1) x)
      (Ioi (0 : ℝ)) := by
  apply ((actual_log_pole_derivative_integrable A hA).sub
    (actual_plain_pole_derivative_integrable A hA)).congr
  filter_upwards with x
  simp only [Pi.sub_apply]
  ring

/-- The exact continuous source pole polynomial vanishes on the entire positive axis. -/
theorem actual_mellin_pole_derivative_integral_zero (A : ℝ) (hA : 1 ≤ A) :
    (∫ x in Ioi (0 : ℝ), x * (Real.log x - 1) * deriv (plainProfile A 1) x) = 0 := by
  rw [show (fun x => x * (Real.log x - 1) * deriv (plainProfile A 1) x) =
    fun x => x * Real.log x * deriv (plainProfile A 1) x - x * deriv (plainProfile A 1) x by
      funext x; ring]
  rw [integral_sub (actual_log_pole_derivative_integrable A (by linarith))
    (actual_plain_pole_derivative_integrable A (by linarith)),
    actual_log_pole_derivative_integral_zero A hA, actual_plain_pole_derivative_integral_zero A hA]
  simp

/-- Independently retained actual Psi and natural-floor signed density. -/
def actualPsiFloorDensity (A x : ℝ) : ℝ :=
  (Chebyshev.psi x - (⌊x⌋₊ : ℝ)) * deriv (plainProfile A 1) x

def actualPsiFloorPairing (A : ℝ) : ℝ := -(∫ x in Ioi (0 : ℝ), actualPsiFloorDensity A x)

/-- Genuine actual Psi-floor L1 is recovered before splitting off the checked zero pole moments. -/
theorem actualPsiFloorDensity_integrable (A : ℝ) (hA : 91 ≤ A) :
    IntegrableOn (actualPsiFloorDensity A) (Ioi (0 : ℝ)) := by
  apply (((actualPsiContinuousDensity_integrable A hA).add
    ((actual_mellin_pole_derivative_integrable A (by linarith)).const_mul
      (shortReciprocalMoebius (vaughanCutoff A)))).sub
        ((actual_plain_pole_derivative_integrable A (by linarith)).const_mul
          (shortLogReciprocalMoebius (vaughanCutoff A)))).congr
  filter_upwards with x
  simp only [Pi.sub_apply, Pi.add_apply]
  unfold actualPsiContinuousDensity actualPsiFloorDensity
  ring

/-- Both actual signed pole coefficients disappear after their L1 and moments are proved. -/
theorem actualPsiContinuousPairing_eq_psi_floor (A : ℝ) (hA : 91 ≤ A) :
    actualPsiContinuousPairing A = actualPsiFloorPairing A := by
  unfold actualPsiContinuousPairing actualPsiFloorPairing
  congr 1
  have he : actualPsiContinuousDensity A = fun x => actualPsiFloorDensity A x -
      shortReciprocalMoebius (vaughanCutoff A) *
        (x * (Real.log x - 1) * deriv (plainProfile A 1) x) +
          shortLogReciprocalMoebius (vaughanCutoff A) * (x * deriv (plainProfile A 1) x) := by
    funext x
    unfold actualPsiContinuousDensity actualPsiFloorDensity
    ring
  rw [he,
    integral_add (f := fun x => actualPsiFloorDensity A x -
      shortReciprocalMoebius (vaughanCutoff A) *
        (x * (Real.log x - 1) * deriv (plainProfile A 1) x))
      ((actualPsiFloorDensity_integrable A hA).sub
        ((actual_mellin_pole_derivative_integrable A (by linarith)).const_mul _))
          ((actual_plain_pole_derivative_integrable A (by linarith)).const_mul _),
    integral_sub (actualPsiFloorDensity_integrable A hA)
      ((actual_mellin_pole_derivative_integrable A (by linarith)).const_mul _),
    integral_const_mul, integral_const_mul,
    actual_mellin_pole_derivative_integral_zero A (by linarith),
    actual_plain_pole_derivative_integral_zero A (by linarith)]
  simp

/-- The complete leading source differs from actual Psi-floor work by the checked small F term. -/
theorem actual_leading_full_complement_sub_psi_floor_abs_le (A : ℝ) (hA : 91 ≤ A) :
    |fullPositiveKappa 1 * actualWeightedMoebiusHalfSum A +
      (literalOmegaComplementarySector A - plainInventory A) - actualPsiFloorPairing A| ≤
        (120 * Real.log (vaughanCutoff A : ℝ) ^ 2 +
          1280 * Real.log (vaughanCutoff A : ℝ) + 3840) / A := by
  rw [← actualPsiContinuousPairing_eq_psi_floor A hA]
  exact actual_leading_full_complement_sub_psi_continuous_abs_le A hA

end
end FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation
