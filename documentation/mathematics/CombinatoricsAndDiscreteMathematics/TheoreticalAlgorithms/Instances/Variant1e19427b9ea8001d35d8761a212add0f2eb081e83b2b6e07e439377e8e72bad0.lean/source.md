# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Instances.Variant1e19427b9ea8001d35d8761a212add0f2eb081e83b2b6e07e439377e8e72bad0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d05033932b690cdde4c790b82474706d4adbfdc4` · SHA-256 `1e19427b9ea8001d35d8761a212add0f2eb081e83b2b6e07e439377e8e72bad0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
module

public import Batteries.Data.DList.Lemmas
public import Mathlib.Control.Traversable.Equiv
public import Mathlib.Control.Traversable.Instances

/-!
# Traversable instance for DLists

This file provides the equivalence between `List α` and `DList α` and the traversable instance
for `DList`.
-/

@[expose] public section


open Equiv

namespace Batteries

variable (α : Type*)

/-- The natural equivalence between lists and difference lists, using
`DList.ofList` and `DList.toList`. -/
def DList.listEquivDList : List α ≃ DList α where
  toFun := DList.ofList
  invFun := DList.toList
  left_inv _ := DList.toList_ofList _
  right_inv _ := DList.ofList_toList _

instance : Traversable DList :=
  Equiv.traversable DList.listEquivDList

instance : LawfulTraversable DList :=
  Equiv.isLawfulTraversable DList.listEquivDList

end Batteries
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ba0428be4c7a3e2c2bf9e9f1bd01ecb00749c8303aa2abb2104be4000541669 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant1e19427b9ea8001d35d8761a212add0f2eb081e83b2b6e07e439377e8e72bad0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
