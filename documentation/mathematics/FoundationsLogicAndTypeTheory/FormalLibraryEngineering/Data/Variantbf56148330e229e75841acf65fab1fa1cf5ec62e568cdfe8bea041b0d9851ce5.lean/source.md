# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Data.Variantbf56148330e229e75841acf65fab1fa1cf5ec62e568cdfe8bea041b0d9851ce5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de99165a396b4513c8f802188d495fcf17b186bc` · SHA-256 `bf56148330e229e75841acf65fab1fa1cf5ec62e568cdfe8bea041b0d9851ce5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ingestion.Source

/-! # Research data artifacts -/

namespace Mathematics.Ingestion

structure DataRecord where
  dataId : StableId
  artifact : Ecosystem.RawArtifact
  schemaDigest : Option Digest
  rowCount : Option Nat
  semanticStatus : String
  immutableBytes : Bool := true
  deriving DecidableEq, Repr

end Mathematics.Ingestion
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=738c31ea6e484cde38842d09f340bee8c23f771dfcf8ea085aab5c518c69d324 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Data/Variantbf56148330e229e75841acf65fab1fa1cf5ec62e568cdfe8bea041b0d9851ce5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
