# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equivalence.Variant3f9a82900c66a210b65b0c6772c3a0d6d8e9379af8dcbc7272d492d38d6af2ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `141f35905ca55b6fc202a5f955e60ee4a2f47658` · SHA-256 `3f9a82900c66a210b65b0c6772c3a0d6d8e9379af8dcbc7272d492d38d6af2ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Adjunction.Limits
import Mathlib.CategoryTheory.Limits.Shapes.Terminal

/-!
# Transporting existence of specific limits across equivalences

For now, we only treat the case of initial and terminal objects, but other special shapes can be
added in the future.
-/


open CategoryTheory CategoryTheory.Limits

namespace CategoryTheory

universe v₁ v₂ u₁ u₂

variable {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]

theorem hasInitial_of_equivalence (e : D ⥤ C) [e.IsEquivalence] [HasInitial C] : HasInitial D :=
  Adjunction.hasColimitsOfShape_of_equivalence e

theorem Equivalence.hasInitial_iff (e : C ≌ D) : HasInitial C ↔ HasInitial D :=
  ⟨fun (_ : HasInitial C) => hasInitial_of_equivalence e.inverse,
    fun (_ : HasInitial D) => hasInitial_of_equivalence e.functor⟩

theorem hasTerminal_of_equivalence (e : D ⥤ C) [e.IsEquivalence] [HasTerminal C] : HasTerminal D :=
  Adjunction.hasLimitsOfShape_of_equivalence e

theorem Equivalence.hasTerminal_iff (e : C ≌ D) : HasTerminal C ↔ HasTerminal D :=
  ⟨fun (_ : HasTerminal C) => hasTerminal_of_equivalence e.inverse,
    fun (_ : HasTerminal D) => hasTerminal_of_equivalence e.functor⟩

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=68e1385614eb4f23d13d2ce732a904b1830ac10f71f3c274a4be30633e19958d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant3f9a82900c66a210b65b0c6772c3a0d6d8e9379af8dcbc7272d492d38d6af2ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
