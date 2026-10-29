/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Logic.Locality.AnchoredCertificates
import GRWTSK.Logic.Certificates.BatchVerification

/-!
# admission of anchored replay evidence

The original globally local certificate archive and admission remain unchanged.
A distinct ledger retains that original archive and every effect/correction
record, and appends anchored replay records to a separate archive. Every
supplied replay record must match its exact declared reads and be freshly
replayable at the current snapshot before admission changes claim status.

Pending/issued coverage and prerequisites are checked with the original
accounting. Current targets follow from actual certificate replay. No effect,
operational grant, source authentication, or rights are supplied by admission.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.ReplayAdmissionModel

open ReplayEvidence

universe u v w x y z

/-- Anchored proof objects are separately typed from globally local archives. -/
structure ReplayArchivedClaim {Artifact : Type u} {Revision : Type v} {Claim : Type w}
    (Target : SourceSnapshot Artifact Revision → Claim → Prop) where
  claim : Claim
  certificate : ReplayCertificate Artifact Revision (fun snapshot ↦ Target snapshot claim)

/-- The original history remains literal data; replay evidence has its own archive.
Safety of this distinct type is `ReplaySafe`, rather than `RevisionSafe` of its base. -/
structure ReplayLedger {Artifact : Type u} {Revision : Type v} {Claim : Type w}
    {Effect : Type x} {Grant : Type y} {Surface : Type z}
    (policy : ControllerPolicy (SourceSnapshot Artifact Revision) Claim Effect Grant Surface) where
  base : RevisionLedger policy
  replayArchive : List (ReplayArchivedClaim policy.statement)

section Admission

variable {Artifact : Type u} {Revision : Type v} {Claim : Type w}
  {Effect : Type x} {Grant : Type y} {Surface : Type z}
  [DecidableEq Claim]

local notation "Policy" =>
  ControllerPolicy (SourceSnapshot Artifact Revision) Claim Effect Grant Surface

/-- Every appended object is checked, every admitted claim is represented, and
all prerequisites are old verified claims or independently proved batch claims. -/
structure ReplayAdmission (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : ReplayLedger policy) where
  claims : Finset Claim
  records : List (ReplayArchivedClaim policy.statement)
  pending_only : claims ⊆ ledger.base.pending
  supplied_claims : ∀ record ∈ records, record.claim ∈ claims
  current_evidence : ∀ record ∈ records,
    record.certificate.reads = schema.reads record.claim ∧
      record.certificate.Fresh ledger.base.snapshot
  coverage : ∀ claim ∈ claims, ∃ record ∈ records, record.claim = claim
  prerequisites : ∀ claim ∈ claims, ∀ prerequisite ∈ schema.dependencies claim,
    prerequisite ∈ ledger.base.verified ∪ claims

/-- Reuse starts with the original status and history, with no replay records invented. -/
def ReplayLedger.ofRevision {policy : Policy} (ledger : RevisionLedger policy) :
    ReplayLedger policy :=
  ⟨ledger, []⟩

/-- Only mathematical statuses and the separate replay archive change. -/
def ReplayLedger.admit (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : ReplayLedger policy) (admission : ReplayAdmission schema policy ledger) :
    ReplayLedger policy where
  base := {
    snapshot := ledger.base.snapshot
    pending := ledger.base.pending \ admission.claims
    verified := ledger.base.verified ∪ admission.claims
    issued := ledger.base.issued
    archive := ledger.base.archive
    receipts := ledger.base.receipts
    corrections := ledger.base.corrections }
  replayArchive := ledger.replayArchive ++ admission.records

/-- Each checked object is actually accepted at the unchanged current snapshot. -/
theorem supplied_replay_accepted (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : ReplayLedger policy) (admission : ReplayAdmission schema policy ledger)
    (record : ReplayArchivedClaim policy.statement) (supplied : record ∈ admission.records) :
    record.certificate.Accepted ledger.base.snapshot :=
  (record.certificate.accepted_iff_fresh _).mpr (admission.current_evidence record supplied).2

/-- No claim acquires verified status from a label or a dependency cycle alone. -/
theorem admitted_replay_target (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : ReplayLedger policy) (admission : ReplayAdmission schema policy ledger)
    (claim : Claim) (member : claim ∈ admission.claims) :
    policy.statement ledger.base.snapshot claim := by
  rcases admission.coverage claim member with ⟨record, supplied, claimEq⟩
  have target := record.certificate.current_target (admission.current_evidence record supplied).2
  simpa only [claimEq] using target

section Safety

variable [DecidableEq Revision] [Fintype Claim]

