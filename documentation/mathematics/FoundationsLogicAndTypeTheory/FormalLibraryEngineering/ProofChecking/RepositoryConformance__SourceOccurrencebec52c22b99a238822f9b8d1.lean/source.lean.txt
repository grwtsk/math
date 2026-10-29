/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Logic.Certificates.ArtifactDerivation

/-!
# Repository conformance status

Contract outcomes and execution states are separate.  A mandatory gate is
accepted only after completed execution with an `accept` outcome.  The four
cumulative profiles below are predicates on an explicit status vector; the
definitions do not claim that this repository currently satisfies them.

`ReconstructionEvidence` and `FormalCorrectnessEvidence` bind the two distinct
guarantees to an explicit snapshot and finite scope.  They remain mathematical
interfaces: concrete repository discovery, executable adapters, and current
receipts must be supplied separately.
-/

namespace GRWTSK.Logic.ProofChecking

open GRWTSK.Logic.Inference

universe u v w

/-- Execution state is operational and cannot itself establish a contract. -/
inductive ExecutionState where
  | completed
  | notRun
  | busy
  | timeout
  | error
  | interrupted
  deriving DecidableEq, Repr

/-- A gate records mathematical/checker outcome separately from execution. -/
structure GateStatus where
  outcome : Option DecisionResult
  execution : ExecutionState
  deriving DecidableEq, Repr

/-- Exact acceptance requires both completed execution and `accept`. -/
def GateStatus.Accepted (status : GateStatus) : Prop :=
  status.execution = .completed ∧ status.outcome = some .accept

theorem GateStatus.not_accepted_of_incomplete (status : GateStatus)
    (incomplete : status.execution ≠ .completed) : ¬ status.Accepted := by
  intro accepted
  exact incomplete accepted.1

/-- Exact byte-reconstruction evidence for a declared finite artifact scope at
one snapshot.  `reconstructionResult` is a mathematical result function, not a
claim that an external generator has run. -/
structure ReconstructionEvidence {Snapshot : Type u} (snapshot : Snapshot)
    (Artifact : Type v) [DecidableEq Artifact] where
  artifactScope : Finset Artifact
  expectedBytes : Snapshot → Artifact → ByteArray
  reconstructionResult : Snapshot → Artifact → Option ByteArray
  exact : ∀ artifact ∈ artifactScope,
    reconstructionResult snapshot artifact = some (expectedBytes snapshot artifact)

/-- Formal-correctness evidence for a declared finite claim scope at one
snapshot.  Contract outcomes are kept separate from operational execution
states; a concrete runner still needs a source-bound adapter and receipt. -/
structure FormalCorrectnessEvidence {Snapshot : Type u} (snapshot : Snapshot)
    (Claim : Type v) [DecidableEq Claim] where
  claimScope : Finset Claim
  meaning : Snapshot → Claim → Prop
  checkedOutcome : Snapshot → Claim → DecisionResult
  acceptanceSound : ∀ claim ∈ claimScope,
    checkedOutcome snapshot claim = .accept → meaning snapshot claim
  coverage : ∀ claim ∈ claimScope, checkedOutcome snapshot claim = .accept

/-- Sound checked outcomes and coverage establish every claim in the declared
scope, without making a byte-reconstruction claim. -/
theorem FormalCorrectnessEvidence.meaning_of_coverage
    {Snapshot : Type u} {snapshot : Snapshot} {Claim : Type v}
    [DecidableEq Claim]
    (evidence : FormalCorrectnessEvidence snapshot Claim) :
    ∀ claim ∈ evidence.claimScope, evidence.meaning snapshot claim := by
  intro claim member
  exact evidence.acceptanceSound claim member (evidence.coverage claim member)

/-- Availability records whether each independently typed evidence object has
actually been supplied for the same snapshot. -/
structure EvidenceAvailability {Snapshot : Type u} (snapshot : Snapshot)
    (Artifact : Type v) (Claim : Type w)
    [DecidableEq Artifact] [DecidableEq Claim] where
  reconstruction : Option (ReconstructionEvidence snapshot Artifact)
  formalCorrectness : Option (FormalCorrectnessEvidence snapshot Claim)

