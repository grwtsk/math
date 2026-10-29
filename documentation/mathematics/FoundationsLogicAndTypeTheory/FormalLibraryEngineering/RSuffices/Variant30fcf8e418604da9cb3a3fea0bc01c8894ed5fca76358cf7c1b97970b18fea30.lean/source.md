# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rsuffices.Variant30fcf8e418604da9cb3a3fea0bc01c8894ed5fca76358cf7c1b97970b18fea30

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8f1a13d360a0c48f65c987389e1c7f113550385` · SHA-256 `30fcf8e418604da9cb3a3fea0bc01c8894ed5fca76358cf7c1b97970b18fea30`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.RSuffices
import Mathlib.Tactic.ExistsI
import Mathlib.Algebra.Ring.Nat
import Mathlib.Data.Set.Defs

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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56c26a8b748048748f9b4c5e502a725a6ab6abd7ef29754bdc1719d59a067b8e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RSuffices/Variant30fcf8e418604da9cb3a3fea0bc01c8894ed5fca76358cf7c1b97970b18fea30.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
