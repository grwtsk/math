# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ZModuleEquivalence.Variantb22f8d5049e6d19d831c2171e7f7335b39b1b80aa0618b320b4814ff7148c15b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ef683b92d709ad65683a03cb2688c1bdb532f09` · SHA-256 `b22f8d5049e6d19d831c2171e7f7335b39b1b80aa0618b320b4814ff7148c15b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Category.ModuleCat.Basic

/-!
The forgetful functor from ℤ-modules to additive commutative groups is
an equivalence of categories.

TODO:
either use this equivalence to transport the monoidal structure from `Module ℤ` to `Ab`,
or, having constructed that monoidal structure directly, show this functor is monoidal.
-/


open CategoryTheory

open CategoryTheory.Equivalence

universe u

namespace ModuleCat

/-- The forgetful functor from `ℤ` modules to `AddCommGrp` is full. -/
instance forget₂_addCommGroup_full : (forget₂ (ModuleCat ℤ) AddCommGrp.{u}).Full where
  map_surjective {A B}
    -- `AddMonoidHom.toIntLinearMap` doesn't work here because `A` and `B` are not
    -- definitionally equal to the canonical `AddCommGroup.toIntModule` module
    -- instances it expects.
    f := ⟨@ModuleCat.ofHom _ _ _ _ _ A.isModule _ B.isModule <|
            @LinearMap.mk _ _ _ _ _ _ _ _ _ A.isModule B.isModule
            { toFun := f,
              map_add' := AddMonoidHom.map_add f.hom }
            (fun n x => by
              convert AddMonoidHom.map_zsmul f.hom x n <;>
                ext <;> apply int_smul_eq_zsmul), rfl⟩

/-- The forgetful functor from `ℤ` modules to `AddCommGrp` is essentially surjective. -/
instance forget₂_addCommGrp_essSurj : (forget₂ (ModuleCat ℤ) AddCommGrp.{u}).EssSurj where
  mem_essImage A :=
    ⟨ModuleCat.of ℤ A,
      ⟨{  hom := 𝟙 A
          inv := 𝟙 A }⟩⟩

noncomputable instance forget₂AddCommGroupIsEquivalence :
    (forget₂ (ModuleCat ℤ) AddCommGrp.{u}).IsEquivalence where

end ModuleCat
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f266fc4c4939ff61eacd7c2e6ef080c7aa72acbbded9a496cd29ca1867241635 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZModuleEquivalence/Variantb22f8d5049e6d19d831c2171e7f7335b39b1b80aa0618b320b4814ff7148c15b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
