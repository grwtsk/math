# Attribute Declaration Attribute — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30bb2690d4caef98cf260b791a8f54ddd61913d5` · SHA-256 `1613a922a9f212ac895ce55a369cf3fec8868bf5d3c8639a8fc2b4660225f9c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ingestion.Declaration

/-! # Declaration attributes -/

namespace Mathematics.Ingestion

structure DeclarationAttribute where
  declaration : ProjectDeclarationId
  attributeName : String
  payloadDigest : Digest
  sourceArtifactId : Ecosystem.ArtifactId
  deriving DecidableEq, Repr

end Mathematics.Ingestion
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44d131ecf2ae5d99eaf9ed65b5e38e2954b80dd7e96a039e0985e6cd7561fbd3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variant1613a922a9f212ac895ce55a369cf3fec8868bf5d3c8639a8fc2b4660225f9c9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
