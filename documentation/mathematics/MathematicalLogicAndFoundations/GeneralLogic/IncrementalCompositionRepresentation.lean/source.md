# Complete source: GRWTSK.Logic.FiniteSequences.Checks.Negative.IncrementalCompositionRepresentation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b01a1c81f7947d0db615abdc2eaa1170962af20d` · SHA-256 `c73ccb9c485298ccdcdfd289e88609c4bf7b23dc92a247473ee12cf3a7c15e36`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.FiniteSequences.IncrementalComposition

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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4396ce3b8d7b705056694158396c152197d610b910a161eafb11a495e9c5fc27 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/Checks/Negative/IncrementalCompositionRepresentation__SourceOccurrence8672145d5fa06c34072077dd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
