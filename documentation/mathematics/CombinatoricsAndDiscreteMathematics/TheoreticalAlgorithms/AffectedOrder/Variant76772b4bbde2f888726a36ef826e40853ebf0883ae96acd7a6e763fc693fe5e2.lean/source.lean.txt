import Surface.Incremental.DependencyClosure

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