/-- The original accounting and history obligations hold; current evidence can
come from either the unchanged global archive or the distinct replay archive. -/
structure ReplaySafe (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : ReplayLedger policy) : Prop where
  pending_issued : ledger.base.pending ⊆ ledger.base.issued
  verified_issued : ledger.base.verified ⊆ ledger.base.issued
  issued_covered : ledger.base.issued ⊆ ledger.base.pending ∪ ledger.base.verified
  statuses_disjoint : Disjoint ledger.base.pending ledger.base.verified
  verified_dependencies : ∀ claim ∈ ledger.base.verified,
    ∀ prerequisite ∈ schema.dependencies claim, prerequisite ∈ ledger.base.verified
  verified_evidence : ∀ claim ∈ ledger.base.verified,
    (∃ record ∈ ledger.base.archive, record.claim = claim ∧
      record.certificate.reads = schema.reads claim ∧
        record.certificate.Accepted ledger.base.snapshot) ∨
    (∃ record ∈ ledger.replayArchive, record.claim = claim ∧
      record.certificate.reads = schema.reads claim ∧
        record.certificate.Accepted ledger.base.snapshot)
  receipts_historical : ∀ receipt ∈ ledger.base.receipts,
    ReceiptValid policy receipt.source receipt
  corrections_exact : ∀ record ∈ ledger.base.corrections,
    correctionAffected schema record.before record.after record.withdrawn = record.affected

