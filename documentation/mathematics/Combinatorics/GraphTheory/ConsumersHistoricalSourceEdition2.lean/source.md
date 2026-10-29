# Complete source: GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.Moser.Checks.Positive.Consumers

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c751b738d0575390ea10ef9f46e14d0e6c27480a` · SHA-256 `d13b567ef3ef6d495f3176ad7de7584d350ee9e8b3a9c9baba84f16bccfea9cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.Moser
open GRWTSK.Combinatorics.GraphTheory.HadwigerNelson
-- Apply the shared canonical theorem directly to separate obligations.
example : FinitePointColorable 4 := moser_unit_graph_exact_four.1
example : ¬ FinitePointColorable 2 :=
  moser_unit_graph_exact_four.2 2 (by decide)
example : ¬ PlaneColorable 3 := plane_not_three_colorable
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6405c3dbfdfb060ce1bae2f328712d3f48d42695cd6e63542089961a320497bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser/Checks/Positive/Consumers__SourceOccurrence98e0c39894f68f8c7584238a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
