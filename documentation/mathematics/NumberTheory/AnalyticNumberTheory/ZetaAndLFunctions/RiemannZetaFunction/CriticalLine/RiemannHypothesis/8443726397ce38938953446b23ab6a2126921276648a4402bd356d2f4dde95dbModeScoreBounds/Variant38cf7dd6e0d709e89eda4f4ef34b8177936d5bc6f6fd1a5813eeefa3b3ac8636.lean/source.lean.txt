-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiModes.Variant8443726397ce38938953446b23ab6a2126921276648a4402bd356d2f4dde95db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8443726397ce38938953446b23ab6a2126921276648a4402bd356d2f4dde95db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaPhiModes.Variant8443726397ce38938953446b23ab6a2126921276648a4402bd356d2f4dde95db","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"8443726397ce38938953446b23ab6a2126921276648a4402bd356d2f4dde95db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/84/8443726397ce38938953446b23ab6a2126921276648a4402bd356d2f4dde95db--ModeScoreBounds.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiModes

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiModes.Variant8443726397ce38938953446b23ab6a2126921276648a4402bd356d2f4dde95db

example (A y : ℝ) (ha : 3 ≤ A) (hy : A ≤ y) :
  0 ≤ (9+12/(2*A-3)-4*A) - (9+12/(2*y-3)-4*y) := by
  have hdA : 0 < 2*A-3 := by linarith
  have hdy : 0 < 2*y-3 := by linarith
  have hdiv : 12/(2*y-3) ≤ 12/(2*A-3) := div_le_div_of_nonneg_left (by norm_num) hdA (by linarith)
  linarith
example (A n : ℝ) (ha : 3 ≤ A) (hn : 2 ≤ n) :
  (9+12/(2*A-3)-4*A) - (9+12/(2*(A*n^2)-3)-4*(A*n^2)) ≤ 5*A*(n^2-1) := by
  have hn2 : 4 ≤ n^2 := by nlinarith
  have hAn : 12 ≤ A*n^2 := by nlinarith [mul_nonneg (show 0≤A-3 by linarith) (show 0≤n^2-4 by linarith)]
  have hdA : 0 < 2*A-3 := by linarith
  have hdy : 0 < 2*(A*n^2)-3 := by linarith
  have hdiv : 12/(2*A-3) ≤ 4 := (div_le_iff₀ hdA).2 (by linarith)
  have hdiv0 : 0 ≤ 12/(2*(A*n^2)-3) := by positivity
  have hgap : 4 ≤ A*(n^2-1) := by nlinarith [mul_nonneg (show 0≤A-3 by linarith) (show 0≤n^2-4 by linarith)]
  nlinarith
