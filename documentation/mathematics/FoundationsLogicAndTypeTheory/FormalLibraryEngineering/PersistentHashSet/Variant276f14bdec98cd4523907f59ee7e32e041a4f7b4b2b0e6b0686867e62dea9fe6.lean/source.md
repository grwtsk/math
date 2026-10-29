# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PersistentHashSet.Variant276f14bdec98cd4523907f59ee7e32e041a4f7b4b2b0e6b0686867e62dea9fe6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51e33e8487a373471e88d2a5895d16e58413442a` · SHA-256 `276f14bdec98cd4523907f59ee7e32e041a4f7b4b2b0e6b0686867e62dea9fe6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Lean.Data.PersistentHashSet

namespace Lean.PersistentHashSet

variable [BEq α] [Hashable α]

instance : ForIn m (PersistentHashSet α) α where
  forIn s init step := do
    let mut state := init
    for (k, _) in s.set do
      match ← step k state with
      | .done state' => return state'
      | .yield state' => state := state'
    return state

/--
Returns `true` if `f` returns `true` for any element of the set.
-/
@[specialize]
def anyM [Monad m] (s : PersistentHashSet α) (f : α → m Bool) : m Bool := do
  for a in s do
    if ← f a then
      return true
  return false

/--
Returns `true` if `f` returns `true` for any element of the set.
-/
@[inline]
def any (s : PersistentHashSet α) (f : α → Bool) : Bool :=
  Id.run <| s.anyM f

/--
Returns `true` if `f` returns `true` for all elements of the set.
-/
@[specialize]
def allM [Monad m] (s : PersistentHashSet α) (f : α → m Bool) : m Bool := do
  for a in s do
    if ! (← f a) then
      return false
  return true

/--
Returns `true` if `f` returns `true` for all elements of the set.
-/
@[inline]
def all (s : PersistentHashSet α) (f : α → Bool) : Bool :=
  Id.run <| s.allM f

instance : BEq (PersistentHashSet α) where
  beq s t := s.all (t.contains ·) && t.all (s.contains ·)

/--
Similar to `insert`, but also returns a Boolean flag indicating whether an
existing entry has been replaced with `a => b`.
-/
@[inline]
def insert' (s : PersistentHashSet α) (a : α) : PersistentHashSet α × Bool :=
  let oldSize := s.size
  let s := s.insert a
  (s, s.size == oldSize)

/--
Insert all elements from a collection into a `PersistentHashSet`.
-/
def insertMany [ForIn Id ρ α] (s : PersistentHashSet α) (as : ρ) :
    PersistentHashSet α := Id.run do
  let mut s := s
  for a in as do
    s := s.insert a
  return s

/--
Obtain a `PersistentHashSet` from an array.
-/
@[inline]
protected def ofArray [BEq α] [Hashable α] (as : Array α) : PersistentHashSet α :=
  PersistentHashSet.empty.insertMany as

/--
Obtain a `PersistentHashSet` from a list.
-/
@[inline]
protected def ofList [BEq α] [Hashable α] (as : List α) : PersistentHashSet α :=
  PersistentHashSet.empty.insertMany as

/--
Merge two `PersistentHashSet`s.
-/
@[inline]
def merge (s t : PersistentHashSet α) : PersistentHashSet α :=
  s.insertMany t
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=87cc6f864791a4834bea083b07e214daf6e9a3b615592861608202c266b24de2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashSet/Variant276f14bdec98cd4523907f59ee7e32e041a4f7b4b2b0e6b0686867e62dea9fe6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
