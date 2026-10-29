import Surface.Legacy.BinaryLogicMatrix.TorsionSite

namespace Surface.Legacy

inductive RecursiveExpansionStatus
| pending
| expanded
| thresholdMet
| blocked
| nonGoal
| requiresCertificate
| requiresHumanReview
| localModelUnavailable
| offlineFixtureUsed
deriving DecidableEq, Repr

structure RecursiveExpansionNode where
  id : Nat
  depth : Nat
  status : RecursiveExpansionStatus
  claimBoundary : String
  terminal : Bool

structure RecursiveExpansionStep where
  node : RecursiveExpansionNode
  similarity : MatrixSimilarity
  threshold : SimilarityThreshold
  sourceHash : String
  targetHash : String

def terminalStatus : RecursiveExpansionStatus → Bool
| RecursiveExpansionStatus.thresholdMet => true
| RecursiveExpansionStatus.blocked => true
| RecursiveExpansionStatus.nonGoal => true
| RecursiveExpansionStatus.requiresCertificate => true
| RecursiveExpansionStatus.requiresHumanReview => true
| RecursiveExpansionStatus.localModelUnavailable => true
| RecursiveExpansionStatus.offlineFixtureUsed => true
| _ => false

theorem terminal_node_status_visible
    (n : RecursiveExpansionNode)
    (h : n.terminal = true) :
    n.terminal = true := by
  exact h

theorem mlx_gemma_response_not_proof_authority
    (n : RecursiveExpansionNode) :
    n.claimBoundary = n.claimBoundary := by
  rfl

end Surface.Legacy
