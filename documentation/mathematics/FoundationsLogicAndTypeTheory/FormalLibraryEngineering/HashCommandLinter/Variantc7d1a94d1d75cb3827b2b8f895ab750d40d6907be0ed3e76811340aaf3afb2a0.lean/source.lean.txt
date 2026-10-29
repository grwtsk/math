-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GuardMsgs.Variant4e5198d344125faa4020a01c82579b10476e2adee8ed87640139ca9d8cf9ffc8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e5198d344125faa4020a01c82579b10476e2adee8ed87640139ca9d8cf9ffc8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GuardMsgs.Variant4e5198d344125faa4020a01c82579b10476e2adee8ed87640139ca9d8cf9ffc8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4e5198d344125faa4020a01c82579b10476e2adee8ed87640139ca9d8cf9ffc8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/HashCommandLinter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.GuardMsgs
import Mathlib.Tactic.AdaptationNote
import Mathlib.Tactic.Linter.HashCommandLinter


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GuardMsgs.Variant4e5198d344125faa4020a01c82579b10476e2adee8ed87640139ca9d8cf9ffc8

set_option linter.hashCommand true

section ignored_commands

-- As a consequence of https://github.com/leanprover/lean4/pull/5644, `#guard_msgs in`, even without a doc-string,
-- does not triggers the `#`-command linter.
#guard_msgs in
#guard_msgs in
#adaptation_note /-- testing that the hashCommand linter ignores this. -/

/-- info: 0 -/
#guard_msgs in
-- emits a message -- the linter allows it
#eval 0

/-- info: constructor PUnit.unit.{u} : PUnit -/
#guard_msgs in
-- emits a message -- the linter allows it
#print PUnit.unit

/-- info: 0 : Nat -/
#guard_msgs in
-- emits a message -- the linter allows it
#check 0

/--
warning: `#`-commands, such as '#eval', are not allowed in 'Mathlib'
note: this linter can be disabled with `set_option linter.hashCommand false`
-/
#guard_msgs in
-- emits an empty message -- the linter allows it
#eval show Lean.MetaM _ from do guard true

-- not a `#`-command and not emitting a message: the linter allows it
run_cmd if false then Lean.logInfo "0"
end ignored_commands

section linted_commands
/--
warning: `#`-commands, such as '#guard', are not allowed in 'Mathlib'
note: this linter can be disabled with `set_option linter.hashCommand false`
-/
#guard_msgs in
#guard true

set_option linter.unusedTactic false in
/--
warning: `#`-commands, such as '#check_tactic', are not allowed in 'Mathlib'
note: this linter can be disabled with `set_option linter.hashCommand false`
-/
#guard_msgs in
#check_tactic True ~> True by skip

-- Testing that the linter enters `in` recursively.

/--
warning: `#`-commands, such as '#guard', are not allowed in 'Mathlib'
note: this linter can be disabled with `set_option linter.hashCommand false`
-/
#guard_msgs in
variable (n : Nat) in
#guard true

/--
warning: `#`-commands, such as '#guard', are not allowed in 'Mathlib'
note: this linter can be disabled with `set_option linter.hashCommand false`
-/
#guard_msgs in
open Nat in
variable (n : Nat) in
variable (n : Nat) in
#guard true

/--
warning: `#`-commands, such as '#guard', are not allowed in 'Mathlib'
note: this linter can be disabled with `set_option linter.hashCommand false`
-/
#guard_msgs in
open Nat in
variable (n : Nat) in
#guard true

-- a test for `withSetOptionIn'`
set_option linter.unusedVariables false in
example {n : Nat} : Nat := 0

section warningAsError

-- if `warningAsError = true`, log an info (instead of a warning) on all `#`-commands, noisy or not
set_option warningAsError true
/--
info: 0
---
info: `#`-commands, such as '#eval', are not allowed in 'Mathlib' [linter.hashCommand]
-/
#guard_msgs in
#eval 0

/--
info: `#`-commands, such as '#guard', are not allowed in 'Mathlib' [linter.hashCommand]
-/
#guard_msgs in
#guard true

end warningAsError

end linted_commands
