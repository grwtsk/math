-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.G.Variant57e2ece3543914a22e2ac6a791dfbc4660761c764401c022c5fdce2187b98378","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"57e2ece3543914a22e2ac6a791dfbc4660761c764401c022c5fdce2187b98378","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.G.Variant57e2ece3543914a22e2ac6a791dfbc4660761c764401c022c5fdce2187b98378","mathematical_subject":"Computation.DataStructures","original_sha256":"57e2ece3543914a22e2ac6a791dfbc4660761c764401c022c5fdce2187b98378","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/MLList.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Meta.Basic
import Batteries.Data.MLList.IO
import Batteries.Data.List.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.G.Variant57e2ece3543914a22e2ac6a791dfbc4660761c764401c022c5fdce2187b98378

set_option linter.missingDocs false

/-! ### Test fix to performance problem in `asArray`. -/

def g (n : Nat) : MLList Lean.Meta.MetaM Nat := do
  for _ in [:n] do
    if true then
      continue
  return n

/-- info: #[3000] -/
-- This used to fail before add the `uncons?` field to the implementation of `MLList`.
#guard_msgs in
#eval MLList.asArray $ (g 3000)

/-!
### Test `MLList.ofTaskList`.

We generate three tasks which sleep for `100`, `50`, and `1` milliseconds respectively,
and then verify that `MLList.ofTaskList` return their results in the order they complete.
-/

/- This test is very flaky, so it's disabled for now.

def sleep (n : UInt32) : BaseIO (Task UInt32) :=
  IO.asTask (do IO.sleep n; return n) |>.map fun t => t.map fun
  | .ok n => n
  | .error _ => 0

def sleeps : MLList BaseIO UInt32 := .squash fun _ => do
  let r ← [100,50,1].map sleep |>.traverse id
  return .ofTaskList r

/-- info: [1, 50, 100] -/
#guard_msgs in
#eval sleeps.force
-/
