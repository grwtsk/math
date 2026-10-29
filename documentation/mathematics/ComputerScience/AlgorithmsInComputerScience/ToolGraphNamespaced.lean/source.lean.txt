-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToolTransitionEdge.Variant678993ee4698a47e2bf82bcbb7a3aa527fbd265138b07715c9e80fec086e8589","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"678993ee4698a47e2bf82bcbb7a3aa527fbd265138b07715c9e80fec086e8589","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ToolTransitionEdge.Variant678993ee4698a47e2bf82bcbb7a3aa527fbd265138b07715c9e80fec086e8589","mathematical_subject":"Computation.DataStructures","original_sha256":"678993ee4698a47e2bf82bcbb7a3aa527fbd265138b07715c9e80fec086e8589","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/MemoryCore/ToolGraph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Workflow


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToolTransitionEdge.Variant678993ee4698a47e2bf82bcbb7a3aa527fbd265138b07715c9e80fec086e8589

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure ToolTransitionEdge where
  fromTool : MemoryVertex
  toTool : MemoryVertex
  stateSummary : String
  weight : Nat
  fromIsTool : fromTool.kind = MemoryKind.tool
  toIsTool : toTool.kind = MemoryKind.tool

def ToolTransitionEdge.proceduralWeightPositive (e : ToolTransitionEdge) : Prop :=
  0 < e.weight

structure HybridEpisodicProceduralMemory where
  tools : List MemoryVertex
  transitions : List ToolTransitionEdge
  edgeSummariesRetained : Bool

end Think.RadoProjectedModularHeatflow.MemoryCore
