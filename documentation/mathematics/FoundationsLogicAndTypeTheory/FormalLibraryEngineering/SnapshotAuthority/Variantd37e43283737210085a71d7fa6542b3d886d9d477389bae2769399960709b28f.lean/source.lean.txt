import Mathematics.Core.SemanticIdentity

/-!
# Committed projection-snapshot authority

A projection snapshot is immutable navigation evidence.  Its status is derived
only by replaying the event chain reachable from the committed authority head.
Prepared objects and losing compare-and-swap branches are provenance, not
authority.

The capability `VerifiedActiveSnapshot` has a private constructor and this
module intentionally exports no minting function.  Runtime code may obtain
such a capability only from the independent committed-ledger verifier.  In
particular, callers cannot choose their own certificate predicate and then
activate a snapshot.
-/

namespace Mathematics.Projection

inductive SnapshotStatus
  | candidate
  | active
  | revokedStale
  | superseded
  deriving DecidableEq, Repr

/-- Frozen snapshot content.  Effective status is deliberately absent. -/
structure ProjectionSnapshot where
  snapshotId : ObjectAddress
  parentSnapshotId : Option ObjectAddress
  architectureDigest : Digest
  scopeDigest : Digest
  dependencyDigest : Digest
  obligationDigest : Digest
  environmentDigest : Digest
  policyDigest : Digest
  routeRegistryDigest : Digest
  creationDigest : Digest

inductive SnapshotEventKind
  | createCandidate
  | activate
  | revokeStale
  | supersede
  deriving DecidableEq, Repr

/-- One immutable event object in the append-only authority chain. -/
structure SnapshotAuthorityEvent where
  eventObjectId : ObjectAddress
  predecessorEventId : Option ObjectAddress
  snapshotId : ObjectAddress
  sequence : Nat
  authorityEpoch : Nat
  kind : SnapshotEventKind
  eventDigest : Digest

/--
The only root whose reachable chain contributes status.  Objects not reachable
from `headEventId` are nonauthoritative preparations.
-/
structure CommittedSnapshotRoot where
  headEventId : ObjectAddress
  sequence : Nat
  authorityEpoch : Nat
  chainDigest : Digest
  chainDigest_valid : chainDigest.Valid

/-- Status transition admitted by committed-chain replay. -/
inductive SnapshotStatusTransition :
    SnapshotStatus → SnapshotStatus → Prop
  | create :
      SnapshotStatusTransition .candidate .candidate
  | activate :
      SnapshotStatusTransition .candidate .active
  | revokeCandidate :
      SnapshotStatusTransition .candidate .revokedStale
  | revokeActive :
      SnapshotStatusTransition .active .revokedStale
  | supersedeCandidate :
      SnapshotStatusTransition .candidate .superseded
  | supersedeActive :
      SnapshotStatusTransition .active .superseded

/--
The event kind and the status transition are one indexed fact.  A digest or a
status pair cannot be replayed under a different event kind.
-/
inductive SnapshotEventTransition :
    SnapshotEventKind → SnapshotStatus → SnapshotStatus → Prop
  | create :
      SnapshotEventTransition .createCandidate .candidate .candidate
  | activate :
      SnapshotEventTransition .activate .candidate .active
  | revokeCandidate :
      SnapshotEventTransition .revokeStale .candidate .revokedStale
  | revokeActive :
      SnapshotEventTransition .revokeStale .active .revokedStale
  | supersedeCandidate :
      SnapshotEventTransition .supersede .candidate .superseded
  | supersedeActive :
      SnapshotEventTransition .supersede .active .superseded

namespace SnapshotEventTransition

/-- Forgetting the event label preserves the admitted status transition. -/
theorem statusTransition
    {kind : SnapshotEventKind}
    {before after : SnapshotStatus}
    (transition : SnapshotEventTransition kind before after) :
    SnapshotStatusTransition before after :=
  match transition with
  | .create => .create
  | .activate => .activate
  | .revokeCandidate => .revokeCandidate
  | .revokeActive => .revokeActive
  | .supersedeCandidate => .supersedeCandidate
  | .supersedeActive => .supersedeActive

