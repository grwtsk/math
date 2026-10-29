# Persistent Hash Map Public Of List — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17f8a0c9793b2a7be9a80a32dfbc10c447414d30` · SHA-256 `ecd3809e9edee709f5fba56a16fce438dee0124dd4d0411710e7e51cfaf6da10`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Data.PersistentHashMap

@[expose] public section

namespace Lean.PersistentHashMap

variable [BEq α] [Hashable α]

/--
Builds a `PersistentHashMap` from a list of key-value pairs. Values of
duplicated keys are replaced by their respective last occurrences.
-/
def ofList (xs : List (α × β)) : PersistentHashMap α β :=
  xs.foldl (init := {}) fun m (k, v) => m.insert k v

/--
Variant of `ofList` which accepts a function that combines values of duplicated
keys.
-/
def ofListWith (xs : List (α × β)) (f : α → β → β → β) :
    PersistentHashMap α β :=
  xs.foldl (init := {}) fun m (k, v) =>
    match m.find? k with
    | none    => m.insert k v
    | some v' => m.insert k <| f k v v'

/--
Builds a `PersistentHashMap` from an array of key-value pairs. Values of
duplicated keys are replaced by their respective last occurrences.
-/
def ofArray (xs : Array (α × β)) : PersistentHashMap α β :=
  xs.foldl (init := {}) fun m (k, v) => m.insert k v

/--
Variant of `ofArray` which accepts a function that combines values of duplicated
keys.
-/
def ofArrayWith (xs : Array (α × β)) (f : α → β → β → β) :
    PersistentHashMap α β :=
  xs.foldl (init := {}) fun m (k, v) =>
    match m.find? k with
    | none    => m.insert k v
    | some v' => m.insert k <| f k v v'

/--
Merge two `PersistentHashMap`s. The values of keys which appear in both maps are
combined using the monadic function `f`.
-/
@[specialize]
def mergeWithM [Monad m] (self other : PersistentHashMap α β)
    (f : α → β → β → m β) : m (PersistentHashMap α β) :=
  other.foldlM (init := self) fun map k v₂ =>
    match map.find? k with
    | none => return map.insert k v₂
    | some v₁ => return map.insert k (← f k v₁ v₂)

/--
Merge two `PersistentHashMap`s. The values of keys which appear in both maps are
combined using `f`.
-/
@[inline]
def mergeWith (self other : PersistentHashMap α β) (f : α → β → β → β) :
    PersistentHashMap α β :=
  -- Implementing this function directly, rather than via `mergeWithM`, gives
  -- us less constrained universes.
  other.foldl (init := self) fun map k v₂ =>
    match map.find? k with
    | none => map.insert k v₂
    | some v₁ => map.insert k <| f k v₁ v₂
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b824ae83390defab0ab132c6028b971f34792828614c07f625ef87313dfd8f33 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variantecd3809e9edee709f5fba56a16fce438dee0124dd4d0411710e7e51cfaf6da10.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
