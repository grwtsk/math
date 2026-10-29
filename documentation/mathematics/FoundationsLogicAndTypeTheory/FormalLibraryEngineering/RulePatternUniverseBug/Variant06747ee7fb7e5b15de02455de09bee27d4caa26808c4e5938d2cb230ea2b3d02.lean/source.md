# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RulePatternUniverseBug.Variant06747ee7fb7e5b15de02455de09bee27d4caa26808c4e5938d2cb230ea2b3d02

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8e7db165a23ecb5852dcaef94972c31a1585cea` · SHA-256 `06747ee7fb7e5b15de02455de09bee27d4caa26808c4e5938d2cb230ea2b3d02`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Son Ho, Jannis Limperg
-/

-- A regression test for an issue where universe mvars were not correctly
-- assigned during rule pattern matching. Thanks to Son Ho for reporting this
-- issue.

import Aesop.Frontend.Attribute
import Aesop.Frontend.Saturate

set_option aesop.check.all true

namespace List

@[simp]
def len (ls : List α) : Int :=
  match ls with
  | [] => 0
  | _ :: tl => 1 + len tl

@[aesop safe forward (pattern := len ls)]
theorem len_pos : 0 ≤ len (ls : List α) := by
  induction ls <;> simp [*]
  omega

def indexOpt (ls : List α) (i : Int) : Option α :=
  match ls with
  | [] => none
  | hd :: tl => if i = 0 then some hd else indexOpt tl (i - 1)

theorem indexOpt_bounds (ls : List α) (i : Int) :
    ls.indexOpt i = none ↔ i < 0 ∨ ls.len ≤ i := by
  match ls with
  | [] => simp [indexOpt]; omega
  | _ :: tl =>
    have := indexOpt_bounds tl (i - 1)
    if h : i = 0 then
      simp [indexOpt, *]
      saturate
      omega
    else
      simp [indexOpt, len, *]
      constructor <;> intro a <;> cases a
      . left
        saturate
        omega
      . right; omega
      . left; omega
      . right; omega
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d103a3db7f6166f30700e1dbc4ed3a84a7c1b3b122e267ef3ff5d59fddba7d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePatternUniverseBug/Variant06747ee7fb7e5b15de02455de09bee27d4caa26808c4e5938d2cb230ea2b3d02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
