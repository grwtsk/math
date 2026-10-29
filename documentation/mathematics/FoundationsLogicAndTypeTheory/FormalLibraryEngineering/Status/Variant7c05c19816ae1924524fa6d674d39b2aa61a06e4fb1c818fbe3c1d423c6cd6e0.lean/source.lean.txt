import Folder.GrandChallenge.Status

/-!
# Folder.Theorem.GrandChallenge.Status

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports grand-challenge status facts.
Ontology: proof.grand_challenge_status
Pivot role: theorem-ladder
Zero typology: obstruction
Contract boundary: theorem-wrapper
Composite stack role: grand-challenge
-/

namespace Folder
namespace Theorem
namespace GrandChallenge

theorem theoremTarget_ne_notClaimed :
    Folder.GrandChallenge.ChallengeStatus.theoremTarget ≠
      Folder.GrandChallenge.ChallengeStatus.notClaimed :=
  Folder.GrandChallenge.theoremTarget_ne_notClaimed

theorem contract_ne_knownCase :
    Folder.GrandChallenge.ChallengeStatus.contract ≠
      Folder.GrandChallenge.ChallengeStatus.knownCase :=
  Folder.GrandChallenge.contract_ne_knownCase

theorem analogy_ne_theoremTarget :
    Folder.GrandChallenge.ChallengeStatus.analogy ≠
      Folder.GrandChallenge.ChallengeStatus.theoremTarget :=
  Folder.GrandChallenge.analogy_ne_theoremTarget

theorem speculativeScaffold_ne_solution :
    Folder.GrandChallenge.ChallengeStatus.speculativeScaffold ≠
      Folder.GrandChallenge.ChallengeStatus.knownCase :=
  Folder.GrandChallenge.speculativeScaffold_ne_solution

end GrandChallenge
end Theorem
end Folder

