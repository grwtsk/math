# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.UnfoldingMissingCostar

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `645a0851da85f85d08b8f414619c917a6cd9f8e3` · SHA-256 `fe4dc1eb44a04edf8701c7f7793987a2692fa03d99cc5c99880a3287f7809698`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Upstream Mathlib and Lean authorship and Apache-2.0 licensing are preserved. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PathUnfolding

set_option autoImplicit false

open Quiver
open GRWTSK.Combinatorics.DirectedGraph.PathUnfolding
open GRWTSK.Combinatorics.DirectedGraph.PathUnfolding.Checks.Positive

/- The imported accepted positive module proves the actual one-loop counterexample.
Outgoing-star bijectivity does not supply the missing incoming-star obligation. -/
example : (projection (SingleObj.star Unit)).IsCovering := single_loop_outgoing_bijective
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a168cd490dd312d488bf3ca31316175ae942440e048487e81d6e13c3c3bacdc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/UnfoldingMissingCostar__SourceOccurrenceb1c1e6585975c188856034e2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
