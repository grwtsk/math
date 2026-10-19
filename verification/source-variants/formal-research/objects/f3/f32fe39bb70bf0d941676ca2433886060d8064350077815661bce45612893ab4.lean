import CordTheory.ChangeClassification

/-!
# Reflective continuation

A continuation signal directs bounded candidate work.  It does not become
mutation authority, proof, truth, completeness, or the sole record of change.
-/

namespace Cord

inductive ProposalDisposition
  | accepted
  | rejected
  deriving DecidableEq, Repr, Inhabited

structure ReflectiveContinuationSignal where
  id : RecordId
  disposition : ProposalDisposition
  beforeSnapshot : OntologySnapshotId
  candidateOrAfterSnapshot : OntologySnapshotId
  comparisonProfile : Option ProfileId
  semanticClassification : Option RecordId
  topologyClassification : Option RecordId
  beforeIdeal : Option RecordId
  afterIdeal : Option RecordId
  beforeModelLocus : Option RecordId
  afterModelLocus : Option RecordId
  beforeOperationalTopology : Option RecordId
  afterOperationalTopology : Option RecordId
  qualityDelta : RecordId
  concernImpact : RecordId
  dependencyImpact : RecordId
  boundaryRecord : RecordId
  residualFrontier : RecordId
  actionableWork : Set RecordId
  residuals : Set ResidualId
  authorityState : IndependentStatus
  mutationAuthority : Bool
  receipt : ReceiptId

namespace ReflectiveContinuationSignal

/-- A signal is canonical, receipted, and explicitly nonauthoritative. -/
def WellFormed (s : ReflectiveContinuationSignal) : Prop :=
  s.id.value ≠ 0 ∧
  s.beforeSnapshot.value ≠ 0 ∧
  s.candidateOrAfterSnapshot.value ≠ 0 ∧
  s.qualityDelta.value ≠ 0 ∧
  s.concernImpact.value ≠ 0 ∧
  s.dependencyImpact.value ≠ 0 ∧
  s.boundaryRecord.value ≠ 0 ∧
  s.residualFrontier.value ≠ 0 ∧
  s.receipt.value ≠ 0 ∧
  s.mutationAuthority = false

@[simp] theorem wellFormed_not_authority
    (s : ReflectiveContinuationSignal) (h : s.WellFormed) :
    s.mutationAuthority = false := h.2.2.2.2.2.2.2.2.2

/-- No well-formed continuation signal authorizes itself. -/
theorem cannot_self_authorize
    (s : ReflectiveContinuationSignal) (h : s.WellFormed) :
    s.mutationAuthority ≠ true := by
  rw [wellFormed_not_authority s h]
  decide

end ReflectiveContinuationSignal

inductive ContinuationWorkKind
  | inspect
  | formalize
  | implement
  | test
  | validate
  | migrate
  | supplyEvidence
  | constructProof
  | classifyTopology
  | resolveConflict
  | reviseDocumentation
  | emitResidual
  deriving DecidableEq, Repr, Inhabited

structure ContinuationWorkItem where
  id : RecordId
  originatingSignal : RecordId
  kind : ContinuationWorkKind
  owningConcern : String
  affectedRecords : Set RecordId
  requiredInputs : Set RecordId
  expectedOutput : String
  authorityRequired : IndependentStatus
  proofStatusRequired : IndependentStatus
  validationRequired : IndependentStatus
  topologyRequirements : Set RecordId
  dependencyPredecessors : Set RecordId
  blockingResiduals : Set ResidualId
  completionPredicate : Prop
  finiteResourceBound : Nat

namespace ContinuationWorkItem

/-- A work item is actionable candidate work, not authorized mutation. -/
def ActionableCandidate (w : ContinuationWorkItem)
    (completed : Set RecordId) : Prop :=
  w.id.value ≠ 0 ∧
  w.originatingSignal.value ≠ 0 ∧
  w.owningConcern ≠ "" ∧
  w.dependencyPredecessors ⊆ completed ∧
  w.blockingResiduals = ∅ ∧
  0 < w.finiteResourceBound

