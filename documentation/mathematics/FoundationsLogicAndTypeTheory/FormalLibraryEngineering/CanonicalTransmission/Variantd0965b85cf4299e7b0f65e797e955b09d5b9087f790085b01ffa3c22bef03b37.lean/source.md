# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CanonicalTransmission.Variantd0965b85cf4299e7b0f65e797e955b09d5b9087f790085b01ffa3c22bef03b37

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12c8807475665446ad6747ff689bf156c065ec97` · SHA-256 `d0965b85cf4299e7b0f65e797e955b09d5b9087f790085b01ffa3c22bef03b37`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Hardy

structure CanonicalTransmissionDescriptor where
  transmissionRef : String
  capacityRef : String
  defectIdentityCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .canonicalTransmission

end Mathematics.SemiLocalDefect.Hardy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81b303ec9c68567de2de81239f9a51159d692e1e77660749a8e19877f77535ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CanonicalTransmission/Variantd0965b85cf4299e7b0f65e797e955b09d5b9087f790085b01ffa3c22bef03b37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
