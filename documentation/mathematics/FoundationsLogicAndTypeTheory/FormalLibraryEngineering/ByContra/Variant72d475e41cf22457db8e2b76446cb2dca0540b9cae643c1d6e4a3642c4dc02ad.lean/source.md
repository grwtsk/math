# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ByContra.Variant72d475e41cf22457db8e2b76446cb2dca0540b9cae643c1d6e4a3642c4dc02ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a35cb747abd16dcd556ebc5a25390bee74273739` · SHA-256 `72d475e41cf22457db8e2b76446cb2dca0540b9cae643c1d6e4a3642c4dc02ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- tests for byContra' tactic
import Mathlib.Tactic.ByContra
import Mathlib.Tactic.Rename
import Mathlib.Data.Nat.Basic

set_option autoImplicit true
example (a b : ℕ) (foo : False)  : a < b := by
  by_contra'
  guard_hyp this : b ≤ a
  exact foo

example (a b : ℕ) (h : False) : a < b := by
  by_contra' foo
  revert foo; change b ≤ a → False; intro;
  exact h

example (a b : ℕ) (h : False) : a < b := by
  by_contra' foo : ¬ a < b -- can avoid push_neg
  guard_hyp foo : ¬ a < b
  exact h

example : 1 < 2 := by
  by_contra'
  guard_hyp this : 2 ≤ 1
  contradiction

example (p : Prop) (bar : False) : ¬ ¬ ¬ ¬ ¬ ¬ P := by
  by_contra' foo : ¬ ¬ ¬ P -- normalises to ¬ P, as does ¬ (goal).
  guard_hyp foo : ¬ ¬ ¬ P
  exact bar

example (p : Prop) (bar : False) : ¬ ¬ ¬ ¬ ¬ ¬ P := by
  by_contra' : ¬ ¬ ¬ P
  guard_hyp this : ¬ ¬ ¬ P
  exact bar

variable [LinearOrder α] [One α] [Mul α]

example (x : α) (f : False) : x ≤ 1 := by
  set a := x * x
  by_contra' h
  guard_hyp h : 1 < x
  assumption

example (x : α) (f : False) : x ≤ 1 := by
  let _a := x * x
  by_contra' h
  guard_hyp h : 1 < x
  assumption

example (x : α) (f : False) : x ≤ 1 := by
  set a := x * x
  have : a ≤ a := le_rfl
  by_contra' h
  guard_hyp h : 1 < x
  assumption
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d86d16934b559ecc023a359d95b73faf6d0827f8c7c999aecd214c806b865e99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByContra/Variant72d475e41cf22457db8e2b76446cb2dca0540b9cae643c1d6e4a3642c4dc02ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
