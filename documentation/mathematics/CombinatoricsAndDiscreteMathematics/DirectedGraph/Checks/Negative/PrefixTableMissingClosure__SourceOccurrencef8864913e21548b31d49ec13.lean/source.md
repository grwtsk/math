# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.PrefixTableMissingClosure

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f009b834cecf2beb03c6e1c52835601fb71750bd` · SHA-256 `b998c3c8a8f3147b79a73fb4da8458c3fa4d32d678d7b246a79d74bc24b7f123`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableState

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.PrefixTableState
open GRWTSK.Combinatorics.DirectedGraph.PrefixTableState.Checks.Positive

namespace GRWTSK.Combinatorics.DirectedGraph.PrefixTableState.Checks.Negative

/-- The valid full payloads do not supply the missing required prefix-closure field. -/
example : WellFormed missingParent where
  nodup := missingParent_nodup
  closed := missingParent_rooted
  rooted := missingParent_rooted
  cells := missingParent_cells
  references := missingParent_references

end GRWTSK.Combinatorics.DirectedGraph.PrefixTableState.Checks.Negative
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b1e47bf38ddde1ed4cbc7af2e2a1da6904273b57901b27de776fd5b58084b99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/PrefixTableMissingClosure__SourceOccurrencef8864913e21548b31d49ec13.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