/-- Existing globally certified evidence enters the distinct ledger without a weaker upgrade. -/
theorem replay_safe_of_revision (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (safe : RevisionSafe schema policy ledger) :
    ReplaySafe schema policy (ReplayLedger.ofRevision ledger) := by
  constructor
  · exact safe.pending_issued
  · exact safe.verified_issued
  · exact safe.issued_covered
  · exact safe.statuses_disjoint
  · exact safe.verified_dependencies
  · intro claim verified
    exact Or.inl (safe.verified_evidence claim verified)
  · exact safe.receipts_historical
  · exact safe.corrections_exact

/-- The resulting invariant is derived from old safety and checked anchored evidence. -/
theorem replay_admission_preserves_safe (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : ReplayLedger policy) (admission : ReplayAdmission schema policy ledger)
    (safe : ReplaySafe schema policy ledger) :
    ReplaySafe schema policy (ledger.admit schema policy admission) := by
  constructor
  · intro claim member
    exact safe.pending_issued (Finset.mem_sdiff.mp member).1
  · intro claim member
    rcases Finset.mem_union.mp member with old | added
    · exact safe.verified_issued old
    · exact safe.pending_issued (admission.pending_only added)
  · intro claim issued
    rcases Finset.mem_union.mp (safe.issued_covered issued) with pending | verified
    · by_cases admitted : claim ∈ admission.claims
      · exact Finset.mem_union_right _ (Finset.mem_union_right _ admitted)
      · exact Finset.mem_union_left _ (Finset.mem_sdiff.mpr ⟨pending, admitted⟩)
    · exact Finset.mem_union_right _ (Finset.mem_union_left _ verified)
  · apply Finset.disjoint_left.mpr
    intro claim pending verified
    have remaining := Finset.mem_sdiff.mp pending
    rcases Finset.mem_union.mp verified with old | added
    · exact Finset.disjoint_left.mp safe.statuses_disjoint remaining.1 old
    · exact remaining.2 added
  · intro claim verified prerequisite dependency
    rcases Finset.mem_union.mp verified with old | added
    · exact Finset.mem_union_left _ (safe.verified_dependencies claim old prerequisite dependency)
    · exact admission.prerequisites claim added prerequisite dependency
  · intro claim verified
    rcases Finset.mem_union.mp verified with old | added
    · rcases safe.verified_evidence claim old with legacy | replay
      · exact Or.inl legacy
      · rcases replay with ⟨record, archived, claimEq, readsEq, accepted⟩
        exact Or.inr ⟨record, List.mem_append_left _ archived, claimEq, readsEq, accepted⟩
    · rcases admission.coverage claim added with ⟨record, supplied, claimEq⟩
      have checked := admission.current_evidence record supplied
      refine Or.inr ⟨record, List.mem_append_right _ supplied, claimEq, ?_, ?_⟩
      · simpa only [claimEq] using checked.1
      · exact supplied_replay_accepted schema policy ledger admission record supplied
  · exact safe.receipts_historical
  · exact safe.corrections_exact

/-- Every verified claim has its exact target at the current source snapshot. -/
theorem replay_verified_current_target (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : ReplayLedger policy) (safe : ReplaySafe schema policy ledger)
    (claim : Claim) (verified : claim ∈ ledger.base.verified) :
    policy.statement ledger.base.snapshot claim := by
  rcases safe.verified_evidence claim verified with legacy | replay
  · rcases legacy with ⟨record, _, claimEq, _, accepted⟩
    have target := record.certificate.current_target accepted.1
    simpa only [claimEq] using target
  · rcases replay with ⟨record, _, claimEq, _, accepted⟩
    have target := record.certificate.current_target accepted.1
    simpa only [claimEq] using target

/-- Mathematical terminal evidence still supplies no operational authorization or rights. -/
theorem replay_verified_to_terminal (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : ReplayLedger policy) (safe : ReplaySafe schema policy ledger)
    (claim : Claim) (verified : claim ∈ ledger.base.verified) :
    TerminalCap ledger.base.snapshot (policy.statement ledger.base.snapshot claim) :=
  ⟨replay_verified_current_target schema policy ledger safe claim verified⟩

end Safety

/-- Both mathematical histories are retained; effect and correction histories are literal. -/
theorem replay_admission_histories (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : ReplayLedger policy) (admission : ReplayAdmission schema policy ledger) :
    (ledger.admit schema policy admission).base.archive = ledger.base.archive ∧
      (ledger.admit schema policy admission).replayArchive =
        ledger.replayArchive ++ admission.records ∧
      (ledger.admit schema policy admission).base.receipts = ledger.base.receipts ∧
      (ledger.admit schema policy admission).base.corrections = ledger.base.corrections :=
  ⟨rfl, rfl, rfl, rfl⟩

theorem replay_admission_archive_prefix (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : ReplayLedger policy) (admission : ReplayAdmission schema policy ledger) :
    ledger.replayArchive <+: (ledger.admit schema policy admission).replayArchive :=
  ⟨admission.records, rfl⟩

theorem replay_admission_source_issued_preserved (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : ReplayLedger policy)
    (admission : ReplayAdmission schema policy ledger) :
    (ledger.admit schema policy admission).base.snapshot = ledger.base.snapshot ∧
      (ledger.admit schema policy admission).base.issued = ledger.base.issued := ⟨rfl, rfl⟩

/-- Every previously pending claim remains pending or gets a proved current target. -/
theorem replay_admission_pending_accounted (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : ReplayLedger policy)
    (admission : ReplayAdmission schema policy ledger) (claim : Claim)
    (pending : claim ∈ ledger.base.pending) :
    claim ∈ (ledger.admit schema policy admission).base.pending ∨
      (claim ∈ (ledger.admit schema policy admission).base.verified ∧
        policy.statement ledger.base.snapshot claim) := by
  by_cases admitted : claim ∈ admission.claims
  · exact Or.inr ⟨Finset.mem_union_right _ admitted,
      admitted_replay_target schema policy ledger admission claim admitted⟩
  · exact Or.inl (Finset.mem_sdiff.mpr ⟨pending, admitted⟩)

/-- A false current target blocks admission even if the old recorded target held. -/
theorem false_target_blocks_replay_admission (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : ReplayLedger policy)
    (admission : ReplayAdmission schema policy ledger) (claim : Claim)
    (falseTarget : ¬ policy.statement ledger.base.snapshot claim) :
    claim ∉ admission.claims :=
  fun member ↦ falseTarget (admitted_replay_target schema policy ledger admission claim member)

/-- A supplied object with one changed declared read cannot form this admission. -/
theorem stale_supplied_record_blocks_admission (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : ReplayLedger policy)
    (admission : ReplayAdmission schema policy ledger)
    (record : ReplayArchivedClaim policy.statement) (supplied : record ∈ admission.records)
    (artifact : Artifact) (member : artifact ∈ record.certificate.reads)
    (changed : ledger.base.snapshot artifact ≠ record.certificate.recorded artifact) : False :=
  changed ((admission.current_evidence record supplied).2 artifact member)

end Admission

/-- The hostile anchored certificate cannot be inserted into the original archive
with its same declared footprint: that type independently requires global locality. -/
theorem original_archive_same_footprint_blocker : ¬ ∃ record :
    ArchivedClaim (fun snapshot : SourceSnapshot Bool Bool ↦
      fun _ : Unit ↦ AlternativeLocality.HostileFixture.target snapshot true),
      record.certificate.reads = ReplayEvidence.HostileFixture.replayQ.reads := by
  rintro ⟨record, reads⟩
  exact ReplayEvidence.HostileFixture.replayQ_has_no_global_certificate
    ⟨record.certificate, reads⟩

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ReplayAdmissionModel
