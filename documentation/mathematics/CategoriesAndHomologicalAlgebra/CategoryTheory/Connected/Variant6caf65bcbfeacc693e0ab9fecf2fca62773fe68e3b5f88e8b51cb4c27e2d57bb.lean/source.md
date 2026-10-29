# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Connected.Variant6caf65bcbfeacc693e0ab9fecf2fca62773fe68e3b5f88e8b51cb4c27e2d57bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae77abe25db5b176c378ebb51d73f476a71e7c3a` · SHA-256 `6caf65bcbfeacc693e0ab9fecf2fca62773fe68e3b5f88e8b51cb4c27e2d57bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Filtered.Basic
import Mathlib.CategoryTheory.IsConnected

/-!
# Filtered categories are connected
-/

universe v u

namespace CategoryTheory

variable (C : Type u) [Category.{v} C]

theorem IsFilteredOrEmpty.isPreconnected [IsFilteredOrEmpty C] : IsPreconnected C :=
  zigzag_isPreconnected fun j j' => .trans
    (.single <| .inl <| .intro <| IsFiltered.leftToMax j j')
    (.single <| .inr <| .intro <| IsFiltered.rightToMax j j')

theorem IsCofilteredOrEmpty.isPreconnected [IsCofilteredOrEmpty C] : IsPreconnected C :=
  zigzag_isPreconnected fun j j' => .trans
    (.single <| .inr <| .intro <| IsCofiltered.minToLeft j j')
    (.single <| .inl <| .intro <| IsCofiltered.minToRight j j')

attribute [local instance] IsFiltered.nonempty in
theorem IsFiltered.isConnected [IsFiltered C] : IsConnected C :=
  { IsFilteredOrEmpty.isPreconnected C with }

attribute [local instance] IsCofiltered.nonempty in
theorem IsCofiltered.isConnected [IsCofiltered C] : IsConnected C :=
  { IsCofilteredOrEmpty.isPreconnected C with }

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c311453a63310e90adc99b2fae18b66e8ff94321e9d82903e552981e8f992df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant6caf65bcbfeacc693e0ab9fecf2fca62773fe68e3b5f88e8b51cb4c27e2d57bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
