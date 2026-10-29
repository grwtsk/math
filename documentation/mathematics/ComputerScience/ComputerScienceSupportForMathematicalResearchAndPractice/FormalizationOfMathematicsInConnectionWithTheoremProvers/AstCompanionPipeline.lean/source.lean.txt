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
