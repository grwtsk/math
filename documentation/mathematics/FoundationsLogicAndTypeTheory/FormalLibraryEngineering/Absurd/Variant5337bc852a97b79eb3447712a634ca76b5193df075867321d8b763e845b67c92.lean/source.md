# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Absurd.Variant5337bc852a97b79eb3447712a634ca76b5193df075867321d8b763e845b67c92

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b30984b9a26f496fff0a46cb7a194ec0772b49c0` · SHA-256 `5337bc852a97b79eb3447712a634ca76b5193df075867321d8b763e845b67c92`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Tactic.Basic

/-! Tests for `absurd` tactic -/

-- Basic example
/--
error: unsolved goals
p : Prop
h : p
⊢ ¬p
-/
#guard_msgs in
example {p : Prop} (h : p) : 0 = 0 := by
  absurd h

-- Negative example
/--
error: unsolved goals
p : Prop
h : ¬p
⊢ p
-/
#guard_msgs in
example {p : Prop} (h : ¬p) : 0 = 1 := by
  absurd h

-- Inequality example
/--
error: unsolved goals
n : Nat
h : n ≠ 0
⊢ n = 0
-/
#guard_msgs in
example (h : n ≠ 0) : 0 = 2 := by
  absurd h

-- Example with implies false
/--
error: unsolved goals
p : Prop
h : p → False
⊢ p
-/
#guard_msgs in
example {p : Prop} (h : p → False) : 0 = 3 := by
  absurd h

/--
error: unsolved goals
p : Prop
h : p
⊢ ¬p
-/
#guard_msgs in
example {p : Prop} {h : p} : ∀ {x : True}, 0 = 0 := by
  absurd h

-- `·` should not be legal
/--
error: invalid occurrence of `·` notation, it must be surrounded by parentheses (e.g. `(· + 1)`)
---
error: unsolved goals
p : Prop
h : p
⊢ ∀ {x : True}, 0 = 0
-/
#guard_msgs in
example {p : Prop} {h : p} : ∀ {_ : True}, 0 = 0 := by
  absurd ·
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f7682f4bbf5cf08b5fd5f9c32773905c24c4912d50b0a11b554768dcf0c49e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Absurd/Variant5337bc852a97b79eb3447712a634ca76b5193df075867321d8b763e845b67c92.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
