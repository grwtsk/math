-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.MulEquivPiUnits.Variant6aab6d1f8f7c0a6506cdc3328b5cdf57c904ab971f7592ddc5a0aeed81e832a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6aab6d1f8f7c0a6506cdc3328b5cdf57c904ab971f7592ddc5a0aeed81e832a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.MulEquivPiUnits.Variant6aab6d1f8f7c0a6506cdc3328b5cdf57c904ab971f7592ddc5a0aeed81e832a5","mathematical_subject":"Algebra.Groups","original_sha256":"6aab6d1f8f7c0a6506cdc3328b5cdf57c904ab971f7592ddc5a0aeed81e832a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Pi/Units.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.Algebra.Group.Equiv.Defs
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Group.Units.Defs
import Mathlib.Util.Delaborators

/-! # Units in pi types -/


namespace GRWTSK.Algebra.GroupTheory.MulEquivPiUnits.Variant6aab6d1f8f7c0a6506cdc3328b5cdf57c904ab971f7592ddc5a0aeed81e832a5

variable {ι : Type*} {M : ι → Type*} [∀ i, Monoid (M i)] {x : Π i, M i}

open Units in
/-- The monoid equivalence between units of a product,
and the product of the units of each monoid. -/
@[to_additive (attr := simps)
  "The additive-monoid equivalence between (additive) units of a product,
  and the product of the (additive) units of each monoid."]
def MulEquiv.piUnits : (Π i, M i)ˣ ≃* Π i, (M i)ˣ where
  toFun f i := ⟨f.val i, f.inv i, congr_fun f.val_inv i, congr_fun f.inv_val i⟩
  invFun f := ⟨(val <| f ·), (inv <| f ·), funext (val_inv <| f ·), funext (inv_val <| f ·)⟩
  left_inv _ := rfl
  right_inv _ := rfl
  map_mul' _ _ := rfl

@[to_additive]
lemma Pi.isUnit_iff :
    IsUnit x ↔ ∀ i, IsUnit (x i) := by
  simp_rw [isUnit_iff_exists, funext_iff, ← forall_and]
  exact Classical.skolem (p := fun i y ↦ x i * y = 1 ∧ y * x i = 1).symm

@[to_additive]
alias ⟨IsUnit.apply, _⟩ := Pi.isUnit_iff

@[to_additive]
lemma IsUnit.val_inv_apply (hx : IsUnit x) (i : ι) : (hx.unit⁻¹).1 i = (hx.apply i).unit⁻¹ := by
  rw [← Units.inv_eq_val_inv, ← MulEquiv.val_inv_piUnits_apply]; congr; ext; rfl
