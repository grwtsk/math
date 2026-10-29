-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variantd72ef4afd518066bf26444b83d36ef37355c1307446bb82c9b5fdf591645a5d9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d72ef4afd518066bf26444b83d36ef37355c1307446bb82c9b5fdf591645a5d9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.T.Variantd72ef4afd518066bf26444b83d36ef37355c1307446bb82c9b5fdf591645a5d9","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"d72ef4afd518066bf26444b83d36ef37355c1307446bb82c9b5fdf591645a5d9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/lint_unreachableTactic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Linter.UnreachableTactic
import Std.Tactic.GuardMsgs


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variantd72ef4afd518066bf26444b83d36ef37355c1307446bb82c9b5fdf591645a5d9

/-- warning: this tactic is never executed [linter.unreachableTactic] -/
#guard_msgs in
example : 1 = 1 := by
  rfl <;> simp

/--
warning: declaration uses 'sorry'
-/
#guard_msgs in
example : 1 = 1 := by
  stop
  rfl

def t : Nat → Nat := sorry
@[simp]
theorem a : aa = 0 → t aa = 0 := sorry

#guard_msgs in
example (ha : aa = 0) : t aa = 0 := by
  simp (disch := assumption)
