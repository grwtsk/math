# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StoreInsts.Variant38545621ad95a1aa2e4cafe82ff3c0f4283d8a30cb62d8ab01d1ea4067b4cc27

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `971a05cc50e4bfa295560f47f4cfca5982744a08` · SHA-256 `38545621ad95a1aa2e4cafe82ff3c0f4283d8a30cb62d8ab01d1ea4067b4cc27`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Data.Order
public import Lean.Data.NameMap.Basic
public import Lake.Util.RBArray
public import Lake.Util.Family
public import Lake.Util.Store

open Lean
namespace Lake

public instance {cmp : κ → κ → Ordering} [Monad m] [Std.LawfulEqCmp cmp] : MonadDStore κ β (StateT (Std.DTreeMap κ β cmp) m) where
  fetch? k := modifyGet fun m => (m.get? k, m)
  store k a := modify (·.insert k a)

public instance {cmp : κ → κ → Ordering} [MonadLiftT (ST ω) m] [Monad m] [Std.LawfulEqCmp cmp] : MonadDStore κ β (StateRefT' ω (Std.DTreeMap κ β cmp) m) where
  fetch? k := modifyGet fun m => (m.get? k, m)
  store k a := modify (·.insert k a)

public instance [Monad m] : MonadStore κ α (StateT (RBArray κ α cmp) m) where
  fetch? k := modifyGet fun m => (m.find? k, m)
  store k a := modify (·.insert k a)

public instance [MonadLiftT (ST ω) m] [Monad m] : MonadStore κ α (StateRefT' ω (RBArray κ α cmp) m) where
  fetch? k := modifyGet fun m => (m.find? k, m)
  store k a := modify (·.insert k a)

public instance [Monad m] : MonadStore Name α (StateT (NameMap α) m) where
  fetch? k := modifyGet fun m => (m.find? k, m)
  store k a := modify (·.insert k a)

public instance [MonadLiftT (ST ω) m] [Monad m] : MonadStore Name α (StateRefT' ω (NameMap α) m) where
  fetch? k := modifyGet fun m => (m.find? k, m)
  store k a := modify (·.insert k a)

public instance [MonadDStore κ β m] [t : FamilyOut β k α] : MonadStore1Of k α m where
  fetch? := cast (by rw [t.fam_eq]) <| fetch? (m := m) k
  store a := store k <| cast t.fam_eq.symm a
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4a260101c94691cb6c450fd8aa060027855a0c57be1c842520b86742fdfe1a36 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StoreInsts/Variant38545621ad95a1aa2e4cafe82ff3c0f4283d8a30cb62d8ab01d1ea4067b4cc27.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
