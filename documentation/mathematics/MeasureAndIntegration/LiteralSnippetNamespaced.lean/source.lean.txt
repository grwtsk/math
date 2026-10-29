-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SourceUnit.Variant8620735098df603bc363e1a83b48c21e15c465db5478469e009c869ac2db4a81","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8620735098df603bc363e1a83b48c21e15c465db5478469e009c869ac2db4a81","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SourceUnit.Variant8620735098df603bc363e1a83b48c21e15c465db5478469e009c869ac2db4a81","mathematical_subject":"Analysis.Integration","original_sha256":"8620735098df603bc363e1a83b48c21e15c465db5478469e009c869ac2db4a81","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-covariance/literal-snippet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}


namespace GRWTSK.Analysis.RealAnalysis.Integration.SourceUnit.Variant8620735098df603bc363e1a83b48c21e15c465db5478469e009c869ac2db4a81

namespace ExponentialCovarianceLiteral
open MeasureTheory Set Filter
open scoped ComplexConjugate
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator HalfLineExtension FullLineConvolution
open FixedSourceKernel FixedLaplaceContinuation
open ExponentialCovarianceScratch
noncomputable section

example (a : ℝ) (ha : 0 < a) :
    controller a ha = exponentialVector (a : ℂ) (by simpa using ha) := rfl
example (a : ℝ) (ha : 0 < a) : response a ha = sourceOperator (controller a ha) := rfl
example (a : ℝ) (ha : 0 < a) :
    controller a ha =ᵐ[halfLineMeasure] (fun t : ℝ => (Real.exp (-a * t) : ℂ)) :=
  controller_ae a ha
example (a b : ℝ) (ha : 0 < a) (hb : 0 < b) :
    inner ℂ (controller a ha) (controller b hb) = ((1 / (a + b) : ℝ) : ℂ) :=
  controller_inner a b ha hb
example (a : ℝ) (ha : 0 < a) :
    inner ℂ referenceVector (response a ha) = actualLaplace 1 / (1 + (a : ℂ)) :=
  reference_inner_response a ha
example (a : ℝ) (ha : 0 < a) :
    response a ha =ᵐ[halfLineMeasure]
      (fun t => ∫ s in Ioc 0 t, ((fixedKernel (t - s) * Real.exp (-a * s) : ℝ) : ℂ)) :=
  response_ae a ha
example (s : ℝ) : signedCorrelation s =
    ∫ u : ℝ in Ioi 0, fixedKernel u * fixedKernel (u + s) := rfl
example (a : ℝ) : signedCovariance a =
    ∫ s : ℝ in Ioi 0, Real.exp (-a * s) * signedCorrelation s := rfl
example (s : ℝ) :
    IntegrableOn (fun u : ℝ => fixedKernel u * fixedKernel (u + s)) (Ioi 0) :=
  signedCorrelation_integrable s
example (u : ℝ) : (∫ s : ℝ, ‖fixedKernel (u + s)‖) = ∫ s : ℝ, ‖fixedKernel s‖ :=
  shifted_kernel_norm_integral u
example : Integrable (fun p : ℝ × ℝ => fixedKernel p.1 * fixedKernel (p.1 + p.2))
    (halfLineMeasure.prod halfLineMeasure) := signed_product_integrable
example (a : ℝ) (ha : 0 ≤ a) :
    Integrable (fun p : ℝ × ℝ =>
      Real.exp (-a * p.2) * (fixedKernel p.1 * fixedKernel (p.1 + p.2)))
      (halfLineMeasure.prod halfLineMeasure) := weighted_signed_product_integrable a ha
example (a : ℝ) (ha : 0 ≤ a) :
    IntegrableOn (fun s : ℝ => Real.exp (-a * s) * signedCorrelation s) (Ioi 0) :=
  signedCovariance_integrable a ha
example (a : ℝ) (ha : 0 ≤ a) : signedCovariance a =
    ∫ u : ℝ in Ioi 0, ∫ s : ℝ in Ioi 0,
      Real.exp (-a * s) * (fixedKernel u * fixedKernel (u + s)) :=
  signedCovariance_eq_reordered a ha
example (u v : ℝ) (f : FullLineConvolution.FullH) :
    fullShift u (fullShift v f) = fullShift (u + v) f := fullShift_add u v f
example (a b u v : ℝ) : overlap a b u v =
    if u ≤ v then Real.exp (-a * (v - u)) / (a + b)
    else Real.exp (-b * (u - v)) / (a + b) := rfl
example (a b : ℝ) (ha : 0 < a) (hb : 0 < b) (u v : ℝ) (huv : u ≤ v) :
    inner ℂ (fullShift u (zeroExtension (controller a ha)))
      (fullShift v (zeroExtension (controller b hb))) =
      ((Real.exp (-a * (v - u)) / (a + b) : ℝ) : ℂ) :=
  shifted_controller_inner_of_le a b ha hb u v huv
example (a b : ℝ) (ha : 0 < a) (hb : 0 < b) (u v : ℝ) :
    inner ℂ (fullShift u (zeroExtension (controller a ha)))
      (fullShift v (zeroExtension (controller b hb))) = (overlap a b u v : ℂ) :=
  shifted_controller_inner a b ha hb u v
example (a b : ℝ) (ha : 0 < a) (hb : 0 < b) (u v : ℝ) :
    |overlap a b u v| ≤ 1 / (a + b) := overlap_abs_le a b ha hb u v
example (a b : ℝ) : Measurable (fun p : ℝ × ℝ => overlap a b p.1 p.2) :=
  overlap_measurable a b
example (a b : ℝ) (p : ℝ × ℝ) :
    gramIntegrand a b p = fixedKernel p.1 * fixedKernel p.2 * overlap a b p.1 p.2 := rfl
example (a b : ℝ) (ha : 0 < a) (hb : 0 < b) :
    Integrable (gramIntegrand a b) (volume.prod volume) := gramIntegrand_integrable a b ha hb
example (f : ℝ → FullLineConvolution.FullH) (hf : Integrable f)
    (g : FullLineConvolution.FullH) :
    (∫ u : ℝ, inner ℂ (f u) g) = inner ℂ (∫ u : ℝ, f u) g := integral_inner_first f hf g
example (a b : ℝ) (ha : 0 < a) (hb : 0 < b) :
    inner ℂ (response a ha) (response b hb) =
      (((∫ u : ℝ, ∫ v : ℝ, gramIntegrand a b (u, v)) : ℝ) : ℂ) :=
  response_inner_full_double a b ha hb
example (a b : ℝ) (ha : 0 < a) (hb : 0 < b) :
    inner ℂ (response a ha) (response b hb) =
      (((∫ u : ℝ in Ioi 0, ∫ v : ℝ in Ioi 0, gramIntegrand a b (u, v)) : ℝ) : ℂ) :=
  response_inner_double a b ha hb
end
end ExponentialCovarianceLiteral
