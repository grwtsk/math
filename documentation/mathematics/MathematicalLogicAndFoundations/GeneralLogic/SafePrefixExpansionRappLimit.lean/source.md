# Safe Prefix Expansion Rapp Limit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `212c94d3961174281df71445b5c39de1bda79794` · SHA-256 `a8c0b8f6430bae8fb8649e69cc9b3c6de3b9e4ff9f5b30db56fe190c04fa1a00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

@[aesop safe]
axiom loopy {α : Prop} : α ∨ α → α

/--
warning: aesop: failed to prove the goal. Some goals were not explored because the maximum rule application depth (30) was reached. Set option 'maxRuleApplicationDepth' to increase the limit.
---
warning: aesop: safe prefix was not fully expanded because the maximum number of rule applications (50) was reached.
---
error: unsolved goals
⊢ False
-/
#guard_msgs in
example : False := by
  aesop

/--
error: Tactic `aesop` failed, failed to prove the goal. Some goals were not explored because the maximum rule application depth (30) was reached. Set option 'maxRuleApplicationDepth' to increase the limit.
Initial goal:
  ⊢ False
Remaining goals after safe rules:
  ⊢ False
The safe prefix was not fully expanded because the maximum number of rule applications (50) was reached.
-/
#guard_msgs in
example : False := by
  aesop (config := { terminal := true })
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7cd618979dd6c5eca0b8b88e059e591d5b7890011733f835596dd649a55f1a30 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SafePrefixExpansionRappLimit/Varianta8c0b8f6430bae8fb8649e69cc9b3c6de3b9e4ff9f5b30db56fe190c04fa1a00.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
