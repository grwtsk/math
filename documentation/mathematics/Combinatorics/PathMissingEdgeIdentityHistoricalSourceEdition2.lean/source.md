# Complete source: GRWTSK.Combinatorics.DirectedGraph.Checks.Negative.PathMissingEdgeIdentity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e7454449ee7939368a80ae229ebab867fa33c25` · SHA-256 `f1936c3eaf77f02e7fbc644de6d0404c1cc787f8de64c67c37af7c2dff8eba69`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Combinatorics.DirectedGraph.PathOccurrences

open GRWTSK.Combinatorics.DirectedGraph.PathOccurrences

-- Expected type mismatch: equality of full vertex sequences cannot identify parallel Bool edges.
example : parallelLoop false = parallelLoop true :=
  (rfl : (parallelLoop false).vertices = (parallelLoop true).vertices)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4135b06e1a33221a56c7bccb16cd4518555d5ebfc65835f73650cc35d28bdd26 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/PathMissingEdgeIdentity__SourceOccurrence761ebf2a1c5b6193fdeebef8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
