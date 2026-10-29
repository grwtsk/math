# By Contra Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `365c2ad9bc013083324fc7a76b3640bbe0d1b498` · SHA-256 `caa70c2d8146f547f1f0c0bd688f2b72aa6dd1a50208107d8ab8fb57be7e9960`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- tests for by_contra! tactic
import Mathlib.Tactic.ByContra
import Mathlib.Tactic.Rename
import Mathlib.Tactic.Set
import Mathlib.Algebra.Notation.Defs
import Mathlib.Data.Nat.Basic
import Mathlib.Order.Basic

set_option autoImplicit true
example (a b : ℕ) (foo : False)  : a < b := by
  by_contra!
  guard_hyp this : b ≤ a
  exact foo

example (a b : ℕ) (h : False) : a < b := by
  by_contra! foo
  revert foo; change b ≤ a → False; intro;
  exact h

example (a b : ℕ) (h : False) : a < b := by
  by_contra! foo : ¬ a < b -- can avoid push_neg
  guard_hyp foo : ¬ a < b
  exact h

example : 1 < 2 := by
  by_contra!
  guard_hyp this : 2 ≤ 1
  contradiction

example (_p : Prop) (bar : False) : ¬ ¬ ¬ ¬ ¬ ¬ P := by
  by_contra! foo : ¬ ¬ ¬ P -- normalises to ¬ P, as does ¬ (goal).
  guard_hyp foo : ¬ ¬ ¬ P
  exact bar

example (_p : Prop) (bar : False) : ¬ ¬ ¬ ¬ ¬ ¬ P := by
  by_contra! : ¬ ¬ ¬ P
  guard_hyp this : ¬ ¬ ¬ P
  exact bar

variable [LinearOrder α] [One α] [Mul α]

example (x : α) (f : False) : x ≤ 1 := by
  set a := x * x
  by_contra! h
  guard_hyp h : 1 < x
  assumption

example (x : α) (f : False) : x ≤ 1 := by
  let _a := x * x
  by_contra! h
  guard_hyp h : 1 < x
  assumption

example (x : α) (f : False) : x ≤ 1 := by
  set a := x * x
  have : a ≤ a := le_rfl
  by_contra! h
  guard_hyp h : 1 < x
  assumption
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65b6c232dddff2bfed65cf61f8a9f2d7aee26f5438d6bf4019d57c84b34f14a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByContra/Variantcaa70c2d8146f547f1f0c0bd688f2b72aa6dd1a50208107d8ab8fb57be7e9960.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
