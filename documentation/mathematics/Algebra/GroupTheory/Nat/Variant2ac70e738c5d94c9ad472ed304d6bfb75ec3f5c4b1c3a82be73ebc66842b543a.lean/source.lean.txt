-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.PowLeftStrictMono.Variantd19f533b1974940d37423e4b39b5edbf6c80b2b7ad2c7c3606807d983440c06f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d19f533b1974940d37423e4b39b5edbf6c80b2b7ad2c7c3606807d983440c06f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.PowLeftStrictMono.Variantd19f533b1974940d37423e4b39b5edbf6c80b2b7ad2c7c3606807d983440c06f","mathematical_subject":"Algebra.Groups","original_sha256":"d19f533b1974940d37423e4b39b5edbf6c80b2b7ad2c7c3606807d983440c06f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Group/Nat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Floris van Doorn (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Leonardo de Moura, Jeremy Avigad, Mario Carneiro
-/
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.Order.Monoid.Canonical.Defs
import Mathlib.Algebra.Order.Sub.Defs

/-!
# The naturals form a linear ordered monoid

This file contains the linear ordered monoid instance on the natural numbers.

See note [foundational algebra order theory].
-/


namespace GRWTSK.Algebra.GroupTheory.PowLeftStrictMono.Variantd19f533b1974940d37423e4b39b5edbf6c80b2b7ad2c7c3606807d983440c06f

namespace Nat

/-! ### Instances -/

instance instIsOrderedAddMonoid : IsOrderedAddMonoid ℕ where
  add_le_add_left := @Nat.add_le_add_left

instance instIsOrderedCancelAddMonoid : IsOrderedCancelAddMonoid ℕ where
  add_le_add_left := @Nat.add_le_add_left
  le_of_add_le_add_left := @Nat.le_of_add_le_add_left

instance instCanonicallyOrderedAdd : CanonicallyOrderedAdd ℕ where
  le_self_add := Nat.le_add_right
  exists_add_of_le := Nat.exists_eq_add_of_le

instance instOrderedSub : OrderedSub ℕ := by
  refine ⟨fun m n k ↦ ?_⟩
  induction n generalizing k with
  | zero => simp
  | succ n ih => simp only [sub_succ, pred_le_iff, ih, succ_add, add_succ]

/-! ### Miscellaneous lemmas -/

variable {α : Type*} {n : ℕ} {f : α → ℕ}

/-- See also `pow_left_strictMonoOn₀`. -/
protected lemma pow_left_strictMono (hn : n ≠ 0) : StrictMono (· ^ n : ℕ → ℕ) :=
  fun _ _ h ↦ Nat.pow_lt_pow_left h hn

lemma _root_.GRWTSK.Algebra.GroupTheory.PowLeftStrictMono.Variantd19f533b1974940d37423e4b39b5edbf6c80b2b7ad2c7c3606807d983440c06f.StrictMono.nat_pow [Preorder α] (hn : n ≠ 0) (hf : StrictMono f) :
    StrictMono (f · ^ n) := (Nat.pow_left_strictMono hn).comp hf

end Nat
