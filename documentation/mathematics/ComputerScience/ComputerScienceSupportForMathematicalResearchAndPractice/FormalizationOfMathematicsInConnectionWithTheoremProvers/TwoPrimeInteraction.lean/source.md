# Two Prime Interaction — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f951c8b4fec2d008a93d422736070bc5b94336ae` · SHA-256 `a1d331aa28057dc9e7ef3ccdbf2603c5ec08df430ecc58b1f9d4cbf9c62ff0fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.QSeries

structure TwoPrimeInteractionDescriptor where
  firstPrimeRef : String
  secondPrimeRef : String
  compressionRank : Nat
  signCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .twoPrimeInteraction

end Mathematics.SemiLocalDefect.QSeries
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4bcd8757e667f0e1d39c7063cf883f3f76a9f3538e63f77e2b13b2c77ad1e7dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TwoPrimeInteraction/Varianta1d331aa28057dc9e7ef3ccdbf2603c5ec08df430ecc58b1f9d4cbf9c62ff0fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
