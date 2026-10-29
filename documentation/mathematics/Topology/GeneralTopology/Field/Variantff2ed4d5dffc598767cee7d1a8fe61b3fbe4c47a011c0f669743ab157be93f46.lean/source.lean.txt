-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TopologicalDivisionRing.Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TopologicalDivisionRing.Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f","mathematical_subject":"Topology.GeneralTopology","original_sha256":"d941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/Algebra/Field.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot, Scott Morrison
-/
import Mathlib.Topology.Algebra.Ring.Basic
import Mathlib.Topology.Algebra.GroupWithZero
import Mathlib.Topology.LocalExtr
import Mathlib.FieldTheory.Subfield


namespace GRWTSK.Topology.GeneralTopology.TopologicalDivisionRing.Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f

#align_import topology.algebra.field from "leanprover-community/mathlib"@"c10e724be91096453ee3db13862b9fb9a992fef2"

/-!
# Topological fields

A topological division ring is a topological ring whose inversion function is continuous at every
non-zero element.

-/

variable {K : Type*} [DivisionRing K] [TopologicalSpace K]

/-- Left-multiplication by a nonzero element of a topological division ring is proper, i.e.,
inverse images of compact sets are compact. -/
theorem Filter.tendsto_cocompact_mul_left₀ [ContinuousMul K] {a : K} (ha : a ≠ 0) :
    Filter.Tendsto (fun x : K => a * x) (Filter.cocompact K) (Filter.cocompact K) :=
  Filter.tendsto_cocompact_mul_left (inv_mul_cancel ha)
#align filter.tendsto_cocompact_mul_left₀ Filter.tendsto_cocompact_mul_left₀

/-- Right-multiplication by a nonzero element of a topological division ring is proper, i.e.,
inverse images of compact sets are compact. -/
theorem Filter.tendsto_cocompact_mul_right₀ [ContinuousMul K] {a : K} (ha : a ≠ 0) :
    Filter.Tendsto (fun x : K => x * a) (Filter.cocompact K) (Filter.cocompact K) :=
  Filter.tendsto_cocompact_mul_right (mul_inv_cancel ha)
#align filter.tendsto_cocompact_mul_right₀ Filter.tendsto_cocompact_mul_right₀

variable (K)

/-- A topological division ring is a division ring with a topology where all operations are
    continuous, including inversion. -/
class TopologicalDivisionRing extends TopologicalRing K, HasContinuousInv₀ K : Prop
#align topological_division_ring TopologicalDivisionRing

section Subfield

variable {α : Type*} [Field α] [TopologicalSpace α] [TopologicalDivisionRing α]

/-- The (topological-space) closure of a subfield of a topological field is
itself a subfield. -/
def Subfield.topologicalClosure (K : Subfield α) : Subfield α :=
  { K.toSubring.topologicalClosure with
    carrier := _root_.closure (K : Set α)
    inv_mem' := fun x hx => by
      dsimp only at hx ⊢
      rcases eq_or_ne x 0 with (rfl | h)
      · rwa [inv_zero]
      · -- porting note: todo: Lean fails to find InvMemClass instance
        rw [← @inv_coe_set α (Subfield α) _ _ SubfieldClass.toInvMemClass K, ← Set.image_inv]
        exact mem_closure_image (continuousAt_inv₀ h) hx }
#align subfield.topological_closure Subfield.topologicalClosure

theorem Subfield.le_topologicalClosure (s : Subfield α) : s ≤ s.topologicalClosure :=
  _root_.subset_closure
#align subfield.le_topological_closure Subfield.le_topologicalClosure

theorem Subfield.isClosed_topologicalClosure (s : Subfield α) :
    IsClosed (s.topologicalClosure : Set α) :=
  isClosed_closure
#align subfield.is_closed_topological_closure Subfield.isClosed_topologicalClosure

theorem Subfield.topologicalClosure_minimal (s : Subfield α) {t : Subfield α} (h : s ≤ t)
    (ht : IsClosed (t : Set α)) : s.topologicalClosure ≤ t :=
  closure_minimal h ht
#align subfield.topological_closure_minimal Subfield.topologicalClosure_minimal

end Subfield

section affineHomeomorph

/-!
This section is about affine homeomorphisms from a topological field `𝕜` to itself.
Technically it does not require `𝕜` to be a topological field, a topological ring that
happens to be a field is enough.
-/


variable {𝕜 : Type*} [Field 𝕜] [TopologicalSpace 𝕜] [TopologicalRing 𝕜]

