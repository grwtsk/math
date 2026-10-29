# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Indization.Variant25a633cd7e1797a10455328a27ee472d556482333dd65f30badbfd29b0cd07bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7dff751e1a948290cea38046f6e624ef9e99523e` · SHA-256 `25a633cd7e1797a10455328a27ee472d556482333dd65f30badbfd29b0cd07bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Limits.Indization.Category
import Mathlib.CategoryTheory.Preadditive.Transfer
import Mathlib.CategoryTheory.Preadditive.Opposite
import Mathlib.Algebra.Category.Grp.LeftExactFunctor

/-!
# The category of ind-objects is preadditive
-/

universe v u

open CategoryTheory Limits

namespace CategoryTheory

variable {C : Type u} [SmallCategory C] [Preadditive C] [HasFiniteColimits C]

attribute [local instance] HasFiniteBiproducts.of_hasFiniteCoproducts in
noncomputable instance : Preadditive (Ind C) :=
  .ofFullyFaithful (((Ind.leftExactFunctorEquivalence C).trans
    (AddCommGrp.leftExactFunctorForgetEquivalence _).symm).fullyFaithfulFunctor.comp
      (ObjectProperty.fullyFaithfulι _))

instance : HasFiniteBiproducts (Ind C) :=
  HasFiniteBiproducts.of_hasFiniteCoproducts

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=29942350789ee6e1679a179c536c90dbe53baa446e7c023cec351cf6960f790b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Indization/Variant25a633cd7e1797a10455328a27ee472d556482333dd65f30badbfd29b0cd07bd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
