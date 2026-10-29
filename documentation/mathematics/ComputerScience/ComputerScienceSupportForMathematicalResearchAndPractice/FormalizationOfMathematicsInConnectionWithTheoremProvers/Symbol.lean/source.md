# Symbol — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `929338ade6cb61c1bbd63e95d9bc1d440e9b14d5` · SHA-256 `9b567e152399bac72d889f740c077050d6756fe81ab5db5fcaa0c67805f0fa11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Hardy

structure SymbolDescriptor where
  symbolRef : String
  cutRef : String
  archimedeanAnchorRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .archimedeanBalanceExistence

end Mathematics.SemiLocalDefect.Hardy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da04402da480a6ec144552366f340dae082bc98ccd7054f07d2dfbc72d73544a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symbol/Variant9b567e152399bac72d889f740c077050d6756fe81ab5db5fcaa0c67805f0fa11.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
