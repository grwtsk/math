import MathDiscovery.Oracle.Naming.Cohomology

/-! # Typed Oracle and model naming proposals -/

namespace MathDiscovery.Oracle.Naming

open MathDiscovery

structure AtomNameIR where
  schema : String
  atomId : SourceAtomId
  name : AtomName
  action : String
  domain : Array String
  supportIds : Array String
  nonclaims : Array String
  irDigest : Digest
  deriving DecidableEq, Repr

structure OracleCandidate where
  candidateId : String
  value : AtomNameIR
  supportStrengths : Array (String × Rat)
  negativeEvidence : Array String
  collisionFree : Bool
  scoreTuple : Array String
  authority : NamingAuthority := .deterministicOracle
  deriving Repr

structure ModelProposal where
  selectedCandidateId : String
  value : AtomNameIR
  modelDigest : Digest
  tokenizerDigest : Digest
  templateDigest : Digest
  authority : NamingAuthority := .modelProposed
  deriving Repr

def ProposalAgreement (oracle : OracleCandidate) (model : ModelProposal) : Prop :=
  model.selectedCandidateId = oracle.candidateId ∧ model.value = oracle.value

end MathDiscovery.Oracle.Naming
