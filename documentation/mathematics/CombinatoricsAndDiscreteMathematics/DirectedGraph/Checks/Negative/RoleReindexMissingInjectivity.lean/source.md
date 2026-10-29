# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.RoleReindexMissingInjectivity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a65a13ea7206717359004a991d9a05c4b5a6a678` · SHA-256 `83bdf44ebec2d61d0db542f92b8c0745a3110105627c91b0bb788dd61f81767b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib and Lean imports retain their individual authorship and Apache-2.0 licenses. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.RoleRelationReindex

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.RoleRelationReindex
open GRWTSK.Combinatorics.DirectedGraph.RoleRelationReindex.Checks.Positive

namespace GRWTSK.Combinatorics.DirectedGraph.RoleRelationReindex.Checks.Negative

/-- Equal source vertices cannot replace the required injectivity of actual relation identities. -/
example : Function.Injective (qualified collapse false) :=
  qualified_injective collapse false collapse.source

end GRWTSK.Combinatorics.DirectedGraph.RoleRelationReindex.Checks.Negative
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=591a0f54643e7736a74061b4a9c24c2d5550ad6d5b361973350bb64a0a0ab915 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/RoleReindexMissingInjectivity.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
