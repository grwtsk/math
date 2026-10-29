# Custom Indexing — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82954c90a0e821d1d3167352112875bd45f71b3d` · SHA-256 `d87182417a7ebf1a2884b03b9c3dd067d33c80ccb778fdc53b25ae4a4ed2ec09`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

variable {α : Type}

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : α) : α := by
  aesop (rule_sets := [-builtin,-default])
        (add safe h apply (index := [target False]))
        (config := { terminal := true })

example (h : α) : α := by
  aesop (rule_sets := [-builtin,-default]) (add safe h apply)

-- See Com test for a more realistic scenario.
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6aaadf1e30eb63a2730feb8379e721799f3f81ffab90dc4feee707a2d4ff4954 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CustomIndexing/Variantd87182417a7ebf1a2884b03b9c3dd067d33c80ccb778fdc53b25ae4a4ed2ec09.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
