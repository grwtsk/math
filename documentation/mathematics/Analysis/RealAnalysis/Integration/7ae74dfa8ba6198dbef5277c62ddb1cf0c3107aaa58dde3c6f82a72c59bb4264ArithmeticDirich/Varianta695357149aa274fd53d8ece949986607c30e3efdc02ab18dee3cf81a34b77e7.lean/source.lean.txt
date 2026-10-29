-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.FullQuadraticObstruction.Variant7ae74dfa8ba6198dbef5277c62ddb1cf0c3107aaa58dde3c6f82a72c59bb4264","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7ae74dfa8ba6198dbef5277c62ddb1cf0c3107aaa58dde3c6f82a72c59bb4264","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.FullQuadraticObstruction.Variant7ae74dfa8ba6198dbef5277c62ddb1cf0c3107aaa58dde3c6f82a72c59bb4264","mathematical_subject":"Analysis.Integration","original_sha256":"7ae74dfa8ba6198dbef5277c62ddb1cf0c3107aaa58dde3c6f82a72c59bb4264","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/7a/7ae74dfa8ba6198dbef5277c62ddb1cf0c3107aaa58dde3c6f82a72c59bb4264--ArithmeticDirichletGramCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.FullQuadraticObstruction
import FormalResearch.MathematicalTooling.HalfLinePolynomialLaplace
import Mathlib.MeasureTheory.Integral.DominatedConvergence

namespace GRWTSK.Analysis.RealAnalysis.Integration.FullQuadraticObstruction.Variant7ae74dfa8ba6198dbef5277c62ddb1cf0c3107aaa58dde3c6f82a72c59bb4264

open MeasureTheory Set
#check ENNReal.ofReal_tsum_of_nonneg
#check hasFiniteIntegral_iff_ofReal
#check MeasureTheory.Integrable.ofReal
#check integral_exp_mul_complex_Ioi
#check MeasureTheory.integral_re
#check lintegral_tsum
#check MeasureTheory.integral_sub
#check ENNReal.tsum_coe_ne_top_iff_summable
#check MeasureTheory.hasFiniteIntegral_iff_enorm
#check Real.enorm_eq_ofReal
#check L2.inner_self_eq_norm_sq
#check inner_self_eq_norm_sq
