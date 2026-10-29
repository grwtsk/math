# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Topology.Varianta86b0df894197337b9e90290d7ba4be9fd84f9d67f2b3d3e5725c231e8f3656e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a1a2e87646b513d04570f7fa156af549d1b3f50` · SHA-256 `a86b0df894197337b9e90290d7ba4be9fd84f9d67f2b3d3e5725c231e8f3656e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
Mathlib topology patch boundary.

This marker records local topology patches without importing the patch corpus.
-/

namespace Formal.Patches.Mathlib.Topology

def conceptualSubdirectories : List String :=
  [ "MetricSpace"
  ]

theorem conceptualSubdirectories_count :
    conceptualSubdirectories.length = 1 := by
  rfl

end Formal.Patches.Mathlib.Topology
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b060b34c62577f618dc214464ed6c2937a5838427a8053ca823adfa6af81c921 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Topology/Varianta86b0df894197337b9e90290d7ba4be9fd84f9d67f2b3d3e5725c231e8f3656e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
