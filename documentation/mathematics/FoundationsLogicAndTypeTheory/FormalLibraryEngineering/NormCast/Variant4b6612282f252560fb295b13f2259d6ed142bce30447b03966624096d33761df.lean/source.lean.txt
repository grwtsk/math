-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variantfb90bc8f58645778dab944cb41f0f590dd0af9fe2dbf1483345511152a2991aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fb90bc8f58645778dab944cb41f0f590dd0af9fe2dbf1483345511152a2991aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceUnit.Variantfb90bc8f58645778dab944cb41f0f590dd0af9fe2dbf1483345511152a2991aa","mathematical_subject":"Foundations.Unclassified","original_sha256":"fb90bc8f58645778dab944cb41f0f590dd0af9fe2dbf1483345511152a2991aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/norm_cast.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

/-!
# Tests for norm_cast involving `Rat`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variantfb90bc8f58645778dab944cb41f0f590dd0af9fe2dbf1483345511152a2991aa

set_option linter.missingDocs false

-- set_option trace.Meta.Tactic.simp true

variable (aq bq cq dq : Rat)

example : az = bz ↔ (az : Rat) = bz := by norm_cast

-- zero and one cause special problems
example : aq < (1 : Nat) ↔ (aq : Rat) < (1 : Int) := by norm_cast

--testing numerals
example : ((42 : Nat) : Rat) = 42 := by norm_cast
example : ((42 : Int) : Rat) = 42 := by norm_cast

-- We don't yet have `{n m : Int} : (↑n : Rat) ≤ ↑m ↔ n ≤ m` in Batteries
-- example (n : Int) (h : n + 1 > 0) : ((n + 1 : Int) : Rat) > 0 := by exact_mod_cast h
