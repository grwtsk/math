# One Prime Moment — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83314a378b6b014a144bb767ba18dc9deb3b3cdd` · SHA-256 `60d2368c6c2d0a863918d3e7c0510622448495eba11decd2ad3a13e63cc0a6f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.QSeries

structure OnePrimeMomentDescriptor where
  momentRef : String
  primeRef : String
  coefficientCustodyRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .onePrimeMoment

end Mathematics.SemiLocalDefect.QSeries
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f2fe577028d50c3ae66721f10e537683052f05e68aaa0338377e6305adc0bc38 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OnePrimeMoment/Variant60d2368c6c2d0a863918d3e7c0510622448495eba11decd2ad3a13e63cc0a6f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
