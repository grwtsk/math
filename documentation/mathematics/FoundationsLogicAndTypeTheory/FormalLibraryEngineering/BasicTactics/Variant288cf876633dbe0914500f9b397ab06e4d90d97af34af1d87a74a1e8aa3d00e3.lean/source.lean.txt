-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant35c6585cafdd88d11bf59cd8653526695d270b4aeeeea1ae0926113e01cdd40d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"35c6585cafdd88d11bf59cd8653526695d270b4aeeeea1ae0926113e01cdd40d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Tactic.Variant35c6585cafdd88d11bf59cd8653526695d270b4aeeeea1ae0926113e01cdd40d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"35c6585cafdd88d11bf59cd8653526695d270b4aeeeea1ae0926113e01cdd40d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/basicTactics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Basic
import Batteries.Tactic.Init


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant35c6585cafdd88d11bf59cd8653526695d270b4aeeeea1ae0926113e01cdd40d

example : ∀ a b : Nat, a = b → b = a := by
  introv h
  exact h.symm

set_option linter.unusedTactic false in
example (n : Nat) : n = n := by
  induction n
  exacts [rfl, rfl]
  exacts []

set_option linter.unusedVariables false in
example (n : Nat) : Nat := by
  guard_hyp n : Nat
  let m : Nat := 1
  guard_hyp m := 1
  guard_hyp m : Nat := 1
  guard_target = Nat
  exact 0

example (a b : Nat) : a ≠ b → ¬ a = b := by
  intros
  by_contra H
  contradiction

example (a b : Nat) : ¬¬ a = b → a = b := by
  intros
  by_contra H
  contradiction

example (p _q : Prop) : ¬¬ p → p := by
  intros
  by_contra H
  contradiction

-- Test `iterate n ...`
example (n m : Nat) : Unit := by
  cases n
  cases m
  iterate 3 exact ()

-- Test `iterate ...`, which should repeat until failure.
example (n m : Nat) : Unit := by
  cases n
  cases m
  iterate exact ()

set_option linter.unusedTactic false in
example (n : Nat) : Nat := by
  iterate exact () -- silently succeeds, after iterating 0 times
  iterate exact n

example (p q r s : Prop) : p → q → r → s → (p ∧ q) ∧ (r ∧ s ∧ p) ∧ (p ∧ r ∧ q) := by
  intros
  repeat' constructor
  repeat' assumption

example (p q : Prop) : p → q → (p ∧ q) ∧ (p ∧ q ∧ p) := by
  intros
  constructor
  fail_if_success any_goals assumption
  all_goals constructor
  any_goals assumption
  constructor
  any_goals assumption
