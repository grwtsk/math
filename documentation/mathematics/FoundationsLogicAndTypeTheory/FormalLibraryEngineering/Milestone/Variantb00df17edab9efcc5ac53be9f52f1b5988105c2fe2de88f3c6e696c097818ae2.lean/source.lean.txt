/-!
# Folder.CanonicalPath.Milestone

Radiation role: research-boundary
BinaryMatrix spine: This module classifies canonical-path milestones, not BinaryMatrix data.
Ontology: canonical.path
Pivot role: dual
Zero typology: l-function
Contract boundary: status-vocabulary
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

inductive MilestoneKind where
  | functionFieldPrototype
  | perfectFamily
  | determinantLinePropagation
  | familiesIndexPropagation
  | analyticContinuationMap
  | continuationQuasiIsomorphism
  | superconnectionTrace
  | categoricalTrace
  | crystallineRealization
  | prismaticRealization
  | spectralBoundaryCriterion
  | familiesIndexClass
  | analyticDerivedTransport
  | traceIdentity
  | positivitySelfAdjointness
  | spectralBoundaryAlignment
  | finalComposition
deriving DecidableEq, Repr

inductive MilestoneStatus where
  | definition
  | proved
  | fieldExposure
  | contract
  | theoremTarget
  | toyModel
  | functionFieldPrototype
  | literatureBackedTarget
  | externalWitness
  | notClaimed
deriving DecidableEq, Repr

structure Milestone where
  kind : MilestoneKind
  status : MilestoneStatus
  label : String
  description : String

theorem proved_ne_theoremTarget :
    MilestoneStatus.proved ≠ MilestoneStatus.theoremTarget := by
  decide

theorem theoremTarget_ne_proved :
    MilestoneStatus.theoremTarget ≠ MilestoneStatus.proved := by
  decide

theorem proved_ne_notClaimed :
    MilestoneStatus.proved ≠ MilestoneStatus.notClaimed := by
  decide

theorem contract_ne_proved :
    MilestoneStatus.contract ≠ MilestoneStatus.proved := by
  decide

end CanonicalPath
end Folder