def EvidenceAvailability.HasReconstruction
    {Snapshot : Type u} {snapshot : Snapshot}
    {Artifact : Type v} {Claim : Type w}
    [DecidableEq Artifact] [DecidableEq Claim]
    (evidence : EvidenceAvailability snapshot Artifact Claim) : Prop :=
  ∃ reconstruction, evidence.reconstruction = some reconstruction

def EvidenceAvailability.HasFormalCorrectness
    {Snapshot : Type u} {snapshot : Snapshot}
    {Artifact : Type v} {Claim : Type w}
    [DecidableEq Artifact] [DecidableEq Claim]
    (evidence : EvidenceAvailability snapshot Artifact Claim) : Prop :=
  ∃ formalCorrectness, evidence.formalCorrectness = some formalCorrectness

/-- Direct counterexamples to both possible evidence-presence implications:
supplying reconstruction evidence does not supply formal-correctness evidence,
and supplying formal-correctness evidence does not supply reconstruction
evidence. -/
theorem EvidenceAvailability.dimensions_are_independent
    {Snapshot : Type u} {snapshot : Snapshot}
    {Artifact : Type v} {Claim : Type w}
    [DecidableEq Artifact] [DecidableEq Claim]
    (reconstruction : ReconstructionEvidence snapshot Artifact)
    (formalCorrectness : FormalCorrectnessEvidence snapshot Claim) :
    let reconstructionOnly : EvidenceAvailability snapshot Artifact Claim :=
      ⟨some reconstruction, none⟩
    let formalCorrectnessOnly : EvidenceAvailability snapshot Artifact Claim :=
      ⟨none, some formalCorrectness⟩
    (reconstructionOnly.HasReconstruction ∧
        ¬ reconstructionOnly.HasFormalCorrectness) ∧
      (formalCorrectnessOnly.HasFormalCorrectness ∧
        ¬ formalCorrectnessOnly.HasReconstruction) := by
  simp [EvidenceAvailability.HasReconstruction,
    EvidenceAvailability.HasFormalCorrectness]

/-- This is a compatibility status model.  Its free propositions are not
evidence records and acquire no authority merely by being set to `True`; a
concrete conformance claim must bind them to scoped, current evidence such as
the records above. -/
structure StatusVector where
  inventoryCoverage : Prop
  canonicalPlacement : Prop
  roleIsolation : Prop
  navigationSynchronized : Prop
  byteRestoration : Prop
  deterministicGeneration : Prop
  bindingCoverage : Prop
  contractPreservation : Prop
  kernelReplay : Prop
  axiomAudit : Prop
  checkerSoundness : Prop
  trustedStatementComparison : Prop
  independentCheckerCoverage : Prop
  documentationCorrespondence : Prop
  evidenceFreshness : Prop
  repeatability : Prop

/-- Complete scoped organization, without a reconstruction or proof claim. -/
def StatusVector.Organized (status : StatusVector) : Prop :=
  status.inventoryCoverage ∧ status.canonicalPlacement ∧ status.roleIsolation ∧
    status.navigationSynchronized

/-- Organization plus exact restoration and declared deterministic generation. -/
def StatusVector.Reconstructible (status : StatusVector) : Prop :=
  status.Organized ∧ status.byteRestoration ∧ status.deterministicGeneration ∧
    status.evidenceFreshness

/-- Reconstruction plus current formal-contract and proof evidence. -/
def StatusVector.FormallyChecked (status : StatusVector) : Prop :=
  status.Reconstructible ∧ status.bindingCoverage ∧ status.contractPreservation ∧
    status.kernelReplay ∧ status.axiomAudit ∧ status.checkerSoundness ∧
      status.documentationCorrespondence

/-- The strongest profile adds trusted statements, independent checking, and repeatability. -/
def StatusVector.IndependentlyValidated (status : StatusVector) : Prop :=
  status.FormallyChecked ∧ status.trustedStatementComparison ∧
    status.independentCheckerCoverage ∧ status.repeatability

theorem StatusVector.independentlyValidated_implies_formallyChecked
    (status : StatusVector) (accepted : status.IndependentlyValidated) :
    status.FormallyChecked := accepted.1

theorem StatusVector.formallyChecked_implies_reconstructible
    (status : StatusVector) (accepted : status.FormallyChecked) :
    status.Reconstructible := accepted.1

theorem StatusVector.reconstructible_implies_organized
    (status : StatusVector) (accepted : status.Reconstructible) :
    status.Organized := accepted.1

end GRWTSK.Logic.ProofChecking
