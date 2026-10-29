# Cases Script — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d85e40d523870c3cc339d45128f8168265825685` · SHA-256 `7df7a88783a2d6dfef01b96d9b375e2157ea2db9a0ba4260a8d048c29b90265d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

@[aesop 50% cases]
inductive FancyAnd (α β : Prop) : Prop
  | dummy (p : Empty)
  | and (a : α) (b : β)

/--
info: Try this:

  [apply]     apply And.intro
    ·
      cases h with
      | dummy p =>
        have fwd : False := Aesop.BuiltinRules.empty_false p
        simp_all only
      | and a b => simp_all only
    ·
      cases h with
      | dummy p =>
        have fwd : False := Aesop.BuiltinRules.empty_false p
        simp_all only
      | and a b => simp_all only
-/
#guard_msgs in
example {α β} (h : FancyAnd α β) : α ∧ β := by
  aesop?

@[aesop safe cases (cases_patterns := [All _ [], All _ (_ :: _)])]
inductive All (P : α → Prop) : List α → Prop
  | nil : All P []
  | cons : P x → All P xs → All P (x :: xs)

@[aesop 99% constructors]
structure MyTrue : Prop

/--
info: Try this:

  [apply]     rcases h with ⟨⟩ | @⟨x_1, xs_1, a, a_1⟩
    apply MyTrue.mk
-/
#guard_msgs in
example {P : α → Prop} (h : All P (x :: xs)) : MyTrue := by
  aesop?
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22e8371b0c5be66e3e02916feefff5f30f62bbd3a0e220730b4d97c028dca5bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesScript/Variant7df7a88783a2d6dfef01b96d9b375e2157ea2db9a0ba4260a8d048c29b90265d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
