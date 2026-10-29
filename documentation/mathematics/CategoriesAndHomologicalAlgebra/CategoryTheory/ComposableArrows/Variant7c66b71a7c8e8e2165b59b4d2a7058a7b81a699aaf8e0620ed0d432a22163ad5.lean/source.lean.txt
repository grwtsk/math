-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EssSurjMapComposableArrowsOfHasRightCalculusOfFractions.Variant1a63f61bdb8100e5e34bc23546fa204a6f3dde253b01634bbc7b3f34aaf46d24","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1a63f61bdb8100e5e34bc23546fa204a6f3dde253b01634bbc7b3f34aaf46d24","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.EssSurjMapComposableArrowsOfHasRightCalculusOfFractions.Variant1a63f61bdb8100e5e34bc23546fa204a6f3dde253b01634bbc7b3f34aaf46d24","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"1a63f61bdb8100e5e34bc23546fa204a6f3dde253b01634bbc7b3f34aaf46d24","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Localization/CalculusOfFractions/ComposableArrows.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou, Andrew Yang
-/
import Mathlib.CategoryTheory.ComposableArrows
import Mathlib.CategoryTheory.Localization.CalculusOfFractions

/-! # Essential surjectivity of the functor induced on composable arrows

Assuming that `L : C ⥤ D` is a localization functor for a class of morphisms `W`
that has a calculus of left *or* right fractions, we show in this file
that the functor `L.mapComposableArrows n : ComposableArrows C n ⥤ ComposableArrows D n`
is essentially surjective for any `n : ℕ`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EssSurjMapComposableArrowsOfHasRightCalculusOfFractions.Variant1a63f61bdb8100e5e34bc23546fa204a6f3dde253b01634bbc7b3f34aaf46d24

namespace CategoryTheory

namespace Localization

variable {C D : Type*} [Category C] [Category D] (L : C ⥤ D) (W : MorphismProperty C)
  [L.IsLocalization W]

open ComposableArrows

lemma essSurj_mapComposableArrows_of_hasRightCalculusOfFractions
    [W.HasRightCalculusOfFractions] (n : ℕ) :
    (L.mapComposableArrows n).EssSurj where
  mem_essImage Y := by
    have := essSurj L W
    induction n with
    | zero =>
      obtain ⟨Y, rfl⟩ := mk₀_surjective Y
      exact ⟨mk₀ _, ⟨isoMk₀ (L.objObjPreimageIso Y)⟩⟩
    | succ n hn =>
      obtain ⟨Y, Z, f, rfl⟩ := ComposableArrows.precomp_surjective Y
      obtain ⟨Y', ⟨e⟩⟩ := hn Y
      obtain ⟨f', hf'⟩ := exists_rightFraction L W
        ((L.objObjPreimageIso Z).hom ≫ f ≫ (e.app 0).inv)
      refine ⟨Y'.precomp f'.f,
        ⟨isoMkSucc (isoOfHom L W _ f'.hs ≪≫ L.objObjPreimageIso Z) e ?_⟩⟩
      dsimp at hf' ⊢
      simp [← cancel_mono (e.inv.app 0), hf']

lemma essSurj_mapComposableArrows [W.HasLeftCalculusOfFractions] (n : ℕ) :
    (L.mapComposableArrows n).EssSurj := by
  have := essSurj_mapComposableArrows_of_hasRightCalculusOfFractions L.op W.op n
  have := Functor.essSurj_of_iso (L.mapComposableArrowsOpIso n).symm
  exact Functor.essSurj_of_comp_fully_faithful _ (opEquivalence D n).functor.rightOp

end Localization

end CategoryTheory
