# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Negative.OccurrenceMissingHistory

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ab2457de0cbd83fbfd2c851508825e57cbcb7d1` · SHA-256 `7e24119270506678ffd6b23c063aabbfbaf4264fdf076dd419020b9b5815bf0a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Upstream Mathlib and Lean authorship and Apache-2.0 licensing are preserved. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.OccurrencePrefix

set_option autoImplicit false

open Quiver
open GRWTSK.Combinatorics.DirectedGraph.OccurrencePrefix.Checks.Positive

/- The accepted positive module proves this base reachability and the failure
of the proposed occurrence reachability. Full history cannot be omitted. -/
example : Reachable falseOccurrence emptyOccurrence := base_reachable_to_empty
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ea0745d91c7b1358f3c4e333f35887f3c5c6ce8a308df5621cbdc675de6b5b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/OccurrenceMissingHistory__SourceOccurrence266ef376dde8b7ae2c0e3eb9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
