# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OnePrimePassivity.Variant726a13745fcd26ebad4234374e0f23259a250ab35b842867a4aa594fb18ba470

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8feffe65d5c20bab6d955aab1dadb4d936d7d4e5` · SHA-256 `726a13745fcd26ebad4234374e0f23259a250ab35b842867a4aa594fb18ba470`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.QSeries

structure OnePrimePassivityDescriptor where
  primeRef : String
  compressionRank : Nat
  exactCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .onePrimePassivity

end Mathematics.SemiLocalDefect.QSeries
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd142d30e1723658b0762186262b4f15f59f7a0e84bcd1cfcfc7c463901cd5d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OnePrimePassivity/Variant726a13745fcd26ebad4234374e0f23259a250ab35b842867a4aa594fb18ba470.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