end ContinuationWorkItem

structure ContinuationSelection where
  signal : RecordId
  selected : Option RecordId
  policy : RecordId
  candidateOnly : Bool
  receipt : ReceiptId

namespace ContinuationSelection

/-- A conforming selection remains candidate-only. -/
def WellFormed (s : ContinuationSelection) : Prop :=
  s.signal.value ≠ 0 ∧
  s.policy.value ≠ 0 ∧
  s.receipt.value ≠ 0 ∧
  s.candidateOnly = true

/-- Candidate selection is not mutation authority. -/
theorem selected_work_not_authority (s : ContinuationSelection)
    (h : s.WellFormed) : s.candidateOnly = true := h.2.2.2

end ContinuationSelection

/-- Deterministic selection from a caller-supplied, already ordered finite list. -/
def selectContinuationWork
    (signal : RecordId)
    (policy : RecordId)
    (receipt : ReceiptId)
    (orderedWork : List RecordId) : ContinuationSelection :=
  {
    signal := signal
    selected := orderedWork.head?
    policy := policy
    candidateOnly := true
    receipt := receipt
  }

inductive ContinuationTerminalStatus
  | closed
  | blockedByAuthority
  | blockedByMissingEvidence
  | blockedByMissingProof
  | blockedByResourceLimit
  | blockedByConflict
  | indeterminate
  deriving DecidableEq, Repr, Inhabited

structure ContinuationTerminationClaim where
  id : RecordId
  signal : RecordId
  terminalStatus : ContinuationTerminalStatus
  rankProfile : Option RecordId
  wellFoundedRank : Bool
  noEqualOrHigherRankIntroduced : Bool
  openWork : Set RecordId
  residuals : Set ResidualId
  receipt : ReceiptId

namespace ContinuationTerminationClaim

/-- Closed termination requires a well-founded finite rank and no open work. -/
def Valid (c : ContinuationTerminationClaim) : Prop :=
  c.id.value ≠ 0 ∧
  c.signal.value ≠ 0 ∧
  c.receipt.value ≠ 0 ∧
  (c.terminalStatus = .closed →
    c.rankProfile ≠ none ∧
    c.wellFoundedRank = true ∧
    c.noEqualOrHigherRankIntroduced = true ∧
    c.openWork = ∅)

theorem closed_has_wellFounded_rank (c : ContinuationTerminationClaim)
    (valid : c.Valid) (closed : c.terminalStatus = .closed) :
    c.rankProfile ≠ none ∧
    c.wellFoundedRank = true ∧
    c.noEqualOrHigherRankIntroduced = true ∧
    c.openWork = ∅ :=
  valid.2.2.2 closed

end ContinuationTerminationClaim

structure ChangeClosureRecord where
  id : RecordId
  change : RecordId
  classified : Bool
  impactClosed : Bool
  topologyAccounted : Bool
  authorityValid : Bool
  signalEmitted : Bool
  residuals : Set ResidualId
  receipt : ReceiptId

namespace ChangeClosureRecord

/-- The operative CORD closure law. -/
def Closed (c : ChangeClosureRecord) : Prop :=
  c.classified = true ∧
  c.impactClosed = true ∧
  c.topologyAccounted = true ∧
  c.authorityValid = true ∧
  c.signalEmitted = true ∧
  c.receipt.value ≠ 0

end ChangeClosureRecord

/-- Current reference implementation does not claim OI-4. -/
def currentOI4ConformanceClaimed : Bool := false

/-- Current reference implementation does not claim OI-5. -/
def currentOI5ConformanceClaimed : Bool := false

@[simp] theorem oi4_unclaimed : currentOI4ConformanceClaimed = false := rfl

@[simp] theorem oi5_unclaimed : currentOI5ConformanceClaimed = false := rfl

end Cord
