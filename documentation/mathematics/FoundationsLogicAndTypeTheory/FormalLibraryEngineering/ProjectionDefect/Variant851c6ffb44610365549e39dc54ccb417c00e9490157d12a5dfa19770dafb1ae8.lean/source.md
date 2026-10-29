# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectionDefect.Variant851c6ffb44610365549e39dc54ccb417c00e9490157d12a5dfa19770dafb1ae8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d84e924886d63579b19ae92f2df2514278ce8220` · SHA-256 `851c6ffb44610365549e39dc54ccb417c00e9490157d12a5dfa19770dafb1ae8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Sonin

structure ProjectionDefectDescriptor where
  defectRef : String
  projectionRef : String
  capacityRelationRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninProjectionDefect

end Mathematics.SemiLocalDefect.Sonin
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=123735fe3f55e2c278a0f7b766898887d31ec0c3a1200149dbf377f931de8f3f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProjectionDefect/Variant851c6ffb44610365549e39dc54ccb417c00e9490157d12a5dfa19770dafb1ae8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