/--
The map `fun x => a * x + b`, as a homeomorphism from `𝕜` (a topological field) to itself,
when `a ≠ 0`.
-/
@[simps]
def affineHomeomorph (a b : 𝕜) (h : a ≠ 0) : 𝕜 ≃ₜ 𝕜 where
  toFun x := a * x + b
  invFun y := (y - b) / a
  left_inv x := by
    simp only [add_sub_cancel]
    exact mul_div_cancel_left x h
  right_inv y := by simp [mul_div_cancel' _ h]
#align affine_homeomorph affineHomeomorph

end affineHomeomorph

section LocalExtr

variable {α β : Type*} [TopologicalSpace α] [LinearOrderedSemifield β] {a : α}

open Topology

theorem IsLocalMin.inv {f : α → β} {a : α} (h1 : IsLocalMin f a) (h2 : ∀ᶠ z in 𝓝 a, 0 < f z) :
    IsLocalMax f⁻¹ a := by
  filter_upwards [h1, h2]with z h3 h4 using(inv_le_inv h4 h2.self_of_nhds).mpr h3
#align is_local_min.inv IsLocalMin.inv

end LocalExtr

section Preconnected

/-! Some results about functions on preconnected sets valued in a ring or field with a topology. -/

open Set

variable {α 𝕜 : Type*} {f g : α → 𝕜} {S : Set α} [TopologicalSpace α] [TopologicalSpace 𝕜]
  [T1Space 𝕜]

/-- If `f` is a function `α → 𝕜` which is continuous on a preconnected set `S`, and
`f ^ 2 = 1` on `S`, then either `f = 1` on `S`, or `f = -1` on `S`. -/
theorem IsPreconnected.eq_one_or_eq_neg_one_of_sq_eq [Ring 𝕜] [NoZeroDivisors 𝕜]
    (hS : IsPreconnected S) (hf : ContinuousOn f S) (hsq : EqOn (f ^ 2) 1 S) :
    EqOn f 1 S ∨ EqOn f (-1) S := by
  have : DiscreteTopology ({1, -1} : Set 𝕜) := discrete_of_t1_of_finite
  have hmaps : MapsTo f S {1, -1}
  · simpa only [EqOn, Pi.one_apply, Pi.pow_apply, sq_eq_one_iff] using hsq
  simpa using hS.eqOn_const_of_mapsTo hf hmaps
#align is_preconnected.eq_one_or_eq_neg_one_of_sq_eq IsPreconnected.eq_one_or_eq_neg_one_of_sq_eq

/-- If `f, g` are functions `α → 𝕜`, both continuous on a preconnected set `S`, with
`f ^ 2 = g ^ 2` on `S`, and `g z ≠ 0` all `z ∈ S`, then either `f = g` or `f = -g` on
`S`. -/
theorem IsPreconnected.eq_or_eq_neg_of_sq_eq [Field 𝕜] [HasContinuousInv₀ 𝕜] [ContinuousMul 𝕜]
    (hS : IsPreconnected S) (hf : ContinuousOn f S) (hg : ContinuousOn g S)
    (hsq : EqOn (f ^ 2) (g ^ 2) S) (hg_ne : ∀ {x : α}, x ∈ S → g x ≠ 0) :
    EqOn f g S ∨ EqOn f (-g) S := by
  have hsq : EqOn ((f / g) ^ 2) 1 S := fun x hx => by
    simpa [div_eq_one_iff_eq (pow_ne_zero _ (hg_ne hx))] using hsq hx
  simpa (config := { contextual := true }) [EqOn, div_eq_iff (hg_ne _)]
    using hS.eq_one_or_eq_neg_one_of_sq_eq (hf.div hg fun z => hg_ne) hsq
#align is_preconnected.eq_or_eq_neg_of_sq_eq IsPreconnected.eq_or_eq_neg_of_sq_eq

/-- If `f, g` are functions `α → 𝕜`, both continuous on a preconnected set `S`, with
`f ^ 2 = g ^ 2` on `S`, and `g z ≠ 0` all `z ∈ S`, then as soon as `f = g` holds at
one point of `S` it holds for all points. -/
theorem IsPreconnected.eq_of_sq_eq [Field 𝕜] [HasContinuousInv₀ 𝕜] [ContinuousMul 𝕜]
    (hS : IsPreconnected S) (hf : ContinuousOn f S) (hg : ContinuousOn g S)
    (hsq : EqOn (f ^ 2) (g ^ 2) S) (hg_ne : ∀ {x : α}, x ∈ S → g x ≠ 0) {y : α} (hy : y ∈ S)
    (hy' : f y = g y) : EqOn f g S := fun x hx => by
  rcases hS.eq_or_eq_neg_of_sq_eq hf hg @hsq @hg_ne with (h | h)
  · exact h hx
  · rw [h _, Pi.neg_apply, neg_eq_iff_add_eq_zero, ← two_mul, mul_eq_zero,
      iff_false_iff.2 (hg_ne _)] at hy' ⊢ <;> assumption
#align is_preconnected.eq_of_sq_eq IsPreconnected.eq_of_sq_eq

end Preconnected

