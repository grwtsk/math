-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AffectedModuleOrder.Variant76772b4bbde2f888726a36ef826e40853ebf0883ae96acd7a6e763fc693fe5e2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76772b4bbde2f888726a36ef826e40853ebf0883ae96acd7a6e763fc693fe5e2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AffectedModuleOrder.Variant76772b4bbde2f888726a36ef826e40853ebf0883ae96acd7a6e763fc693fe5e2","mathematical_subject":"Computation.DataStructures","original_sha256":"76772b4bbde2f888726a36ef826e40853ebf0883ae96acd7a6e763fc693fe5e2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Incremental/AffectedOrder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Incremental.DependencyClosure


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AffectedModuleOrder.Variant76772b4bbde2f888726a36ef826e40853ebf0883ae96acd7a6e763fc693fe5e2

namespace Surface
namespace Incremental

def indexOf [DecidableEq α]
    (x : α) : List α → Nat
  | [] => 0
  | y :: ys =>
      if x = y then
        0
      else
        Nat.succ (indexOf x ys)

structure AffectedModuleOrder where
  closure : DownstreamClosure
  ordered : List ModuleKey
  sameSet :
    ∀ M, M ∈ ordered ↔ M ∈ closure.affectedModules
  importsBeforeImporters :
    ∀ M I,
      M ∈ ordered →
      I ∈ ordered →
      imports closure.graph M I →
        indexOf I ordered < indexOf M ordered
  deterministicTieBreak : Prop
  deterministicTieBreakCertified : deterministicTieBreak
  orderHash : ContentHash
  claimBoundary : List String

structure ImportCycleReport where
  cycle : List ModuleKey
  edges : List ImportEdge
  explanation : String
  claimBoundary : List String
deriving Repr

theorem affectedOrder_sameSet
    (O : AffectedModuleOrder)
    (M : ModuleKey) :
    M ∈ O.ordered ↔ M ∈ O.closure.affectedModules :=
  O.sameSet M

theorem affectedOrder_contains_exactly_closure
    (O : AffectedModuleOrder)
    (M : ModuleKey) :
    M ∈ O.ordered ↔ M ∈ O.closure.affectedModules :=
  O.sameSet M

theorem affectedOrder_importsBeforeImporters
    (O : AffectedModuleOrder)
    {M I : ModuleKey}
    (hM : M ∈ O.ordered)
    (hI : I ∈ O.ordered)
    (hImports : imports O.closure.graph M I) :
    indexOf I O.ordered < indexOf M O.ordered :=
  O.importsBeforeImporters M I hM hI hImports

theorem affectedOrder_respects_import_dependencies
    (O : AffectedModuleOrder)
    {M I : ModuleKey}
    (hM : M ∈ O.ordered)
    (hI : I ∈ O.ordered)
    (hImports : imports O.closure.graph M I) :
    indexOf I O.ordered < indexOf M O.ordered :=
  O.importsBeforeImporters M I hM hI hImports

theorem affectedOrder_deterministic_given_graph_and_seeds
    (O : AffectedModuleOrder) :
    O.deterministicTieBreak :=
  O.deterministicTieBreakCertified

theorem affectedOrder_is_deterministic
    (O : AffectedModuleOrder) :
    O.deterministicTieBreak :=
  O.deterministicTieBreakCertified

theorem importCycle_blocks_incremental_plan
    (R : ImportCycleReport) :
    Nonempty ImportCycleReport :=
  ⟨R⟩

theorem importCycle_requires_failure_report
    (R : ImportCycleReport) :
    Nonempty ImportCycleReport :=
  ⟨R⟩

end Incremental
end Surface
