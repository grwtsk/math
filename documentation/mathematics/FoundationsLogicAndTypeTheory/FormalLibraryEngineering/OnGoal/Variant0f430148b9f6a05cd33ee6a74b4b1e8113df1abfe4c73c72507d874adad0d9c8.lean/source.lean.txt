-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GuardExpr.Variantb4eeaa709e23baa4210e00454c51920719f60cbcbab0a191f9a2ea7b1193c9fe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b4eeaa709e23baa4210e00454c51920719f60cbcbab0a191f9a2ea7b1193c9fe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.GuardExpr.Variantb4eeaa709e23baa4210e00454c51920719f60cbcbab0a191f9a2ea7b1193c9fe","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"b4eeaa709e23baa4210e00454c51920719f60cbcbab0a191f9a2ea7b1193c9fe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/on_goal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.GuardExpr
import Std.Tactic.PermuteGoals


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GuardExpr.Variantb4eeaa709e23baa4210e00454c51920719f60cbcbab0a191f9a2ea7b1193c9fe

example (p q r : Prop) : p → q → r → p ∧ q ∧ r := by
  intros
  constructor
  on_goal 2 =>
    guard_target = q ∧ r
    constructor
    assumption
    -- Note that we have not closed all the subgoals here.
  guard_target = p
  assumption
  guard_target = r
  assumption

example (p q r : Prop) : p → q → r → p ∧ q ∧ r := by
  intros a b c
  constructor
  fail_if_success on_goal -3 => unreachable!
  fail_if_success on_goal -1 => exact a
  fail_if_success on_goal 0 => unreachable!
  fail_if_success on_goal 2 => exact a
  fail_if_success on_goal 3 => unreachable!
  on_goal 1 => exact a
  constructor
  swap
  exact c
  exact b

example (p q : Prop) : p → q → p ∧ q := by
  intros a b
  constructor
  fail_if_success pick_goal -3
  fail_if_success pick_goal 0
  fail_if_success pick_goal 3
  pick_goal -1
  exact b
  exact a

example (p : Prop) : p → p := by
  intros
  fail_if_success swap -- can't swap with a single goal
  assumption
