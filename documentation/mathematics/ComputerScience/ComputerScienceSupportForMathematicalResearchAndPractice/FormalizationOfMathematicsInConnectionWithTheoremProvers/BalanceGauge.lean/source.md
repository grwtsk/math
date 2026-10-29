# Balance Gauge — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a5cc1fb40cd7c82cc71b7454a3c2723285803d3` · SHA-256 `916a343f16569cf77bd0cee2a448d836f3895ea3db2e58fdd4dc97612bed2851`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Hardy

structure BalanceGaugeDescriptor where
  gaugeRef : String
  sourceBalanceRef : String
  targetBalanceRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .balanceGaugeInvariantCapacity

end Mathematics.SemiLocalDefect.Hardy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c63b1fcc1045a51e07dd987b8843fd6edc392de4e4b819f4e1e8e2137763fcbf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BalanceGauge/Variant916a343f16569cf77bd0cee2a448d836f3895ea3db2e58fdd4dc97612bed2851.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
