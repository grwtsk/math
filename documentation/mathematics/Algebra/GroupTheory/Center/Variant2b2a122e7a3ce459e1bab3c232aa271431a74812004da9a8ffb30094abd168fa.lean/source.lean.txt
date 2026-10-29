-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Center.Variant4f4ca009b6f8cbfc42a2c5503dba3859670abd5d43e1e8257273b4057f5bee93","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4f4ca009b6f8cbfc42a2c5503dba3859670abd5d43e1e8257273b4057f5bee93","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Center.Variant4f4ca009b6f8cbfc42a2c5503dba3859670abd5d43e1e8257273b4057f5bee93","mathematical_subject":"Algebra.Groups","original_sha256":"4f4ca009b6f8cbfc42a2c5503dba3859670abd5d43e1e8257273b4057f5bee93","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/GroupTheory/Subgroup/Center.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kexing Ying. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kexing Ying
-/
module

public import Mathlib.Algebra.Group.Subgroup.Basic
public import Mathlib.GroupTheory.Submonoid.Center

/-!
# Centers of subgroups

-/


namespace GRWTSK.Algebra.GroupTheory.Center.Variant4f4ca009b6f8cbfc42a2c5503dba3859670abd5d43e1e8257273b4057f5bee93

@[expose] public section

assert_not_exists MonoidWithZero Multiset

variable {G H : Type*} [Group G] [Group H]

namespace Subgroup

variable (G)

/-- The center of a group `G` is the set of elements that commute with everything in `G` -/
@[to_additive
      /-- The center of an additive group `G` is the set of elements that commute with
      everything in `G` -/]
def center : Subgroup G where
  __ := Submonoid.center G
  inv_mem' := Set.inv_mem_center

@[to_additive]
theorem coe_center : ↑(center G) = Set.center G :=
  rfl

@[to_additive (attr := simp)]
theorem center_toSubmonoid : (center G).toSubmonoid = Submonoid.center G :=
  rfl

instance center.isMulCommutative : IsMulCommutative (center G) :=
  ⟨⟨fun a b => Subtype.ext (b.2.comm a).symm⟩⟩

variable {G} in
/-- The center of isomorphic groups are isomorphic. -/
@[to_additive (attr := simps!) /-- The center of isomorphic additive groups are isomorphic. -/]
def centerCongr (e : G ≃* H) : center G ≃* center H := Submonoid.centerCongr e

/-- The center of a group is isomorphic to the center of its opposite. -/
@[to_additive (attr := simps!)
/-- The center of an additive group is isomorphic to the center of its opposite. -/]
def centerToMulOpposite : center G ≃* center Gᵐᵒᵖ := Submonoid.centerToMulOpposite

variable {G}

@[to_additive]
theorem mem_center_iff {z : G} : z ∈ center G ↔ ∀ g, g * z = z * g := by
  rw [← Semigroup.mem_center_iff]
  exact Iff.rfl

instance decidableMemCenter (z : G) [Decidable (∀ g, g * z = z * g)] : Decidable (z ∈ center G) :=
  decidable_of_iff' _ mem_center_iff

@[to_additive]
theorem map_center_le_center {F} [FunLike F G H] [MonoidHomClass F G H] {f : F}
    (hf : Function.Surjective f) : map f (center G) ≤ center H :=
  Set.image_center_subset hf

@[to_additive]
theorem comap_center_le_center {F} [FunLike F G H] [MonoidHomClass F G H] {f : F}
    (hf : Function.Injective f) : comap f (center H) ≤ center G :=
  Set.preimage_center_subset hf

@[to_additive (attr := simp)]
theorem map_center_eq {F} [EquivLike F G H] [MulEquivClass F G H] (f : F) :
    map f (center G) = center H :=
  SetLike.coe_injective (Set.image_center_eq f)

@[to_additive]
instance centerCharacteristic : (center G).Characteristic := by
  refine characteristic_iff_comap_le.mpr fun ϕ g hg => ?_
  rw [mem_center_iff]
  intro h
  rw [← ϕ.injective.eq_iff, map_mul, map_mul]
  exact (hg.comm (ϕ h)).symm

