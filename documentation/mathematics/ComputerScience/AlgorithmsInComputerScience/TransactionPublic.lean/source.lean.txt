module

public import Surface.Refactor.Surgery.Verifier

/-!
# Pure journaled multi-file surgery transaction

This is the theorem-facing state machine for the native journal protocol.  It
models prepare, recheck, staging, deterministic rename progress, commit,
rollback, and recovery.  It deliberately performs no filesystem I/O.  A native
implementation must separately supply durable write/flush/rename observations.
-/

public section

namespace Surface.Refactor.Surgery

open Surface.Core.Transport Surface.Refactor.Syntax

@[surface_novel]
inductive SurgeryJournalState where
  | prepared
  | filesStaged
  | renaming
  | committed
  | rollbackStarted
  | rolledBack
  | manualRecoveryRequired
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure RepositoryFileModel where
  file : SourceFileIdentity
  fileHash : Hash256
  canonicalBytes : CanonicalBytes
deriving DecidableEq, Repr

@[surface_novel]
structure RepositorySourceModel where
  snapshotHash : Hash256
  repositoryRevision : Nat
  files : List RepositoryFileModel
deriving DecidableEq, Repr

@[surface_novel]
structure SurgeryJournalV1 where
  state : SurgeryJournalState
  proposalHash : Hash256
  reviewDigest : Hash256
  baseSnapshotHash : Hash256
  afterSnapshotHash : Hash256
  orderedRenameFiles : List SourceFileIdentity
  renamedFileCount : Nat
  stagedFilesFlushed : Bool
  journalFlushed : Bool
deriving DecidableEq, Repr

@[expose] def SurgeryJournalV1.Valid (journal : SurgeryJournalV1) : Prop :=
  journal.proposalHash.Valid ∧ journal.reviewDigest.Valid ∧
    journal.baseSnapshotHash.Valid ∧ journal.afterSnapshotHash.Valid ∧
    journal.orderedRenameFiles.Nodup ∧
    journal.renamedFileCount ≤ journal.orderedRenameFiles.length ∧
    (journal.state = .prepared → journal.renamedFileCount = 0) ∧
    (journal.state = .committed →
      journal.renamedFileCount = journal.orderedRenameFiles.length)

/-- An intent is admitted before any transaction or staging state exists. -/
@[surface_novel]
structure SurgeryTransactionIntentV1 where
  context : SurgeryAdmissionContextV1
  proposal : SurgeryProposalV1
  admission : proposal.Valid context
  admittedProposalHash : Hash256
  admittedProposalHashMatches : admittedProposalHash = proposal.proposalHash
  reviewDigest : Hash256
  orderedRenameFiles : List SourceFileIdentity
  stagedModel : RepositorySourceModel

@[surface_novel]
structure SurgeryTransactionV1 where
  context : SurgeryAdmissionContextV1
  proposal : SurgeryProposalV1
  admission : proposal.Valid context
  baseModel : RepositorySourceModel
  stagedModel : RepositorySourceModel
  journal : SurgeryJournalV1

@[surface_novel]
inductive SurgeryPrepareResult where
  | prepared (transaction : SurgeryTransactionV1)
  | rejected (code : SurgeryRejectionCode) (unchanged : RepositorySourceModel)

@[surface_novel]
inductive SurgeryTransactionStep where
  | advanced (transaction : SurgeryTransactionV1)
      (model : RepositorySourceModel)
  | committed (transaction : SurgeryTransactionV1)
      (model : RepositorySourceModel)
  | rejected (code : SurgeryRejectionCode)
      (transaction : SurgeryTransactionV1) (unchanged : RepositorySourceModel)
  | manualRecovery (transaction : SurgeryTransactionV1)
      (unchanged : RepositorySourceModel)

@[expose] def SurgeryTransactionStep.model :
    SurgeryTransactionStep → RepositorySourceModel
  | .advanced _ model => model
  | .committed _ model => model
  | .rejected _ _ unchanged => unchanged
  | .manualRecovery _ unchanged => unchanged

