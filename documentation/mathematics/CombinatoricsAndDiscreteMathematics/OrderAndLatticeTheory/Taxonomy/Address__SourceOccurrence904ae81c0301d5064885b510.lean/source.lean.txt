/-
Released under the repository MIT license.
Research direction: grwtsk contributors.
Implementation assistance: OpenAI ChatGPT.
Candidate source: native compilation and axiom audit NOT_RUN.
-/
import Mathlib

/-!
# Finite-depth taxonomic addresses

An address is a list of natural-number child labels, NOT a floating-point
number. Decimal display notation and immutable external IDs are separate data.
This file contains proof terms but has NOT been kernel-replayed in the
artifact-producing environment. See evidence/taxonomy-integration-v1.json.
-/

set_option autoImplicit false

namespace GRWTSK.Order.Taxonomy

abbrev Address := List Nat

/-- Reflexive ancestry on structural addresses. -/
def Prefix : Address → Address → Prop
  | [], _ => True
  | _ :: _, [] => False
  | a :: as, b :: bs => a = b ∧ Prefix as bs

def prefixDecidable : (a b : Address) → Decidable (Prefix a b)
  | [], _ => isTrue True.intro
  | _ :: _, [] => isFalse (fun h => h)
  | a :: as, b :: bs =>
    match decEq a b, prefixDecidable as bs with
    | isTrue h, isTrue ht => isTrue ⟨h, ht⟩
    | isFalse h, _ => isFalse (fun hp => h hp.1)
    | _, isFalse ht => isFalse (fun hp => ht hp.2)

instance (a b : Address) : Decidable (Prefix a b) := prefixDecidable a b

@[simp] theorem prefix_nil (a : Address) : Prefix [] a := True.intro

@[simp] theorem prefix_refl : ∀ a : Address, Prefix a a
  | [] => True.intro
  | a :: as => ⟨rfl, prefix_refl as⟩

theorem prefix_trans {a b c : Address}
    (hab : Prefix a b) (hbc : Prefix b c) : Prefix a c := by
  induction a generalizing b c with
  | nil => exact True.intro
  | cons x xs ih =>
    cases b with
    | nil => exact False.elim hab
    | cons y ys =>
      cases c with
      | nil => exact False.elim hbc
      | cons z zs => exact ⟨hab.1.trans hbc.1, ih hab.2 hbc.2⟩

theorem prefix_antisymm {a b : Address}
    (hab : Prefix a b) (hba : Prefix b a) : a = b := by
  induction a generalizing b with
  | nil =>
    cases b with
    | nil => rfl
    | cons b bs => exact False.elim hba
  | cons a as ih =>
    cases b with
    | nil => exact False.elim hab
    | cons b bs => exact congrArg₂ List.cons hab.1 (ih hab.2 hba.2)

/-- Ancestors of one address form a chain. -/
theorem ancestors_comparable {a b c : Address}
    (ha : Prefix a c) (hb : Prefix b c) : Prefix a b ∨ Prefix b a := by
  induction c generalizing a b with
  | nil =>
    cases a with
    | nil => exact Or.inl True.intro
    | cons a as => exact False.elim ha
  | cons c cs ih =>
    cases a with
    | nil => exact Or.inl True.intro
    | cons a as =>
      cases b with
      | nil => exact Or.inr True.intro
      | cons b bs =>
        rcases ih ha.2 hb.2 with h | h
        · exact Or.inl ⟨ha.1.trans hb.1.symm, h⟩
        · exact Or.inr ⟨hb.1.trans ha.1.symm, h⟩

/-- The longest common structural prefix. -/
def commonPrefix : Address → Address → Address
  | [], _ => []
  | _ :: _, [] => []
  | a :: as, b :: bs =>
    if a = b then a :: commonPrefix as bs else []

theorem commonPrefix_left (a b : Address) : Prefix (commonPrefix a b) a := by
  induction a generalizing b with
  | nil => exact True.intro
  | cons a as ih =>
    cases b with
    | nil => exact True.intro
    | cons b bs =>
      by_cases h : a = b
      · simpa [commonPrefix, h, Prefix] using ih bs
      · simp [commonPrefix, h, Prefix]

theorem commonPrefix_right (a b : Address) : Prefix (commonPrefix a b) b := by
  induction a generalizing b with
  | nil => exact True.intro
  | cons a as ih =>
    cases b with
    | nil => exact True.intro
    | cons b bs =>
      by_cases h : a = b
      · simpa [commonPrefix, h, Prefix] using ih bs
      · simp [commonPrefix, h, Prefix]

theorem commonPrefix_greatest {p a b : Address}
    (ha : Prefix p a) (hb : Prefix p b) : Prefix p (commonPrefix a b) := by
  induction p generalizing a b with
  | nil => exact True.intro
  | cons p ps ih =>
    cases a with
    | nil => exact False.elim ha
    | cons a as =>
      cases b with
      | nil => exact False.elim hb
      | cons b bs =>
        have hab : a = b := ha.1.symm.trans hb.1
        simpa [commonPrefix, hab, Prefix] using
          (show p = a ∧ Prefix ps (commonPrefix as bs) from ⟨ha.1, ih ha.2 hb.2⟩)

@[simp] theorem commonPrefix_self (a : Address) : commonPrefix a a = a :=
  prefix_antisymm (commonPrefix_left a a)
    (commonPrefix_greatest (prefix_refl a) (prefix_refl a))

theorem commonPrefix_comm (a b : Address) : commonPrefix a b = commonPrefix b a :=
  prefix_antisymm
    (commonPrefix_greatest (commonPrefix_right a b) (commonPrefix_left a b))
    (commonPrefix_greatest (commonPrefix_right b a) (commonPrefix_left b a))

/-- All prefixes, including the empty and complete paths. -/
def prefixes : Address → List Address
  | [] => [[]]
  | a :: as => [] :: (prefixes as).map (List.cons a)

theorem prefix_iff_mem_prefixes (a b : Address) : Prefix a b ↔ a ∈ prefixes b := by
  induction b generalizing a with
  | nil => cases a <;> simp [Prefix, prefixes]
  | cons b bs ih =>
    cases a with
    | nil => simp [Prefix, prefixes]
    | cons a as =>
      constructor
      · intro h
        apply List.mem_cons.mpr
        apply Or.inr
        apply List.mem_map.mpr
        refine ⟨as, (ih as).mp h.2, ?_⟩
        exact congrArg (fun x => x :: as) h.1.symm
      · intro h
        have hmap : a :: as ∈ (prefixes bs).map (List.cons b) := by
          rcases List.mem_cons.mp h with hnil | hmap
          · cases hnil
          · exact hmap
        rcases List.mem_map.mp hmap with ⟨tail, htail, heq⟩
        have hh : b = a ∧ tail = as := List.cons.inj heq
        exact ⟨hh.1.symm, (ih as).mpr (hh.2 ▸ htail)⟩

end GRWTSK.Order.Taxonomy
