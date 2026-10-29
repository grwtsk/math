-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IsAbelianGalois.Variantbd4a816f2357a3b0920733272ce2777e42cdc0c9c420d091abf2febcfc87faeb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bd4a816f2357a3b0920733272ce2777e42cdc0c9c420d091abf2febcfc87faeb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IsAbelianGalois.Variantbd4a816f2357a3b0920733272ce2777e42cdc0c9c420d091abf2febcfc87faeb","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"bd4a816f2357a3b0920733272ce2777e42cdc0c9c420d091abf2febcfc87faeb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/FieldTheory/Galois/Abelian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
module

public import Mathlib.FieldTheory.Galois.Infinite

/-!

# Abelian extensions

In this file, we define the typeclass of abelian extensions and provide some basic API.

-/


namespace GRWTSK.Algebra.IsAbelianGalois.Variantbd4a816f2357a3b0920733272ce2777e42cdc0c9c420d091abf2febcfc87faeb

public section

variable (K L M : Type*) [Field K] [Field L] [Algebra K L]
variable [Field M] [Algebra K M] [Algebra L M] [IsScalarTower K L M]

/-- The class of abelian extensions,
defined as galois extensions whose galois group is commutative. -/
class IsAbelianGalois (K L : Type*) [Field K] [Field L] [Algebra K L] : Prop extends
  IsGalois K L, IsMulCommutative Gal(L/K)

open scoped IsMulCommutative in
lemma IsAbelianGalois.tower_bot [IsAbelianGalois K M] :
    IsAbelianGalois K L :=
  have : IsGalois K L :=
    ((AlgEquiv.ofBijective (IsScalarTower.toAlgHom K L M).rangeRestrict
      ⟨RingHom.injective _, AlgHom.rangeRestrict_surjective _⟩).transfer_galois
        (E' := (IsScalarTower.toAlgHom K L M).fieldRange)).mpr
      ((InfiniteGalois.normal_iff_isGalois _).mp inferInstance)
  { is_comm.comm x y := by
      obtain ⟨x, rfl⟩ := AlgEquiv.restrictNormalHom_surjective M x
      obtain ⟨y, rfl⟩ := AlgEquiv.restrictNormalHom_surjective M y
      rw [← map_mul, ← map_mul, mul_comm] }

open scoped IsMulCommutative in
lemma IsAbelianGalois.tower_top [IsAbelianGalois K M] :
    IsAbelianGalois L M :=
  have : IsGalois L M := .tower_top_of_isGalois K L M
  { is_comm.comm x y := AlgEquiv.restrictScalars_injective K
      (mul_comm (x.restrictScalars K) (y.restrictScalars K)) }

variable {K L M} in
omit [IsScalarTower K L M] [Algebra L M] in
lemma IsAbelianGalois.of_algHom (f : L →ₐ[K] M) [IsAbelianGalois K M] :
    IsAbelianGalois K L :=
  letI := f.toRingHom.toAlgebra
  haveI := IsScalarTower.of_algebraMap_eq' f.comp_algebraMap.symm
  .tower_bot K L M

instance [IsAbelianGalois K L] (K' : IntermediateField K L) : IsAbelianGalois K K' :=
  .tower_bot K K' L

instance (K L : Type*) [Field K] [Field L] [Algebra K L] [IsAbelianGalois K L]
    (K' : IntermediateField K L) : IsAbelianGalois K' L :=
  .tower_top K _ L

instance : IsAbelianGalois K K where
  is_comm.comm _ _ := Subsingleton.elim _ _

instance : IsAbelianGalois K (⊥ : IntermediateField K L) :=
  .of_algHom (IntermediateField.botEquiv K L).toAlgHom

lemma IsAbelianGalois.of_isCyclic [IsGalois K L] [IsCyclic Gal(L/K)] : IsAbelianGalois K L where

/-- The compositum of two abelian extensions is abelian: its Galois group embeds into the product
of the (commutative) factor Galois groups. -/
instance IsAbelianGalois.sup {F E : Type*} [Field F] [Field E] [Algebra F E]
    (K L : IntermediateField F E) [IsAbelianGalois F K] [IsAbelianGalois F L] :
    IsAbelianGalois F ↑(K ⊔ L) :=
  haveI : IsMulCommutative Gal(↑(K ⊔ L)/F) :=
    .of_comm fun a b ↦ IntermediateField.restrictNormalHomSupProd_injective K L <| by
      rw [map_mul, map_mul, mul_comm']
  { }
