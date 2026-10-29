# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preadditive.Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aea605e2a1146eea8a2c0df0f87a6ba6feeb88db` · SHA-256 `c065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.Algebra.Category.Grp.Basic
import Mathlib.CategoryTheory.Preadditive.Basic

/-!
# The category of additive commutative groups is preadditive.
-/

assert_not_exists Subgroup

open CategoryTheory

universe u

namespace AddCommGrp

variable {M N : AddCommGrp.{u}}

instance : Add (M ⟶ N) where
  add f g := ofHom (f.hom + g.hom)

@[simp] lemma hom_add (f g : M ⟶ N) : (f + g).hom = f.hom + g.hom := rfl

lemma hom_add_apply {P Q : AddCommGrp} (f g : P ⟶ Q) (x : P) : (f + g) x = f x + g x := rfl

instance : Zero (M ⟶ N) where
  zero := ofHom 0

@[simp] lemma hom_zero : (0 : M ⟶ N).hom = 0 := rfl

instance : SMul ℕ (M ⟶ N) where
  smul n f := ofHom (n • f.hom)

@[simp] lemma hom_nsmul (n : ℕ) (f : M ⟶ N) : (n • f).hom = n • f.hom := rfl

instance : Neg (M ⟶ N) where
  neg f := ofHom (-f.hom)

@[simp] lemma hom_neg (f : M ⟶ N) : (-f).hom = -f.hom := rfl

instance : Sub (M ⟶ N) where
  sub f g := ofHom (f.hom - g.hom)

@[simp] lemma hom_sub (f g : M ⟶ N) : (f - g).hom = f.hom - g.hom := rfl

instance : SMul ℤ (M ⟶ N) where
  smul n f := ofHom (n • f.hom)

@[simp] lemma hom_zsmul (n : ℕ) (f : M ⟶ N) : (n • f).hom = n • f.hom := rfl

instance (P Q : AddCommGrp) : AddCommGroup (P ⟶ Q) :=
  Function.Injective.addCommGroup (Hom.hom) ConcreteCategory.hom_injective
    rfl (fun _ _ => rfl) (fun _ => rfl) (fun _ _ => rfl) (fun _ _ => rfl) (fun _ _ => rfl)

instance : Preadditive AddCommGrp where

/-- `AddCommGrp.Hom.hom` bundled as an additive equivalence. -/
@[simps!]
def homAddEquiv : (M ⟶ N) ≃+ (M →+ N) :=
  { ConcreteCategory.homEquiv (C := AddCommGrp) with
    map_add' _ _ := rfl }

end AddCommGrp
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=451ccdd0eac024f4e8080e9f08a0038486aa3b5d5f83446a84943add49de67c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
