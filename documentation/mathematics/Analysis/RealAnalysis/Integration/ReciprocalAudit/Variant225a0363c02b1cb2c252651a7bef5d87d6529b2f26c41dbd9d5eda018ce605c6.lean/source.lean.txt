-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ReciprocalKernel.Variant476814e9f1c81cce40cd7a1952d0f3f04789798c0985bb91cfd439b2d7bcbe9b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"476814e9f1c81cce40cd7a1952d0f3f04789798c0985bb91cfd439b2d7bcbe9b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ReciprocalKernel.Variant476814e9f1c81cce40cd7a1952d0f3f04789798c0985bb91cfd439b2d7bcbe9b","mathematical_subject":"Analysis.Integration","original_sha256":"476814e9f1c81cce40cd7a1952d0f3f04789798c0985bb91cfd439b2d7bcbe9b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/reciprocal_audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.Analysis.ReciprocalKernel

namespace GRWTSK.Analysis.RealAnalysis.Integration.ReciprocalKernel.Variant476814e9f1c81cce40cd7a1952d0f3f04789798c0985bb91cfd439b2d7bcbe9b

open FormalResearch.Analysis.ReciprocalKernel MeasureTheory Set
#check kernel_integrable
#check kernel_integral_quarter
#check sum_bounds
#check frequency_sum_bounds
#print axioms kernel_zero_sum
#print axioms kernel_integrable
#print axioms kernel_integral_quarter
#print axioms sum_bounds
#print axioms frequency_sum_bounds
example : (∑' n : ℕ, kernel 0 (n + 1 / 4)) = 0 := kernel_zero_sum _
example (b : ℝ) : IntegrableOn (kernel b) (Ioi (1 / 4)) :=
  kernel_integrable b (1 / 4) (by norm_num)
example : kernel 1 (1 / 4) = 64 / 17 := by norm_num [kernel]
