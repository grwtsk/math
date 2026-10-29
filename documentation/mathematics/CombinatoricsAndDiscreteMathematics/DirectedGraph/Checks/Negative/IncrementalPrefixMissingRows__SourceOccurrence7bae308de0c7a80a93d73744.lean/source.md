# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Negative.IncrementalPrefixMissingRows

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e3ab46f23c088144d33f2a1389f1544e27ac6f0` · SHA-256 `83890caf1ff5ccdebad42434bb33d38aea6fd319e7df098f89bd9207ceb64bde`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.IncrementalPrefixTable

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.PrefixInventory
open GRWTSK.Combinatorics.DirectedGraph.IncrementalPrefixTable
open GRWTSK.Combinatorics.DirectedGraph.IncrementalPrefixTable.Checks.Positive
open GRWTSK.Logic.FiniteSequences.IndexedDictionary

/- The old-reference decoder cannot justify omitting actual newly appended real rows. -/
example : unpack (realPacked oldRows newRows) = some (traceRows oldRows) :=
  unpack_oldPacked oldRows newRows
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=09e210385968f53c1660124fb0a7e35c9ac37c6d8fee7f634f4865672ce8149a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/IncrementalPrefixMissingRows__SourceOccurrence7bae308de0c7a80a93d73744.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
