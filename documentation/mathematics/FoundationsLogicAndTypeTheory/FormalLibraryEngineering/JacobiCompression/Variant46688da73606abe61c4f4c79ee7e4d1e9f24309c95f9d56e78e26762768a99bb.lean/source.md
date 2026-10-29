# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.JacobiCompression.Variant46688da73606abe61c4f4c79ee7e4d1e9f24309c95f9d56e78e26762768a99bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef5ae07d8a1a96a7fa1a834a5c4b3c79b640314e` · SHA-256 `46688da73606abe61c4f4c79ee7e4d1e9f24309c95f9d56e78e26762768a99bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.QSeries

structure JacobiCompressionDescriptor where
  compressionRef : String
  rank : Nat
  exactMatrixRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .jacobiCompression

end Mathematics.SemiLocalDefect.QSeries
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fec8d56385dd879fdf4d7b4e0469ac40b4c1fd5df41be4121696cdaa92f4f4cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JacobiCompression/Variant46688da73606abe61c4f4c79ee7e4d1e9f24309c95f9d56e78e26762768a99bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
