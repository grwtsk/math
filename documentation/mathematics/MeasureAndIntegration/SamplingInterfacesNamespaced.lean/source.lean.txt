-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.AbelSummation.Variant7d467e57f20ad1660dd6b77bc90d2c7ee6462cc0c08b74c5cf8bbcf5624362a0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d467e57f20ad1660dd6b77bc90d2c7ee6462cc0c08b74c5cf8bbcf5624362a0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.AbelSummation.Variant7d467e57f20ad1660dd6b77bc90d2c7ee6462cc0c08b74c5cf8bbcf5624362a0","mathematical_subject":"Analysis.Integration","original_sha256":"7d467e57f20ad1660dd6b77bc90d2c7ee6462cc0c08b74c5cf8bbcf5624362a0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/arithmetic-routes/SamplingInterfaces.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.AbelSummation
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts

namespace GRWTSK.Analysis.RealAnalysis.Integration.AbelSummation.Variant7d467e57f20ad1660dd6b77bc90d2c7ee6462cc0c08b74c5cf8bbcf5624362a0

#check intervalIntegral.integral_mul_deriv_eq_deriv_mul
#check MeasureTheory.IntegrableOn.mul_continuousOn
#check ContinuousOn.mul_integrableOn
#check MeasureTheory.IntegrableOn.mul_continuousOn_of_subset
#check ContinuousOn.integrableOn_Icc
#check intervalIntegrable_iff_integrableOn_Icc_of_le
#check intervalIntegral.integral_sub
#check intervalIntegral.integral_congr
#check Finset.Icc_eq_cons_Ioc
#check Finset.card_Icc
#check Nat.card_Icc
#check ContDiff.continuous_deriv
#check ContDiff.differentiable
#check intervalIntegral.abs_integral_le_integral_abs
