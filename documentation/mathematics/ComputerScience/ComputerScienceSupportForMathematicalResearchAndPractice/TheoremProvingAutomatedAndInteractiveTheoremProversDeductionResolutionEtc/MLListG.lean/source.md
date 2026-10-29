# MLList G — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `02ed1ee90ca90bff885bbf86bcb329bc65e8b01a` · SHA-256 `57e2ece3543914a22e2ac6a791dfbc4660761c764401c022c5fdce2187b98378`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean.Meta.Basic
import Batteries.Data.MLList.IO
import Batteries.Data.List.Basic

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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db1b45941853440cf72cbadea15abfff2ac92fdce6108b0ee6cdb7b05711f1ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MLList/Variant57e2ece3543914a22e2ac6a791dfbc4660761c764401c022c5fdce2187b98378.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
