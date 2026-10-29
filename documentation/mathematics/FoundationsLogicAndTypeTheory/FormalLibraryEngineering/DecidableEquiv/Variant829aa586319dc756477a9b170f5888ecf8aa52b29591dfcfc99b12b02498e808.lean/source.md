# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DecidableEquiv.Variant829aa586319dc756477a9b170f5888ecf8aa52b29591dfcfc99b12b02498e808

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0bb36eac3161eba75aa4be4134386be55913eb8` · SHA-256 `829aa586319dc756477a9b170f5888ecf8aa52b29591dfcfc99b12b02498e808`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.DTreeMap.DecidableEquiv
public import Std.Data.TreeMap.Basic

public section

/-!
# Decidable equivalence for `TreeMap`
-/

open Std.DTreeMap

namespace Std.TreeMap

instance {α : Type u} {β : Type v} {cmp : α → α → Ordering} [TransCmp cmp] [LawfulEqCmp cmp] [BEq β] [LawfulBEq β] {t₁ t₂ : TreeMap α β cmp} : Decidable (t₁ ~m t₂) :=
  let : Ord α := ⟨cmp⟩;
  decidable_of_iff _ ⟨fun h => ⟨h⟩, fun h => h.1⟩

end Std.TreeMap
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d78366865efb93cba8b206e867cb195482ea90fbeb9c7f0aa07f4b82e84c0b80 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecidableEquiv/Variant829aa586319dc756477a9b170f5888ecf8aa52b29591dfcfc99b12b02498e808.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
