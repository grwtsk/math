-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LeOfLt.Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.LeOfLt.Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa","mathematical_subject":"Algebra.OrderTheory","original_sha256":"3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Grind/Ordered/Order.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.Data.Order.Classes
public import Init.Grind.Tactics
import Init.Data.Order.Lemmas


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LeOfLt.Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa

public section

open Std

namespace Lean.Grind

namespace Preorder

variable {α : Type u} [LE α] [LT α] [LawfulOrderLT α]

theorem le_of_lt {a b : α} (h : a < b) : a ≤ b := (lt_iff_le_and_not_ge.mp h).1

theorem lt_irrefl (a : α) : ¬ (a < a) := by
  intro h
  simp [lt_iff_le_and_not_ge] at h

theorem ne_of_lt {a b : α} (h : a < b) : a ≠ b :=
  fun w => lt_irrefl a (w.symm ▸ h)

theorem ne_of_gt {a b : α} (h : a > b) : a ≠ b :=
  fun w => lt_irrefl b (w.symm ▸ h)

variable [IsPreorder α]

theorem lt_of_lt_of_le {a b c : α} (h₁ : a < b) (h₂ : b ≤ c) : a < c := by
  simp [lt_iff_le_and_not_ge] at h₁ ⊢
  exact ⟨le_trans h₁.1 h₂, fun h => h₁.2 (le_trans h₂ h)⟩

theorem lt_of_le_of_lt {a b c : α} (h₁ : a ≤ b) (h₂ : b < c) : a < c := by
  simp [lt_iff_le_and_not_ge] at h₂ ⊢
  exact ⟨le_trans h₁ h₂.1, fun h => h₂.2 (le_trans h h₁)⟩

theorem lt_trans {a b c : α} (h₁ : a < b) (h₂ : b < c) : a < c :=
  lt_of_lt_of_le h₁ (le_of_lt h₂)

theorem not_ge_of_lt {a b : α} (h : a < b) : ¬b ≤ a :=
  fun w => lt_irrefl a (lt_of_lt_of_le h w)

theorem not_gt_of_lt {a b : α} (h : a < b) : ¬a > b :=
  fun w => lt_irrefl a (lt_trans h w)

end Preorder

namespace PartialOrder

variable {α : Type u} [LE α] [LT α] [LawfulOrderLT α] [IsPartialOrder α]

theorem le_iff_lt_or_eq {a b : α} : a ≤ b ↔ a < b ∨ a = b := by
  constructor
  · intro h
    rw [LawfulOrderLT.lt_iff, Classical.or_iff_not_imp_right]
    exact fun w => ⟨h, fun w' => w (le_antisymm h w')⟩
  · intro h
    cases h with
    | inl h => exact Preorder.le_of_lt h
    | inr h => subst h; exact le_refl a

end PartialOrder

namespace LinearOrder

variable {α : Type u} [LE α] [LT α] [LawfulOrderLT α] [IsLinearOrder α]

theorem trichotomy (a b : α) : a < b ∨ a = b ∨ b < a := by
  cases le_total (a := a) (b := b) with
  | inl h =>
    rw [PartialOrder.le_iff_lt_or_eq] at h
    cases h with
    | inl h => left; exact h
    | inr h => right; left; exact h
  | inr h =>
    rw [PartialOrder.le_iff_lt_or_eq] at h
    cases h with
    | inl h => right; right; exact h
    | inr h => right; left; exact h.symm

theorem le_of_not_lt {a b : α} (h : ¬ a < b) : b ≤ a := by
  cases LinearOrder.trichotomy a b
  next => contradiction
  next h => apply PartialOrder.le_iff_lt_or_eq.mpr; cases h <;> simp [*]

theorem lt_of_not_le {a b : α} (h : ¬ a ≤ b) : b < a := by
  cases LinearOrder.trichotomy a b
  next h₁ h₂ => have := lt_iff_le_and_not_ge.mp h₂; simp [h] at this
  next h =>
    cases h
    next h => subst a; exact False.elim <| h (le_refl b)
    next => assumption

end LinearOrder

end Lean.Grind
