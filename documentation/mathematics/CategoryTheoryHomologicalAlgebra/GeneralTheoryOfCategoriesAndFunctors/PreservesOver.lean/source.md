# Preserves Over — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66dd44e75a36234beac61eb4fa265a6e114bcbaf` · SHA-256 `92f3a61bf70c31d8877fa250fbd597e00c79f8c74d4443606296cffeed4d8438`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.CategoryTheory.Limits.Preserves.Filtered

/-!

# Forgetful functor from `Over X` preserves cofiltered limits

Note that `Over.forget X : Over X ⥤ C` already preserves all colimits because it is a left adjoint.
See `Mathlib/CategoryTheory/Adjunction/Over.lean`

-/

namespace CategoryTheory.Limits

variable {C : Type*} [Category C]

attribute [local instance] IsFiltered.nonempty IsCofiltered.nonempty

instance {X : C} : PreservesCofilteredLimitsOfSize (Over.forget X) := by
  refine ⟨fun J hJ hJ' ↦ ⟨fun {F} ↦ ⟨fun {c} hc ↦ ⟨.ofExistsUnique fun s ↦ ?_⟩⟩⟩⟩
  obtain i := Nonempty.some (inferInstanceAs (Nonempty J))
  let s' : Cone F := ⟨Over.mk (s.π.app i ≫ (F.obj i).hom), fun j ↦ Over.homMk (s.π.app j) (by
    obtain ⟨k, hik, hjk, -⟩ := IsCofilteredOrEmpty.cone_objs i j
    simp only [Functor.const_obj_obj, Functor.id_obj, Over.mk_left, Over.mk_hom,
      ← s.w hjk, ← s.w hik]
    simp), fun j k e ↦ by ext; simpa using (s.w e).symm⟩
  refine ⟨(hc.lift s').left, fun j ↦ congr($(hc.fac s' j).left), fun f hf ↦ ?_⟩
  dsimp at hf
  exact congr($(hc.uniq s' (Over.homMk f (by simp [s', ← hf]))
    fun j ↦ Over.OverMorphism.ext (hf j)).left)

instance {X : C} : PreservesFilteredColimitsOfSize (Under.forget X) := by
  refine ⟨fun J hJ hJ' ↦ ⟨fun {F} ↦ ⟨fun {c} hc ↦ ⟨.ofExistsUnique fun s ↦ ?_⟩⟩⟩⟩
  obtain i := Nonempty.some (inferInstanceAs (Nonempty J))
  let s' : Cocone F := ⟨Under.mk ((F.obj i).hom ≫ s.ι.app i), fun j ↦ Under.homMk (s.ι.app j) (by
    obtain ⟨k, hik, hjk, -⟩ := IsFilteredOrEmpty.cocone_objs i j
    simp only [Functor.const_obj_obj, Functor.id_obj, Under.mk_right, Under.mk_hom,
      ← s.w hjk, ← s.w hik]
    simp), fun j k e ↦ by ext; simpa using s.w e⟩
  refine ⟨(hc.desc s').right, fun j ↦ congr($(hc.fac s' j).right), fun f hf ↦ ?_⟩
  dsimp at hf
  exact congr($(hc.uniq s' (Under.homMk f (by simp [s', ← hf]))
    fun j ↦ Under.UnderMorphism.ext (hf j)).right)

end CategoryTheory.Limits
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=46766815dde3ad0b116f4e217b42b8f981c4ecd8b901b392d149312e56578371 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant92f3a61bf70c31d8877fa250fbd597e00c79f8c74d4443606296cffeed4d8438.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
