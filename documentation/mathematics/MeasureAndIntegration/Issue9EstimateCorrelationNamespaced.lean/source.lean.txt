-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualCorrelationAtZero.Variant3b016679078b68f3e7c0edb19014572474b45e57ccf21cd05084e158af82005e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3b016679078b68f3e7c0edb19014572474b45e57ccf21cd05084e158af82005e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualCorrelationAtZero.Variant3b016679078b68f3e7c0edb19014572474b45e57ccf21cd05084e158af82005e","mathematical_subject":"Analysis.Integration","original_sha256":"3b016679078b68f3e7c0edb19014572474b45e57ccf21cd05084e158af82005e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/Issue9EstimateCorrelation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource

/-! Disposable Issue #9 estimate-route probe. This proves only actual correlation
normalization and a uniform bound on the prime-two correction; it does not prove
the all-scale arithmetic estimate or any later RH bridge obligation. -/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualCorrelationAtZero.Variant3b016679078b68f3e7c0edb19014572474b45e57ccf21cd05084e158af82005e

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateCorrelationProbe

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity BridgeNormalization

theorem actual_correlation_at_zero (A : ℝ) (hA : 1 ≤ A) :
    sourceCorrelation explicitSecondDerivative A 0 = 1 := by
  simpa [sourceCorrelation, pow_two] using normalized_square_integral A hA

theorem actual_correlation_abs_le_one (A t : ℝ) (hA : 1 ≤ A) :
    |sourceCorrelation explicitSecondDerivative A t| ≤ 1 := by
  let f := normalizedTest explicitSecondDerivative A
  have hf : Integrable (fun x ↦ f x ^ 2) volume := normalized_square_integrable A hA
  have hg : Integrable (fun x ↦ f (x - t) ^ 2) volume := hf.comp_sub_right t
  have hp : Integrable (fun x ↦ f x * f (x - t)) volume :=
    correlation_product_integrable A t (by linarith)
  have nf : (∫ x, f x ^ 2) = 1 := normalized_square_integral A hA
  have ng : (∫ x, f (x - t) ^ 2) = 1 := by
    rw [integral_sub_right_eq_self (μ := volume) (fun x ↦ f x ^ 2) t, nf]
  have upper := integral_mono (hp.const_mul 2) (hf.add hg)
    (fun x ↦ show 2 * (f x * f (x - t)) ≤ f x ^ 2 + f (x - t) ^ 2 by
      nlinarith [sq_nonneg (f x - f (x - t))])
  have lower := integral_mono (hp.const_mul (-2)) (hf.add hg)
    (fun x ↦ show -2 * (f x * f (x - t)) ≤ f x ^ 2 + f (x - t) ^ 2 by
      nlinarith [sq_nonneg (f x + f (x - t))])
  simp only [Pi.add_apply] at upper lower
  rw [integral_const_mul, integral_add hf hg, nf, ng] at upper lower
  change |∫ x, f x * f (x - t)| ≤ 1
  exact abs_le.mpr ⟨by linarith, by linarith⟩

theorem actual_prime_two_boundary_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |primeTwoBoundary explicitSecondDerivative A| ≤ 2 * Real.sqrt 2 := by
  have h := actual_correlation_abs_le_one A lowerEndpoint hA
  rw [primeTwoBoundary, abs_mul]
  have hcoef : |(-2 : ℝ) * Real.sqrt 2| = 2 * Real.sqrt 2 := by
    simp [abs_mul, Real.sqrt_nonneg]
  rw [hcoef]
  nlinarith [Real.sqrt_nonneg (2 : ℝ)]

#print axioms actual_correlation_at_zero
#print axioms actual_correlation_abs_le_one
#print axioms actual_prime_two_boundary_abs_le

end EstimateCorrelationProbe
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
