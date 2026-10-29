-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.NonnegativeIntegralIntegralSwap.Variant781e94f9be38cc16279b0a2c76e0f44379d357037eded1a378d4fb191e74e894","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"781e94f9be38cc16279b0a2c76e0f44379d357037eded1a378d4fb191e74e894","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.NonnegativeIntegralIntegralSwap.Variant781e94f9be38cc16279b0a2c76e0f44379d357037eded1a378d4fb191e74e894","mathematical_subject":"Analysis.Integration","original_sha256":"781e94f9be38cc16279b0a2c76e0f44379d357037eded1a378d4fb191e74e894","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/78/781e94f9be38cc16279b0a2c76e0f44379d357037eded1a378d4fb191e74e894--TonelliAPI.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.MeasureTheory.Integral.Prod


namespace GRWTSK.Analysis.RealAnalysis.Integration.NonnegativeIntegralIntegralSwap.Variant781e94f9be38cc16279b0a2c76e0f44379d357037eded1a378d4fb191e74e894

open MeasureTheory

namespace ThetaTransportScratch

variable {α β : Type*} [MeasurableSpace α] [MeasurableSpace β]
  {μ : Measure α} {ν : Measure β} [SFinite μ] [SFinite ν]

/-- Nonnegative Tonelli, lifted to totalized real integrals through finite
slices in both directions. Outer integrability is not assumed. -/
theorem nonnegative_integral_integral_swap
    {f : α → β → ℝ}
    (hf : Measurable (Function.uncurry f))
    (hpos : ∀ x y, 0 ≤ f x y)
    (hleft : ∀ x, Integrable (f x) ν)
    (hright : ∀ y, Integrable (fun x => f x y) μ) :
    (∫ x, ∫ y, f x y ∂ν ∂μ) = ∫ y, ∫ x, f x y ∂μ ∂ν := by
  have hl (x : α) :
      ENNReal.ofReal (∫ y, f x y ∂ν) = ∫⁻ y, ENNReal.ofReal (f x y) ∂ν :=
    ofReal_integral_eq_lintegral_ofReal (hleft x)
      (Filter.Eventually.of_forall (hpos x))
  have hr (y : β) :
      ENNReal.ofReal (∫ x, f x y ∂μ) = ∫⁻ x, ENNReal.ofReal (f x y) ∂μ :=
    ofReal_integral_eq_lintegral_ofReal (hright y)
      (Filter.Eventually.of_forall fun x => hpos x y)
  rw [integral_eq_lintegral_of_nonneg_ae
      (Filter.Eventually.of_forall fun x => integral_nonneg (hpos x))
      hf.stronglyMeasurable.integral_prod_right.aestronglyMeasurable,
    integral_eq_lintegral_of_nonneg_ae
      (Filter.Eventually.of_forall fun y => integral_nonneg fun x => hpos x y)
      hf.stronglyMeasurable.integral_prod_left.aestronglyMeasurable]
  simp_rw [hl, hr]
  exact congrArg ENNReal.toReal (lintegral_lintegral_swap hf.ennreal_ofReal.aemeasurable)

#print axioms nonnegative_integral_integral_swap

end ThetaTransportScratch
