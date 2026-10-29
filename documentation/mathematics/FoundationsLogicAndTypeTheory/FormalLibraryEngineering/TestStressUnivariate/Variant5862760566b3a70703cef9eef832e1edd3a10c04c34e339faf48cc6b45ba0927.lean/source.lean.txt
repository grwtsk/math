-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanCert.Variant2a0ad6561d5cdf22a2ca1b4a4a7f6f9e47b0d9d725a36ad8f20dabe5d9089dc1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2a0ad6561d5cdf22a2ca1b4a4a7f6f9e47b0d9d725a36ad8f20dabe5d9089dc1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LeanCert.Variant2a0ad6561d5cdf22a2ca1b4a4a7f6f9e47b0d9d725a36ad8f20dabe5d9089dc1","mathematical_subject":"Foundations.Unclassified","original_sha256":"2a0ad6561d5cdf22a2ca1b4a4a7f6f9e47b0d9d725a36ad8f20dabe5d9089dc1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_stress_univariate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanCert.Variant2a0ad6561d5cdf22a2ca1b4a4a7f6f9e47b0d9d725a36ad8f20dabe5d9089dc1

open Set

-- Univariate stress tests for interval_bound.
example : ∀ x ∈ Icc (0 : ℝ) 1, Real.exp x ≤ 3 := by
  interval_bound

example : ∀ x ∈ Icc (-2 : ℝ) 2, Real.sin x + Real.cos x ≤ 2 := by
  interval_bound

example : ∀ x ∈ Icc (-1 : ℝ) 1, x ^ 4 + x ^ 2 ≤ (2 : ℚ) := by
  interval_bound

example : ∀ x ∈ Icc (0 : ℝ) 4, Real.sqrt x ≤ 2 := by
  interval_bound

example : ∀ x ∈ Icc (0 : ℝ) 2, Real.exp (Real.sin x) ≤ 3 := by
  interval_bound
