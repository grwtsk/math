-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RelCat.Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.RelCat.Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Category/RelCat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Uni Marx
-/
import Mathlib.CategoryTheory.Iso
import Mathlib.CategoryTheory.EssentialImage
import Mathlib.CategoryTheory.Types
import Mathlib.CategoryTheory.Opposites
import Mathlib.Data.Rel

/-!
# Basics on the category of relations

We define the category of types `CategoryTheory.RelCat` with binary relations as morphisms.
Associating each function with the relation defined by its graph yields a faithful and
essentially surjective functor `graphFunctor` that also characterizes all isomorphisms
(see `rel_iso_iff`).

By flipping the arguments to a relation, we construct an equivalence `opEquivalence` between
`RelCat` and its opposite.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RelCat.Varianta2055560d738e2cee71fd3d147714b438846b25f5e740885287c6333cbf5074b

namespace CategoryTheory

universe u

-- This file is about Lean 3 declaration "Rel".

/-- A type synonym for `Type u`, which carries the category instance for which
    morphisms are binary relations. -/
def RelCat :=
  Type u

instance RelCat.inhabited : Inhabited RelCat := by unfold RelCat; infer_instance

/-- The category of types with binary relations as morphisms. -/
instance rel : LargeCategory RelCat where
  Hom X Y := X → Y → Prop
  id _ x y := x = y
  comp f g x z := ∃ y, f x y ∧ g y z



namespace RelCat

@[ext] theorem hom_ext {X Y : RelCat} (f g : X ⟶ Y) (h : ∀ a b, f a b ↔ g a b) : f = g :=
  funext₂ (fun a b => propext (h a b))

namespace Hom

protected theorem rel_id (X : RelCat) : 𝟙 X = (· = ·) := rfl

protected theorem rel_comp {X Y Z : RelCat} (f : X ⟶ Y) (g : Y ⟶ Z) : f ≫ g = Rel.comp f g := rfl

theorem rel_id_apply₂ (X : RelCat) (x y : X) : (𝟙 X) x y ↔ x = y := by
  rw [RelCat.Hom.rel_id]

theorem rel_comp_apply₂ {X Y Z : RelCat} (f : X ⟶ Y) (g : Y ⟶ Z) (x : X) (z : Z) :
    (f ≫ g) x z ↔ ∃ y, f x y ∧ g y z := by rfl

end Hom

/-- The essentially surjective faithful embedding
from the category of types and functions into the category of types and relations. -/
def graphFunctor : Type u ⥤ RelCat.{u} where
  obj X := X
  map f := f.graph
  map_id X := by
    ext
    simp [Hom.rel_id_apply₂]
  map_comp f g := by
    ext
    simp [Hom.rel_comp_apply₂]

@[simp] theorem graphFunctor_map {X Y : Type u} (f : X ⟶ Y) (x : X) (y : Y) :
    graphFunctor.map f x y ↔ f x = y := f.graph_def x y

instance graphFunctor_faithful : graphFunctor.Faithful where
  map_injective h := Function.graph_injective h

instance graphFunctor_essSurj : graphFunctor.EssSurj :=
    graphFunctor.essSurj_of_surj Function.surjective_id

/-- A relation is an isomorphism in `RelCat` iff it is the image of an isomorphism in
`Type u`. -/
theorem rel_iso_iff {X Y : RelCat} (r : X ⟶ Y) :
    IsIso (C := RelCat) r ↔ ∃ f : (Iso (C := Type u) X Y), graphFunctor.map f.hom = r := by
  constructor
  · intro h
    have h1 := congr_fun₂ h.hom_inv_id
    have h2 := congr_fun₂ h.inv_hom_id
    simp only [RelCat.Hom.rel_comp_apply₂, RelCat.Hom.rel_id_apply₂, eq_iff_iff] at h1 h2
    obtain ⟨f, hf⟩ := Classical.axiomOfChoice (fun a => (h1 a a).mpr rfl)
    obtain ⟨g, hg⟩ := Classical.axiomOfChoice (fun a => (h2 a a).mpr rfl)
    suffices hif : IsIso (C := Type u) f by
      use asIso f
      ext x y
      simp only [asIso_hom, graphFunctor_map]
      constructor
      · rintro rfl
        exact (hf x).1
      · intro hr
        specialize h2 (f x) y
        rw [← h2]
        use x, (hf x).2, hr
    use g
    constructor
    · ext x
      apply (h1 _ _).mp
      use f x, (hg _).2, (hf _).2
    · ext y
      apply (h2 _ _).mp
      use g y, (hf (g y)).2, (hg y).2
  · rintro ⟨f, rfl⟩
    apply graphFunctor.map_isIso

section Opposite
open Opposite

/-- The argument-swap isomorphism from `RelCat` to its opposite. -/
def opFunctor : RelCat ⥤ RelCatᵒᵖ where
  obj X := op X
  map {_ _} r := op (fun y x => r x y)
  map_id X := by
    congr
    simp only [unop_op, RelCat.Hom.rel_id]
    ext x y
    exact Eq.comm
  map_comp {X Y Z} f g := by
    unfold Category.opposite
    congr
    ext x y
    apply exists_congr
    exact fun a => And.comm

/-- The other direction of `opFunctor`. -/
def unopFunctor : RelCatᵒᵖ ⥤ RelCat where
  obj X := unop X
  map {_ _} r x y := unop r y x
  map_id X := by
    ext x y
    exact Eq.comm
  map_comp {X Y Z} f g := by
    unfold Category.opposite
    ext x y
    apply exists_congr
    exact fun a => And.comm

@[simp] theorem opFunctor_comp_unopFunctor_eq :
    Functor.comp opFunctor unopFunctor = Functor.id _ := rfl

@[simp] theorem unopFunctor_comp_opFunctor_eq :
    Functor.comp unopFunctor opFunctor = Functor.id _ := rfl

/-- `RelCat` is self-dual: The map that swaps the argument order of a
    relation induces an equivalence between `RelCat` and its opposite. -/
@[simps]
def opEquivalence : Equivalence RelCat RelCatᵒᵖ where
  functor := opFunctor
  inverse := unopFunctor
  unitIso := Iso.refl _
  counitIso := Iso.refl _

instance : opFunctor.IsEquivalence := by
  change opEquivalence.functor.IsEquivalence
  infer_instance

instance : unopFunctor.IsEquivalence := by
  change opEquivalence.inverse.IsEquivalence
  infer_instance

end Opposite

end RelCat

end CategoryTheory
