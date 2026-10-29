# Coefficient Ring — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da1115c6159f906b5a881a92982235609d30c99a` · SHA-256 `48cbddefdde569ce14d7b94f39b3446a5889757496bef26117540ccb4051a0d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.QSeries

structure CoefficientRingDescriptor where
  ringRef : String
  exactArithmeticRef : String
  intervalRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .qSeriesCoefficientRing

end Mathematics.SemiLocalDefect.QSeries
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=acab622c47cff9d436fb01d4c2374de5d30da26f296d2e02deb265f726076ba9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoefficientRing/Variant48cbddefdde569ce14d7b94f39b3446a5889757496bef26117540ccb4051a0d0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
