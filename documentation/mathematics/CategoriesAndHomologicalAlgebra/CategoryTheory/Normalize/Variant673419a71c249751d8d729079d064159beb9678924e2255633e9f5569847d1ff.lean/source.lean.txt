-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Normalize.Variantdf71693781ad03bdb65ee01b79c8aca36b7ad1bd5c8f90cc8b7ca367a1cbd309","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"df71693781ad03bdb65ee01b79c8aca36b7ad1bd5c8f90cc8b7ca367a1cbd309","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Normalize.Variantdf71693781ad03bdb65ee01b79c8aca36b7ad1bd5c8f90cc8b7ca367a1cbd309","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"df71693781ad03bdb65ee01b79c8aca36b7ad1bd5c8f90cc8b7ca367a1cbd309","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/CategoryTheory/Monoidal/Normalize.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.CategoryTheory.Monoidal.Normalize


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Normalize.Variantdf71693781ad03bdb65ee01b79c8aca36b7ad1bd5c8f90cc8b7ca367a1cbd309

open CategoryTheory Mathlib.Tactic BicategoryLike
open MonoidalCategory

namespace CategoryTheory.MonoidalCategory

/-- `normalize% η` is the normalization of the 2-morphism `η`.
1. The normalized 2-morphism is of the form `α₀ ≫ η₀ ≫ α₁ ≫ η₁ ≫ ... αₘ ≫ ηₘ ≫ αₘ₊₁` where
  each `αᵢ` is a structural 2-morphism (consisting of associators and unitors),
2. each `ηᵢ` is a non-structural 2-morphism of the form `f₁ ◁ ... ◁ fₘ ◁ θ`, and
3. `θ` is of the form `ι ▷ g₁ ▷ ... ▷ gₗ`
-/
elab "normalize% " t:term:51 : term => do
  let e ← Lean.Elab.Term.elabTerm t none
  let ctx : Monoidal.Context ← BicategoryLike.mkContext e
  CoherenceM.run (ctx := ctx) do
    return (← BicategoryLike.eval `monoidal (← MkMor₂.ofExpr e)).expr.e.e

universe v u

variable {C : Type u} [Category.{v} C] [MonoidalCategory C]
variable {X Y Z W : C} (f : X ⟶ Y) (g : Y ⟶ Z)

#guard_expr normalize% X ◁ 𝟙 Y = (whiskerLeftIso X (Iso.refl Y)).hom
#guard_expr normalize% 𝟙 X ▷ Y = (whiskerRightIso (Iso.refl X) Y).hom
#guard_expr normalize% X ◁ (f ≫ g) = _ ≫ X ◁ f ≫ _ ≫ X ◁ g ≫ _
#guard_expr normalize% (f ≫ g) ▷ Y = _ ≫ f ▷ Y ≫ _ ≫ g ▷ Y ≫ _
#guard_expr normalize% 𝟙_ C ◁ f = _ ≫ f ≫ _
#guard_expr normalize% (X ⊗ Y) ◁ f = _ ≫ X ◁ Y ◁ f ≫ _
#guard_expr normalize% f ▷ 𝟙_ C = _ ≫ f ≫ _
#guard_expr normalize% f ▷ (X ⊗ Y) = _ ≫ f ▷ X ▷ Y ≫ _
#guard_expr normalize% (X ◁ f) ▷ Y = _ ≫ X ◁ f ▷ Y ≫ _
#guard_expr normalize% (λ_ X).hom = (λ_ X).hom
#guard_expr normalize% (λ_ X).inv = ((λ_ X).symm).hom
#guard_expr normalize% (ρ_ X).hom = (ρ_ X).hom
#guard_expr normalize% (ρ_ X).inv = ((ρ_ X).symm).hom
#guard_expr normalize% (α_ X Y Z).hom = (α_ _ _ _).hom
#guard_expr normalize% (α_ X Y Z).inv = ((α_ X Y Z).symm).hom
#guard_expr normalize% 𝟙 (X ⊗ Y) = (Iso.refl (X ⊗ Y)).hom
#guard_expr normalize% f ⊗ g = _ ≫ (f ⊗ g) ≫ _
variable {V₁ V₂ V₃ : C} (R : ∀ V₁ V₂ : C, V₁ ⊗ V₂ ⟶ V₂ ⊗ V₁) in
#guard_expr normalize% R V₁ V₂ ▷ V₃ ⊗≫ V₂ ◁ R V₁ V₃ = _ ≫ R V₁ V₂ ▷ V₃ ≫ _ ≫ V₂ ◁ R V₁ V₃ ≫ _

end CategoryTheory.MonoidalCategory
