-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pretriangulated.Variantecf792da6dcb7af14c848c41497afcc4e94c21c48ebe71d98fb76882f587776d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ecf792da6dcb7af14c848c41497afcc4e94c21c48ebe71d98fb76882f587776d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Pretriangulated.Variantecf792da6dcb7af14c848c41497afcc4e94c21c48ebe71d98fb76882f587776d","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ecf792da6dcb7af14c848c41497afcc4e94c21c48ebe71d98fb76882f587776d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Triangulated/Opposite/Triangulated.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou, Justus Springer
-/
module

public import Mathlib.CategoryTheory.Triangulated.Opposite.Pretriangulated

/-!
# The opposite of a triangulated category is triangulated

The pretriangulated structure on `Cᵒᵖ` was constructed in the file
`CategoryTheory.Triangulated.Opposite.Pretriangulated`. Here, we show
that `Cᵒᵖ` is triangulated if `C` is triangulated.

## References
* [Jean-Louis Verdier, *Des catégories dérivées des catégories abéliennes*][verdier1996]

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pretriangulated.Variantecf792da6dcb7af14c848c41497afcc4e94c21c48ebe71d98fb76882f587776d

public section

namespace CategoryTheory

open Preadditive Limits

namespace Pretriangulated

variable (C : Type*) [Category* C] [HasShift C ℤ] [HasZeroObject C] [Preadditive C]
  [∀ (n : ℤ), (shiftFunctor C n).Additive] [Pretriangulated C]

namespace Opposite

set_option backward.defeqAttrib.useBackward true in
scoped instance [IsTriangulated C] : IsTriangulated Cᵒᵖ where
  octahedron_axiom := by
    intro X₁ X₂ X₃ Z₁₂ Z₂₃ Z₁₃ u₁₂ u₂₃ u₁₃ comm v₁₂ w₁₂ h₁₂ v₂₃ w₂₃ h₂₃ v₁₃ w₁₃ h₁₃
    let o := Triangulated.someOctahedron' (by aesop) ((mem_distTriang_op_iff _).mp h₂₃)
      ((mem_distTriang_op_iff _).mp h₁₂) ((mem_distTriang_op_iff _).mp h₁₃)
    refine ⟨o.m₃.op, o.m₁.op, congr($(o.comm₄).op), ?_, congr($(o.comm₁).op), ?_, ?_⟩
    · have eq₃ := congr($(o.comm₃).op)
      dsimp at eq₃
      rw [← Category.assoc, ← op_comp, ← Functor.map_comp,
        NatIso.cancel_natIso_inv_right (opShiftFunctorEquivalence C _).unitIso] at eq₃
      exact congr($(Functor.map_injective _ congr($(eq₃).unop)).op)
    · have eq₂ := congr($(o.comm₂).op)
      dsimp at eq₂
      rw [← Category.assoc, ← op_comp, ← Functor.map_comp, Category.assoc,
        ← opShiftFunctorEquivalence_unitIso_inv_naturality, ← Category.assoc,
        NatIso.cancel_natIso_inv_right (opShiftFunctorEquivalence C _).unitIso, ← op_comp,
        ← Functor.map_comp] at eq₂
      exact congr($(Functor.map_injective _ congr($(eq₂).unop)).op).symm
    · have := op_distinguished _ o.mem
      dsimp at this
      convert! this using 2
      rw [Category.assoc, Functor.map_comp, Functor.map_comp,
        ← opShiftFunctorEquivalence_counitIso_hom_app_shift,
        ← opShiftFunctorEquivalence_counitIso_inv_naturality_assoc, Iso.inv_hom_id_app_assoc]

end Opposite

end Pretriangulated

end CategoryTheory
