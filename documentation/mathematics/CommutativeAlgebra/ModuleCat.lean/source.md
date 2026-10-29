# Module Cat — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `650d59aeef1ba2d75d56f56a49f6a721feccb3b1` · SHA-256 `f325841235f2837ebc277b7c76f33a21193767a9d80fbcc28f6f460c70aaef9a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.Category.ModuleCat.Basic

universe v u

open CategoryTheory ModuleCat

set_option maxHeartbeats 10000
set_option synthInstance.maxHeartbeats 2000

variable (R : Type u) [CommRing R]

/- We test if all the coercions and `map_add` lemmas trigger correctly. -/

example (X : Type v) [AddCommGroup X] [Module R X] : ⇑(𝟙 (of R X)) = id := by simp

example {X Y : Type v} [AddCommGroup X] [Module R X] [AddCommGroup Y] [Module R Y] (f : X →ₗ[R] Y) :
    ⇑(ModuleCat.ofHom f) = ⇑f := by simp

example {X Y : Type v} [AddCommGroup X] [Module R X] [AddCommGroup Y] [Module R Y] (f : X →ₗ[R] Y)
    (x : X) : (ModuleCat.ofHom f) x = f x := by simp

example {X Y Z : ModuleCat R} (f : X ⟶ Y) (g : Y ⟶ Z) : ⇑(f ≫ g) = ⇑g ∘ ⇑f := by simp

example {X Y Z : Type v} [AddCommGroup X] [Module R X] [AddCommGroup Y] [Module R Y] [Ring Z]
    [Algebra R Z] (f : X →ₗ[R] Y) (g : Y →ₗ[R] Z) :
    ⇑(ModuleCat.ofHom f ≫ ModuleCat.ofHom g) = g ∘ f := by simp

example {X Y : Type v} [AddCommGroup X] [Module R X] [AddCommGroup Y] [Module R Y] {Z : ModuleCat R}
    (f : X →ₗ[R] Y) (g : of R Y ⟶ Z) :
    ⇑(ModuleCat.ofHom f ≫ g) = g ∘ f := by simp

example {X Y : ModuleCat R} {Z : Type v} [Ring Z] [Algebra R Z] (f : X ⟶ Y) (g : Y ⟶ of R Z) :
    ⇑(f ≫ g) = g ∘ f := by simp

example {Y Z : ModuleCat R} {X : Type v} [AddCommGroup X] [Module R X] (f : of R X ⟶ Y) (g : Y ⟶ Z) :
    ⇑(f ≫ g) = g ∘ f := by simp

example {X Y Z : ModuleCat R} (f : X ⟶ Y) (g : Y ⟶ Z) (x : X) : (f ≫ g) x = g (f x) := by simp

example {X Y : ModuleCat R} (e : X ≅ Y) (x : X) : e.inv (e.hom x) = x := by simp

example {X Y : ModuleCat R} (e : X ≅ Y) (y : Y) : e.hom (e.inv y) = y := by simp

example (X : ModuleCat R) : ⇑(𝟙 X) = id := by simp

example {M N : ModuleCat.{v} R} (f : M ⟶ N) (x y : M) : f (x + y) = f x + f y := by
  simp

example {M N : ModuleCat.{v} R} (f : M ⟶ N) : f 0 = 0 := by
  simp

example {M N : ModuleCat.{v} R} (f : M ⟶ N) (r : R) (m : M) : f (r • m) = r • f m := by
  simp
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1288d2b5ca9b7fd6814ed078ea63bf1996b321642ef63c35c8f17ada4cb0d82 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/ModuleCat/Variantf325841235f2837ebc277b7c76f33a21193767a9d80fbcc28f6f460c70aaef9a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