@[expose] def initialSurgeryJournal
    (intent : SurgeryTransactionIntentV1) : SurgeryJournalV1 where
  state := .prepared
  proposalHash := intent.admittedProposalHash
  reviewDigest := intent.reviewDigest
  baseSnapshotHash := intent.proposal.baseSourceSnapshotHash
  afterSnapshotHash := intent.proposal.expectedAfterRepositorySnapshotHash
  orderedRenameFiles := intent.orderedRenameFiles
  renamedFileCount := 0
  stagedFilesFlushed := false
  journalFlushed := false

/-- Prepare binds the exact live base and exact declared staged result. -/
@[expose] def prepareSurgeryTransaction
    (intent : SurgeryTransactionIntentV1) (live : RepositorySourceModel) :
    SurgeryPrepareResult :=
  if live.snapshotHash ≠ intent.proposal.baseSourceSnapshotHash then
    .rejected .transactionRace live
  else if live.repositoryRevision ≠ intent.proposal.baseRepositoryRevision then
    .rejected .transactionRace live
  else if intent.stagedModel.snapshotHash ≠
      intent.proposal.expectedAfterRepositorySnapshotHash then
    .rejected .compiledHashMismatch live
  else if intent.stagedModel.repositoryRevision ≠
      intent.proposal.proposalRevision then
    .rejected .compiledHashMismatch live
  else if intent.reviewDigest.Valid then
    .prepared {
      context := intent.context
      proposal := intent.proposal
      admission := intent.admission
      baseModel := live
      stagedModel := intent.stagedModel
      journal := initialSurgeryJournal intent }
  else
    .rejected .transactionRollback live

/-- Recheck is exact: any third-party change fails rather than being overwritten. -/
@[expose] def recheckSurgeryTransaction
    (transaction : SurgeryTransactionV1) (live : RepositorySourceModel) : Bool :=
  decide (live = transaction.baseModel) &&
    decide (live.snapshotHash = transaction.journal.baseSnapshotHash) &&
    decide (transaction.journal.proposalHash = transaction.proposal.proposalHash)

@[expose] def stageSurgeryFiles
    (transaction : SurgeryTransactionV1) (live : RepositorySourceModel) :
    SurgeryTransactionStep :=
  if transaction.journal.state ≠ .prepared then
    .rejected .transactionRollback transaction live
  else if !recheckSurgeryTransaction transaction live then
    .rejected .transactionRace transaction live
  else
    .advanced {
      transaction with
      journal := {
        transaction.journal with
        state := .filesStaged
        stagedFilesFlushed := true
        journalFlushed := true } } live

@[expose] def beginSurgeryRenaming
    (transaction : SurgeryTransactionV1) (live : RepositorySourceModel) :
    SurgeryTransactionStep :=
  if transaction.journal.state ≠ .filesStaged then
    .rejected .transactionRollback transaction live
  else if !recheckSurgeryTransaction transaction live then
    .rejected .transactionRace transaction live
  else
    .advanced {
      transaction with
      journal := { transaction.journal with state := .renaming } } live

/-- One journaled deterministic rename acknowledgement; source I/O is external. -/
@[expose] def recordSurgeryRename
    (transaction : SurgeryTransactionV1) (live : RepositorySourceModel) :
    SurgeryTransactionStep :=
  if transaction.journal.state ≠ .renaming then
    .rejected .transactionRollback transaction live
  else if transaction.journal.renamedFileCount ≥
      transaction.journal.orderedRenameFiles.length then
    .rejected .transactionRollback transaction live
  else
    .advanced {
      transaction with
      journal := {
        transaction.journal with
        renamedFileCount := transaction.journal.renamedFileCount + 1
        journalFlushed := true } } live

