# Is Small — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b361867a8f9407ea58add0a447be5fb2c0cd322` · SHA-256 `422db14634d8e32ab11a1ec62914de21a6a17ea846a8358a699a43aa593a9936`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.MorphismProperty.Basic
import Mathlib.Logic.Small.Basic

/-!
# Small classes of morphisms

A class of morphisms `W : MorphismProperty C` is `w`-small
if the corresponding set in `Set (Arrow C)` is.

-/

universe w t v u

namespace CategoryTheory

variable {C : Type u} [Category.{v} C]

namespace MorphismProperty

variable (W : MorphismProperty C)

/-- A class of morphisms `W : MorphismProperty C` is `w`-small
if the corresponding set in `Set (Arrow C)` is. -/
@[pp_with_univ]
class IsSmall : Prop where
  small_toSet : Small.{w} W.toSet

attribute [instance] IsSmall.small_toSet

instance isSmall_ofHoms {ι : Type t} [Small.{w} ι] {A B : ι → C} (f : ∀ i, A i ⟶ B i) :
    IsSmall.{w} (ofHoms f) := by
  let φ (i : ι) : (ofHoms f).toSet := ⟨Arrow.mk (f i), ⟨i⟩⟩
  have hφ : Function.Surjective φ := by
    rintro ⟨⟨_, _, f⟩, ⟨i⟩⟩
    exact ⟨i, rfl⟩
  exact ⟨small_of_surjective hφ⟩

lemma isSmall_iff_eq_ofHoms :
    IsSmall.{w} W ↔ ∃ (ι : Type w) (A B : ι → C) (f : ∀ i, A i ⟶ B i),
      W = ofHoms f := by
  constructor
  · intro
    refine ⟨Shrink.{w} W.toSet, _, _, fun i ↦ ((equivShrink _).symm i).1.hom, ?_⟩
    ext A B f
    rw [ofHoms_iff]
    constructor
    · intro hf
      exact ⟨equivShrink _ ⟨f, hf⟩, by simp⟩
    · rintro ⟨i, hi⟩
      simp only [← W.arrow_mk_mem_toSet_iff, hi, Arrow.mk_eq, Subtype.coe_prop]
  · rintro ⟨_, _, _, _, rfl⟩
    infer_instance

end MorphismProperty

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=67b4cdbbc0bc9e06e96ab5024d0178a625d36dcb187d83ab145c837a0969ee66 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSmall/Variant422db14634d8e32ab11a1ec62914de21a6a17ea846a8358a699a43aa593a9936.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
