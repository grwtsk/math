-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EdgeBoundSetof.Variant40d5ff134c4ec321695c1552a36217ef57f016254d2eedbf4e358b8678c7e6d6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"40d5ff134c4ec321695c1552a36217ef57f016254d2eedbf4e358b8678c7e6d6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.EdgeBoundSetof.Variant40d5ff134c4ec321695c1552a36217ef57f016254d2eedbf4e358b8678c7e6d6","mathematical_subject":"Foundations.Unclassified","original_sha256":"40d5ff134c4ec321695c1552a36217ef57f016254d2eedbf4e358b8678c7e6d6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_edge_bound_forms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert.Tactic.IntervalAuto


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EdgeBoundSetof.Variant40d5ff134c4ec321695c1552a36217ef57f016254d2eedbf4e358b8678c7e6d6

theorem edge_bound_setof : ∀ x ∈ {x : ℝ | (0:ℝ) ≤ x ∧ x ≤ 1}, x * x ≤ (1 : ℚ) := by
  interval_bound

theorem edge_bound_and : ∀ x : ℝ, (0:ℝ) ≤ x ∧ x ≤ 1 → x * x ≤ (1 : ℚ) := by
  interval_bound

theorem edge_bound_arrow : ∀ x : ℝ, (0:ℝ) ≤ x → x ≤ 1 → x * x ≤ (1 : ℚ) := by
  interval_bound

theorem edge_bound_decimal : ∀ x ∈ Set.Icc (-0.5:ℝ) (1/3), x * x ≤ (1 : ℚ) := by
  interval_bound

theorem edge_bound_scientific : ∀ x ∈ Set.Icc (0:ℝ) (2.5:ℝ), x ≤ (3 : ℚ) := by
  interval_bound
