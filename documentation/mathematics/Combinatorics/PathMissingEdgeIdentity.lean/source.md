# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Negative.PathMissingEdgeIdentity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `451a651ed789fee12cb9fc794551a6bab03ba5de` · SHA-256 `bda61f4c8cfd74be3f917a6df411a13d37ceab00f6f58085912f51472b6cbeb9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PathOccurrences

open GRWTSK.Combinatorics.DirectedGraph.PathOccurrences

-- Expected type mismatch: equality of full vertex sequences cannot identify parallel Bool edges.
example : parallelLoop false = parallelLoop true :=
  (rfl : (parallelLoop false).vertices = (parallelLoop true).vertices)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f0e8f359c9cf96864a6d14f186f3d95cd9107a451e916d9b8dcbeeced5cea40 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/PathMissingEdgeIdentity__SourceOccurrence06e7ebe2ee41f986906b5730.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
