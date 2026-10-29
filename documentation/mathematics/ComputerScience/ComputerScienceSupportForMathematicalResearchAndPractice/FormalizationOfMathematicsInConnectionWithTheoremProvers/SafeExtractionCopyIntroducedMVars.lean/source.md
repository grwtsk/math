# Safe Extraction Copy Introduced MVars — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8139c83110316dc6944033e10fde9b36c67cdb22` · SHA-256 `b334cc0821766f6535bee10f71f13ae0fce97ff18de06dcc27332ec03e60a34a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

axiom P : Prop
axiom T : Prop
axiom Q : Nat → Prop
axiom R : Nat → Prop
axiom S : Nat → Prop

@[aesop safe]
axiom q_r_p : ∀ x, Q x → R x → P

@[aesop safe]
axiom s_q : ∀ x y, S y → Q x

@[aesop safe]
axiom s_r : ∀ x y, S y → R x

axiom s : S 0

/--
warning: aesop: failed to prove the goal after exhaustive search.
---
error: unsolved goals
case a.a
⊢ S ?a.y✝

case a.a
⊢ S ?a.y✝

case x
⊢ Nat

case a.a
⊢ S ?a.y✝

case a.a
⊢ S ?a.y✝

case x
⊢ Nat
---
error: (kernel) declaration has metavariables '_example'
-/
#guard_msgs in
example : P := by
  aesop
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff91c959a595d2416c28cdb70c9c54474ccf2252924a6cf256bd482076ea1640 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SafeExtractionCopyIntroducedMVars/Variantb334cc0821766f6535bee10f71f13ae0fce97ff18de06dcc27332ec03e60a34a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
