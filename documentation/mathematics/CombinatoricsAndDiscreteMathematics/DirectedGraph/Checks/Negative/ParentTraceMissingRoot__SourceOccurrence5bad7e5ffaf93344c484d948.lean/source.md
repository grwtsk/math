# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.ParentTraceMissingRoot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd34c18fe44694934cc3db3bd7bbe4a2015fe3e5` · SHA-256 `4436470f0453880d7b56b523bb548da2b26070bd495897ae7f2ca582d0bd271d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.ParentTraceDictionary

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.PathUnfolding
open GRWTSK.Combinatorics.DirectedGraph.ParentTraceDictionary.Checks.Positive

/- Equal empty words cannot supply the missing identity of their retained roots. -/
example : (origin false).endpoint = (origin true).endpoint :=
  same_empty_words
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f4563499b3a6453899b0325c4449627cdc16cbf64b96a8ac8acdd1384f6ffcb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/ParentTraceMissingRoot__SourceOccurrence5bad7e5ffaf93344c484d948.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
