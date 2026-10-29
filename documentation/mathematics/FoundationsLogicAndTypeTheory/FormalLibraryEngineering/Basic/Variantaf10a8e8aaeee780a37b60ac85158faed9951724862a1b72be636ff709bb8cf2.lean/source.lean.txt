-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TimeScope.Variantb049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TimeScope.Variantb049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c","mathematical_subject":"Foundations.Unclassified","original_sha256":"b049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/MemoryCore/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Pipeline.PhaseOrder


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TimeScope.Variantb049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected

abbrev MemoryId := Nat
abbrev RepoPtr := String
abbrev ConversationPtr := String
abbrev ToolPtr := String
abbrev WorkflowPtr := String

inductive TimeScope where
  | unavailable
  | instant (time : Nat)
  | interval (startTime endTime : Nat)
deriving DecidableEq, Repr

inductive SourcePointer where
  | repo (ptr : RepoPtr)
  | conversation (ptr : ConversationPtr)
  | tool (ptr : ToolPtr)
  | workflow (ptr : WorkflowPtr)
deriving DecidableEq, Repr

def SourcePointer.label : SourcePointer -> String
  | .repo ptr => ptr
  | .conversation ptr => ptr
  | .tool ptr => ptr
  | .workflow ptr => ptr

structure FiniteRunBounds where
  vertexBound : Nat
  edgeBound : Nat
  witnessBound : Nat
  timeBound : Nat
deriving DecidableEq, Repr

def defaultFiniteRunBounds : FiniteRunBounds :=
  { vertexBound := 512
    edgeBound := 2048
    witnessBound := 64
    timeBound := 4096 }

def preservedCenterIndex : Nat :=
  30

def preservedPhaseCount : Nat :=
  61

theorem preservedPhaseCount_matches_spine :
    Think.allPhaseIds.length = preservedPhaseCount := by
  rfl

theorem preservedCenterIndex_is_30 :
    preservedCenterIndex = 30 := by
  rfl

end Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected
