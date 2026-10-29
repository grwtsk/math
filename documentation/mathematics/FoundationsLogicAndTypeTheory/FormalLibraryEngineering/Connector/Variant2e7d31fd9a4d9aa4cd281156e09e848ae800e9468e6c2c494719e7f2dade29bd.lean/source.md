# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Connector.Variant2e7d31fd9a4d9aa4cd281156e09e848ae800e9468e6c2c494719e7f2dade29bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76a9929c04808b93582a26f0aac084d73ec4a43d` · SHA-256 `2e7d31fd9a4d9aa4cd281156e09e848ae800e9468e6c2c494719e7f2dade29bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Sonin

structure ConnectorDescriptor where
  connectorRef : String
  sourceSpaceRef : String
  targetSpaceRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninConnector

end Mathematics.SemiLocalDefect.Sonin
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dcdbee790fdd367b49822300cfe541ff10e5200fbf68847735a312ec9407bdbd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Connector/Variant2e7d31fd9a4d9aa4cd281156e09e848ae800e9468e6c2c494719e7f2dade29bd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
