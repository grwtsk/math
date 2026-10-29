# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Negative.PrefixTableMissingClosure

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7bece40b7a25ad76c1adbc74828bfefe7aa702f` · SHA-256 `dcffee3227d991bd5704a4cb196c90443bbde6bf61817d61601cb1eb660cc03f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.PrefixTableState

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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a289f286bac774b799051d90ad1d9ea2e8d55e7d43e5e67ec4b72d88590877c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/PrefixTableMissingClosure__SourceOccurrenced0a5b8bc75e07a4269ccc785.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
