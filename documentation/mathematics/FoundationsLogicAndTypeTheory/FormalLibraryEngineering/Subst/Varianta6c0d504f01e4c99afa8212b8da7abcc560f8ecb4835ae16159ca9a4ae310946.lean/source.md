# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Subst.Varianta6c0d504f01e4c99afa8212b8da7abcc560f8ecb4835ae16159ca9a4ae310946

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24c927079a426310af864689650ea41c007bceb8` · SHA-256 `a6c0d504f01e4c99afa8212b8da7abcc560f8ecb4835ae16159ca9a4ae310946`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

-- These test cases test the builtin subst tactic.

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h₁ : x = 5) (h₂ : y = 5) : x = y := by
  aesop (erase Aesop.BuiltinRules.subst)
    (config := { useSimpAll := false, terminal := true })

example (h₁ : x = 5) (h₂ : y = 5) : x = y := by
  aesop (config := { useSimpAll := false })

variable {α : Type}

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example {x y z : α} (h₁ : x = y) (h₂ : y = z) : x = z := by
  aesop (erase Aesop.BuiltinRules.subst)
    (config := { useSimpAll := false, terminal := true })

example {x y z : α} (h₁ : x = y) (h₂ : y = z) : x = z := by
  aesop (config := { useSimpAll := false })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example {x y : α }(P : ∀ x y, x = y → Prop) (h₁ : x = y) (h₂ : P x y h₁) :
    x = y := by
  aesop
    (erase Aesop.BuiltinRules.subst, Aesop.BuiltinRules.assumption,
           Aesop.BuiltinRules.applyHyps)
    (config := { useSimpAll := false, terminal := true })

example {x y : α }(P : ∀ x y, x = y → Prop) (h₁ : x = y) (h₂ : P x y h₁) :
    x = y := by
  aesop
    (erase Aesop.BuiltinRules.assumption,
           Aesop.BuiltinRules.applyHyps)
    (config := { useSimpAll := false })

-- Subst also works for bi-implications.

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h₁ : P ↔ Q) (h₂ : Q ↔ R) (h₃ : P) : R  := by
  aesop (erase Aesop.BuiltinRules.subst)
    (config := { useSimpAll := false, terminal := true })

example (h₁ : P ↔ Q) (h₂ : Q ↔ R) (h₃ : P) : R  := by
  aesop (config := { useSimpAll := false })

-- Subst also works for morally-homogeneous heterogeneous equalities (using a
-- builtin simp rule which turns these into actual homogeneous equalities).

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example {P : α → Prop} {x y z : α} (h₁ : x ≍ y) (h₂ : y ≍ z) (h₃ : P x) :
    P z  := by
  aesop (erase Aesop.BuiltinRules.subst)
    (config := { useSimpAll := false, terminal := true })

example {P : α → Prop} {x y z : α} (h₁ : x ≍ y) (h₂ : y ≍ z) (h₃ : P x) :
    P z  := by
  aesop (config := { useSimpAll := false })
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c94c72b0f1590b164094b3ee1c6b8bc06c9185930f9f1320c7d28a9b7ed3a60e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Varianta6c0d504f01e4c99afa8212b8da7abcc560f8ecb4835ae16159ca9a4ae310946.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
