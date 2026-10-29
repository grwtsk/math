-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasInjectiveCoseparator.Variant47b16c3de5ba9eddff8923c804350b2027846a38ae4812690906d638366c3ecc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"47b16c3de5ba9eddff8923c804350b2027846a38ae4812690906d638366c3ecc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HasInjectiveCoseparator.Variant47b16c3de5ba9eddff8923c804350b2027846a38ae4812690906d638366c3ecc","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"47b16c3de5ba9eddff8923c804350b2027846a38ae4812690906d638366c3ecc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Generator/Abelian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Abelian.Subobject
import Mathlib.CategoryTheory.Limits.EssentiallySmall
import Mathlib.CategoryTheory.Preadditive.Injective.Basic
import Mathlib.CategoryTheory.Generator.Preadditive
import Mathlib.CategoryTheory.Abelian.Opposite

/-!
# A complete abelian category with enough injectives and a separator has an injective coseparator

## Future work
* Once we know that Grothendieck categories have enough injectives, we can use this to conclude
  that Grothendieck categories have an injective coseparator.

## References
* [Peter J Freyd, *Abelian Categories* (Theorem 3.37)][freyd1964abelian]

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasInjectiveCoseparator.Variant47b16c3de5ba9eddff8923c804350b2027846a38ae4812690906d638366c3ecc

open CategoryTheory CategoryTheory.Limits Opposite

universe v u

namespace CategoryTheory.Abelian

variable {C : Type u} [Category.{v} C] [Abelian C]

theorem has_injective_coseparator [HasLimits C] [EnoughInjectives C] (G : C) (hG : IsSeparator G) :
    ∃ G : C, Injective G ∧ IsCoseparator G := by
  haveI : WellPowered.{v} C := wellPowered_of_isDetector G hG.isDetector
  haveI : HasProductsOfShape (Subobject (op G)) C := hasProductsOfShape_of_small _ _
  let T : C := Injective.under (piObj fun P : Subobject (op G) => unop P)
  refine ⟨T, inferInstance, (Preadditive.isCoseparator_iff _).2 fun X Y f hf => ?_⟩
  refine (Preadditive.isSeparator_iff _).1 hG _ fun h => ?_
  suffices hh : factorThruImage (h ≫ f) = 0 by
    rw [← Limits.image.fac (h ≫ f), hh, zero_comp]
  let R := Subobject.mk (factorThruImage (h ≫ f)).op
  let q₁ : image (h ≫ f) ⟶ unop R :=
    (Subobject.underlyingIso (factorThruImage (h ≫ f)).op).unop.hom
  let q₂ : unop (R : Cᵒᵖ) ⟶ piObj fun P : Subobject (op G) => unop P :=
    section_ (Pi.π (fun P : Subobject (op G) => (unop P : C)) R)
  let q : image (h ≫ f) ⟶ T := q₁ ≫ q₂ ≫ Injective.ι _
  exact zero_of_comp_mono q
    (by rw [← Injective.comp_factorThru q (Limits.image.ι (h ≫ f)), Limits.image.fac_assoc,
      Category.assoc, hf, comp_zero])

theorem has_projective_separator [HasColimits C] [EnoughProjectives C] (G : C)
    (hG : IsCoseparator G) : ∃ G : C, Projective G ∧ IsSeparator G := by
  obtain ⟨T, hT₁, hT₂⟩ := has_injective_coseparator (op G) ((isSeparator_op_iff _).2 hG)
  exact ⟨unop T, inferInstance, (isSeparator_unop_iff _).2 hT₂⟩

end CategoryTheory.Abelian
