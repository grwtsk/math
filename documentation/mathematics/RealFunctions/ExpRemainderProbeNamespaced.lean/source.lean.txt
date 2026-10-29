-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ExpNegativeRemainder.Variant9a8af6ed53ee9ea891961e5ede2641eff5d81c8d2b504accd0426a701a5464e6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9a8af6ed53ee9ea891961e5ede2641eff5d81c8d2b504accd0426a701a5464e6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ExpNegativeRemainder.Variant9a8af6ed53ee9ea891961e5ede2641eff5d81c8d2b504accd0426a701a5464e6","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"9a8af6ed53ee9ea891961e5ede2641eff5d81c8d2b504accd0426a701a5464e6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/damped-divisor-core/ExpRemainderProbe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Tactic

namespace GRWTSK.Analysis.ExpNegativeRemainder.Variant9a8af6ed53ee9ea891961e5ede2641eff5d81c8d2b504accd0426a701a5464e6

set_option autoImplicit false
private theorem exp_negative_remainder (u : ℝ) (hu : 0 ≤ u) :
    |Real.exp (-u) - 1 + u| ≤ u ^ 2 := by
  have hnon : 0 ≤ Real.exp (-u) - 1 + u := by
    linarith [Real.add_one_le_exp (-u)]
  rw [abs_of_nonneg hnon]
  have hpos : 0 < 1 + u := by positivity
  have he : Real.exp (-u) ≤ 1 / (1 + u) := by
    rw [Real.exp_neg, ← one_div]
    exact one_div_le_one_div_of_le hpos (by linarith [Real.add_one_le_exp u])
  have hr : 1 / (1 + u) ≤ 1 - u + u ^ 2 := by
    apply (div_le_iff₀ hpos).mpr
    nlinarith [pow_nonneg hu 3]
  linarith
