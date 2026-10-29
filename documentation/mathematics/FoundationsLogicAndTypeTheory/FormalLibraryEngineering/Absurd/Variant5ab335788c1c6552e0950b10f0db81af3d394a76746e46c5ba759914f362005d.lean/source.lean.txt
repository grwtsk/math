-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant5337bc852a97b79eb3447712a634ca76b5193df075867321d8b763e845b67c92","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5337bc852a97b79eb3447712a634ca76b5193df075867321d8b763e845b67c92","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Tactic.Variant5337bc852a97b79eb3447712a634ca76b5193df075867321d8b763e845b67c92","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"5337bc852a97b79eb3447712a634ca76b5193df075867321d8b763e845b67c92","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/absurd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Tactic.Basic

/-! Tests for `absurd` tactic -/

-- Basic example

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant5337bc852a97b79eb3447712a634ca76b5193df075867321d8b763e845b67c92

/--
error: unsolved goals
p : Prop
h : p
⊢ ¬p
-/
#guard_msgs in
example {p : Prop} (h : p) : 0 = 0 := by
  absurd h

-- Negative example
/--
error: unsolved goals
p : Prop
h : ¬p
⊢ p
-/
#guard_msgs in
example {p : Prop} (h : ¬p) : 0 = 1 := by
  absurd h

-- Inequality example
/--
error: unsolved goals
n : Nat
h : n ≠ 0
⊢ n = 0
-/
#guard_msgs in
example (h : n ≠ 0) : 0 = 2 := by
  absurd h

-- Example with implies false
/--
error: unsolved goals
p : Prop
h : p → False
⊢ p
-/
#guard_msgs in
example {p : Prop} (h : p → False) : 0 = 3 := by
  absurd h

/--
error: unsolved goals
p : Prop
h : p
⊢ ¬p
-/
#guard_msgs in
example {p : Prop} {h : p} : ∀ {x : True}, 0 = 0 := by
  absurd h

-- `·` should not be legal
/--
error: invalid occurrence of `·` notation, it must be surrounded by parentheses (e.g. `(· + 1)`)
---
error: unsolved goals
p : Prop
h : p
⊢ ∀ {x : True}, 0 = 0
-/
#guard_msgs in
example {p : Prop} {h : p} : ∀ {_ : True}, 0 = 0 := by
  absurd ·
