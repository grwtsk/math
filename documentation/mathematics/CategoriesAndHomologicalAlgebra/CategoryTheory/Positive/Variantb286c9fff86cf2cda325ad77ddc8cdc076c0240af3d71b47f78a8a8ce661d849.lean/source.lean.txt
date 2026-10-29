-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PositiveCategory.Variant30948b79de9b4bf2fe3d1598b8da40a34dbc707c99861666e796642fe43dddf0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"30948b79de9b4bf2fe3d1598b8da40a34dbc707c99861666e796642fe43dddf0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PositiveCategory.Variant30948b79de9b4bf2fe3d1598b8da40a34dbc707c99861666e796642fe43dddf0","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"30948b79de9b4bf2fe3d1598b8da40a34dbc707c99861666e796642fe43dddf0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/MarkovCategory/Positive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Gaëtan Serré. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gaëtan Serré
-/
module

public import Mathlib.CategoryTheory.MarkovCategory.Basic
public import Mathlib.CategoryTheory.CopyDiscardCategory.Deterministic

/-!
# Positive Categories

Markov categories where deletion is natural for all morphisms.

## Main definitions

* `PositiveCategory`: Markov category where copy is natural given deterministic composition of
  morphisms.

## Main results

* `copy_comp_natural` - Given morphisms `f : X ⟶ Y` and `g : Y ⟶ Z`, if their composition is
  deterministic, then process `f`, copy and then process `g` equals copy and process `f` and `g`
  independently.

* All isomorphisms in a positive Markov category are deterministic.

## Implementation notes

The key property `copy_comp_natural : f ≫ Δ ≫ (g ⊗ₘ 𝟙 Y) = Δ ≫ (f ≫ g ⊗ₘ f)`, given
`Deterministic (f ≫ g)`, means that after processing `f`, copying and then processing `g` is the
same as copying and processing `f` and `g` independently. The probabilistic interpretation is that
given a deterministic process that has a stochastic intermediate result, the same distribution over
both results can be obtained by computing the intermediate result independently of the
deterministic process.

## References

* [Fritz, *A synthetic approach to Markov kernels, conditional independence
  and theorems on sufficient statistics*, Def. 11.22][fritz2020]
* [Moss and Perrone, *A category-theoretic proof of the ergodic decomposition theorem*][moss2023]
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PositiveCategory.Variant30948b79de9b4bf2fe3d1598b8da40a34dbc707c99861666e796642fe43dddf0

public section

universe v u

namespace CategoryTheory

open MonoidalCategory CopyDiscardCategory ComonObj

/-- Markov category where copy is natural given deterministic composition of morphisms. -/
class PositiveCategory (C : Type u) [Category.{v} C] [MonoidalCategory C] extends
    MarkovCategory C where
  /-- Given morphisms `f : X ⟶ Y` and `g : Y ⟶ Z`, if their composition is deterministic, then
  process `f`, copy and then process `g` equals copy and process `f` and `g` independently. -/
  copy_comp_natural {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) [h : Deterministic (f ≫ g)] :
      f ≫ Δ ≫ (g ⊗ₘ 𝟙 Y) = Δ ≫ (f ≫ g ⊗ₘ f)

variable {C : Type u} [Category.{v} C] [MonoidalCategory C]

namespace PositiveCategory

variable [PositiveCategory C]

instance {X Y : C} (f : X ⟶ Y) [IsIso f] : Deterministic f where
  hom_comul := by
    calc
    _ = f ≫ Δ ≫ (inv f ⊗ₘ 𝟙 Y) ≫ (f ⊗ₘ 𝟙 Y) := by
      cat_disch
    _ = (f ≫ Δ ≫ (inv f ⊗ₘ 𝟙 Y)) ≫ (f ⊗ₘ 𝟙 Y) := by
      simp
    _ = (Δ ≫ (𝟙 X ⊗ₘ f)) ≫ (f ⊗ₘ 𝟙 Y) := by
      rw [copy_comp_natural (h := by rw [IsIso.hom_inv_id]; infer_instance)]
      simp
    _ = Δ ≫ (𝟙 X ⊗ₘ f) ≫ (f ⊗ₘ 𝟙 Y) := by
      simp
    _ = Δ ≫ ((𝟙 X ≫ f) ⊗ₘ (f ≫ 𝟙 Y)) := by
      rw [MonoidalCategory.tensorHom_comp_tensorHom]
    _ = Δ ≫ (f ⊗ₘ f) := by cat_disch

end PositiveCategory

end CategoryTheory
