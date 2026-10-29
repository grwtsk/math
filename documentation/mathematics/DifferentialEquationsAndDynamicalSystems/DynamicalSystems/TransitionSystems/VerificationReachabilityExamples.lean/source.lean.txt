/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.DynamicalSystems.TransitionSystems.VerificationReachability
import GRWTSK.Logic.Certificates.BatchVerificationExamples

/-!
# CCC mixed revision workflow fixtures

The concrete trajectory changes the source, withdraws the remaining independent
claim, and re-admits that claim through its actual current certificate and global
locality proof. Its safety, obligation retention, and history preservation use
the general workflow theorems. A forged final ledger marking a false current
target verified has no workflow witness; assigning its fields is insufficient.

These are finite mathematical bookkeeping fixtures. They do not authenticate
source files, execute effects, discover proof dependencies, or establish an
arithmetic cancellation theorem.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.RevisionWorkflowFixtures

open RevisionFixtures EvidenceAdmissionFixtures

/-- The first request changes the false artifact's revision. -/
def sourceCorrection : CorrectionRequest Bool ℕ (Fin 5) where
  current := revisedSnapshot
  withdrawn := ∅

/-- The second request withdraws claim 4 without changing the source again. -/
def independentWithdrawal : CorrectionRequest Bool ℕ (Fin 5) where
  current := revisedSnapshot
  withdrawn := {4}

/-- Each constructor is an actual update; the admission contains current proofs. -/
theorem concrete_workflow : RevisionWorkflow schema policy originalLedger readmittedLedger := by
  have corrected : RevisionWorkflow schema policy originalLedger correctedLedger :=
    .correct .refl sourceCorrection
  have withdrawn : RevisionWorkflow schema policy originalLedger withdrawnLedger :=
    .correct corrected independentWithdrawal
  exact .admit withdrawn fourAdmission

theorem final_ledger_safe : RevisionSafe schema policy readmittedLedger :=
  workflow_safe schema policy concrete_workflow original_ledger_safe

/-- The workflow does not create or discard issued claims or operational receipts. -/
theorem original_issued_and_receipts_preserved :
    readmittedLedger.issued = originalLedger.issued ∧
      readmittedLedger.receipts = originalLedger.receipts :=
  ⟨workflow_issued_preserved schema policy concrete_workflow,
    workflow_receipts_preserved schema policy concrete_workflow⟩

/-- Original mathematical and correction history survives as literal prefixes. -/
theorem original_history_prefixes :
    originalLedger.archive <+: readmittedLedger.archive ∧
      originalLedger.corrections <+: readmittedLedger.corrections :=
  ⟨workflow_archive_prefix schema policy concrete_workflow,
    workflow_correction_prefix schema policy concrete_workflow⟩

/-- The one new archived object is the actual current claim-4 certificate. -/
theorem final_archive_exact :
    readmittedLedger.archive = originalLedger.archive ++ [currentFourRecord] := rfl

def withdrawalRecord : CorrectionRecord Bool ℕ (Fin 5) where
  before := revisedSnapshot
  after := revisedSnapshot
  withdrawn := {4}
  affected := {4}

/-- Admission adds a certificate, while both actual correction events remain. -/
theorem final_correction_history_exact :
    readmittedLedger.corrections = [firstCorrection, withdrawalRecord] := by
  change (correctedLedger.correct schema policy revisedSnapshot {4}).corrections = _
  rw [correction_records_append, correction_event_retained]
  have snapshotEq : correctedLedger.snapshot = revisedSnapshot := rfl
  rw [snapshotEq, withdrawing_four_affected_exact]
  rfl

theorem final_correction_count : readmittedLedger.corrections.length = 2 := by
  rw [final_correction_history_exact]
  rfl

/-- Every original obligation is still represented by a current status. -/
theorem every_original_obligation_retained (claim : Fin 5) :
    claim ∈ readmittedLedger.pending ∨ claim ∈ readmittedLedger.verified :=
  workflow_obligation_retained schema policy concrete_workflow original_ledger_safe
    (Finset.mem_univ claim)

/-- The exact current target is obtained through the workflow safety consumer. -/
theorem workflow_returns_actual_target_four : target revisedSnapshot 4 := by
  exact workflow_verified_target schema policy concrete_workflow original_ledger_safe
    (claim := 4) (by rw [readmitted_statuses_exact.1]; simp)

/-- This assigns plausible status fields but invents current verification of
claim 2, whose exact revised target is false. -/
def forgedFinalLedger : RevisionLedger policy := {
  readmittedLedger with
  pending := readmittedLedger.pending.erase 2
  verified := insert 2 readmittedLedger.verified }

/-- Mere set coverage and disjoint status labels do not establish current proofs. -/
theorem forged_status_accounting_plausible :
    Disjoint forgedFinalLedger.pending forgedFinalLedger.verified ∧
      forgedFinalLedger.pending ∪ forgedFinalLedger.verified = forgedFinalLedger.issued := by
  change Disjoint (readmittedLedger.pending.erase 2) (insert 2 readmittedLedger.verified) ∧
    readmittedLedger.pending.erase 2 ∪ insert 2 readmittedLedger.verified = readmittedLedger.issued
  rw [readmitted_statuses_exact.1, readmitted_statuses_exact.2]
  change Disjoint (({0, 1, 2, 3} : Finset (Fin 5)).erase 2) {2, 4} ∧
    ({0, 1, 2, 3} : Finset (Fin 5)).erase 2 ∪ {2, 4} = Finset.univ
  decide

/-- A state assignment or unsupported claim label does not construct a workflow. -/
theorem forged_final_not_reachable :
    ¬ RevisionWorkflow schema policy originalLedger forgedFinalLedger := by
  intro workflow
  have currentTarget := workflow_verified_target schema policy workflow original_ledger_safe
    (claim := 2) (by simp [forgedFinalLedger])
  change target revisedSnapshot 2 at currentTarget
  exact changed_claim_keeps_historical_proof.2 currentTarget

end GRWTSK.ProofHorizon.CorkscrewChamberCap.RevisionWorkflowFixtures
