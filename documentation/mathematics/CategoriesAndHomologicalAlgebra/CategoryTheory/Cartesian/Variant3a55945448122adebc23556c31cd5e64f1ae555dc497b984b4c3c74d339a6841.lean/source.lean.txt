-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsCartesianDistributive.Variant2018ecfed8c6a2a8f031a9cb7c64ea152c8ad195f40cf1304ca964fe6688ff4a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2018ecfed8c6a2a8f031a9cb7c64ea152c8ad195f40cf1304ca964fe6688ff4a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsCartesianDistributive.Variant2018ecfed8c6a2a8f031a9cb7c64ea152c8ad195f40cf1304ca964fe6688ff4a","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"2018ecfed8c6a2a8f031a9cb7c64ea152c8ad195f40cf1304ca964fe6688ff4a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Distributive/Cartesian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Sina Hazratpour. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sina Hazratpour
-/
import Mathlib.CategoryTheory.Distributive.Monoidal
import Mathlib.CategoryTheory.Limits.MonoCoprod
import Mathlib.CategoryTheory.Monoidal.Cartesian.Basic

/-!

# Distributive categories

## Main definitions

A category `C` with finite products and binary coproducts is called distributive if the
canonical distributivity morphism `(X ⨯ Y) ⨿ (X ⨯ Z) ⟶ X ⨯ (Y ⨿ Z)` is an isomorphism
for all objects `X`, `Y`, and `Z` in `C`.

## Implementation Details

A cartesian distributive category is defined as a cartesian monoidal category which is
monoidal distributive.

## Main results

- The coproduct coprojections are monic in a cartesian distributive category.


## TODO

- Every cartesian distributive category is finitary distributive, meaning that
  the left tensor product functor `X ⊗ -` preserves all finite coproducts.

- Show that any extensive distributive category can be embedded into a topos.

## References

- [J.R.B.Cockett, Introduction to distributive categories, 1993][cockett1993]
- [Carboni et al, Introduction to extensive and distributive categories][CARBONI1993145]
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsCartesianDistributive.Variant2018ecfed8c6a2a8f031a9cb7c64ea152c8ad195f40cf1304ca964fe6688ff4a

universe v v₂ u u₂

noncomputable section

namespace CategoryTheory

open Category Limits MonoidalCategory Distributive CartesianMonoidalCategory

variable (C : Type u) [Category.{v} C] [CartesianMonoidalCategory C] [HasBinaryCoproducts C]

/-- A category `C` with finite products is cartesian distributive if is monoidal distributive
with respect to the cartesian monoidal structure. -/
abbrev IsCartesianDistributive :=
  IsMonoidalDistrib C

namespace IsCartesianDistributive

/-- To show a category is cartesian distributive it is enough to show it is left distributive.
The right distributivity is inferred from symmetry of the cartesian monoidal structure. -/
lemma of_isMonoidalLeftDistrib [IsMonoidalLeftDistrib C] : IsCartesianDistributive C :=
  letI : BraidedCategory C := Nonempty.some inferInstance
  SymmetricCategory.isMonoidalDistrib_of_isMonoidalLeftDistrib

/-- The coproduct coprojections are monic in a cartesian distributive category. -/
instance monoCoprod [IsCartesianDistributive C] : MonoCoprod C :=
  MonoCoprod.mk' fun A B =>
    ⟨_, coprodIsCoprod A B, ⟨fun {Z} f g he ↦ by
      let ι := coprod.inl (X := A) (Y := B)
      have : Mono (Z ◁ ι) := SplitMono.mono
        { retraction := (∂L Z A B).inv ≫ coprod.desc (𝟙 _) (fst Z B ≫ lift (𝟙 Z) f) }
      have : lift (𝟙 Z) f = lift (𝟙 Z) g := by rw [← cancel_mono (Z ◁ ι)]; aesop
      simpa only [lift_snd] using this =≫ snd _ _⟩⟩

end IsCartesianDistributive

end CategoryTheory
