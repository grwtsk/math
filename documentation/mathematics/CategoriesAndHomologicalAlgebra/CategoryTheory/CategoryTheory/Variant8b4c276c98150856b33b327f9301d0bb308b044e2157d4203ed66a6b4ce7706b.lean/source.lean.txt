-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LTensorShortComplexExact.Variant9f493242bfec77885edbb03801bcdfd46bf9456f81f0292755322317340fc79e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9f493242bfec77885edbb03801bcdfd46bf9456f81f0292755322317340fc79e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.LTensorShortComplexExact.Variant9f493242bfec77885edbb03801bcdfd46bf9456f81f0292755322317340fc79e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"9f493242bfec77885edbb03801bcdfd46bf9456f81f0292755322317340fc79e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Flat/CategoryTheory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang
-/
module

public import Mathlib.RingTheory.Flat.Basic
public import Mathlib.Algebra.Homology.ShortComplex.ModuleCat
public import Mathlib.Algebra.Category.ModuleCat.Monoidal.Closed

/-!
# Tensoring with a flat module is an exact functor

In this file we prove that tensoring with a flat module is an exact functor.

## Main results

- `Module.Flat.iff_lTensor_preserves_shortComplex_exact`: an `R`-module `M` is flat if and only if
  for every exact sequence `A ⟶ B ⟶ C`, `M ⊗ A ⟶ M ⊗ B ⟶ M ⊗ C` is also exact.

- `Module.Flat.iff_rTensor_preserves_shortComplex_exact`: an `R`-module `M` is flat if and only if
  for every short exact sequence `A ⟶ B ⟶ C`, `A ⊗ M ⟶ B ⊗ M ⟶ C ⊗ M` is also exact.

## TODO

- Relate flatness with `Tor`

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LTensorShortComplexExact.Variant9f493242bfec77885edbb03801bcdfd46bf9456f81f0292755322317340fc79e

public section

universe u

open CategoryTheory MonoidalCategory ShortComplex.ShortExact

namespace Module.Flat

variable {R : Type u} [CommRing R] (M : ModuleCat.{u} R)

lemma lTensor_shortComplex_exact [Flat R M] (C : ShortComplex <| ModuleCat R) (hC : C.Exact) :
    C.map (tensorLeft M) |>.Exact := by
  rw [moduleCat_exact_iff_function_exact] at hC ⊢
  exact lTensor_exact M hC

lemma rTensor_shortComplex_exact [Flat R M] (C : ShortComplex <| ModuleCat R) (hC : C.Exact) :
    C.map (tensorRight M) |>.Exact := by
  rw [moduleCat_exact_iff_function_exact] at hC ⊢
  exact rTensor_exact M hC

lemma iff_lTensor_preserves_shortComplex_exact :
    Flat R M ↔
    ∀ (C : ShortComplex <| ModuleCat R) (_ : C.Exact), (C.map (tensorLeft M) |>.Exact) :=
  ⟨fun _ _ ↦ lTensor_shortComplex_exact _ _, fun H ↦ iff_lTensor_exact.2
    fun _ _ _ _ _ _ _ _ _ f g h ↦
      moduleCat_exact_iff_function_exact _ |>.1 <|
      H (.mk (ModuleCat.ofHom f) (ModuleCat.ofHom g)
        (ModuleCat.hom_ext (DFunLike.ext _ _ h.apply_apply_eq_zero)))
          (moduleCat_exact_iff_function_exact _ |>.2 h)⟩

lemma iff_rTensor_preserves_shortComplex_exact :
    Flat R M ↔
    ∀ (C : ShortComplex <| ModuleCat R) (_ : C.Exact), (C.map (tensorRight M) |>.Exact) :=
  ⟨fun _ _ ↦ rTensor_shortComplex_exact _ _, fun H ↦ iff_rTensor_exact.2
    fun _ _ _ _ _ _ _ _ _ f g h ↦
      moduleCat_exact_iff_function_exact _ |>.1 <|
      H (.mk (ModuleCat.ofHom f) (ModuleCat.ofHom g)
        (ModuleCat.hom_ext (DFunLike.ext _ _ h.apply_apply_eq_zero)))
          (moduleCat_exact_iff_function_exact _ |>.2 h)⟩

open Limits

lemma iff_preservesFiniteLimits_tensorLeft :
    Flat R M ↔ PreservesFiniteLimits (tensorLeft M) := by
  rw [Module.Flat.iff_lTensor_preserves_shortComplex_exact,
    ((Functor.exact_tfae <| tensorLeft M).out 2 4 :)]
  simp [show PreservesFiniteColimits (tensorLeft M) from inferInstance]

instance [Module.Flat R M] : PreservesFiniteLimits <| tensorLeft M := by
  rw [← iff_preservesFiniteLimits_tensorLeft]
  infer_instance

lemma iff_preservesFiniteLimits_tensorRight :
    Flat R M ↔ PreservesFiniteLimits (tensorRight M) where
  mp _ := preservesFiniteLimits_of_natIso (BraidedCategory.tensorLeftIsoTensorRight M)
  mpr _ := by
    rw [iff_preservesFiniteLimits_tensorLeft]
    exact preservesFiniteLimits_of_natIso (BraidedCategory.tensorLeftIsoTensorRight M).symm

instance [Module.Flat R M] : PreservesFiniteLimits (tensorRight M) :=
  preservesFiniteLimits_of_natIso (BraidedCategory.tensorLeftIsoTensorRight M)

end Module.Flat