/-- Commit publishes only the complete staged model after a final exact recheck. -/
@[expose] def commitSurgeryTransaction
    (transaction : SurgeryTransactionV1) (live : RepositorySourceModel) :
    SurgeryTransactionStep :=
  if transaction.journal.state ≠ .renaming then
    .rejected .transactionRollback transaction live
  else if transaction.journal.renamedFileCount ≠
      transaction.journal.orderedRenameFiles.length then
    .rejected .transactionRollback transaction live
  else if !recheckSurgeryTransaction transaction live then
    .rejected .transactionRace transaction live
  else
    let committedTransaction := {
      transaction with
      journal := {
        transaction.journal with
        state := .committed
        journalFlushed := true } }
    .committed committedTransaction transaction.stagedModel

/--
Rollback restores the base only from an exact known base/after state.  Unknown
intermediate bytes represent a third-party race and require manual recovery.
-/
@[expose] def rollbackSurgeryTransaction
    (transaction : SurgeryTransactionV1) (live : RepositorySourceModel) :
    SurgeryTransactionStep :=
  if live = transaction.baseModel ∨ live = transaction.stagedModel then
    .advanced {
      transaction with
      journal := {
        transaction.journal with
        state := .rolledBack
        journalFlushed := true } } transaction.baseModel
  else
    .manualRecovery {
      transaction with
      journal := {
        transaction.journal with
        state := .manualRecoveryRequired
        journalFlushed := true } } live

/-- Startup recovery is state-directed and never guesses about unknown bytes. -/
@[expose] def recoverSurgeryTransaction
    (transaction : SurgeryTransactionV1) (live : RepositorySourceModel) :
    SurgeryTransactionStep :=
  match transaction.journal.state with
  | .committed =>
      if live = transaction.stagedModel then
        .committed transaction live
      else
        .manualRecovery {
          transaction with
          journal := {
            transaction.journal with state := .manualRecoveryRequired } } live
  | .rolledBack =>
      if live = transaction.baseModel then .advanced transaction live
      else .manualRecovery {
        transaction with
        journal := {
          transaction.journal with state := .manualRecoveryRequired } } live
  | .manualRecoveryRequired => .manualRecovery transaction live
  | .prepared | .filesStaged | .renaming | .rollbackStarted =>
      rollbackSurgeryTransaction {
        transaction with
        journal := { transaction.journal with state := .rollbackStarted } } live

@[surface_novel, surface_published]
theorem prepareSnapshotRace_leavesRepositoryUnchanged
    (intent : SurgeryTransactionIntentV1) (live : RepositorySourceModel)
    (raced : live.snapshotHash ≠ intent.proposal.baseSourceSnapshotHash) :
    prepareSurgeryTransaction intent live =
      .rejected .transactionRace live := by
  simp [prepareSurgeryTransaction, raced]

@[surface_novel, surface_published]
theorem prepareRevisionRace_leavesRepositoryUnchanged
    (intent : SurgeryTransactionIntentV1) (live : RepositorySourceModel)
    (raced : live.repositoryRevision ≠ intent.proposal.baseRepositoryRevision) :
    prepareSurgeryTransaction intent live =
      .rejected .transactionRace live := by
  by_cases snapshotRace :
      live.snapshotHash ≠ intent.proposal.baseSourceSnapshotHash
  · simp [prepareSurgeryTransaction, snapshotRace]
  · simp [prepareSurgeryTransaction, snapshotRace, raced]

@[surface_novel, surface_published]
theorem rejectedTransactionStep_leavesRepositoryUnchanged
    (transaction : SurgeryTransactionV1) (live : RepositorySourceModel)
    (step : SurgeryTransactionStep) (code : SurgeryRejectionCode)
    (rejected : step = .rejected code transaction live) :
    step.model = live := by
  rw [rejected]
  rfl

@[surface_novel, surface_published]
theorem thirdPartyRollbackRace_leavesRepositoryUnchanged
    (transaction : SurgeryTransactionV1) (live : RepositorySourceModel)
    (notBase : live ≠ transaction.baseModel)
    (notStaged : live ≠ transaction.stagedModel) :
    (rollbackSurgeryTransaction transaction live).model = live := by
  simp [rollbackSurgeryTransaction, notBase, notStaged,
    SurgeryTransactionStep.model]

end Surface.Refactor.Surgery
