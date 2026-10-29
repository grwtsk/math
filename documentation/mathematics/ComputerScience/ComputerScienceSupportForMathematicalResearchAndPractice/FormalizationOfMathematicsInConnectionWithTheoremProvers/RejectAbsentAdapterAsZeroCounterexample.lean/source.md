# Reject Absent Adapter As Zero Counterexample — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06227261ae45f8d80afdf8e0398b9d0623b3cbb6` · SHA-256 `18580b6a4bff1477ffcd49faa1de1c700bc313d08529770dc28e142f7bd691f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore
open GRWTSK.Interfaces.OptionalAdapterGate
open Fixtures
example : applySelected emptyLedger none Key.boundary ≠ some 0 := by
  simp [applySelected, emptyLedger]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc48fc948bcc11c026de6d308a8e833f379a80adf563f90fcf2602767e6ea5c7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectAbsentAdapterAsZeroCounterexample/Variant18580b6a4bff1477ffcd49faa1de1c700bc313d08529770dc28e142f7bd691f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
