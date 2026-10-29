# Meta Iterator Iterator Public Iterator — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7ab6194c39bf13bc0179bfb70d386d2f58b0f83` · SHA-256 `8a40a67f486b34521e40c60775b63a054f866b5549a84d08c50e742a9cec1d1f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joe Hendrix
-/
module

prelude
public import Lean.Meta.Basic

public section

namespace Lean.Meta

/--
Provides an interface for iterating over values that are bundled with the `Meta` state
they are valid in.
-/
protected structure Iterator (α : Type) where
  /-- Function for getting next value and state pair. -/
  next : MetaM (Option (α × Meta.SavedState))

namespace Iterator

/--
Convert a list into an iterator with the current state.
-/
def ofList (l : List α) : MetaM (Meta.Iterator α) := do
  let s ← saveState
  let ref ← IO.mkRef l
  let next := do
    restoreState s
    match ← ref.get with
    | [] =>
      pure none
    | r :: l =>
      ref.set l
      pure <| some (r, ←saveState)
  pure { next }

/--
Map and filter results of iterator and returning only those values returned
by `f`.
-/
partial def filterMapM (f : α → MetaM (Option β)) (L : Meta.Iterator α) : Meta.Iterator β :=
    { next := _next }
  where _next := do
    match ← L.next with
    | none =>
      pure none
    | some (v, s) =>
      restoreState s
      let r ← f v
      match r with
      | none =>
        _next
      | some r =>
        pure <| some (r, ←saveState)

/--
Find the first value in the iterator while resetting state or call `failure`
if empty.
-/
def head (L : Meta.Iterator α) : MetaM α := do
  match ← L.next with
  | none =>
    failure
  | some (x, s) =>
    restoreState s
    pure x

/--
Return the first value returned by the iterator that `f` succeeds on.
-/
def firstM (L : Meta.Iterator α) (f : α → MetaM (Option β)) : MetaM β := L.filterMapM f |>.head

end Iterator

end Lean.Meta
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e54b8995502c264a0de999db1796fc080c5add1f229bc0713ead96f7fb8984f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant8a40a67f486b34521e40c60775b63a054f866b5549a84d08c50e742a9cec1d1f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
