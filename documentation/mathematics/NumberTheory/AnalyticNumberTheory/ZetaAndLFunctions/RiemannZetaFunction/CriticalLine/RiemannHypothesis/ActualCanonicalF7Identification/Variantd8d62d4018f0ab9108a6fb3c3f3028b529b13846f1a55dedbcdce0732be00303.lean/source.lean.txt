-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualF7TimeDensityEq.Variant63c34dad888f196955d8cbb99bfc5f89f5afa26c6b38e0a673289994cb3a6f4d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63c34dad888f196955d8cbb99bfc5f89f5afa26c6b38e0a673289994cb3a6f4d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualF7TimeDensityEq.Variant63c34dad888f196955d8cbb99bfc5f89f5afa26c6b38e0a673289994cb3a6f4d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"63c34dad888f196955d8cbb99bfc5f89f5afa26c6b38e0a673289994cb3a6f4d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T042254Z-1791346974617337000/ActualCanonicalF7Identification.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualF7TailAdapter
import RootActualXiTailPrimitiveAbel

/-!
Identify the independently named actual physical primitive and weight.
All real terminal times are retained, including reverse orientation below seven.
No arithmetic average or signed lower estimate is introduced.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualF7TimeDensityEq.Variant63c34dad888f196955d8cbb99bfc5f89f5afa26c6b38e0a673289994cb3a6f4d

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualCanonicalF7Identification
open RootActualXiTailPrimitive RootActualXiTailPrimitiveAbel
noncomputable section

/-- The exact full shifted Chebyshev time density is the same source expression. -/
theorem actualF7_time_density_eq (t : ℝ) :
    RH16ActualF7.timeXiDensity t = actualXiTailTimeDensity t := by
  rfl

/-- The physical and time primitives agree at every real terminal time. -/
theorem actualF7_eq_anchored_primitive (t : ℝ) :
    RH16ActualF7.actualF7 t = actualAnchoredXiTailPrimitive t := by
  rw [actualAnchoredXiTailPrimitive_eq_physical]
  rfl

/-- Both versions use the same minus-sign physical correlation weight. -/
theorem actualF7_minus_weight_eq (A t : ℝ) :
    RH16ActualF7.minusCorrelationWeight A t = actualXiTailSourceTest A t := by
  rfl

end
end FormalResearch.RiemannHypothesis.ActualCanonicalF7Identification
