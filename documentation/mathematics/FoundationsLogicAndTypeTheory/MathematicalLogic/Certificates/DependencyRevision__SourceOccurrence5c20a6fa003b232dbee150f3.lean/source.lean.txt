/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.DynamicalSystems.TransitionSystems.GuardedFiniteBudget
import GRWTSK.Order.Closure.FiniteDependencyClosure
import GRWTSK.Logic.Locality.RevisionCertificates

/-!
# CCC revision correction and selective evidence withdrawal

The declared read sets and dependency graph are fixed for this model. A revision
correction seeds every claim with a changed read, plus any explicitly withdrawn
roots, then computes the exact graph closure. Affected verified claims become
pending; unaffected verified claims retain their current target proofs through
the archived certificates' semantic locality. No next-state safety premise is
used, and neither historical proofs nor historical receipts are erased.

Correction is evidence bookkeeping, not a consequential tool effect or an
admitted step of the immutable-source controller. Subsequent effects still need
the ordinary source-bound permission and rights checks at the new snapshot.
Actual snapshot authentication, dependency discovery, changes to the graph, and
alternate OR proof routes require separate implementation and source theorems.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap

universe u v w x y z

/-- A fixed declared proof route. Reads and dependency edges are separate data. -/
structure DependencySchema (Artifact : Type u) (Claim : Type w) where
  reads : Claim → Finset Artifact
  dependencies : Claim → Finset Claim

/-- Historical mathematical evidence retains its original snapshot and proof. -/
structure ArchivedClaim {Artifact : Type u} {Revision : Type v} {Claim : Type w}
    (Target : SourceSnapshot Artifact Revision → Claim → Prop) where
  claim : Claim
  certificate : RevisionCertificate Artifact Revision (fun snapshot ↦ Target snapshot claim)

/-- Each correction retains both snapshots and the declared withdrawal/closure data. -/
structure CorrectionRecord (Artifact : Type u) (Revision : Type v) (Claim : Type w) where
  before : SourceSnapshot Artifact Revision
  after : SourceSnapshot Artifact Revision
  withdrawn : Finset Claim
  affected : Finset Claim

/-- Current claim status and immutable mathematical/operational history. -/
structure RevisionLedger {Artifact : Type u} {Revision : Type v} {Claim : Type w}
    {Effect : Type x} {Grant : Type y} {Surface : Type z}
    (policy : ControllerPolicy (SourceSnapshot Artifact Revision) Claim Effect Grant Surface) where
  snapshot : SourceSnapshot Artifact Revision
  pending : Finset Claim
  verified : Finset Claim
  issued : Finset Claim
  archive : List (ArchivedClaim policy.statement)
  receipts : List (EffectReceipt (SourceSnapshot Artifact Revision) Effect Grant Surface)
  corrections : List (CorrectionRecord Artifact Revision Claim)

section Correction

variable {Artifact : Type u} {Revision : Type v} {Claim : Type w}
  {Effect : Type x} {Grant : Type y} {Surface : Type z}
  [DecidableEq Revision] [Fintype Claim] [DecidableEq Claim]

local notation "Snapshot" => SourceSnapshot Artifact Revision
local notation "Policy" =>
  ControllerPolicy (SourceSnapshot Artifact Revision) Claim Effect Grant Surface

/-- The directly changed claims are computed from their complete declared reads. -/
def directChanged (schema : DependencySchema Artifact Claim) (old current : Snapshot) :
    Finset Claim :=
  Finset.univ.filter (fun claim ↦
    ∃ artifact ∈ schema.reads claim, current artifact ≠ old artifact)

omit [DecidableEq Claim] in
@[simp]
theorem mem_directChanged (schema : DependencySchema Artifact Claim)
    (old current : Snapshot) (claim : Claim) :
    claim ∈ directChanged schema old current ↔
      ¬ SnapshotAgreesOn (schema.reads claim) old current := by
  simp [directChanged, SnapshotAgreesOn]

/-- Declared withdrawals add roots without asserting their theorems are false. -/
def correctionAffected (schema : DependencySchema Artifact Claim) (old current : Snapshot)
    (withdrawn : Finset Claim) : Finset Claim :=
  affectedClosure schema.dependencies (directChanged schema old current ∪ withdrawn)

theorem directChanged_subset_correctionAffected (schema : DependencySchema Artifact Claim)
    (old current : Snapshot) (withdrawn : Finset Claim) :
    directChanged schema old current ⊆ correctionAffected schema old current withdrawn :=
  Finset.subset_union_left.trans (seeds_subset_affectedClosure _ _)

/-- Exactly the transitive consumers of changed reads or withdrawn roots reopen. -/
theorem mem_correctionAffected_iff (schema : DependencySchema Artifact Claim)
    (old current : Snapshot) (withdrawn : Finset Claim) (claim : Claim) :
    claim ∈ correctionAffected schema old current withdrawn ↔
      ∃ root ∈ directChanged schema old current ∪ withdrawn,
        DependencyPath schema.dependencies claim root :=
  mem_affectedClosure_iff schema.dependencies _ claim

