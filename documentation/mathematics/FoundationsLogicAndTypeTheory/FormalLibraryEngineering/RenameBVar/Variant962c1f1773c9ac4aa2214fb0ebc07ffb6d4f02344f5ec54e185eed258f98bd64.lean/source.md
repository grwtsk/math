# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RenameBvar.Variant962c1f1773c9ac4aa2214fb0ebc07ffb6d4f02344f5ec54e185eed258f98bd64

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a3a673b4e376e89a35822b4b3301625e7db22c41` · SHA-256 `962c1f1773c9ac4aa2214fb0ebc07ffb6d4f02344f5ec54e185eed258f98bd64`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.RenameBVar
import Lean

set_option linter.unusedVariables false
axiom test_sorry {α : Sort _} : α

/- This test is somewhat flaky since it depends on the pretty printer. -/
/--
info: ℕ : Sort u_1
P : ℕ → ℕ → Prop
h : ∀ (n : ℕ), ∃ m, P n m
⊢ ∀ (l : ℕ), ∃ m, P l m
---
info: ℕ : Sort u_1
P : ℕ → ℕ → Prop
h : ∀ (q : ℕ), ∃ m, P q m
⊢ ∀ (l : ℕ), ∃ m, P l m
---
info: ℕ : Sort u_1
P : ℕ → ℕ → Prop
h : ∀ (q : ℕ), ∃ m, P q m
⊢ ∀ (l : ℕ), ∃ n, P l n
---
info: ℕ : Sort u_1
P : ℕ → ℕ → Prop
h : ∀ (q : ℕ), ∃ m, P q m
⊢ ∀ (m : ℕ), ∃ n, P m n
-/
#guard_msgs in
example (P : ℕ → ℕ → Prop) (h : ∀ n, ∃ m, P n m) : ∀ l, ∃ m, P l m := by
  trace_state
  rename_bvar n → q at h
  trace_state
  rename_bvar m → n
  trace_state
  rename_bvar l → m
  trace_state
  exact h

/--
info: case intro
a b c : Int
h2 : b ∣ c
k : Int
hk : b = a * k
⊢ ∃ k, c = a * k
---
info: case intro
a b c : Int
h2 : b ∣ c
k : Int
hk : b = a * k
⊢ ∃ m, c = a * m
-/
#guard_msgs in
example (a b c : Int) (h1 : a ∣ b) (h2 : b ∣ c) : a ∣ c := by
  rcases h1 with ⟨k, hk⟩
  show ∃ k, c = a * k
  trace_state
  rename_bvar k → m
  trace_state
  exact test_sorry
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86c88e5fd75a6e96ed4c44e6e2c8b348f8c0665bc8b19fb99954f4247aa1cf1d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RenameBVar/Variant962c1f1773c9ac4aa2214fb0ebc07ffb6d4f02344f5ec54e185eed258f98bd64.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
