-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OfTypeMonad.Variant59a3381dac4a95bbefcb4d50f4e09cd38da255e78dc0d43d550e3fde4c889efd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"59a3381dac4a95bbefcb4d50f4e09cd38da255e78dc0d43d550e3fde4c889efd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.OfTypeMonad.Variant59a3381dac4a95bbefcb4d50f4e09cd38da255e78dc0d43d550e3fde4c889efd","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"59a3381dac4a95bbefcb4d50f4e09cd38da255e78dc0d43d550e3fde4c889efd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Monad/Types.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Bhavik Mehta
-/
import Mathlib.CategoryTheory.Monad.Basic
import Mathlib.CategoryTheory.Monad.Kleisli
import Mathlib.CategoryTheory.Category.KleisliCat
import Mathlib.CategoryTheory.Types
import Mathlib.Control.Basic -- Porting note: Needed for `joinM_map_map`, etc.

/-!

# Convert from `Monad` (i.e. Lean's `Type`-based monads) to `CategoryTheory.Monad`

This allows us to use these monads in category theory.

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OfTypeMonad.Variant59a3381dac4a95bbefcb4d50f4e09cd38da255e78dc0d43d550e3fde4c889efd

namespace CategoryTheory

section

universe u

variable (m : Type u → Type u) [_root_.Monad m] [LawfulMonad m]

-- Porting note: Used `apply ...` instead of the direct term
-- in a few proofs below to avoid introducing typeclass instances inline.

/-- A lawful `Control.Monad` gives a category theory `Monad` on the category of types.
-/
@[simps!]
def ofTypeMonad : Monad (Type u) where
  toFunctor := ofTypeFunctor m
  η := ⟨@pure m _, fun _ _ f => funext fun x => (LawfulApplicative.map_pure f x).symm⟩
  μ := ⟨@joinM m _, fun α β (f : α → β) => funext fun a => by apply joinM_map_map⟩
  assoc α := funext fun a => by apply joinM_map_joinM
  left_unit α := funext fun a => by apply joinM_pure
  right_unit α := funext fun a => by apply joinM_map_pure

/-- The `Kleisli` category of a `Control.Monad` is equivalent to the `Kleisli` category of its
category-theoretic version, provided the monad is lawful.
-/
@[simps]
def eq : KleisliCat m ≌ Kleisli (ofTypeMonad m) where
  functor :=
    { obj := fun X => X
      map := fun f => f
      map_id := fun _ => rfl
      map_comp := fun f g => by
        --unfold_projs
        funext t
        -- Porting note: missing tactic `unfold_projs`, using `change` instead.
        change _ = joinM (g <$> (f t))
        simp only [joinM, seq_bind_eq, Function.id_comp]
        rfl }
  inverse :=
    { obj := fun X => X
      map := fun f => f
      map_id := fun _ => rfl
      map_comp := fun f g => by
        --unfold_projs
        -- Porting note: Need these instances for some lemmas below.
        --Should they be added as actual instances elsewhere?
        letI : _root_.Monad (ofTypeMonad m).obj :=
          show _root_.Monad m from inferInstance
        letI : LawfulMonad (ofTypeMonad m).obj :=
          show LawfulMonad m from inferInstance
        funext t
        dsimp
        -- Porting note: missing tactic `unfold_projs`, using `change` instead.
        change joinM (g <$> (f t)) = _
        simp only [joinM, seq_bind_eq, Function.id_comp]
        rfl }
  unitIso := by
    refine NatIso.ofComponents (fun X => Iso.refl X) fun f => ?_
    change f >=> pure = pure >=> f
    simp [functor_norm]
  counitIso := NatIso.ofComponents fun X => Iso.refl X

end

end CategoryTheory
