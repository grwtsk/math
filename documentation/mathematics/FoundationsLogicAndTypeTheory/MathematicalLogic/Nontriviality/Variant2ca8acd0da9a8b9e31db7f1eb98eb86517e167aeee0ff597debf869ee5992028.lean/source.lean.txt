-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Foo.Variant9d7438bc6ac471c3fff6be6eb4d735fbb653792d1f4ee2788c09cca561d411f4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9d7438bc6ac471c3fff6be6eb4d735fbb653792d1f4ee2788c09cca561d411f4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Foo.Variant9d7438bc6ac471c3fff6be6eb4d735fbb653792d1f4ee2788c09cca561d411f4","mathematical_subject":"Logic.Foundations","original_sha256":"9d7438bc6ac471c3fff6be6eb4d735fbb653792d1f4ee2788c09cca561d411f4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/nontriviality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Nontriviality
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Data.Nat.Basic
-- import Mathlib.Data.Set.Basic

/-! ### Test `nontriviality` with inequality hypotheses -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Foo.Variant9d7438bc6ac471c3fff6be6eb4d735fbb653792d1f4ee2788c09cca561d411f4

set_option autoImplicit true

example {R : Type} [OrderedRing R] {a : R} (h : 0 < a) : 0 < a := by
  nontriviality
  rename_i inst; guard_hyp inst : Nontrivial R
  assumption

/-! ### Test `nontriviality` with equality or non-strict inequality goals -/


example {R : Type} [CommRing R] {r s : R} : r * s = s * r := by
  nontriviality
  rename_i inst; guard_hyp inst : Nontrivial R
  apply mul_comm

/-! ### Test deducing `nontriviality` by instance search -/

example {R : Type} [OrderedRing R] : 0 ≤ (1 : R) := by
  nontriviality R
  rename_i inst; guard_hyp inst : Nontrivial R
  exact zero_le_one

example {R : Type} [OrderedRing R] : 0 ≤ (1 : R) := by
  nontriviality ℕ
  rename_i inst; guard_hyp inst : Nontrivial ℕ
  exact zero_le_one

example {R : Type} [OrderedRing R] : 0 ≤ (2 : R) := by
  fail_if_success nontriviality PUnit
  exact zero_le_two

example {R : Type} [OrderedRing R] {a : R} (h : 0 < a) : 2 ∣ 4 := by
  nontriviality R
  rename_i inst; guard_hyp inst : Nontrivial R
  decide

/-! Test using `@[nontriviality]` lemmas in `nontriviality` and custom `simp` lemmas -/


def EmptyOrUniv {α : Type _} (s : Set α) : Prop :=
  s = ∅ ∨ s = Set.univ

theorem Subsingleton.set_empty_or_univ {α} [Subsingleton α] (s : Set α) : s = ∅ ∨ s = Set.univ :=
  sorry

theorem Subsingleton.set_empty_or_univ' {α} [Subsingleton α] (s : Set α) : EmptyOrUniv s :=
  Subsingleton.set_empty_or_univ s

theorem Set.empty_union (a : Set α) : ∅ ∪ a = a := sorry

example {α : Type _} (s : Set α) (hs : s = ∅ ∪ Set.univ) : EmptyOrUniv s := by
  fail_if_success nontriviality α
  rw [Set.empty_union] at hs
  exact Or.inr hs

section

attribute [local nontriviality] Subsingleton.set_empty_or_univ

example {α : Type _} (s : Set α) (hs : s = ∅ ∪ Set.univ) : EmptyOrUniv s := by
  fail_if_success nontriviality α
  nontriviality α using Subsingleton.set_empty_or_univ'
  rw [Set.empty_union] at hs
  exact Or.inr hs

end

attribute [local nontriviality] Subsingleton.set_empty_or_univ'

example {α : Type _} (s : Set α) (hs : s = ∅ ∪ Set.univ) : EmptyOrUniv s := by
  nontriviality α
  rw [Set.empty_union] at hs
  exact Or.inr hs

/-! Test with nonatomic type argument -/


example (α : ℕ → Type) (a b : α 0) (h : a = b) : a = b := by
  nontriviality α 0 using Nat.zero_lt_one
  rename_i inst; guard_hyp inst : Nontrivial (α 0)
  exact h

class Foo (α : Type) : Prop
instance : Foo α := {}

example (α : Type) : Foo α := by nontriviality α; infer_instance

-- simulate the type of MvPolynomial
def R : Type u → Type v → Sort (max (u+1) (v+1)) := sorry
instance : CommRing (R c d) := sorry

example (p : R PUnit.{u+1} PUnit.{v+1}) : p = p := by
  nontriviality
  sorry
