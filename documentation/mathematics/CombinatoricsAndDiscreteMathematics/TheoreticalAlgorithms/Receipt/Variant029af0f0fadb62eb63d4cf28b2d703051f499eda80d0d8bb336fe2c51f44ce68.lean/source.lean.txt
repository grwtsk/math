import Mathematics.GraphAccess.Core.Objective

/-!
# Conservative graph-access receipts

The nineteen unknown kinds are retained as typed data.  A receipt cannot
acquire commitment authority.
-/

namespace Mathematics.GraphAccess

inductive GraphAccessUnknownKind
  | graphFiniteness
  | neighborCompleteness
  | edgeAdmissibility
  | edgeCost
  | negativeCostDetection
  | heuristicAdmissibility
  | heuristicConsistency
  | portLabelCompleteness
  | universalSequenceClass
  | actionAlphabetCompleteness
  | discrepancyBound
  | invariantLaw
  | recamanActionMap
  | plateauDetection
  | completionDecision
  | primitiveObstruction
  | projectiveCompatibility
  | cylinderStageIndependence
  | resourceCompletion
deriving DecidableEq, Repr

inductive AccessDisposition
  | path
  | frontier
  | coverage
  | sample
  | proposal
  | obstruction
  | unknown
  | rejected
  | operationalFailure
deriving DecidableEq, Repr

inductive AccessExactness
  | exact
  | bounded
  | asymptotic
  | heuristic
  | unknown
deriving DecidableEq, Repr

structure GraphAccessReceipt where
  schemaVersion : String := "noeoueeue.graph-access-receipt.v1"
  requestRef : String
  selectedMode : TraversalMode
  graphCutRef : String
  disposition : AccessDisposition
  visitedStateRef : String
  frontierRef : String
  pathRef : Option String
  certificateRef : Option String
  obstructionRef : Option String
  exactness : AccessExactness
  residualRef : Option String
  unknowns : List GraphAccessUnknownKind
  replayStateRef : String
  cognitiveLoadRef : String
  reconstructionRef : String
  authoritativeEffect : Bool := false
  authoritativeEffect_exact : authoritativeEffect = false
deriving Repr

theorem receipt_unknowns_remain_explicit
    (receipt : GraphAccessReceipt) :
    ∃ unknowns, receipt.unknowns = unknowns :=
  ⟨receipt.unknowns, rfl⟩

end Mathematics.GraphAccess
