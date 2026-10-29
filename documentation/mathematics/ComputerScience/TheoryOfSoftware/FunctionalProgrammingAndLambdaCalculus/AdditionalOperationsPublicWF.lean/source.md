# Additional Operations Public WF — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d8e4115292d0350736455a6678ecce57dad4c31e` · SHA-256 `24f32b66434a3feabe3a1bacdf7d917c022980085f1e297de40ecfa08f4f4733`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Std.Data.DHashMap.Internal.Raw
public import Std.Data.DHashMap.Internal.WF

public section

/-!
# Additional dependent hash map operations

This file defines the operations `map` and `filterMap` on `Std.DHashMap`.
Lemmas about these operations are found in `Std.Data.DHashMap.Lemmas`.
-/

open Std.DHashMap.Internal

set_option linter.missingDocs true
set_option autoImplicit false

universe u v w

variable {α : Type u} {β : α → Type v} {γ : Type w} {δ : α → Type w}

namespace Std.DHashMap

namespace Raw

open Internal.Raw

theorem WF.filterMap [BEq α] [Hashable α] {m : Raw α β} (h : m.WF)
    {f : (a : α) → β a → Option (δ a)} : (m.filterMap f).WF := by
  simpa only [filterMap_eq h] using Raw₀.wf_filterMap₀ h

theorem WF.map [BEq α] [Hashable α] {m : Raw α β} (h : m.WF) {f : (a : α) → β a → δ a} :
    (m.map f).WF := by
  simpa only [map_eq h] using Raw₀.wf_map₀ h

end Raw

@[cbv_opaque, inline, inherit_doc Raw.filterMap] def filterMap [BEq α] [Hashable α]
    (f : (a : α) → β a → Option (δ a)) (m : DHashMap α β) : DHashMap α δ :=
  ⟨Raw₀.filterMap f ⟨m.1, m.2.size_buckets_pos⟩, Raw₀.wf_filterMap₀ m.2⟩

@[cbv_opaque, inline, inherit_doc Raw.map] def map [BEq α] [Hashable α] (f : (a : α) → β a → δ a)
    (m : DHashMap α β) : DHashMap α δ :=
  ⟨Raw₀.map f ⟨m.1, m.2.size_buckets_pos⟩, Raw₀.wf_map₀ m.2⟩

end Std.DHashMap
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=51e5dd323b47536b733a41d8019f37f4bbe4ed94818c5e153bc9213495f85c87 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditionalOperations/Variant24f32b66434a3feabe3a1bacdf7d917c022980085f1e297de40ecfa08f4f4733.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
