# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.UnitDistanceGraph.Moser.Checks.Positive.Consumers

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e07abb15a9a3b568e216a8e5f5c694cc2059c215` · SHA-256 `855ad275034fd5fa3877a650f0c7989740b1fa47deb7b1369cb24ffe804c6155`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.UnitDistanceGraph.Moser
open GRWTSK.Combinatorics.GraphTheory.HadwigerNelson
-- Apply the shared canonical theorem directly to separate obligations.
example : FinitePointColorable 4 := moser_unit_graph_exact_four.1
example : ¬ FinitePointColorable 2 :=
  moser_unit_graph_exact_four.2 2 (by decide)
example : ¬ PlaneColorable 3 := plane_not_three_colorable
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd82434073ecb645bb6350917d72d369823cc0e4f0ca5b6bbf3923035130388f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser/Checks/Positive/Consumers__SourceOccurrence8a77971cd669f5ce1c4df572.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