/-- The only indexed transition whose codomain is active is activation. -/
theorem into_active_is_activation
    {kind : SnapshotEventKind}
    {before : SnapshotStatus}
    (transition : SnapshotEventTransition kind before .active) :
    kind = .activate := by
  cases transition
  rfl

/-- No event kind has a transition out of a revoked snapshot. -/
theorem revokedStale_terminal
    {kind : SnapshotEventKind}
    {after : SnapshotStatus} :
    ¬ SnapshotEventTransition kind .revokedStale after := by
  intro transition
  cases transition

/-- No event kind has a transition out of a superseded snapshot. -/
theorem superseded_terminal
    {kind : SnapshotEventKind}
    {after : SnapshotStatus} :
    ¬ SnapshotEventTransition kind .superseded after := by
  intro transition
  cases transition

end SnapshotEventTransition

/-- Revocation is terminal: committed replay has no reactivation edge. -/
theorem revokedStale_cannot_reactivate :
    ¬ SnapshotStatusTransition .revokedStale .active := by
  intro transition
  cases transition

/-- Supersession is likewise terminal for that snapshot identity. -/
theorem superseded_cannot_reactivate :
    ¬ SnapshotStatusTransition .superseded .active := by
  intro transition
  cases transition

/--
Recursive evidence for the unique event chain ending at `head`.

The constructors enforce exact predecessor linkage, successor sequence
numbering, monotone authority epochs, event-digest validity, and the indexed
event/status transition.  The chain starts only with a candidate-creation
event.  Consequently a revoked or superseded replay cannot be extended.
-/
inductive CommittedSnapshotReplay
    (snapshot : ProjectionSnapshot) :
    SnapshotAuthorityEvent → SnapshotStatus → Prop
  | create
      (event : SnapshotAuthorityEvent)
      (targetsSnapshot : event.snapshotId = snapshot.snapshotId)
      (eventKind : event.kind = .createCandidate)
      (hasNoPredecessor : event.predecessorEventId = none)
      (initialSequence : event.sequence = 0)
      (digestValid : event.eventDigest.Valid) :
      CommittedSnapshotReplay snapshot event .candidate
  | append
      {previous current : SnapshotAuthorityEvent}
      {before after : SnapshotStatus}
      (prior : CommittedSnapshotReplay snapshot previous before)
      (targetsSnapshot : current.snapshotId = snapshot.snapshotId)
      (predecessor :
        current.predecessorEventId = some previous.eventObjectId)
      (nextSequence : current.sequence = previous.sequence + 1)
      (epochMonotone : previous.authorityEpoch ≤ current.authorityEpoch)
      (digestValid : current.eventDigest.Valid)
      (transition :
        SnapshotEventTransition current.kind before after) :
      CommittedSnapshotReplay snapshot current after

namespace CommittedSnapshotReplay

/-- Every replayed head targets the frozen snapshot identity. -/
theorem targets_snapshot
    {snapshot : ProjectionSnapshot}
    {head : SnapshotAuthorityEvent}
    {status : SnapshotStatus}
    (replay : CommittedSnapshotReplay snapshot head status) :
    head.snapshotId = snapshot.snapshotId := by
  cases replay with
  | create _ targetsSnapshot _ _ _ _ =>
      exact targetsSnapshot
  | append _ targetsSnapshot _ _ _ _ _ =>
      exact targetsSnapshot

/-- A replay ending active necessarily ends at an activation event. -/
theorem active_head_is_activation
    {snapshot : ProjectionSnapshot}
    {head : SnapshotAuthorityEvent}
    (replay : CommittedSnapshotReplay snapshot head .active) :
    head.kind = .activate := by
  cases replay with
  | append _ _ _ _ _ _ transition =>
      exact transition.into_active_is_activation

/--
Monotone revocation follows from the indexed transition relation: there is no
well-typed next event after a replay reaches `revokedStale`.
-/
theorem revokedStale_has_no_extension
    {snapshot : ProjectionSnapshot}
    {head : SnapshotAuthorityEvent}
    (_replay : CommittedSnapshotReplay snapshot head .revokedStale)
    {next : SnapshotAuthorityEvent}
    {after : SnapshotStatus} :
    ¬ SnapshotEventTransition next.kind .revokedStale after :=
  SnapshotEventTransition.revokedStale_terminal