omit [DecidableEq Claim] in
@[simp]
theorem directChanged_self (schema : DependencySchema Artifact Claim) (snapshot : Snapshot) :
    directChanged schema snapshot snapshot = ∅ := by
  ext claim
  simp [directChanged]

@[simp]
theorem correctionAffected_self (schema : DependencySchema Artifact Claim) (snapshot : Snapshot) :
    correctionAffected schema snapshot snapshot ∅ = ∅ := by
  simp [correctionAffected, affectedClosure_empty]

/-- A surviving claim has actual equality on every declared read. -/
theorem unchanged_reads_of_unaffected (schema : DependencySchema Artifact Claim)
    (old current : Snapshot) (withdrawn : Finset Claim) (claim : Claim)
    (unaffected : claim ∉ correctionAffected schema old current withdrawn) :
    SnapshotAgreesOn (schema.reads claim) old current := by
  by_contra changed
  exact unaffected (directChanged_subset_correctionAffected schema old current withdrawn
    ((mem_directChanged schema old current claim).mpr changed))

/-- Safety concerns current accepted evidence and separately source-bound history.
The active route has no verified consumer with an unresolved prerequisite. -/
structure RevisionSafe (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) : Prop where
  pending_issued : ledger.pending ⊆ ledger.issued
  verified_issued : ledger.verified ⊆ ledger.issued
  issued_covered : ledger.issued ⊆ ledger.pending ∪ ledger.verified
  statuses_disjoint : Disjoint ledger.pending ledger.verified
  verified_dependencies : ∀ claim ∈ ledger.verified,
    ∀ prerequisite ∈ schema.dependencies claim, prerequisite ∈ ledger.verified
  verified_evidence : ∀ claim ∈ ledger.verified,
    ∃ record ∈ ledger.archive, record.claim = claim ∧
      record.certificate.reads = schema.reads claim ∧
        record.certificate.Accepted ledger.snapshot
  receipts_historical : ∀ receipt ∈ ledger.receipts,
    ReceiptValid policy receipt.source receipt
  corrections_exact : ∀ record ∈ ledger.corrections,
    correctionAffected schema record.before record.after record.withdrawn = record.affected

