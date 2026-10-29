# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.OccurrenceMissingHistory

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c8e3f5e3086a7d5f2b802bb6b4ecbd26407bbfd` · SHA-256 `2fed82fcf2c3929388e4a65c7cfd216501c038f591e74715c1dc7daf0407ebba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Upstream Mathlib and Lean authorship and Apache-2.0 licensing are preserved. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.OccurrencePrefix

set_option autoImplicit false

open Quiver
open GRWTSK.Combinatorics.DirectedGraph.OccurrencePrefix.Checks.Positive

/- The accepted positive module proves this base reachability and the failure
of the proposed occurrence reachability. Full history cannot be omitted. -/
example : Reachable falseOccurrence emptyOccurrence := base_reachable_to_empty
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d38453bc77cee8d357fef8c2dc47e8b21977feb03676cf586b26f7897c1633b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/OccurrenceMissingHistory__SourceOccurrence83dc22d623f34c160c27044a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
