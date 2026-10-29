-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.SubmoduleIsCompactOfFg.Variantb75bb8977c3df820a719e53b99af706c0db306bc3b2182e22732d82969dda00e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b75bb8977c3df820a719e53b99af706c0db306bc3b2182e22732d82969dda00e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.SubmoduleIsCompactOfFg.Variantb75bb8977c3df820a719e53b99af706c0db306bc3b2182e22732d82969dda00e","mathematical_subject":"Topology.GeneralTopology","original_sha256":"b75bb8977c3df820a719e53b99af706c0db306bc3b2182e22732d82969dda00e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/Module/Compact.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.LinearAlgebra.Finsupp.LinearCombination
import Mathlib.RingTheory.Finiteness.Defs
import Mathlib.Topology.Algebra.Ring.Basic
import Mathlib.RingTheory.Noetherian.Defs

/-!

# Compact submodules

-/


namespace GRWTSK.Topology.GeneralTopology.SubmoduleIsCompactOfFg.Variantb75bb8977c3df820a719e53b99af706c0db306bc3b2182e22732d82969dda00e

variable {R M : Type*} [CommSemiring R] [TopologicalSpace R] [AddCommMonoid M] [Module R M]
variable [TopologicalSpace M] [ContinuousAdd M] [ContinuousSMul R M]

lemma Submodule.isCompact_of_fg [CompactSpace R] {N : Submodule R M} (hN : N.FG) :
    IsCompact (X := M) N := by
  obtain ⟨s, hs⟩ := hN
  have : LinearMap.range (Fintype.linearCombination R (α := s) Subtype.val) = N := by
    simp [Finsupp.range_linearCombination, hs]
  rw [← this]
  refine isCompact_range ?_
  simp only [Fintype.linearCombination, Finset.univ_eq_attach, smul_eq_mul, LinearMap.coe_mk,
    AddHom.coe_mk]
  fun_prop

lemma Ideal.isCompact_of_fg [IsTopologicalSemiring R] [CompactSpace R]
    {I : Ideal R} (hI : I.FG) : IsCompact (X := R) I :=
  Submodule.isCompact_of_fg hI

variable (R M) in
lemma Module.Finite.compactSpace [CompactSpace R] [Module.Finite R M] : CompactSpace M :=
  ⟨Submodule.isCompact_of_fg (Module.Finite.fg_top (R := R))⟩

instance (priority := low) IsNoetherianRing.isClosed_ideal
    {R : Type*} [CommRing R] [TopologicalSpace R] [IsTopologicalRing R]
    [IsNoetherianRing R] [CompactSpace R] [T2Space R] (I : Ideal R) :
    IsClosed (X := R) I :=
  (Ideal.isCompact_of_fg (IsNoetherian.noetherian I)).isClosed
