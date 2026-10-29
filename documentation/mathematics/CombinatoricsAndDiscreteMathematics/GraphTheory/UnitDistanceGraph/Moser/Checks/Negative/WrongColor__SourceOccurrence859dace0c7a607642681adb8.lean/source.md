# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.UnitDistanceGraph.Moser.Checks.Negative.WrongColor

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `579beb6ccd1806f6c51e19e3640bec11d597fb07` · SHA-256 `eee625ca963793aedf54b7f33aa6d688d6b7627e852bfb1f0064c420048457ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.UnitDistanceGraph.Moser
open GRWTSK.Combinatorics.GraphTheory.HadwigerNelson
def badColor : Fin 7 → Fin 4 := ![0, 1, 2, 0, 1, 2, 0]
example : ∀ i j, (i,j) ∈ moserEdges → badColor i ≠ badColor j := by
  decide
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3b916cb22c6cf40f58f510a9cc40c17c1291afe585c4b6a0f1169d388e6659a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser/Checks/Negative/WrongColor__SourceOccurrence859dace0c7a607642681adb8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
