-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology.UniformSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.UniformSpaces.DiscreteUniformity.Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.UniformSpaces.SourceCorpus.DiscreteUniformity.Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98","mathematical_subject":"Topology.UniformSpaces","original_sha256":"f5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/UniformSpace/DiscreteUniformity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Antoine Chambert-Loir, María Inés de Frutos Fernández. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Antoine Chambert-Loir, María Inés de Frutos Fernández
-/
import Mathlib.Topology.UniformSpace.Cauchy
import Mathlib.Topology.Algebra.IsUniformGroup.Defs

/-! # Discrete uniformity

The discrete uniformity is the smallest possible uniformity, the one for which
the diagonal is an entourage of itself.

It induces the discrete topology.

It is complete.

-/


namespace GRWTSK.Topology.GeneralTopology.UniformSpaces.DiscreteUniformity.Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98

open Filter UniformSpace

/-- The discrete uniformity -/
@[mk_iff discreteUniformity_iff_eq_bot]
class DiscreteUniformity (X : Type*) [u : UniformSpace X] : Prop where
  eq_bot : u = ⊥

namespace DiscreteUniformity

/-- The bot uniformity is the discrete uniformity. -/
instance (X : Type*) : @DiscreteUniformity X ⊥ :=
  @DiscreteUniformity.mk X ⊥ rfl

variable (X : Type*) [u : UniformSpace X] [DiscreteUniformity X]

theorem _root_.GRWTSK.Topology.GeneralTopology.UniformSpaces.DiscreteUniformity.Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.discreteUniformity_iff_eq_principal_idRel {X : Type*} [UniformSpace X] :
    DiscreteUniformity X ↔ uniformity X = principal idRel := by
  rw [discreteUniformity_iff_eq_bot, UniformSpace.ext_iff, Filter.ext_iff, bot_uniformity]

theorem eq_principal_idRel : uniformity X = principal idRel :=
  discreteUniformity_iff_eq_principal_idRel.mp inferInstance

/-- The discrete uniformity induces the discrete topology. -/
instance : DiscreteTopology X where
  eq_bot := by
    rw [DiscreteUniformity.eq_bot (X := X), UniformSpace.toTopologicalSpace_bot]

theorem _root_.GRWTSK.Topology.GeneralTopology.UniformSpaces.DiscreteUniformity.Variantf5d64b43fe8efdceb7caf9118f3d2168038674e72b99edc52029c69cdf18dc98.discreteUniformity_iff_idRel_mem_uniformity {X : Type*} [UniformSpace X] :
    DiscreteUniformity X ↔ idRel ∈ uniformity X := by
  rw [← uniformSpace_eq_bot, discreteUniformity_iff_eq_bot]

theorem idRel_mem_uniformity : idRel ∈ uniformity X :=
  discreteUniformity_iff_idRel_mem_uniformity.mp inferInstance

variable {X} in
/-- A product of spaces with discrete uniformity has a discrete uniformity. -/
instance {Y : Type*} [UniformSpace Y] [DiscreteUniformity Y] :
    DiscreteUniformity (X × Y) := by
  simp [discreteUniformity_iff_eq_principal_idRel, uniformity_prod_eq_comap_prod,
    eq_principal_idRel, idRel, Set.prod_eq, Prod.ext_iff, Set.setOf_and]

variable {x} in
/-- On a space with a discrete uniformity, any function is uniformly continuous. -/
theorem uniformContinuous {Y : Type*} [UniformSpace Y] (f : X → Y) :
    UniformContinuous f := by
  simp only [uniformContinuous_iff, DiscreteUniformity.eq_bot, bot_le]

/-- The discrete uniformity makes a group a `IsUniformGroup. -/
@[to_additive "The discrete uniformity makes an additive group a `IsUniformAddGroup`."]
instance [Group X] : IsUniformGroup X where
  uniformContinuous_div := uniformContinuous (X × X) fun p ↦ p.1 / p.2

variable {X} in
/-- A Cauchy filter in a discrete uniform space is contained in the principal filter
of a point. -/
theorem eq_pure_of_cauchy {α : Filter X} (hα : Cauchy α) : ∃ x : X, α = pure x := by
  rcases hα with ⟨α_ne_bot, α_le⟩
  simp only [DiscreteUniformity.eq_principal_idRel, le_principal_iff, mem_prod_iff] at α_le
  obtain ⟨S, ⟨hS, ⟨T, ⟨hT, H⟩⟩⟩⟩ := α_le
  obtain ⟨x, rfl⟩ := eq_singleton_left_of_prod_subset_idRel (α_ne_bot.nonempty_of_mem hS)
    (Filter.nonempty_of_mem hT) H
  exact ⟨x, α_ne_bot.le_pure_iff.mp <| le_pure_iff.mpr hS⟩

@[deprecated (since := "2025-03-23")]
alias _root_.UniformSpace.DiscreteUnif.cauchy_le_pure := eq_pure_of_cauchy

/-- The discrete uniformity makes a space complete. -/
instance : CompleteSpace X where
  complete {f} hf := by
    obtain ⟨x, rfl⟩ := eq_pure_of_cauchy hf
    exact ⟨x, pure_le_nhds x⟩

variable {X}

/-- A constant to which a Cauchy filter in a discrete uniform space converges. -/
noncomputable def cauchyConst {α : Filter X} (hα : Cauchy α) : X :=
  (eq_pure_of_cauchy hα).choose

@[deprecated (since := "2025-03-23")]
alias _root_.UniformSpace.DiscreteUnif.cauchyConst := cauchyConst

theorem eq_pure_cauchyConst {α : Filter X} (hα : Cauchy α) : α = pure (cauchyConst hα) :=
  (eq_pure_of_cauchy hα).choose_spec

@[deprecated (since := "2025-03-23")]
alias _root_.UniformSpace.DiscreteUnif.eq_const_of_cauchy := eq_pure_cauchyConst

end DiscreteUniformity