/-- Deterministic correction: re-open affected active evidence and retain all history. -/
def RevisionLedger.correct (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (current : Snapshot) (withdrawn : Finset Claim) :
    RevisionLedger policy where
  snapshot := current
  pending := ledger.pending ∪ (ledger.verified ∩
    correctionAffected schema ledger.snapshot current withdrawn)
  verified := ledger.verified \ correctionAffected schema ledger.snapshot current withdrawn
  issued := ledger.issued
  archive := ledger.archive
  receipts := ledger.receipts
  corrections := ledger.corrections ++ [{
    before := ledger.snapshot
    after := current
    withdrawn := withdrawn
    affected := correctionAffected schema ledger.snapshot current withdrawn }]

/-- Rechecking without changes preserves statuses while recording the recheck. -/
theorem correction_same_snapshot_status (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : RevisionLedger policy) :
    (ledger.correct schema policy ledger.snapshot ∅).pending = ledger.pending ∧
      (ledger.correct schema policy ledger.snapshot ∅).verified = ledger.verified := by
  simp [RevisionLedger.correct]

/-- Every correction appends its exact before/after record; earlier events survive. -/
theorem correction_records_append (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : RevisionLedger policy) (current : Snapshot)
    (withdrawn : Finset Claim) :
    (ledger.correct schema policy current withdrawn).corrections =
      ledger.corrections ++ [{
        before := ledger.snapshot
        after := current
        withdrawn := withdrawn
        affected := correctionAffected schema ledger.snapshot current withdrawn }] := rfl

/-- Old records are retained literally, including their old proof payloads. -/
theorem correction_archive_preserved (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : RevisionLedger policy) (current : Snapshot)
    (withdrawn : Finset Claim) :
    (ledger.correct schema policy current withdrawn).archive = ledger.archive := rfl

theorem correction_receipts_preserved (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : RevisionLedger policy) (current : Snapshot)
    (withdrawn : Finset Claim) :
    (ledger.correct schema policy current withdrawn).receipts = ledger.receipts := rfl

theorem correction_issued_preserved (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : RevisionLedger policy) (current : Snapshot)
    (withdrawn : Finset Claim) :
    (ledger.correct schema policy current withdrawn).issued = ledger.issued := rfl

@[simp]
theorem correction_verified_iff (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : RevisionLedger policy) (current : Snapshot)
    (withdrawn : Finset Claim) (claim : Claim) :
    claim ∈ (ledger.correct schema policy current withdrawn).verified ↔
      claim ∈ ledger.verified ∧
        claim ∉ correctionAffected schema ledger.snapshot current withdrawn := by
  simp [RevisionLedger.correct]

/-- Affected verified claims are pending, with their archived proofs still present. -/
theorem affected_verified_reopened (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : RevisionLedger policy) (current : Snapshot)
    (withdrawn : Finset Claim) (claim : Claim) (verified : claim ∈ ledger.verified)
    (affected : claim ∈ correctionAffected schema ledger.snapshot current withdrawn) :
    claim ∈ (ledger.correct schema policy current withdrawn).pending ∧
      claim ∉ (ledger.correct schema policy current withdrawn).verified := by
  constructor
  · exact Finset.mem_union_right _ (Finset.mem_inter.mpr ⟨verified, affected⟩)
  · simp [RevisionLedger.correct, affected]

/-- Source-correction safety is derived from exact closure and semantic locality. -/
theorem correction_preserves_safe (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : RevisionLedger policy) (current : Snapshot)
    (withdrawn : Finset Claim) (safe : RevisionSafe schema policy ledger) :
    RevisionSafe schema policy (ledger.correct schema policy current withdrawn) := by
  constructor
  · intro claim member
    rcases Finset.mem_union.mp member with pending | reopened
    · exact safe.pending_issued pending
    · exact safe.verified_issued (Finset.mem_inter.mp reopened).1
  · intro claim member
    exact safe.verified_issued (Finset.mem_sdiff.mp member).1
  · intro claim issued
    rcases Finset.mem_union.mp (safe.issued_covered issued) with pending | verified
    · exact Finset.mem_union_left _ (Finset.mem_union_left _ pending)
    · by_cases affected : claim ∈ correctionAffected schema ledger.snapshot current withdrawn
      · exact Finset.mem_union_left _
          (Finset.mem_union_right _ (Finset.mem_inter.mpr ⟨verified, affected⟩))
      · exact Finset.mem_union_right _ (Finset.mem_sdiff.mpr ⟨verified, affected⟩)
  · apply Finset.disjoint_left.mpr
    intro claim pending verified
    have retained := Finset.mem_sdiff.mp verified
    rcases Finset.mem_union.mp pending with oldPending | reopened
    · exact Finset.disjoint_left.mp safe.statuses_disjoint oldPending retained.1
    · exact retained.2 (Finset.mem_inter.mp reopened).2
  · intro claim verified prerequisite dependency
    have retained := Finset.mem_sdiff.mp verified
    refine Finset.mem_sdiff.mpr ⟨safe.verified_dependencies claim retained.1
      prerequisite dependency, ?_⟩
    intro affected
    exact retained.2 (affectedClosure_closed schema.dependencies
      (directChanged schema ledger.snapshot current ∪ withdrawn)
      claim prerequisite dependency affected)
  · intro claim verified
    have retained := Finset.mem_sdiff.mp verified
    rcases safe.verified_evidence claim retained.1 with
      ⟨record, archived, claimEq, readsEq, accepted⟩
    refine ⟨record, archived, claimEq, readsEq, ?_⟩
    have agreement : SnapshotAgreesOn record.certificate.reads ledger.snapshot current := by
      rw [readsEq]
      exact unchanged_reads_of_unaffected schema ledger.snapshot current withdrawn claim retained.2
    exact record.certificate.fresh_accepts (snapshot_agrees_trans accepted.1 agreement)
  · exact safe.receipts_historical
  · intro record member
    rcases List.mem_append.mp member with old | added
    · exact safe.corrections_exact record old
    · have same : record = {
          before := ledger.snapshot
          after := current
          withdrawn := withdrawn
          affected := correctionAffected schema ledger.snapshot current withdrawn } := by
        simpa only [List.mem_singleton] using added
      subst record
      rfl

/-- Surviving evidence proves the exact target at the current snapshot. -/
theorem revision_verified_to_terminal (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : RevisionLedger policy) (safe : RevisionSafe schema policy ledger)
    (claim : Claim) (verified : claim ∈ ledger.verified) :
    TerminalCap ledger.snapshot (policy.statement ledger.snapshot claim) := by
  rcases safe.verified_evidence claim verified with ⟨record, _, claimEq, _, accepted⟩
  have target := record.certificate.current_target accepted.1
  exact ⟨by simpa only [claimEq] using target⟩

/-- New effects must be valid for the current snapshot; history alone is insufficient. -/
def CurrentReceiptValid (policy : Policy) (current : Snapshot)
    (receipt : EffectReceipt Snapshot Effect Grant Surface) : Prop :=
  receipt.source = current ∧ ReceiptValid policy current receipt

omit [DecidableEq Revision] [Fintype Claim] [DecidableEq Claim] in
theorem changed_snapshot_receipt_not_current (policy : Policy) (current : Snapshot)
    (receipt : EffectReceipt Snapshot Effect Grant Surface) (artifact : Artifact)
    (changed : receipt.source artifact ≠ current artifact) :
    ¬ CurrentReceiptValid policy current receipt := by
  intro valid
  exact changed (congrFun valid.1 artifact)

end Correction

end GRWTSK.ProofHorizon.CorkscrewChamberCap
