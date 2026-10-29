-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.GaussianIntegral.Variant6bcc2e9a6df44b537efaee3cd49a9a8dbfd945dadc49df64dc88b35f8f7e12a4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6bcc2e9a6df44b537efaee3cd49a9a8dbfd945dadc49df64dc88b35f8f7e12a4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.GaussianIntegral.Variant6bcc2e9a6df44b537efaee3cd49a9a8dbfd945dadc49df64dc88b35f8f7e12a4","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"6bcc2e9a6df44b537efaee3cd49a9a8dbfd945dadc49df64dc88b35f8f7e12a4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/fractional-sampling/Apis2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral
import Mathlib.MeasureTheory.Function.Floor

namespace GRWTSK.Analysis.MeasureTheory.GaussianIntegral.Variant6bcc2e9a6df44b537efaee3cd49a9a8dbfd945dadc49df64dc88b35f8f7e12a4

open MeasureTheory Set
#check integral_neg_eq_self
#check MeasureTheory.Integrable.comp_neg
#check integrable_comp_neg_iff
#check measurePreserving_neg
#check MeasureTheory.MeasurePreserving.integrable_comp
#check MeasureTheory.IntegrableOn.integrable_indicator
#check integrable_indicator_iff
#check Real.measurable_log
#check measurable_log
#check measurable_pow
#check Real.measurable_rpow_const
#check Measurable.pow_const
#check Measurable.rpow_const
#check IntegrableOn.mono'
#check IntegrableOn.congr_fun
#check setIntegral_mono_on
#check Real.hasDerivAt_exp
#check Real.exp_injective
#check Real.exp_nonneg
#check ae_neq
#check ae_ne
#check Real.integrableOn_rpow_mul_exp_neg_mul_rpow
#check Real.integral_rpow_mul_exp_neg_mul_Ioi
