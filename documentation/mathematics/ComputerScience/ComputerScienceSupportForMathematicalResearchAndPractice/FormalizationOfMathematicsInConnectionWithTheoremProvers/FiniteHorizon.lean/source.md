# Finite Horizon — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33de2126dbb8ce44bb1ffcb74edcf037e9e7889c` · SHA-256 `d85a4cf0ed6e02e2d72291934d7e437fa6fa31464b97ca91c8ea72571e8b0577`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Sonin

structure FiniteHorizonDescriptor where
  horizonRef : String
  finitePrimeUniverseRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninHorizonProjection

end Mathematics.SemiLocalDefect.Sonin
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=307a7e207a5a33b52bc8c1f74d70bded4287ba08ab7c0781caaeff84937ec6af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHorizon/Variantd85a4cf0ed6e02e2d72291934d7e437fa6fa31464b97ca91c8ea72571e8b0577.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
