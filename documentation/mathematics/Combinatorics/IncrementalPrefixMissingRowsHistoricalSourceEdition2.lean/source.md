# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.IncrementalPrefixMissingRows

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4f407f18a7f07c5ba4bc5126e7eac6ad0587521` · SHA-256 `317ba5e7b872c8ce98161f080968fa544d406770963d6d3d57809c98746cb28a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.IncrementalPrefixTable

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.PrefixInventory
open GRWTSK.Combinatorics.DirectedGraph.IncrementalPrefixTable
open GRWTSK.Combinatorics.DirectedGraph.IncrementalPrefixTable.Checks.Positive
open GRWTSK.Logic.FiniteSequences.IndexedDictionary

/- The old-reference decoder cannot justify omitting actual newly appended real rows. -/
example : unpack (realPacked oldRows newRows) = some (traceRows oldRows) :=
  unpack_oldPacked oldRows newRows
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cef84c63da2fa9f618e4102054c9a0c70ba31a5360a0fd1a6a7ed02c4f99f83c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/IncrementalPrefixMissingRows__SourceOccurrence9b74ce208f4ba266ecc8e232.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
