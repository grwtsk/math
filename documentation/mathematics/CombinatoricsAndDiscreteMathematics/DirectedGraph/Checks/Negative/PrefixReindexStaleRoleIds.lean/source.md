# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.PrefixReindexStaleRoleIds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e560ea397e03e69db723f3dde1b9d674d642699` · SHA-256 `5c19337da2c220dbafb8eee10a4fd1b1c0bb494d7ee1deda408d0c53237bbe74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableReindex

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph
open PrefixTableReindex.Checks.Positive

/-- Correct role, numeric bounds and stored ranks cannot supply the missing actual root equality. -/
example : EdgeTrace.ValidFrom stale.root [newTag0] := new0.property
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96edec8f6db664595322f35de3a811e7652d77c44d44ca35391807ebfd928a58 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/PrefixReindexStaleRoleIds.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
