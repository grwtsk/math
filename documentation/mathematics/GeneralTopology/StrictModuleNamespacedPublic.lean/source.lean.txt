-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.IsStrictMapIffIsEmbeddingLiftQKer.Variant8d833f0b4a2c9c61c8bfddbc770fa39eb2c7ba72fa02eb9ce3aa56f2f208a541","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8d833f0b4a2c9c61c8bfddbc770fa39eb2c7ba72fa02eb9ce3aa56f2f208a541","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.IsStrictMapIffIsEmbeddingLiftQKer.Variant8d833f0b4a2c9c61c8bfddbc770fa39eb2c7ba72fa02eb9ce3aa56f2f208a541","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"8d833f0b4a2c9c61c8bfddbc770fa39eb2c7ba72fa02eb9ce3aa56f2f208a541","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Maps/Strict/Module.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anatole Dedecker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anatole Dedecker
-/
module

public import Mathlib.LinearAlgebra.Isomorphisms
public import Mathlib.Topology.Algebra.Module.Equiv
public import Mathlib.Topology.Maps.Strict.Group

/-!
# Strict linear maps

In this file, we study continuous linear maps which are *strict* in the sense of
`Topology.IsStrictMap`. So far, all the results in this file are direct
adaptations from the theory of strict homomorphisms of topological additive groups.
-/


namespace GRWTSK.Algebra.LinearAlgebra.IsStrictMapIffIsEmbeddingLiftQKer.Variant8d833f0b4a2c9c61c8bfddbc770fa39eb2c7ba72fa02eb9ce3aa56f2f208a541

@[expose] public section

open Topology

namespace LinearMap

variable {R S M N Nₗ M' Nₗ' : Type*} [Ring R] [Ring S] {σ : R →+* S}
  [AddCommGroup M] [AddCommGroup N] [AddCommGroup Nₗ] [AddCommGroup M'] [AddCommGroup Nₗ']
  [Module R M] [Module S N] [Module R Nₗ] [Module R M'] [Module R Nₗ']
  {f : M →ₛₗ[σ] N} {fₗ : M →ₗ[R] Nₗ} {gₗ : M' →ₗ[R] Nₗ'}
  [TopologicalSpace M] [TopologicalSpace N] [TopologicalSpace Nₗ]

/-- A linear map `f : M → N` is strict if and only if the induced map `M ⧸ f.ker → N` is an
embedding. -/
protected lemma isStrictMap_iff_isEmbedding_liftQ_ker :
    IsStrictMap f ↔ IsEmbedding (f.ker.liftQ f le_rfl) :=
  f.toAddMonoidHom.isStrictMap_iff_isEmbedding_kerLift

/-- A linear map `f : M → N` is strict if and only if the canonical isomorphism
`M ⧸ f.ker ≃ f.range` is a homeomorphism. -/
protected lemma isStrictMap_iff_isHomeomorph_quotKerEquivRange :
    IsStrictMap fₗ ↔ IsHomeomorph fₗ.quotKerEquivRange := by
  -- Note: right now, this cannot easily be deduced from the `AddMonoidHom` statement, because
  -- `fₗ.quotKerEquivRange.toAddEquiv` is not def-eq to
  -- `QuotientAddGroup.quotientKerEquivRange fₗ.toAddMonoidHom`. This would require
  -- fixing the definition of `LinearMap.quotKerEquivRange`.
  simp_rw [isHomeomorph_iff_isStrictMap_bijective, EquivLike.bijective, and_true,
    fₗ.ker.isQuotientMap_mkQ.isStrictMap_iff, IsEmbedding.subtypeVal.isStrictMap_iff]
  rfl

/-- The isomorphism of topological modules `M ⧸ f.ker ≃ f.range` given by a strict linear
map `f : M → N`. This is an avatar of the first isomorphism theorem. -/
noncomputable def _root_.GRWTSK.Algebra.LinearAlgebra.IsStrictMapIffIsEmbeddingLiftQKer.Variant8d833f0b4a2c9c61c8bfddbc770fa39eb2c7ba72fa02eb9ce3aa56f2f208a541.ContinuousLinearEquiv.quotKerEquivRange
    (hf : IsStrictMap fₗ) : (M ⧸ fₗ.ker) ≃L[R] fₗ.range :=
  .ofIsHomeomorph fₗ.quotKerEquivRange (fₗ.isStrictMap_iff_isHomeomorph_quotKerEquivRange.mp hf)

variable [IsTopologicalAddGroup M]

/-- A linear map is strict if and only if its `rangeRestrict` is an open quotient map. -/
protected lemma isStrictMap_iff_isOpenQuotientMap_rangeRestrict [RingHomSurjective σ] :
    IsStrictMap f ↔ IsOpenQuotientMap f.rangeRestrict :=
  f.toAddMonoidHom.isStrictMap_iff_isOpenQuotientMap_rangeRestrict

variable [TopologicalSpace M'] [IsTopologicalAddGroup M'] [TopologicalSpace Nₗ']

/-- The product (in the sense of `LinearMap.prodMap`) of linear maps is strict if and only if both
maps are strict. -/
protected lemma isStrictMap_prodMap_iff :
    IsStrictMap (fₗ.prodMap gₗ) ↔ IsStrictMap fₗ ∧ IsStrictMap gₗ :=
  AddMonoidHom.isStrictMap_prodMap_iff (f := fₗ.toAddMonoidHom) (g := gₗ.toAddMonoidHom)

/-- The product (in the sense of `LinearMap.prodMap`) of strict linear maps is strict. -/
protected lemma isStrictMap_prodMap (hf : IsStrictMap fₗ)
    (hg : IsStrictMap gₗ) : IsStrictMap (fₗ.prodMap gₗ) :=
  LinearMap.isStrictMap_prodMap_iff.mpr ⟨hf, hg⟩

end LinearMap
