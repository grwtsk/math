-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.WalkingPair.Variant63953e0f34c3bc0421e90f63c84d95252d66f7be8323d033823f94f695eec701","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63953e0f34c3bc0421e90f63c84d95252d66f7be8323d033823f94f695eec701","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.WalkingPair.Variant63953e0f34c3bc0421e90f63c84d95252d66f7be8323d033823f94f695eec701","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"63953e0f34c3bc0421e90f63c84d95252d66f7be8323d033823f94f695eec701","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Shapes/BinaryProducts/WalkingPair.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Bhavik Mehta
-/
module

public import Mathlib.CategoryTheory.Discrete.Basic
public import Mathlib.Tactic.ToAdditive

/-!
# Walking pairs

We define a category `WalkingPair`, which is the index category for a binary (co)product diagram.
A convenience method `pair X Y`, for `X, Y` objects of some category `C`, constructs the constructs
the functor from the walking pair, hitting the given objects.

## References
* [Stacks: Products of pairs](https://stacks.math.columbia.edu/tag/001R)
* [Stacks: coproducts of pairs](https://stacks.math.columbia.edu/tag/04AN)
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.WalkingPair.Variant63953e0f34c3bc0421e90f63c84d95252d66f7be8323d033823f94f695eec701

@[expose] public section

universe v v₁ u u₁ u₂

open CategoryTheory

namespace CategoryTheory.Limits

/-- The type of objects for the diagram indexing a binary (co)product. -/
inductive WalkingPair : Type
  | left
  | right
  deriving DecidableEq, Inhabited

open WalkingPair

/-- The equivalence swapping left and right.
-/
def WalkingPair.swap : WalkingPair ≃ WalkingPair where
  toFun
    | left => right
    | right => left
  invFun
    | left => right
    | right => left
  left_inv j := by cases j <;> rfl
  right_inv j := by cases j <;> rfl

@[simp]
theorem WalkingPair.swap_apply_left : WalkingPair.swap left = right :=
  rfl

@[simp]
theorem WalkingPair.swap_apply_right : WalkingPair.swap right = left :=
  rfl

@[simp]
theorem WalkingPair.swap_symm_apply_tt : WalkingPair.swap.symm left = right :=
  rfl

@[simp]
theorem WalkingPair.swap_symm_apply_ff : WalkingPair.swap.symm right = left :=
  rfl

/-- An equivalence from `WalkingPair` to `Bool`, sometimes useful when reindexing limits.
-/
def WalkingPair.equivBool : WalkingPair ≃ Bool where
  toFun
    | left => true
    | right => false
  -- to match equiv.sum_equiv_sigma_bool
  invFun b := Bool.recOn b right left
  left_inv j := by cases j <;> rfl
  right_inv b := by cases b <;> rfl

@[simp]
theorem WalkingPair.equivBool_apply_left : WalkingPair.equivBool left = true :=
  rfl

@[simp]
theorem WalkingPair.equivBool_apply_right : WalkingPair.equivBool right = false :=
  rfl

@[simp]
theorem WalkingPair.equivBool_symm_apply_true : WalkingPair.equivBool.symm true = left :=
  rfl

@[simp]
theorem WalkingPair.equivBool_symm_apply_false : WalkingPair.equivBool.symm false = right :=
  rfl

variable {C : Type u}

/-- The function on the walking pair, sending the two points to `X` and `Y`. -/
def pairFunction (X Y : C) : WalkingPair → C := fun j => WalkingPair.casesOn j X Y

@[simp]
theorem pairFunction_left (X Y : C) : pairFunction X Y left = X :=
  rfl

@[simp]
theorem pairFunction_right (X Y : C) : pairFunction X Y right = Y :=
  rfl

variable [Category.{v} C]

/-- The diagram on the walking pair, sending the two points to `X` and `Y`. -/
@[implicit_reducible]
def pair (X Y : C) : Discrete WalkingPair ⥤ C :=
  Discrete.functor fun j => WalkingPair.casesOn j X Y

@[simp]
theorem pair_obj_left (X Y : C) : (pair X Y).obj ⟨left⟩ = X :=
  rfl

@[simp]
theorem pair_obj_right (X Y : C) : (pair X Y).obj ⟨right⟩ = Y :=
  rfl

section

variable {F G : Discrete WalkingPair ⥤ C} (f : F.obj ⟨left⟩ ⟶ G.obj ⟨left⟩)
  (g : F.obj ⟨right⟩ ⟶ G.obj ⟨right⟩)

attribute [local aesop safe tactic (rule_sets := [CategoryTheory])]
  CategoryTheory.Discrete.discreteCases

/-- The natural transformation between two functors out of the
walking pair, specified by its components. -/
def mapPair : F ⟶ G where
  app
    | ⟨left⟩ => f
    | ⟨right⟩ => g
  naturality := fun ⟨X⟩ ⟨Y⟩ ⟨u⟩ => by cat_disch

@[simp]
theorem mapPair_left : (mapPair f g).app ⟨left⟩ = f :=
  rfl

@[simp]
theorem mapPair_right : (mapPair f g).app ⟨right⟩ = g :=
  rfl

/-- The natural isomorphism between two functors out of the walking pair, specified by its
components. -/
@[simps!]
def mapPairIso (f : F.obj ⟨left⟩ ≅ G.obj ⟨left⟩) (g : F.obj ⟨right⟩ ≅ G.obj ⟨right⟩) : F ≅ G :=
  NatIso.ofComponents (fun j ↦ match j with
    | ⟨left⟩ => f
    | ⟨right⟩ => g)
    (fun ⟨u⟩ => by cat_disch)

end

/-- Every functor out of the walking pair is naturally isomorphic (actually, equal) to a `pair` -/
@[simps!]
def diagramIsoPair (F : Discrete WalkingPair ⥤ C) :
    F ≅ pair (F.obj ⟨WalkingPair.left⟩) (F.obj ⟨WalkingPair.right⟩) :=
  mapPairIso (Iso.refl _) (Iso.refl _)

section

variable {D : Type u₁} [Category.{v₁} D]

/-- The natural isomorphism between `pair X Y ⋙ F` and `pair (F.obj X) (F.obj Y)`. -/
def pairComp (X Y : C) (F : C ⥤ D) : pair X Y ⋙ F ≅ pair (F.obj X) (F.obj Y) :=
  diagramIsoPair _

end

end CategoryTheory.Limits
