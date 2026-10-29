import Folder.Pipeline.LeanSource

/-!
# Folder.Pipeline.LeanSourceReader

Radiation role: pipeline-artifact
BinaryMatrix spine: This module supports source-processing or artifact pipelines rather than adding new BinaryMatrix mathematics.
Ontology: pipeline.lean_source_reader
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Pipeline

structure LeanSourceReader where
  read : String → Option LeanSource

end Pipeline
end Folder
