-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.OrientedCrossEqRatio.Variantd5e46a1ff0e2b2cbe6778b8b722bdb869acbc46367326d4518002f5d5e6752f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d5e46a1ff0e2b2cbe6778b8b722bdb869acbc46367326d4518002f5d5e6752f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.OrientedCrossEqRatio.Variantd5e46a1ff0e2b2cbe6778b8b722bdb869acbc46367326d4518002f5d5e6752f1","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"d5e46a1ff0e2b2cbe6778b8b722bdb869acbc46367326d4518002f5d5e6752f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/d5/d5e46a1ff0e2b2cbe6778b8b722bdb869acbc46367326d4518002f5d5e6752f1--HostileRankTwo.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaTailTransport


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.OrientedCrossEqRatio.Variantd5e46a1ff0e2b2cbe6778b8b722bdb869acbc46367326d4518002f5d5e6752f1

namespace ThetaTailSignScratch

/-- The oriented rank-two cross-product is exactly a decreasing-ratio gap. -/
theorem oriented_cross_eq_ratio (a b c d : ℝ) (ha : a ≠ 0) (hb : b ≠ 0) :
    -(a * d - b * c) = a * b * (c / a - d / b) := by
  field_simp
  ring

/-- The first positive-even-tail confluent test isolates a third cumulant bound. -/
theorem third_connected_gap (m1 m2 m3 : ℝ) :
    3 * m1 * m2 - m3 = 2 * m1 ^ 3 - (m3 - 3 * m1 * m2 + 2 * m1 ^ 3) := by
  ring

/-- The continuous two-bump example's exact tail entries have the wrong sign. -/
theorem triangular_bumps_wrong_sign :
    -(29 * (200 : ℝ) - 24 * (945 / 4 : ℝ)) = -130 := by
  norm_num

/-- Positive exponential mixtures already fail the required orientation at rank two. -/
theorem exponential_mixture_wrong_sign {z : ℝ} (hz : 0 < z) (hz1 : z < 1) :
    -((1 + 1 : ℝ) * (z + z ^ 2 / 4) - (z + z ^ 2) * (1 + 1 / 4)) < 0 := by
  have h : 0 < (3 / 4 : ℝ) * z * (1 - z) := by positivity
  nlinarith

#print axioms oriented_cross_eq_ratio
#print axioms third_connected_gap
#print axioms triangular_bumps_wrong_sign
#print axioms exponential_mixture_wrong_sign

end ThetaTailSignScratch
