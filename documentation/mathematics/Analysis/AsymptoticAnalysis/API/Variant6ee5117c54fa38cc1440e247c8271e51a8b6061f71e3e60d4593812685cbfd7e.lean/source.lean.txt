-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.FrullaniIntegral.Variant01096e8bba19dc41545ca3211f9696a3ea582297613cf92ec160af4ce031f076","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"01096e8bba19dc41545ca3211f9696a3ea582297613cf92ec160af4ce031f076","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.FrullaniIntegral.Variant01096e8bba19dc41545ca3211f9696a3ea582297613cf92ec160af4ce031f076","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"01096e8bba19dc41545ca3211f9696a3ea582297613cf92ec160af4ce031f076","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass5/compensated_integral_review/API.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.FrullaniIntegral
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Tactic

namespace GRWTSK.Analysis.AsymptoticAnalysis.FrullaniIntegral.Variant01096e8bba19dc41545ca3211f9696a3ea582297613cf92ec160af4ce031f076

open MeasureTheory Set Filter
open scoped Topology
#check Convex.norm_image_sub_le_of_norm_hasDerivWithin_le
#check Integrable.mono'
#check ContinuousOn.aestronglyMeasurable
#check integrable_tsum
#check integrable_tsum_of_summable_integral_norm
#check MeasureTheory.integrable_tsum
#check Real.tendsto_exp_atBot
#check Real.tendsto_exp_neg_atTop_nhds_zero
#check Real.tendsto_exp_neg_atTop
#check HasSum.mul_left
#check HasSum.mul_right
#check hasSum_geometric_of_abs_lt_one
#check hasSum_geometric_of_norm_lt_one
#check integral_tsum_of_summable_integral_norm
