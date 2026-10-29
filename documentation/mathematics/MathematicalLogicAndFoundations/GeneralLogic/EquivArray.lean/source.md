# Equiv Array — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4cb24cba795898f1f0d68a5d82b47abf853265ce` · SHA-256 `4c66b967f60a82eb422721a11414747a913c3d0afc48d0c7fbc4be37dadcdef4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.Vector.Basic
import Mathlib.Logic.Equiv.List

/-!
# Equivalences involving `Array`
-/


namespace Equiv

/-- The natural equivalence between arrays and lists. -/
def arrayEquivList (α : Type*) : Array α ≃ List α :=
  ⟨Array.toList, Array.mk, fun _ => rfl, fun _ => rfl⟩

end Equiv

/- Porting note: removed instances for what would be ported as `Traversable (Array α)` and
`LawfulTraversable (Array α)`. These would

1. be implemented directly in terms of `Array` functionality for efficiency, rather than being the
traversal of some other type transported along an equivalence to `Array α` (as the traversable
instance for `array` was)

2. belong in `Mathlib/Control/Traversable/Instances.lean` instead of this file. -/

-- namespace Array'

-- open Function

-- variable {n : ℕ}

-- instance : Traversable (Array' n) :=
--   @Equiv.traversable (flip Vector n) _ (fun α => Equiv.vectorEquivArray α n) _

-- instance : LawfulTraversable (Array' n) :=
--   @Equiv.isLawfulTraversable (flip Vector n) _ (fun α => Equiv.vectorEquivArray α n) _ _

-- end Array'

/-- If `α` is encodable, then so is `Array α`. -/
instance Array.encodable {α} [Encodable α] : Encodable (Array α) :=
  Encodable.ofEquiv _ (Equiv.arrayEquivList _)

/-- If `α` is countable, then so is `Array α`. -/
instance Array.countable {α} [Countable α] : Countable (Array α) :=
  Countable.of_equiv _ (Equiv.arrayEquivList α).symm
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb5bcd76e27bfac4a3114c5bb219664ffc903b12c28ef8565d2de065c1b1a251 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant4c66b967f60a82eb422721a11414747a913c3d0afc48d0c7fbc4be37dadcdef4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
