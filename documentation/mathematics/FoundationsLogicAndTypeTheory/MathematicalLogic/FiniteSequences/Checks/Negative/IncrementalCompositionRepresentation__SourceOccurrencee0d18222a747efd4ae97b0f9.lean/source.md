# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.Checks.Negative.IncrementalCompositionRepresentation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e423e64b3102051956ec141bd6f598ff9c2d4ac8` · SHA-256 `d82eba8a71340e1f6d252bd9a67f680321a20358c6371a53f7cfa916c785ed0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IncrementalComposition

open GRWTSK.Logic.FiniteSequences.IndexedDictionary
open GRWTSK.Logic.FiniteSequences.IncrementalDictionary
open GRWTSK.Logic.FiniteSequences.IncrementalComposition

private def firstBatch : List (Nat × Nat) := [(11, 7), (12, 8)]
private def secondBatch : List (Nat × Nat) := [(13, 7)]

-- Expected type mismatch: equality after decoding does not prove packed representation equality.
example :
    appendEntries (appendEntries (pack ([] : List (Nat × Nat))) firstBatch) secondBatch =
      appendEntries (pack []) (firstBatch ++ secondBatch) :=
  unpack_appendEntries_compose (pack []) firstBatch secondBatch (pack_valid [])
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=833a18947486393245c29daccc1e35f549397fb90ff83b3fde2ed611537d0bc1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/Checks/Negative/IncrementalCompositionRepresentation__SourceOccurrencee0d18222a747efd4ae97b0f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
