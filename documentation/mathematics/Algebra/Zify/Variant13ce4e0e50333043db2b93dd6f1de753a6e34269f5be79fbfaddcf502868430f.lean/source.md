# Complete source: GRWTSK.Algebra.Zify.Variant13ce4e0e50333043db2b93dd6f1de753a6e34269f5be79fbfaddcf502868430f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f3c9ee620d886d8783cdba222c63a4cee2fe9c7` · SHA-256 `13ce4e0e50333043db2b93dd6f1de753a6e34269f5be79fbfaddcf502868430f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll, Robert Y. Lewis
-/

import Mathlib.Tactic.Zify
import Mathlib.Algebra.Ring.Int.Parity
import Mathlib.Algebra.Ring.Int.Units

set_option linter.unusedVariables false

private axiom test_sorry : ∀ {α}, α
example (a b c x y z : ℕ) (h : ¬ x*y*z < 0) : c < a + 3*b := by
  zify
  guard_target =~ (c : ℤ) < (a : ℤ) + 3 * (b : ℤ)
  zify at h
  guard_hyp h :~ ¬(x : ℤ) * (y : ℤ) * (z : ℤ) < (0 : ℤ)
  exact test_sorry

-- TODO: These are verbatim copies of the tests from mathlib3. It would be nice to add more.

-- set_option pp.coercions false
example (a b c x y z : ℕ) (h : ¬ x*y*z < 0) (h2 : (c : ℤ) < a + 3 * b) : a + 3*b > c := by
  zify at h ⊢
  guard_hyp h :~ ¬↑x * ↑y * ↑z < (0 : ℤ) -- TODO: canonize instances?
  guard_target =~ ↑c < (↑a : ℤ) + 3 * ↑b
  exact h2

example (a b : ℕ) (h : (a : ℤ) ≤ b) : a ≤ b := by
  zify
  guard_target = (a : ℤ) ≤ b
  exact h

/- example (a b : ℕ) (h : a = b ∧ b < a) : False := by
  zify at h
  rcases h with ⟨ha, hb⟩
  -- Preorder for `ℤ` is missing
  exact ne_of_lt hb ha -/

example (a b c : ℕ) (h : a - b < c) (hab : b ≤ a) : True := by
  zify [hab] at h
  guard_hyp h : (a : ℤ) - b < c
  trivial

example (a b c : ℕ) (h : a + b ≠ c) : True := by
  zify at h
  guard_hyp h : (a + b : ℤ) ≠ c
  trivial

example (a b c : ℕ) (h : a - b ∣ c) (h2 : b ≤ a) : True := by
  zify [h2] at h
  guard_hyp h : (a : ℤ) - b ∣ c
  trivial
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9122f85997877828fd6b8e2b2f94861aae18921c61782cd5090c1669e693b4f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Zify/Variant13ce4e0e50333043db2b93dd6f1de753a6e34269f5be79fbfaddcf502868430f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
