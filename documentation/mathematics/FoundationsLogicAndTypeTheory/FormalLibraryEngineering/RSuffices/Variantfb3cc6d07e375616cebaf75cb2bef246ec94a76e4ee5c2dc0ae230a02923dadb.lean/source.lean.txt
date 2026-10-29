-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SetFoo.Variant30fcf8e418604da9cb3a3fea0bc01c8894ed5fca76358cf7c1b97970b18fea30","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"30fcf8e418604da9cb3a3fea0bc01c8894ed5fca76358cf7c1b97970b18fea30","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SetFoo.Variant30fcf8e418604da9cb3a3fea0bc01c8894ed5fca76358cf7c1b97970b18fea30","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"30fcf8e418604da9cb3a3fea0bc01c8894ed5fca76358cf7c1b97970b18fea30","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/rsuffices.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.RSuffices
import Mathlib.Tactic.ExistsI
import Mathlib.Algebra.Ring.Nat
import Mathlib.Data.Set.Defs


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SetFoo.Variant30fcf8e418604da9cb3a3fea0bc01c8894ed5fca76358cf7c1b97970b18fea30

set_option autoImplicit true
/-- These next few are duplicated from `rcases/obtain` tests, with the goal order swapped. -/

example : True := by
  rsuffices ⟨n : ℕ, h : n = n, -⟩ : ∃ n : ℕ, n = n ∧ True
  · guard_hyp n : ℕ
    guard_hyp h : n = n
    trivial
  · existsi 0
    simp

example : True := by
  rsuffices : ∃ n : ℕ, n = n ∧ True
  · trivial
  · existsi 0
    simp

example : True := by
  rsuffices (h : True) | ⟨⟨⟩⟩ : True ∨ False
  · guard_hyp h : True
    trivial
  · left
    trivial

example (x y : α × β) : True := by
  rsuffices ⟨⟨a, b⟩, c, d⟩ : (α × β) × (α × β)
  · guard_hyp a : α
    guard_hyp b : β
    guard_hyp c : α
    guard_hyp d : β
    trivial
  · exact ⟨x, y⟩

-- This test demonstrates why `swap` is not used in the implementation of `rsuffices`:
-- it would make the _second_ goal the one requiring ⟨x, y⟩, not the last one.
example (x y : α ⊕ β) : True := by
  rsuffices ⟨a|b, c|d⟩ : (α ⊕ β) × (α ⊕ β)
  · guard_hyp a : α
    guard_hyp c : α
    trivial
  · guard_hyp a : α
    guard_hyp d : β
    trivial
  · guard_hyp b : β
    guard_hyp c : α
    trivial
  · guard_hyp b : β
    guard_hyp d : β
    trivial
  exact ⟨x, y⟩


protected def Set.foo {α β} (_ : Set α) (_ : Set β) : Set (α × β) := ∅

example {α} (V : Set α) (w : True → ∃ p, p ∈ (V.foo V) ∩ (V.foo V)) : True := by
  rsuffices ⟨_, _⟩ : ∃ p, p ∈ (V.foo V) ∩ (V.foo V)
  · trivial
  · exact w trivial
