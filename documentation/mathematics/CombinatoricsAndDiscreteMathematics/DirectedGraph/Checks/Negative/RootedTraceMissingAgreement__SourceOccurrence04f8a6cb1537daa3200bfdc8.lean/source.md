# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Negative.RootedTraceMissingAgreement

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82805865eab3d6872e1ae23e94e0c463b5726d3b` · SHA-256 `e90429606f666ceaa80aca75da743273b15bc1ed31212e1d1fdc3ac21ad2a57a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.RootedTraceRevision

set_option autoImplicit false

open GRWTSK.Combinatorics.DirectedGraph.PrefixInventory
open GRWTSK.Logic.FiniteSequences.DictionaryRevision
open GRWTSK.Combinatorics.DirectedGraph.RootedTraceRevision.Checks.Positive

/- In-bounds old indices cannot supply missing agreement of their complete rooted meanings. -/
example : AgreesOnReferences (inventory oldRows) (inventory appendedRows)
    (packed oldRows).references :=
  stale_references_in_bounds
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a889ab221d168a5c06b80c67b750949448cacddd336d0ea81b7da867c8ab4b9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/RootedTraceMissingAgreement__SourceOccurrence04f8a6cb1537daa3200bfdc8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
