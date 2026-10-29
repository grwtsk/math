# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.PrefixCheckpointStaleSlots

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c45b932cbc60e54f4018818350eb5e03cc533e3` · SHA-256 `da2ca6b1115eeb97dee592dcf27604f88bde3fe01332103817940c7b5c2e0e2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableCheckpoint

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph
open PrefixTableCheckpoint.Checks.Positive

/-- Actual numeric bounds cannot supply exact full-history agreement after compaction. -/
example : PrefixTableState.decode stalePost = PrefixTableState.decode post := stalePost_bounds
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2c82b8b434d8f2c1e2cdafa720cd66dd485da02cb1b6afd77daf9fa568576bb1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/PrefixCheckpointStaleSlots.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
