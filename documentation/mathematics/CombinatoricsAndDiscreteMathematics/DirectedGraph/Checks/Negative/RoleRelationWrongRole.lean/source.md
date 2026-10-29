# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.RoleRelationWrongRole

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91f27960317dc0807f4749122939e56170ab9d46` · SHA-256 `83a09767098520d51c6ea4ba4c033a0e0cb416cb520989d56bd11dd433b5e2df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib and Lean imports retain their individual authorship and Apache-2.0 licenses. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.RoleRelationTable

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.RoleRelationTable
open GRWTSK.Combinatorics.DirectedGraph.RoleRelationTable.Checks.Positive

namespace GRWTSK.Combinatorics.DirectedGraph.RoleRelationTable.Checks.Negative

/-- Actual membership in role S cannot supply membership in the selected role R. -/
example : RoleId fixture false := ⟨index3, index3_role⟩

end GRWTSK.Combinatorics.DirectedGraph.RoleRelationTable.Checks.Negative
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15e560cd41907d3a5faa69eb6a69f37dd2a3fc667cadea9de6d4633cdc963b36 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/RoleRelationWrongRole.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
