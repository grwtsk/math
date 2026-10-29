-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SamplingError.Variant08063b03afe4aa6e923b7c22985ad5eb895294dce2f8cb80eaf378b2eddf410b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"08063b03afe4aa6e923b7c22985ad5eb895294dce2f8cb80eaf378b2eddf410b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SamplingError.Variant08063b03afe4aa6e923b7c22985ad5eb895294dce2f8cb80eaf378b2eddf410b","mathematical_subject":"Analysis.Integration","original_sha256":"08063b03afe4aa6e923b7c22985ad5eb895294dce2f8cb80eaf378b2eddf410b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-zero-energy/AdmissionProbe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.SamplingError
import Mathlib.MeasureTheory.Integral.ExpDecay

namespace GRWTSK.Analysis.RealAnalysis.Integration.SamplingError.Variant08063b03afe4aa6e923b7c22985ad5eb895294dce2f8cb80eaf378b2eddf410b

open MeasureTheory Set Real Filter Finset
#check Finset.sum_Icc_eq_sum_range
#check Finset.sum_Ico_eq_sum_range
#check Finset.sum_Icc_succ_top
#check Finset.sum_Icc_succ_bot
#check Finset.sum_Ico_add
#check Finset.sum_Ico_eq_sum_range
#check IntegrableOn.union
#check integrableOn_union
#check integrableOn_univ
#check IntegrableOn.congr_fun
#check IntegrableOn.mono_set
#check integrableOn_const
#check integrableOn_congr_fun
#check MeasureTheory.integrableOn_Ioi_iff_integrableOn_Ici
#check Real.exp_neg_integrableOn_Ioi
#check exp_neg_integrableOn_Ioi
#check ContinuousOn.integrableOn_Icc
#check IntegrableOn.congr
#check memLp_two_iff_integrable_sq
#check MemLp
