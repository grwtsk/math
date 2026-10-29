-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualPrescribedComplexMode.Variant9a62e92979f8a559249c69e32d2dfa3d2926ff81f5134a58f02fc92c53f56260","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9a62e92979f8a559249c69e32d2dfa3d2926ff81f5134a58f02fc92c53f56260","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualPrescribedComplexMode.Variant9a62e92979f8a559249c69e32d2dfa3d2926ff81f5134a58f02fc92c53f56260","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"9a62e92979f8a559249c69e32d2dfa3d2926ff81f5134a58f02fc92c53f56260","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-refocus-20261006/dependencies/owner-source-captures/ActualPrescribedComplexCoefficient.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualComplexEndpointCoefficient

/-!
A prescribed nonzero complex mode has a strictly negative real ordinary square
of the literal actual endpoint coefficient. This is a source coefficient fact,
not a zero of zeta or an arithmetic covariance counterexample.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualPrescribedComplexMode.Variant9a62e92979f8a559249c69e32d2dfa3d2926ff81f5134a58f02fc92c53f56260

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualPrescribedComplexCoefficient
open SourceActualComplexEndpointAsymptotic SourceActualComplexEndpointCoefficient
noncomputable section

/-- A prescribed point in the open complex right half-plane. -/
def actualPrescribedComplexMode : ℂ := (1 + Complex.I) / 2

/-- The source coefficient evaluation is genuinely applicable at this mode. -/
theorem actualPrescribedComplexMode_re_pos : 0 < actualPrescribedComplexMode.re := by
  norm_num [actualPrescribedComplexMode, Complex.div_re, Complex.normSq]

/-- Exact evaluation of the independently defined actual improper coefficient. -/
theorem actualLeadingComplexCoefficient_at_prescribed_mode :
    actualLeadingComplexCoefficient actualPrescribedComplexMode = -384 - 1152 * Complex.I := by
  rw [actualLeadingComplexCoefficient_eq actualPrescribedComplexMode_re_pos]
  apply Complex.ext <;>
    norm_num [actualPrescribedComplexMode, pow_succ, Complex.div_re, Complex.div_im,
      Complex.normSq]

/-- The actual ordinary square has a strictly negative real component. -/
theorem actualLeadingComplexCoefficient_prescribed_square_re :
    (actualLeadingComplexCoefficient actualPrescribedComplexMode ^ 2).re = -1179648 := by
  rw [actualLeadingComplexCoefficient_at_prescribed_mode]
  norm_num [pow_two]

/-- This coefficient cannot be replaced by a nonnegative modulus-square expression. -/
theorem actualLeadingComplexCoefficient_prescribed_square_re_neg :
    (actualLeadingComplexCoefficient actualPrescribedComplexMode ^ 2).re < 0 := by
  rw [actualLeadingComplexCoefficient_prescribed_square_re]
  norm_num

end
end FormalResearch.RiemannHypothesis.ActualPrescribedComplexCoefficient
