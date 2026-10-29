# Ast Companion Pipeline — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78dae691ac583acd7674373fb9f510544492676e` · SHA-256 `1323558ab398e37083d453080cda699021b565864839a6d5bb1741e784ec535f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Pipeline.CompanionPipeline
import Folder.Pipeline.AstCompanionEmitter

/-!
# Folder.Pipeline.AstCompanionPipeline

Radiation role: pipeline-artifact
BinaryMatrix spine: This module supports source-processing or artifact pipelines rather than adding new BinaryMatrix mathematics.
Ontology: pipeline.ast_companion_pipeline
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Pipeline

structure AstCompanionPipeline where
  pipeline : CompanionPipeline
  astEmitter : AstCompanionEmitter

end Pipeline
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=08e81401d6b332737330e413423fbaa8479ffba51dd0c6ae15df6e558dc3c5e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AstCompanionPipeline/Variant1323558ab398e37083d453080cda699021b565864839a6d5bb1741e784ec535f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
