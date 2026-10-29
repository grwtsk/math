# Complete source: GRWTSK.Logic.FiniteSequences.Checks.Negative.AppendOnlyHistoryReorder

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e880fe58f13b06d9be9315711ecb2313ebbd1261` · SHA-256 `b817c436b1f8f6baf476adac5b1ef8a68ca07434f848d81a220fe2507b830726`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.FiniteSequences.AppendOnlyHistory

open GRWTSK.Logic.FiniteSequences.AppendOnlyHistory

-- Expected type mismatch: reflexive prefix acceptance cannot certify reordered history.
example : checkPrefix ([1, 2] : List Nat) [2, 1] = true :=
  checkPrefix_refl ([1, 2] : List Nat)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=562c4ff539c95ea650a722f51d3d2d7899af3ac72be5f48696e36b6fb624a5fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/Checks/Negative/AppendOnlyHistoryReorder__SourceOccurrence247e77cc564aae546e52628f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