/-- Supersession has the same append-only terminality. -/
theorem superseded_has_no_extension
    {snapshot : ProjectionSnapshot}
    {head : SnapshotAuthorityEvent}
    (_replay : CommittedSnapshotReplay snapshot head .superseded)
    {next : SnapshotAuthorityEvent}
    {after : SnapshotStatus} :
    ¬ SnapshotEventTransition next.kind .superseded after :=
  SnapshotEventTransition.superseded_terminal

end CommittedSnapshotReplay

/--
Sealed result of independent committed-chain replay.  There is no public
constructor and no public activation function.
-/
structure VerifiedActiveSnapshot
    (snapshot : ProjectionSnapshot) : Type where
  private mk ::
  private committedRoot : CommittedSnapshotRoot
  private activationEvent : SnapshotAuthorityEvent
  private committedReplay :
    CommittedSnapshotReplay snapshot activationEvent .active
  private event_is_head :
    activationEvent.eventObjectId = committedRoot.headEventId
  private event_sequence_current :
    activationEvent.sequence = committedRoot.sequence
  private event_epoch_current :
    activationEvent.authorityEpoch = committedRoot.authorityEpoch

namespace VerifiedActiveSnapshot

/-- The committed authority head bound into this capability. -/
def head
    {snapshot : ProjectionSnapshot}
    (verified : VerifiedActiveSnapshot snapshot) : ObjectAddress :=
  verified.committedRoot.headEventId

/-- The committed sequence bound into this capability. -/
def sequence
    {snapshot : ProjectionSnapshot}
    (verified : VerifiedActiveSnapshot snapshot) : Nat :=
  verified.committedRoot.sequence

/-- The authority epoch bound into this capability. -/
def epoch
    {snapshot : ProjectionSnapshot}
    (verified : VerifiedActiveSnapshot snapshot) : Nat :=
  verified.committedRoot.authorityEpoch

/-- The exact committed activation event at the authority head. -/
def event
    {snapshot : ProjectionSnapshot}
    (verified : VerifiedActiveSnapshot snapshot) : SnapshotAuthorityEvent :=
  verified.activationEvent

/-- The recursive committed-chain proof bound into the active capability. -/
theorem replay
    {snapshot : ProjectionSnapshot}
    (verified : VerifiedActiveSnapshot snapshot) :
    CommittedSnapshotReplay snapshot (event verified) .active :=
  verified.committedReplay

/-- The head event targets this exact immutable snapshot. -/
theorem event_targets_snapshot
    {snapshot : ProjectionSnapshot}
    (verified : VerifiedActiveSnapshot snapshot) :
    (event verified).snapshotId = snapshot.snapshotId :=
  verified.committedReplay.targets_snapshot

/-- Active authority can only end at the indexed activation event. -/
theorem event_is_activation
    {snapshot : ProjectionSnapshot}
    (verified : VerifiedActiveSnapshot snapshot) :
    (event verified).kind = .activate :=
  verified.committedReplay.active_head_is_activation

end VerifiedActiveSnapshot

/--
A corrected architecture mints a distinct snapshot whose parent is explicit.
It never mutates a revoked or superseded snapshot in place.
-/
structure SnapshotSuccessor
    (predecessor successor : ProjectionSnapshot) : Prop where
  distinct :
    successor.snapshotId ≠ predecessor.snapshotId
  parent :
    successor.parentSnapshotId = some predecessor.snapshotId

/-- Historical validity is provenance and carries no active capability. -/
structure HistoricallyValidAtCreation
    (snapshot : ProjectionSnapshot) : Prop where
  architectureRecorded : snapshot.architectureDigest.Valid
  scopeRecorded : snapshot.scopeDigest.Valid
  dependenciesRecorded : snapshot.dependencyDigest.Valid
  obligationsRecorded : snapshot.obligationDigest.Valid
  environmentRecorded : snapshot.environmentDigest.Valid
  policyRecorded : snapshot.policyDigest.Valid
  registryRecorded : snapshot.routeRegistryDigest.Valid

end Mathematics.Projection
