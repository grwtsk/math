# Companion Pipeline — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e7ff4973ea848feb5a6e79c00e4c9cf71642d0a` · SHA-256 `e9826d19b887caf818595d42e722b198c24f07bef5655a6d2e58393ee86a9ba4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Pipeline.LeanSourceReader
import Folder.Pipeline.CompanionEmitter

/-!
# Folder.Pipeline.CompanionPipeline

Radiation role: pipeline-artifact
BinaryMatrix spine: This module supports source-processing or artifact pipelines rather than adding new BinaryMatrix mathematics.
Ontology: pipeline.companion_pipeline
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Pipeline

structure CompanionPipeline where
  reader : LeanSourceReader
  emitter : CompanionEmitter

end Pipeline
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=77c87b20aed3b5fc4aa8e157ec5ebed65c5fbef4823450db3b6bce6e757c5c9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompanionPipeline/Variante9826d19b887caf818595d42e722b198c24f07bef5655a6d2e58393ee86a9ba4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
