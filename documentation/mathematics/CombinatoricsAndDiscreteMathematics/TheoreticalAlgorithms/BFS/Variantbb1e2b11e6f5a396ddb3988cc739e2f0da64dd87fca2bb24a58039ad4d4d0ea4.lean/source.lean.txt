/-!
# Conditional BFS shortest-shell certificate

The theorem projects shortestness from explicit complete-shell and candidate
path evidence.  Concrete neighbor completeness remains external evidence.
-/

namespace Mathematics.GraphAccess

structure BfsPathCertificate (Node : Type u) where
  source : Node
  target : Node
  distance : Nat
  path : List Node
  shellComplete : Prop
  edgeValidity : Prop
  shellCompleteEvidence : shellComplete
  edgeValidityEvidence : edgeValidity
  candidateDistances : List Nat
  firstTargetShellShortest :
    ∀ candidateDistance,
      candidateDistance ∈ candidateDistances →
      distance ≤ candidateDistance

theorem bfs_first_target_shell_shortest
    {Node : Type u}
    (certificate : BfsPathCertificate Node)
    (candidateDistance : Nat)
    (candidateRegistered :
      candidateDistance ∈ certificate.candidateDistances) :
    certificate.distance ≤ candidateDistance :=
  certificate.firstTargetShellShortest
    candidateDistance
    candidateRegistered

end Mathematics.GraphAccess