@[to_additive]
theorem _root_.GRWTSK.Algebra.GroupTheory.Center.Variant4f4ca009b6f8cbfc42a2c5503dba3859670abd5d43e1e8257273b4057f5bee93.CommGroup.center_eq_top {G : Type*} [CommGroup G] : center G = ⊤ := by
  rw [eq_top_iff']
  intro x
  rw [Subgroup.mem_center_iff]
  intro y
  exact mul_comm y x

@[to_additive]
theorem center_eq_top_iff : center G = ⊤ ↔ IsMulCommutative G := by
  simp [eq_top_iff', isMulCommutative_iff, mem_center_iff, eq_comm]

@[to_additive]
theorem center_eq_top [hG : IsMulCommutative G] : center G = ⊤ :=
    center_eq_top_iff.mpr hG

/-- A group is commutative if the center is the whole group. -/
@[to_additive /-- An additive group is commutative if the center is the whole group. -/,
  instance_reducible]
def _root_.GRWTSK.Algebra.GroupTheory.Center.Variant4f4ca009b6f8cbfc42a2c5503dba3859670abd5d43e1e8257273b4057f5bee93.Group.commGroupOfCenterEqTop (h : center G = ⊤) : CommGroup G :=
  { ‹Group G› with
    mul_comm := by
      rw [eq_top_iff'] at h
      intro x y
      apply Subgroup.mem_center_iff.mp _ x
      exact h y
  }

@[to_additive]
protected theorem center_prod : center (G × H) = prod (center G) (center H) :=
  SetLike.coe_injective Set.center_prod

@[to_additive]
protected theorem center_pi {η : Type*} {G : η → Type*} [Π i, Group (G i)] :
    center (Π i, G i) = pi .univ fun i ↦ center (G i) :=
  SetLike.coe_injective Set.center_pi

section Normalizer

@[to_additive]
lemma normal_of_le_center {H : Subgroup G} (hH : H ≤ Subgroup.center G) : H.Normal :=
  ⟨fun a ha b ↦ by simpa [mem_center_iff.mp (hH ha) b]⟩

@[to_additive]
instance instNormalCenter : (center G).Normal := (center G).normal_of_le_center le_rfl

@[to_additive]
theorem center_le_normalizer (s : Set G) : center G ≤ normalizer s := by
  intro x hx y
  simp [← mem_center_iff.mp hx y]

end Normalizer

end Subgroup

namespace IsConj

variable {M : Type*} [Monoid M]

theorem eq_of_left_mem_center {g h : M} (H : IsConj g h) (Hg : g ∈ Set.center M) : g = h := by
  rcases H with ⟨u, hu⟩; rwa [← u.mul_left_inj, Hg.comm u]

theorem eq_of_right_mem_center {g h : M} (H : IsConj g h) (Hh : h ∈ Set.center M) : g = h :=
  (H.symm.eq_of_left_mem_center Hh).symm

end IsConj

namespace ConjClasses

set_option backward.isDefEq.respectTransparency false in
theorem mk_bijOn (G : Type*) [Group G] :
    Set.BijOn ConjClasses.mk (↑(Subgroup.center G)) (noncenter G)ᶜ := by
  refine ⟨fun g hg ↦ ?_, fun x hx y _ H ↦ ?_, ?_⟩
  · simp only [mem_noncenter, Set.compl_def, Set.mem_ofPred, Set.not_nontrivial_iff]
    intro x hx y hy
    simp only [mem_carrier_iff_mk_eq, mk_eq_mk_iff_isConj] at hx hy
    rw [hx.eq_of_right_mem_center hg, hy.eq_of_right_mem_center hg]
  · rw [mk_eq_mk_iff_isConj] at H
    exact H.eq_of_left_mem_center hx
  · rintro ⟨g⟩ hg
    refine ⟨g, ?_, rfl⟩
    simp only [mem_noncenter, Set.compl_def, Set.mem_ofPred, Set.not_nontrivial_iff] at hg
    rw [SetLike.mem_coe, Subgroup.mem_center_iff]
    intro h
    rw [← mul_inv_eq_iff_eq_mul]
    refine hg ?_ mem_carrier_mk
    rw [mem_carrier_iff_mk_eq]
    apply mk_eq_mk_iff_isConj.mpr
    rw [isConj_comm, isConj_iff]
    exact ⟨h, rfl⟩

end ConjClasses
