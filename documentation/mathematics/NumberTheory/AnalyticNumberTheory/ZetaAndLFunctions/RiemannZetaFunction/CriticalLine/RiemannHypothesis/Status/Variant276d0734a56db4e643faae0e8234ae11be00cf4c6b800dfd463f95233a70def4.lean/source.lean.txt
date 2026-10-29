/-!
# Folder.GrandChallenge.Status

Radiation role: research-boundary
BinaryMatrix spine: This module records grand-challenge status labels.
Ontology: grand_challenge_program
Pivot role: theorem-ladder
Zero typology: obstruction
Contract boundary: status-model
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge

inductive ChallengeBranch where
  | bsd
  | hodge
  | navierStokes
  | pVsNp
  | riemannHypothesis
  | yangMills
deriving DecidableEq, Repr

inductive ChallengeStatus where
  | definition
  | analogy
  | speculativeScaffold
  | contract
  | theoremTarget
  | toyModel
  | knownCase
  | functionFieldPrototype
  | literatureBackedTarget
  | formalVerificationPolicy
  | notClaimed
deriving DecidableEq, Repr

structure ChallengeMilestone where
  branch : ChallengeBranch
  status : ChallengeStatus
  label : String
  description : String

theorem theoremTarget_ne_notClaimed :
    ChallengeStatus.theoremTarget ≠ ChallengeStatus.notClaimed := by
  decide

theorem contract_ne_knownCase :
    ChallengeStatus.contract ≠ ChallengeStatus.knownCase := by
  decide

theorem analogy_ne_theoremTarget :
    ChallengeStatus.analogy ≠ ChallengeStatus.theoremTarget := by
  decide

theorem speculativeScaffold_ne_solution :
    ChallengeStatus.speculativeScaffold ≠ ChallengeStatus.knownCase := by
  decide

end GrandChallenge
end Folder

