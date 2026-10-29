# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SplitScript.Variantdabaff08e0a1ce269d78461739da2ac0dac059180c72213d347ce270ea5e6263

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `316eb152585667c09cf2c3e1d2521e4878ee0dfc` · SHA-256 `dabaff08e0a1ce269d78461739da2ac0dac059180c72213d347ce270ea5e6263`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

open Classical

inductive MyFalse : Prop

/--
info: Try this:

  [apply]     split
    next h => sorry
    next h => sorry
---
warning: declaration uses `sorry`
-/
#guard_msgs in
example {A B : Prop} : if P then A else B := by
  aesop? (config := { warnOnNonterminal := false })
  all_goals sorry

/--
info: Try this:

  [apply]     split at h
    next h_1 => simp_all only [true_or]
    next h_1 => simp_all only [or_true]
-/
#guard_msgs in
example (h : if P then A else B) : A ∨ B := by
  aesop?

/--
info: Try this:

  [apply]     split at h
    next n => simp_all only [true_or]
    next n => simp_all only [true_or, or_true]
    next n_1 x x_1 => simp_all only [imp_false, or_true]
-/
#guard_msgs in
theorem foo (n : Nat) (h : match n with | 0 => A | 1 => B | _ => C) :
    A ∨ B ∨ C := by
  set_option aesop.check.rules false in -- TODO simp introduces mvar
  set_option aesop.check.tree false in
  aesop?
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=58fae230d23f44916dd63fde05ea3804362bf7dcd69c200b011e4e5ffc70ce9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitScript/Variantdabaff08e0a1ce269d78461739da2ac0dac059180c72213d347ce270ea5e6263.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
