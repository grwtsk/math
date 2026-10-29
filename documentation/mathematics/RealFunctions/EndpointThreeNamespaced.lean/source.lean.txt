-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.EndpointExponentialEnvelopeLeThree.Variant844ab9e13796d51616807386249fccb4827ae1a707173987012daf76a001e1ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"844ab9e13796d51616807386249fccb4827ae1a707173987012daf76a001e1ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.EndpointExponentialEnvelopeLeThree.Variant844ab9e13796d51616807386249fccb4827ae1a707173987012daf76a001e1ae","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"844ab9e13796d51616807386249fccb4827ae1a707173987012daf76a001e1ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/844ab9e13796d5161680-EndpointThree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic

/-!
Independent quantitative endpoint-envelope refinement for RH issue #16.
This elementary scalar lemma does not estimate the signed strict interior.
AI attribution: OpenAI Codex independent challenge and proof construction.
-/


namespace GRWTSK.Analysis.EndpointExponentialEnvelopeLeThree.Variant844ab9e13796d51616807386249fccb4827ae1a707173987012daf76a001e1ae

namespace RH16IndependentChallenge

/-- The source's already proved exponential endpoint envelope costs at most three. -/
theorem endpoint_exponential_envelope_le_three (A : ℝ) (hA : 0 ≤ A) :
    2 * A ^ 3 * Real.exp (-A) ≤ 3 := by
  have hlinear : Real.exp 1 * (A / 3) ≤ Real.exp (A / 3) :=
    Real.exp_one_mul_le_exp
  have hcube : (Real.exp 1 * (A / 3)) ^ 3 ≤ (Real.exp (A / 3)) ^ 3 := by
    gcongr
  have he1 : (Real.exp (1 : ℝ)) ^ 3 = Real.exp (3 : ℝ) := by
    rw [← Real.exp_nat_mul]
    norm_num
  have heA : (Real.exp (A / 3)) ^ 3 = Real.exp A := by
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  rw [mul_pow, he1, heA] at hcube
  have hsum := Real.sum_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 3) 6
  norm_num [Finset.sum_range_succ, Nat.factorial] at hsum
  have hpoly : (2 / 3 : ℝ) * A ^ 3 ≤ Real.exp A := by
    have hpower : 0 ≤ (A / 3) ^ 3 := by positivity
    have hmul := mul_le_mul_of_nonneg_right hsum hpower
    nlinarith [hcube]
  have hmul := mul_le_mul_of_nonneg_right hpoly (Real.exp_pos (-A)).le
  have he : Real.exp A * Real.exp (-A) = 1 := by
    rw [← Real.exp_add]
    simp
  rw [he] at hmul
  nlinarith

end RH16IndependentChallenge

