-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.IntegralCongrIocOfLe.Variant6ead6e30d72884267697d688078bd646ee3926c546b83937a0a89e8ae91fa20f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6ead6e30d72884267697d688078bd646ee3926c546b83937a0a89e8ae91fa20f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.IntegralCongrIocOfLe.Variant6ead6e30d72884267697d688078bd646ee3926c546b83937a0a89e8ae91fa20f","mathematical_subject":"Analysis.Integration","original_sha256":"6ead6e30d72884267697d688078bd646ee3926c546b83937a0a89e8ae91fa20f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/16/PrimeNumberTheoremAnd-main 2/PrimeNumberTheoremAnd/Mathlib/MeasureTheory/Integral/IntervalIntegral/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic

/-!
# Interval-integral congruence lemmas

Congruence for interval integrals when the integrands agree on the oriented interval.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.IntegralCongrIocOfLe.Variant6ead6e30d72884267697d688078bd646ee3926c546b83937a0a89e8ae91fa20f

@[expose] public section

open Set MeasureTheory

namespace intervalIntegral

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable {f g : ℝ → E} {μ : Measure ℝ}

/-- If two functions agree on `Ioc a b`, their interval integrals agree. -/
theorem integral_congr_Ioc_of_le {a b : ℝ} (hab : a ≤ b)
    (h : ∀ u ∈ Ioc a b, f u = g u) :
    ∫ u in a..b, f u ∂μ = ∫ u in a..b, g u ∂μ := by
  refine integral_congr_ae' (Filter.Eventually.of_forall ?_) (Filter.Eventually.of_forall ?_) <;>
    intro u hu
  · exact h u hu
  · have hempty : Ioc b a = ∅ := Ioc_eq_empty hab.not_gt
    exact (hempty ▸ hu).elim

end intervalIntegral
