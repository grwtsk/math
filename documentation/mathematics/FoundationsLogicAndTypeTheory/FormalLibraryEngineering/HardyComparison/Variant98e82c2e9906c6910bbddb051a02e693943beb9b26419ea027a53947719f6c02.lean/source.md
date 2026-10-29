# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HardyComparison.Variant98e82c2e9906c6910bbddb051a02e693943beb9b26419ea027a53947719f6c02

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb2a8e0fdcd369475004787937e6a62ced0aac69` · SHA-256 `98e82c2e9906c6910bbddb051a02e693943beb9b26419ea027a53947719f6c02`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Sonin

structure HardyComparisonDescriptor where
  comparisonRef : String
  hardyDefectRef : String
  soninProjectionRef : String
  relationCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .hardySoninComparison

end Mathematics.SemiLocalDefect.Sonin
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b8090a698f45966af3992e80f4a1f7d601833d07cb58eddecf529ef4bc7e69f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HardyComparison/Variant98e82c2e9906c6910bbddb051a02e693943beb9b26419ea027a53947719f6c02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
