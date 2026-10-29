-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WorkflowStepRecord.Variantfbc59ae36b9791f874fe5c0fdec3fdc1d914cc841fdf9967b682b8c30c9b98ff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fbc59ae36b9791f874fe5c0fdec3fdc1d914cc841fdf9967b682b8c30c9b98ff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.WorkflowStepRecord.Variantfbc59ae36b9791f874fe5c0fdec3fdc1d914cc841fdf9967b682b8c30c9b98ff","mathematical_subject":"Computation.DataStructures","original_sha256":"fbc59ae36b9791f874fe5c0fdec3fdc1d914cc841fdf9967b682b8c30c9b98ff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/MemoryCore/Workflow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.TemporalKG


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WorkflowStepRecord.Variantfbc59ae36b9791f874fe5c0fdec3fdc1d914cc841fdf9967b682b8c30c9b98ff

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure WorkflowStepRecord where
  stepVertex : MemoryVertex
  observation : String
  action : String
  summary : String
  stepIsWorkflow : stepVertex.kind = MemoryKind.workflowStep

structure WorkflowCompiler where
  currentTrajectory : List WorkflowStepRecord
  compiledPattern : String
  similarWorkflowKeys : List String
  nextStepSuggestion : Option String

def WorkflowCompiler.hasSuggestion (c : WorkflowCompiler) : Bool :=
  c.nextStepSuggestion.isSome

end Think.RadoProjectedModularHeatflow.MemoryCore
