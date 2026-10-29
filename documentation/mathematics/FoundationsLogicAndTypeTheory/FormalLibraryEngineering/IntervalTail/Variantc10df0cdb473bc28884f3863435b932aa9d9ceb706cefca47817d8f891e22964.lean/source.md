# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalTail.Variantc10df0cdb473bc28884f3863435b932aa9d9ceb706cefca47817d8f891e22964

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1576da267d0f4e7fbea14020ab004d943938dc8` · SHA-256 `c10df0cdb473bc28884f3863435b932aa9d9ceb706cefca47817d8f891e22964`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.QSeries

structure IntervalTailDescriptor where
  tailRef : String
  intervalRef : String
  positivityCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .intervalTail

end Mathematics.SemiLocalDefect.QSeries
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f1bd2722f6f97629374f0085e28cf9bd15263d7ef09e4996c051e580e61a3a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalTail/Variantc10df0cdb473bc28884f3863435b932aa9d9ceb706cefca47817d8f891e22964.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
