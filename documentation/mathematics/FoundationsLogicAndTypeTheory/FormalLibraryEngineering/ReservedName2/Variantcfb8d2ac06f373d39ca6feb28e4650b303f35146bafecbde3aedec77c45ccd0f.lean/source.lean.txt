-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.All.Variant3243c1499f91244329213febb6e4fd66d591b966a9af3db20f1bc1c34a53d87b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3243c1499f91244329213febb6e4fd66d591b966a9af3db20f1bc1c34a53d87b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.All.Variant3243c1499f91244329213febb6e4fd66d591b966a9af3db20f1bc1c34a53d87b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3243c1499f91244329213febb6e4fd66d591b966a9af3db20f1bc1c34a53d87b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Linter/PrivateModule/ReservedName2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

import Mathlib.Init
import all Mathlib.Tactic.Linter.PrivateModule
public import MathlibTest.Linter.PrivateModule.ReservedName1


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.All.Variant3243c1499f91244329213febb6e4fd66d591b966a9af3db20f1bc1c34a53d87b

open Lean

-- `foo.eq_1` is still reserved:
/-- info: true -/
#guard_msgs in
run_cmd do
  logInfo m!"{isReservedName (← getEnv) ``foo.eq_1}"

-- `foo.eq_1` is not yet realized:
/-- info: reserved names: [] -/
#guard_msgs in
#show_new_reserved

-- realize `foo.eq_1`:
/--
info: @[backward_defeq] theorem foo.eq_1 : foo = true :=
Eq.refl foo
-/
#guard_msgs in
#print foo.eq_1

-- Make sure `foo.eq_1` is in the local constants, and does not start with `_private`
/-- info: reserved names: [foo.eq_1] -/
#guard_msgs in
#show_new_reserved

-- The linter should fire despite the public name `foo.eq_1` being present
-- Run the linter on artificial `eoi` syntax so that we can actually guard the message
set_option linter.mathlibStandardSet true in
open Mathlib.Linter Parser in
/--
warning: The current module only contains private declarations.

Consider adding `public section` at the beginning of the module, or selectively marking declarations as `public`. Mark a `def` with `@[expose]` if downstream code needs it to be definitionally equal to its body (e.g. for `unfold`). Alternatively, add `@[expose] public section` to mark every definition as exposed.

Note: This linter can be disabled with `set_option linter.privateModule false`
-/
#guard_msgs in
run_cmd do
  let eoi := mkNode ``Command.eoi #[mkAtom .none ""]
  privateModule.run eoi
