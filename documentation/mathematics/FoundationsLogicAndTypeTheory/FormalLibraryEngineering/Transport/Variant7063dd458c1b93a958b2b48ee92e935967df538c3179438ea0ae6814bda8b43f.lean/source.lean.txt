module

public import Surface.Core.NetworkSurgery.Game
public import Surface.Core.Transport.Certificate

/-!
# Versioned network-surgery transport and theorem-task identity envelope

Transport metadata is finite identity/evidence.  The only way to expose an
arbitrary proposition remains an actual Lean proof term of that proposition.
-/

public section

namespace Surface.Core.NetworkSurgery

open Surface.Core.Transport

@[surface_novel]
structure NetworkSurgeryContractV1 where
  schemaVersion : Nat
  phaseMachineVersion : Nat
  bracketProjectionVersion : Nat
  boundaryLedgerVersion : Nat
  quantizationVersion : Nat
  operationLanguageVersion : Nat
  canonicalSerializationVersion : Nat
  contractHash : Hash256
deriving DecidableEq, Repr

@[expose] def NetworkSurgeryContractV1.Valid
    (contract : NetworkSurgeryContractV1) : Prop :=
  contract.schemaVersion = 1 ∧
    contract.phaseMachineVersion = 1 ∧
    contract.bracketProjectionVersion = 1 ∧
    contract.boundaryLedgerVersion = 1 ∧
    contract.quantizationVersion = 1 ∧
    contract.operationLanguageVersion = 1 ∧
    contract.canonicalSerializationVersion = 1 ∧
    contract.contractHash.Valid

@[surface_novel]
structure NetworkSurgeryPublication (Payload : Type*) where
  contractHash : Hash256
  sourceSnapshotHash : Hash256
  sessionId : SessionId
  state : Revisioned (NetworkSurgeryGameState Payload)
deriving DecidableEq, Repr

@[surface_novel]
structure TransportedTheoremTask where
  declarationIdentity : DeclarationId
  statementHash : Hash256
  normalizedTypeHash : Hash256
  sourceSnapshotHash : Hash256
  transportRevision : Revision
deriving DecidableEq, Repr

@[expose] def transportTheoremTask
    (task : TransportedTheoremTask) : TransportedTheoremTask := task

@[surface_novel, surface_published]
theorem transportedTheoremTask_preserves_identity
    (task : TransportedTheoremTask) :
    (transportTheoremTask task).declarationIdentity = task.declarationIdentity :=
  rfl

@[surface_novel, surface_published]
theorem transportedTheoremTask_preserves_statementHash
    (task : TransportedTheoremTask) :
    (transportTheoremTask task).statementHash = task.statementHash :=
  rfl

@[surface_novel]
structure TransportedCheckedReference where
  sourceTask : TransportedTheoremTask
  targetTask : TransportedTheoremTask
  sourceDeclarationIdentity : DeclarationId
  targetDeclarationIdentity : DeclarationId
deriving DecidableEq, Repr

@[expose] def TransportedCheckedReference.Valid
    (reference : TransportedCheckedReference) : Prop :=
  reference.sourceDeclarationIdentity = reference.sourceTask.declarationIdentity ∧
    reference.targetDeclarationIdentity = reference.targetTask.declarationIdentity ∧
    reference.sourceTask.declarationIdentity = reference.targetTask.declarationIdentity

@[surface_novel, surface_published]
theorem transportedCheckedReference_requires_same_task
    (reference : TransportedCheckedReference) (valid : reference.Valid) :
    reference.sourceTask.declarationIdentity =
      reference.targetTask.declarationIdentity :=
  valid.2.2

@[expose] def TransportedTheoremTask.MetadataProves
    (_task : TransportedTheoremTask) (_proposition : Prop) : Prop := False

@[surface_novel, surface_published]
theorem networkSurgeryMetadata_does_not_prove_task
    (task : TransportedTheoremTask) (proposition : Prop) :
    ¬ task.MetadataProves proposition := by
  simp [TransportedTheoremTask.MetadataProves]

@[surface_novel]
inductive NetworkSurgeryConformanceLevel where
  | goldenVectors
  | propertyTests
  | finiteEnumeration
  | certificateChecked
  | universallyVerified
deriving DecidableEq, Repr, BEq

@[surface_novel]
inductive NetworkSurgeryCertificateAuthority where
  | finiteBoundEnvironmentEvidence
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure RustNetworkSurgeryCertificate where
  contractHash : Hash256
  sourceSnapshotHash : Hash256
  inputProposalHash : Hash256
  rustPreparedProposalHash : Hash256
  leanPreparedProposalHash : Hash256
  assurance : NetworkSurgeryConformanceLevel
  authority : NetworkSurgeryCertificateAuthority
deriving DecidableEq, Repr

@[expose] def RustNetworkSurgeryConforms
    (certificate : RustNetworkSurgeryCertificate)
    (inputProposalHash : Hash256) : Prop :=
  certificate.contractHash.Valid ∧
    certificate.sourceSnapshotHash.Valid ∧
    certificate.inputProposalHash = inputProposalHash ∧
    certificate.rustPreparedProposalHash = certificate.leanPreparedProposalHash ∧
    certificate.assurance = .certificateChecked ∧
    certificate.authority = .finiteBoundEnvironmentEvidence

@[expose] def rustPreparedMove
    (certificate : RustNetworkSurgeryCertificate) (_input : Hash256) : Hash256 :=
  certificate.rustPreparedProposalHash

@[expose] def leanPreparedMove
    (certificate : RustNetworkSurgeryCertificate) (_input : Hash256) : Hash256 :=
  certificate.leanPreparedProposalHash

@[surface_novel, surface_published]
theorem rustNetworkSurgery_eq_leanNetworkSurgery
    (certificate : RustNetworkSurgeryCertificate) (input : Hash256)
    (conforms : RustNetworkSurgeryConforms certificate input) :
    rustPreparedMove certificate input = leanPreparedMove certificate input :=
  conforms.2.2.2.1

end Surface.Core.NetworkSurgery
