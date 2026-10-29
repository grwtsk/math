# Complete source: GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.Moser.Checks.Negative.WrongColor

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c103d5576bc3eadc37504471fcc956b3911cfdc` · SHA-256 `c3998d64ef4f18ae3dff2fe3268c5c717772719d9592a752a700d189d9a562ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.Moser
open GRWTSK.Combinatorics.GraphTheory.HadwigerNelson
def badColor : Fin 7 → Fin 4 := ![0, 1, 2, 0, 1, 2, 0]
example : ∀ i j, (i,j) ∈ moserEdges → badColor i ≠ badColor j := by
  decide
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad45fdcef1a17fe2ef55f92c1fb8527d473582efa780fc37ab576fa3904733be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser/Checks/Negative/WrongColor__SourceOccurrencedc58a080e01899a4419a30ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
