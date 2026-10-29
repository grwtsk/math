-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UnbundledHom.Variant83f2a1fc4bf447d3d73fbc672e0979ffe84231ba9ea02902b0bb0ec3d87901d7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"83f2a1fc4bf447d3d73fbc672e0979ffe84231ba9ea02902b0bb0ec3d87901d7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.UnbundledHom.Variant83f2a1fc4bf447d3d73fbc672e0979ffe84231ba9ea02902b0bb0ec3d87901d7","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"83f2a1fc4bf447d3d73fbc672e0979ffe84231ba9ea02902b0bb0ec3d87901d7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/ConcreteCategory/UnbundledHom.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.CategoryTheory.ConcreteCategory.BundledHom

/-!
# Category instances for structures that use unbundled homs

This file provides basic infrastructure to define concrete
categories using unbundled homs (see `class UnbundledHom`), and
define forgetful functors between them (see
`UnbundledHom.mkHasForget₂`).
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UnbundledHom.Variant83f2a1fc4bf447d3d73fbc672e0979ffe84231ba9ea02902b0bb0ec3d87901d7

universe v u

namespace CategoryTheory

/-- A class for unbundled homs used to define a category. `hom` must
take two types `α`, `β` and instances of the corresponding structures,
and return a predicate on `α → β`. -/
class UnbundledHom {c : Type u → Type u} (hom : ∀ ⦃α β⦄, c α → c β → (α → β) → Prop) : Prop where
  hom_id : ∀ {α} (ia : c α), hom ia ia id
  hom_comp : ∀ {α β γ} {Iα : c α} {Iβ : c β} {Iγ : c γ} {g : β → γ} {f : α → β} (_ : hom Iβ Iγ g)
      (_ : hom Iα Iβ f), hom Iα Iγ (g ∘ f)

namespace UnbundledHom

variable (c : Type u → Type u) (hom : ∀ ⦃α β⦄, c α → c β → (α → β) → Prop) [𝒞 : UnbundledHom hom]

instance bundledHom : BundledHom fun α β (Iα : c α) (Iβ : c β) => Subtype (hom Iα Iβ) where
  toFun _ _ := Subtype.val
  id Iα := ⟨id, hom_id Iα⟩
  id_toFun _ := rfl
  comp _ _ _ g f := ⟨g.1 ∘ f.1, hom_comp g.2 f.2⟩
  comp_toFun _ _ _ _ _ := rfl
  hom_ext _ _ _ _ := Subtype.eq

section HasForget₂

variable {c hom} {c' : Type u → Type u} {hom' : ∀ ⦃α β⦄, c' α → c' β → (α → β) → Prop}
  [𝒞' : UnbundledHom hom']

variable (obj : ∀ ⦃α⦄, c α → c' α)
  (map : ∀ ⦃α β Iα Iβ f⦄, @hom α β Iα Iβ f → hom' (obj Iα) (obj Iβ) f)

/-- A custom constructor for forgetful functor
between concrete categories defined using `UnbundledHom`. -/
def mkHasForget₂ : HasForget₂ (Bundled c) (Bundled c') :=
  BundledHom.mkHasForget₂ obj (fun f => ⟨f.val, map f.property⟩) fun _ => rfl

end HasForget₂

end UnbundledHom

end CategoryTheory
