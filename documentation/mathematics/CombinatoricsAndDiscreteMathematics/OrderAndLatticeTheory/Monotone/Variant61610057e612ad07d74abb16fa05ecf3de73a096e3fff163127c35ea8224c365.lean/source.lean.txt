-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.StrictMonoApplyEqTopIff.Variant5f9224e86ead47d181ee5f5f9b677f402ff2bf98aee319fd9a0a4f8acd405202","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5f9224e86ead47d181ee5f5f9b677f402ff2bf98aee319fd9a0a4f8acd405202","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.StrictMonoApplyEqTopIff.Variant5f9224e86ead47d181ee5f5f9b677f402ff2bf98aee319fd9a0a4f8acd405202","mathematical_subject":"Algebra.OrderTheory","original_sha256":"5f9224e86ead47d181ee5f5f9b677f402ff2bf98aee319fd9a0a4f8acd405202","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/BoundedOrder/Monotone.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl
-/
module

public import Mathlib.Order.BoundedOrder.Basic
public import Mathlib.Order.Monotone.Basic

/-!
# Monotone functions on bounded orders

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.StrictMonoApplyEqTopIff.Variant5f9224e86ead47d181ee5f5f9b677f402ff2bf98aee319fd9a0a4f8acd405202

public section

assert_not_exists SemilatticeSup

open Function OrderDual

universe u v

variable {α : Type u} {β : Type v}

/-! ### Top, bottom element -/

section OrderTop

variable [PartialOrder α] [OrderTop α] [Preorder β] {f : α → β} {a : α}

@[to_dual]
theorem StrictMono.apply_eq_top_iff (hf : StrictMono f) : f a = f ⊤ ↔ a = ⊤ :=
  ⟨fun h => not_lt_top_iff.1 fun ha => (hf ha).ne h, congr_arg _⟩

@[to_dual]
theorem StrictAnti.apply_eq_top_iff (hf : StrictAnti f) : f a = f ⊤ ↔ a = ⊤ :=
  ⟨fun h => not_lt_top_iff.1 fun ha => (hf ha).ne' h, congr_arg _⟩

end OrderTop

@[to_dual]
theorem StrictMono.maximal_preimage_top [LinearOrder α] [Preorder β] [OrderTop β] {f : α → β}
    (H : StrictMono f) {a} (h_top : f a = ⊤) (x : α) : x ≤ a :=
  H.maximal_of_maximal_image
    (fun p => by
      rw [h_top]
      exact le_top)
    x

section Logic

/-!
#### In this section we prove some properties about monotone and antitone operations on `Prop`
-/


section Preorder

variable [Preorder α]

theorem monotone_and {p q : α → Prop} (m_p : Monotone p) (m_q : Monotone q) :
    Monotone fun x => p x ∧ q x :=
  fun _ _ h => And.imp (m_p h) (m_q h)

-- Note: by finish [monotone] doesn't work
theorem monotone_or {p q : α → Prop} (m_p : Monotone p) (m_q : Monotone q) :
    Monotone fun x => p x ∨ q x :=
  fun _ _ h => Or.imp (m_p h) (m_q h)

theorem monotone_le {x : α} : Monotone (x ≤ ·) := fun _ _ h' h => h.trans h'

theorem monotone_lt {x : α} : Monotone (x < ·) := fun _ _ h' h => h.trans_le h'

theorem antitone_le {x : α} : Antitone (· ≤ x) := fun _ _ h' h => h'.trans h

theorem antitone_lt {x : α} : Antitone (· < x) := fun _ _ h' h => h'.trans_lt h

theorem Monotone.forall {P : β → α → Prop} (hP : ∀ x, Monotone (P x)) :
    Monotone fun y => ∀ x, P x y :=
  fun _ _ hy h x => hP x hy <| h x

theorem Antitone.forall {P : β → α → Prop} (hP : ∀ x, Antitone (P x)) :
    Antitone fun y => ∀ x, P x y :=
  fun _ _ hy h x => hP x hy (h x)

theorem Monotone.ball {P : β → α → Prop} {s : Set β} (hP : ∀ x ∈ s, Monotone (P x)) :
    Monotone fun y => ∀ x ∈ s, P x y := fun _ _ hy h x hx => hP x hx hy (h x hx)

theorem Antitone.ball {P : β → α → Prop} {s : Set β} (hP : ∀ x ∈ s, Antitone (P x)) :
    Antitone fun y => ∀ x ∈ s, P x y := fun _ _ hy h x hx => hP x hx hy (h x hx)

theorem Monotone.exists {P : β → α → Prop} (hP : ∀ x, Monotone (P x)) :
    Monotone fun y => ∃ x, P x y :=
  fun _ _ hy ⟨x, hx⟩ ↦ ⟨x, hP x hy hx⟩

theorem Antitone.exists {P : β → α → Prop} (hP : ∀ x, Antitone (P x)) :
    Antitone fun y => ∃ x, P x y :=
  fun _ _ hy ⟨x, hx⟩ ↦ ⟨x, hP x hy hx⟩

theorem forall_ge_iff {P : α → Prop} {x₀ : α} (hP : Monotone P) :
    (∀ x ≥ x₀, P x) ↔ P x₀ :=
  ⟨fun H ↦ H x₀ le_rfl, fun H _ hx ↦ hP hx H⟩

theorem forall_le_iff {P : α → Prop} {x₀ : α} (hP : Antitone P) :
    (∀ x ≤ x₀, P x) ↔ P x₀ :=
  ⟨fun H ↦ H x₀ le_rfl, fun H _ hx ↦ hP hx H⟩

end Preorder

end Logic
