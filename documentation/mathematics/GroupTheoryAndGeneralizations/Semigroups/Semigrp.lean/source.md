# Semigrp — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2707c28a3588829d7ca287e916e78608825a8130` · SHA-256 `f77c99d90af477a67d6a90186992c77a4c13c0a5a1f8b24ac260baaced062eea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.Category.Semigrp.Basic

universe v u

open CategoryTheory Semigrp

set_option maxHeartbeats 10000
set_option synthInstance.maxHeartbeats 2000

/- We test if all the coercions and `map_mul` lemmas trigger correctly. -/

example (X : Type u) [Semigroup X] : ⇑(𝟙 (of X)) = id := by simp

example {X Y : Type u} [Semigroup X] [Semigroup Y] (f : X →ₙ* Y) :
    ⇑(ofHom f) = ⇑f := by simp

example {X Y : Type u} [Semigroup X] [Semigroup Y] (f : X →ₙ* Y)
    (x : X) : (ofHom f) x = f x := by simp

example {X Y Z : Semigrp} (f : X ⟶ Y) (g : Y ⟶ Z) : ⇑(f ≫ g) = ⇑g ∘ ⇑f := by simp

example {X Y Z : Type u} [Semigroup X] [Semigroup Y] [Semigroup Z]
    (f : X →ₙ* Y) (g : Y →ₙ* Z) :
    ⇑(ofHom f ≫ ofHom g) = g ∘ f := by simp

example {X Y : Type u} [Semigroup X] [Semigroup Y] {Z : Semigrp}
    (f : X →ₙ* Y) (g : of Y ⟶ Z) :
    ⇑(ofHom f ≫ g) = g ∘ f := by simp

example {X Y : Semigrp} {Z : Type u} [Semigroup Z] (f : X ⟶ Y) (g : Y ⟶ of Z) :
    ⇑(f ≫ g) = g ∘ f := by simp

example {Y Z : Semigrp} {X : Type u} [Semigroup X] (f : of X ⟶ Y) (g : Y ⟶ Z) :
    ⇑(f ≫ g) = g ∘ f := by simp

example {X Y Z : Semigrp} (f : X ⟶ Y) (g : Y ⟶ Z) (x : X) : (f ≫ g) x = g (f x) := by simp

example {X Y : Semigrp} (e : X ≅ Y) (x : X) : e.inv (e.hom x) = x := by simp

example {X Y : Semigrp} (e : X ≅ Y) (y : Y) : e.hom (e.inv y) = y := by simp

example (X : Semigrp) : ⇑(𝟙 X) = id := by simp

example {X : Type*} [Semigroup X] : ⇑(MulHom.id X) = id := by simp

example {M N : Semigrp} (f : M ⟶ N) (x y : M) : f (x * y) = f x * f y := by
  simp
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f9e37f5cd972c61c3a88d93cde2e396b585fe123ffb095b73cd41be402d5dfc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Semigrp/Variantf77c99d90af477a67d6a90186992c77a4c13c0a5a1f8b24ac260baaced062eea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
