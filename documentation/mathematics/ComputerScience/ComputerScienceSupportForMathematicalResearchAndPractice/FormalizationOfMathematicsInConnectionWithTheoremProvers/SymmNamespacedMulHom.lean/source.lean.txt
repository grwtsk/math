-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MulEquiv.Variant12abf829e1475e8182a5f39c7567d0d424a79dc2c9e32497451e6a3215558ae9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"12abf829e1475e8182a5f39c7567d0d424a79dc2c9e32497451e6a3215558ae9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.MulEquiv.Variant12abf829e1475e8182a5f39c7567d0d424a79dc2c9e32497451e6a3215558ae9","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"12abf829e1475e8182a5f39c7567d0d424a79dc2c9e32497451e6a3215558ae9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/symm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Relation.Symm
import Mathlib.Algebra.Hom.Group
import Mathlib.Logic.Equiv.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MulEquiv.Variant12abf829e1475e8182a5f39c7567d0d424a79dc2c9e32497451e6a3215558ae9

set_option autoImplicit true
-- testing that the attribute is recognized
@[symm] def eq_symm {α : Type} (a b : α) : a = b → b = a := Eq.symm

example (a b : Nat) : a = b → b = a := by intros; symm; assumption
example (a b : Nat) : a = b → True → b = a := by intro h _; symm at h; assumption

def sameParity : Nat → Nat → Prop
  | n, m => n % 2 = m % 2

@[symm] def sameParity_symm (n m : Nat) : sameParity n m → sameParity m n := Eq.symm

example (a b : Nat) : sameParity a b → sameParity b a := by intros; symm; assumption

example (a b c : Nat) (ab : a = b) (bc : b = c) : c = a := by
  symm_saturate
  -- Run twice to check that we don't add repeated copies.
  -- Unfortunately `guard_hyp_nums` doesn't seem to work so I haven't made an assertion.
  symm_saturate
  apply Eq.trans <;> assumption

def MulHom.inverse [Mul M] [Mul N] (f : M →ₙ* N) (g : N → M) (h₁ : Function.LeftInverse g f)
    (h₂ : Function.RightInverse g f) : N →ₙ* M where
  toFun := g
  map_mul' x y :=
    calc
      g (x * y) = g (f (g x) * f (g y)) := by rw [h₂ x, h₂ y]
      _ = g (f (g x * g y)) := by rw [f.map_mul]
      _ = g x * g y := h₁ _

structure MulEquiv (M N : Type u) [Mul M] [Mul N] extends M ≃ N, M →ₙ* N

#check @MulEquiv

infixl:25 " ≃* " => MulEquiv

@[symm]
def foo_symm {M N : Type _} [Mul M] [Mul N] (h : M ≃* N) : N ≃* M :=
  { h.toEquiv.symm with map_mul' := (h.toMulHom.inverse h.toEquiv.symm h.left_inv h.right_inv).map_mul }

def MyEq (n m : Nat) := ∃ k, n + k = m ∧ m + k = n

@[symm] lemma MyEq.symm {n m : Nat} (h : MyEq n m) : MyEq m n := by
  rcases h with ⟨k, h1, h2⟩
  exact ⟨k, h2, h1⟩

example {n m : Nat} (h : MyEq n m) : MyEq m n := by
  symm
  assumption
