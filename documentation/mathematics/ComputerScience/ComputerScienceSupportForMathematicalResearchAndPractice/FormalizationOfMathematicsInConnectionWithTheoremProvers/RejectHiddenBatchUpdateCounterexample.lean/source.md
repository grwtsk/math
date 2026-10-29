# Reject Hidden Batch Update Counterexample — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `debf44a7328aa42be1c36caf04d3345f09df889e` · SHA-256 `a2b731a0f622f54b3d36a3af95a177c21351b166be4c208c6318f67176833276`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore
open GRWTSK.Interfaces.OptionalAdapterGate
open Fixtures
example : addTransport.apply Key.boundary = none := addTransport_result.2
example : addTransport.apply Key.transport ≠ emptyLedger Key.transport := by
  rw [addTransport_result.1]
  simp [emptyLedger]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6bea396c8dde95d1eb2a4b0fbed08feace7d2523c6d4990ae230fcb44bf06aa6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectHiddenBatchUpdateCounterexample/Varianta2b731a0f622f54b3d36a3af95a177c21351b166be4c208c6318f67176833276.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
