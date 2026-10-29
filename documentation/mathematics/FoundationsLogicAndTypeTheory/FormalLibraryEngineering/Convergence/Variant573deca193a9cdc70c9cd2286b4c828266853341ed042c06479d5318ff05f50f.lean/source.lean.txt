-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeliveryEvent.Variant416520a9d526936840fe2f831e4a236afdb98b1c69f517217e250f62b0349320","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"416520a9d526936840fe2f831e4a236afdb98b1c69f517217e250f62b0349320","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.DeliveryEvent.Variant416520a9d526936840fe2f831e4a236afdb98b1c69f517217e250f62b0349320","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"416520a9d526936840fe2f831e4a236afdb98b1c69f517217e250f62b0349320","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/XYZ/Convergence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.XYZ.Transport
import Mathlib.Tactic

/-!
# Asynchronous convergence of admitted XYZ registers

This module models a discrete asynchronous execution.  A delivery updates one
host with the exact deterministic LWW merge from `Revision`; no fact about the
ordered traversal schedule alone is used as a fairness or delivery theorem.

The convergence theorem therefore exposes every operational premise it needs:
contract validity, the exact directed reachability computed by the ordered
route, a unique maximal admitted value, eventual delivery, quiescence,
admission of delivered and initial values, revision and payload preservation,
and rejection of live equal-revision conflicts.  These are finite transport
hypotheses only and confer no analytic authority.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeliveryEvent.Variant416520a9d526936840fe2f831e4a236afdb98b1c69f517217e250f62b0349320

public section

namespace Surface.Core.XYZ

/-! ## Global state and asynchronous events -/

abbrev GlobalRegisters (Host : Type*) :=
  Host → LwwRegister xyzFormatV1

@[surface_novel]
structure DeliveryEvent (Host : Type*) where
  target : Host
  payload : RevisionedXYZ xyzFormatV1
deriving DecidableEq, Repr

/-- Apply at most one delivery.  The target register is updated by the same
fixed `LwwRegister.apply`/`merge` function used by proposal commit. -/
@[expose] def applyEvent {Host : Type*} [DecidableEq Host]
    (state : GlobalRegisters Host) :
    Option (DeliveryEvent Host) → GlobalRegisters Host
  | none => state
  | some event => Function.update state event.target
      (LwwRegister.apply (state event.target) event.payload)

/-- A discrete execution is honest only when `stateAt` is generated from its
declared events by `applyEvent`. -/
@[surface_novel]
structure Execution (Host : Type*) [DecidableEq Host] where
  initial : GlobalRegisters Host
  eventAt : Nat → Option (DeliveryEvent Host)
  stateAt : Nat → GlobalRegisters Host
  stateZero : stateAt 0 = initial
  stateSucc : ∀ n, stateAt (n + 1) = applyEvent (stateAt n) (eventAt n)

/-! ## The unique latest admitted value -/

/-- `latest` occurs in the admitted finite list, bounds every admitted
revision, is the only admitted value at that maximal revision, and the entire
admitted list contains no equal-revision payload conflict (including below the
maximum). -/
@[expose] def UniqueMaximalAdmitted
    (admitted : List (RevisionedXYZ xyzFormatV1))
    (latest : RevisionedXYZ xyzFormatV1) : Prop :=
  latest ∈ admitted ∧
    (∀ candidate ∈ admitted,
      candidate.revision ≤ latest.revision) ∧
    (∀ candidate ∈ admitted,
      candidate.revision = latest.revision → candidate = latest) ∧
    (∀ left ∈ admitted, ∀ right ∈ admitted,
      left.revision = right.revision → left.value = right.value)

@[surface_novel, surface_published]
theorem latestAdmitted_unique
    {admitted : List (RevisionedXYZ xyzFormatV1)}
    {left right : RevisionedXYZ xyzFormatV1}
    (leftLatest : UniqueMaximalAdmitted admitted left)
    (rightLatest : UniqueMaximalAdmitted admitted right) :
    left = right := by
  have leftLeRight : left.revision ≤ right.revision :=
    rightLatest.2.1 left leftLatest.1
  have rightLeLeft : right.revision ≤ left.revision :=
    leftLatest.2.1 right rightLatest.1
  have revisionEquality : right.revision = left.revision :=
    le_antisymm rightLeLeft leftLeRight
  exact (leftLatest.2.2.1 right rightLatest.1 revisionEquality).symm

/-! ## Explicit execution contracts -/

@[expose] def InitialRegistersAdmitted {Host : Type*} [DecidableEq Host]
    (execution : Execution Host)
    (admitted : List (RevisionedXYZ xyzFormatV1)) : Prop :=
  ∀ host current,
    (execution.initial host).current = some current → current ∈ admitted

@[expose] def EveryDeliveryAdmitted {Host : Type*} [DecidableEq Host]
    (execution : Execution Host)
    (admitted : List (RevisionedXYZ xyzFormatV1)) : Prop :=
  ∀ n event, execution.eventAt n = some event → event.payload ∈ admitted

/-- Each reachable host receives the exact maximal admitted value after both
its admission time and the supplied quiescence boundary. -/
@[expose] def EventuallyDeliversLatest
    {Host EdgeId : Type*}
    [Fintype Host] [DecidableEq Host]
    [Fintype EdgeId] [DecidableEq EdgeId]
    (contract : RoutingContract Host EdgeId) (start : Host)
    (execution : Execution Host)
    (latest : RevisionedXYZ xyzFormatV1)
    (admittedAt quiescenceTime : Nat) : Prop :=
  ∀ host, contract.Reachable start host →
    ∃ n, admittedAt ≤ n ∧ quiescenceTime ≤ n ∧
      execution.eventAt n = some ⟨host, latest⟩

/-- After `quiescenceTime`, no delivered admitted value is strictly newer
than `latest`.  The separate admission hypothesis prevents an unclassified
delivery from bypassing this condition. -/
@[expose] def QuiescentAboveLatest {Host : Type*} [DecidableEq Host]
    (execution : Execution Host)
    (admitted : List (RevisionedXYZ xyzFormatV1))
    (latest : RevisionedXYZ xyzFormatV1)
    (quiescenceTime : Nat) : Prop :=
  ∀ n, quiescenceTime ≤ n → ∀ event,
    execution.eventAt n = some event → event.payload ∈ admitted →
      ¬ latest.revision < event.payload.revision

/-- Transport never rewrites the revision of the admitted maximal value. -/
@[expose] def DeliveriesPreserveLatestRevision
    {Host : Type*} [DecidableEq Host]
    (execution : Execution Host)
    (latest : RevisionedXYZ xyzFormatV1) : Prop :=
  ∀ n event, execution.eventAt n = some event →
    event.payload.revision = latest.revision

/-- A delivery at the maximal revision carries exactly the maximal XYZ
payload; it cannot smuggle an equal-revision alternative. -/
@[expose] def MaximalDeliveriesPreservePayload
    {Host : Type*} [DecidableEq Host]
    (execution : Execution Host)
    (latest : RevisionedXYZ xyzFormatV1) : Prop :=
  ∀ n event, execution.eventAt n = some event →
    event.payload.revision = latest.revision →
      event.payload.value = latest.value

/-- No event presented to a live register as an equal-revision update carries
a conflicting payload.  This is the execution-level form of the verifier's
equal-revision conflict rejection rule. -/
@[expose] def NoAcceptedEqualRevisionConflict
    {Host : Type*} [DecidableEq Host]
    (execution : Execution Host) : Prop :=
  ∀ n event current,
    execution.eventAt n = some event →
    (execution.stateAt n event.target).current = some current →
    event.payload.revision = current.revision →
      event.payload.value = current.value

/-- The explicit deterministic-merge premise accepted by the convergence
theorem.  `fixedMerge_is_deterministic` supplies it for the canonical merge. -/
@[expose] def DeterministicMerge : Prop :=
  ∀ (register : LwwRegister xyzFormatV1)
      (incoming : RevisionedXYZ xyzFormatV1)
      (left right : MergeDecision xyzFormatV1),
    merge register incoming = left → merge register incoming = right →
      left = right

@[surface_novel, surface_published]
theorem fixedMerge_is_deterministic : DeterministicMerge := by
  intro register incoming left right leftResult rightResult
  exact merge_deterministic register incoming leftResult rightResult

/-! ## Register and execution lemmas -/

private def RevisionBounded
    (latest : RevisionedXYZ xyzFormatV1)
    (register : LwwRegister xyzFormatV1) : Prop :=
  ∀ current, register.current = some current →
    current.revision ≤ latest.revision

private theorem revisionedXYZ_eq
    {left right : RevisionedXYZ xyzFormatV1}
    (revisionEquality : left.revision = right.revision)
    (valueEquality : left.value = right.value) : left = right := by
  cases left
  cases right
  simp_all

private theorem apply_preserves_revisionBounded
    (register : LwwRegister xyzFormatV1)
    (incoming latest : RevisionedXYZ xyzFormatV1)
    (bounded : RevisionBounded latest register)
    (revisionPreserved : incoming.revision = latest.revision) :
    RevisionBounded latest (LwwRegister.apply register incoming) := by
  intro current currentEquation
  cases register with
  | mk current? =>
      cases current? with
      | none =>
          simp [LwwRegister.apply, merge, MergeDecision.result] at currentEquation
          subst current
          exact le_of_eq revisionPreserved
      | some existing =>
          have existingBound : existing.revision ≤ latest.revision :=
            bounded existing rfl
          have resultEquality :
              (merge ⟨some existing⟩ incoming).result = current := by
            exact Option.some.inj currentEquation
          simp only [merge] at resultEquality
          split at resultEquality
          · simp only [MergeDecision.result] at resultEquality
            subst current
            exact existingBound
          · split at resultEquality
            · split at resultEquality <;>
                simp only [MergeDecision.result] at resultEquality <;>
                subst current <;> exact existingBound
            · simp only [MergeDecision.result] at resultEquality
              subst current
              exact le_of_eq revisionPreserved

private theorem execution_revisions_bounded
    {Host : Type*} [DecidableEq Host]
    (execution : Execution Host)
    (latest : RevisionedXYZ xyzFormatV1)
    (initialBounded : ∀ host, RevisionBounded latest (execution.initial host))
    (revisionPreservation : DeliveriesPreserveLatestRevision execution latest) :
    ∀ n host, RevisionBounded latest (execution.stateAt n host) := by
  intro n
  induction n with
  | zero =>
      intro host
      rw [execution.stateZero]
      exact initialBounded host
  | succ n inductionHypothesis =>
      intro host
      rw [execution.stateSucc n]
      cases eventEquation : execution.eventAt n with
      | none =>
          simpa [applyEvent] using inductionHypothesis host
      | some event =>
          by_cases targetEquality : event.target = host
          · subst host
            simp only [applyEvent]
            rw [Function.update_self]
            apply apply_preserves_revisionBounded
            · exact inductionHypothesis event.target
            · exact revisionPreservation n event eventEquation
          · simp only [applyEvent]
            rw [Function.update_of_ne (Ne.symm targetEquality)]
            exact inductionHypothesis host

private theorem apply_latest_of_bounded_and_compatible
    (register : LwwRegister xyzFormatV1)
    (latest : RevisionedXYZ xyzFormatV1)
    (bounded : RevisionBounded latest register)
    (equalRevisionCompatible : ∀ current,
      register.current = some current →
      latest.revision = current.revision →
      latest.value = current.value) :
    (LwwRegister.apply register latest).current = some latest := by
  cases register with
  | mk current? =>
      cases current? with
      | none => simp [LwwRegister.apply, merge, MergeDecision.result]
      | some current =>
          have currentBound : current.revision ≤ latest.revision :=
            bounded current rfl
          have notStale : ¬ latest.revision < current.revision :=
            not_lt_of_ge currentBound
          by_cases sameRevision : latest.revision = current.revision
          · have sameValue : latest.value = current.value :=
              equalRevisionCompatible current rfl sameRevision
            have same : latest = current :=
              revisionedXYZ_eq sameRevision sameValue
            subst current
            simp [LwwRegister.apply, merge, MergeDecision.result]
          · simp [LwwRegister.apply, merge, notStale, sameRevision,
              MergeDecision.result]

private theorem delivered_latest_is_installed
    {Host : Type*} [DecidableEq Host]
    (execution : Execution Host)
    (latest : RevisionedXYZ xyzFormatV1)
    (noEqualConflict : NoAcceptedEqualRevisionConflict execution)
    {time : Nat} {host : Host}
    (bounded : RevisionBounded latest (execution.stateAt time host))
    (delivered : execution.eventAt time = some ⟨host, latest⟩) :
    (execution.stateAt (time + 1) host).current = some latest := by
  rw [execution.stateSucc time, delivered]
  simp only [applyEvent]
  rw [Function.update_self]
  apply apply_latest_of_bounded_and_compatible
  · exact bounded
  · intro current currentEquation sameRevision
    exact noEqualConflict time ⟨host, latest⟩ current delivered
      currentEquation sameRevision

private theorem installed_latest_stays_installed
    {Host : Type*} [DecidableEq Host]
    (execution : Execution Host)
    (latest : RevisionedXYZ xyzFormatV1)
    (revisionPreservation : DeliveriesPreserveLatestRevision execution latest)
    (payloadPreservation : MaximalDeliveriesPreservePayload execution latest)
    {base : Nat} {host : Host}
    (installed : (execution.stateAt base host).current = some latest) :
    ∀ n, base ≤ n →
      (execution.stateAt n host).current = some latest := by
  intro n baseLe
  induction n, baseLe using Nat.le_induction with
  | base => exact installed
  | succ n baseLe inductionHypothesis =>
      rw [execution.stateSucc n]
      cases eventEquation : execution.eventAt n with
      | none => simpa [applyEvent] using inductionHypothesis
      | some event =>
          have revisionEquality :=
            revisionPreservation n event eventEquation
          have valueEquality :=
            payloadPreservation n event eventEquation revisionEquality
          have payloadEquality : event.payload = latest :=
            revisionedXYZ_eq revisionEquality valueEquality
          by_cases targetEquality : event.target = host
          · subst host
            simp [applyEvent, payloadEquality, inductionHypothesis,
              LwwRegister.apply, merge, MergeDecision.result]
          · simp only [applyEvent]
            rw [Function.update_of_ne (Ne.symm targetEquality)]
            exact inductionHypothesis

private theorem finite_delivery_times_have_upper_bound
    {Host : Type*} [DecidableEq Host]
    (execution : Execution Host)
    (latest : RevisionedXYZ xyzFormatV1)
    (admittedAt quiescenceTime : Nat)
    (hosts : List Host)
    (eventual : ∀ host, host ∈ hosts →
      ∃ time, admittedAt ≤ time ∧ quiescenceTime ≤ time ∧
        execution.eventAt time = some ⟨host, latest⟩) :
    ∃ bound, ∀ host, host ∈ hosts →
      ∃ time, admittedAt ≤ time ∧ quiescenceTime ≤ time ∧
        execution.eventAt time = some ⟨host, latest⟩ ∧ time + 1 ≤ bound := by
  induction hosts with
  | nil =>
      exact ⟨0, by simp⟩
  | cons first rest inductionHypothesis =>
      obtain ⟨firstTime, admittedBeforeFirst, quiescentBeforeFirst,
        firstDelivered⟩ := eventual first (by simp)
      obtain ⟨restBound, restWitnesses⟩ := inductionHypothesis (by
        intro host member
        exact eventual host (by simp [member]))
      refine ⟨max (firstTime + 1) restBound, ?_⟩
      intro host member
      rcases List.mem_cons.mp member with rfl | restMember
      · exact ⟨firstTime, admittedBeforeFirst, quiescentBeforeFirst,
          firstDelivered, Nat.le_max_left _ _⟩
      · obtain ⟨time, admittedBefore, quiescentBefore, delivered,
          timeBound⟩ := restWitnesses host restMember
        exact ⟨time, admittedBefore, quiescentBefore, delivered,
          timeBound.trans (Nat.le_max_right _ _)⟩

/-! ## Eventual convergence -/

@[surface_novel, surface_published]
theorem eventual_convergence_to_latestAdmitted
    {Host EdgeId : Type*}
    [Fintype Host] [DecidableEq Host]
    [Fintype EdgeId] [DecidableEq EdgeId]
    (contract : RoutingContract Host EdgeId)
    (contractValid : contract.Valid)
    (start : Host)
    (admitted : List (RevisionedXYZ xyzFormatV1))
    (latest : RevisionedXYZ xyzFormatV1)
    (latestUnique : UniqueMaximalAdmitted admitted latest)
    (execution : Execution Host)
    (admittedAt quiescenceTime : Nat)
    (initialAdmitted : InitialRegistersAdmitted execution admitted)
    (deliveriesAdmitted : EveryDeliveryAdmitted execution admitted)
    (eventualDelivery : EventuallyDeliversLatest contract start execution latest
      admittedAt quiescenceTime)
    (quiescence : QuiescentAboveLatest execution admitted latest quiescenceTime)
    (deterministicMerge : DeterministicMerge)
    (revisionPreservation : DeliveriesPreserveLatestRevision execution latest)
    (payloadPreservation : MaximalDeliveriesPreservePayload execution latest)
    (noEqualConflict : NoAcceptedEqualRevisionConflict execution) :
    ∃ N, ∀ n ≥ N, ∀ host,
      host ∈ (contract.orderedRoute start).hosts →
        (execution.stateAt n host).current = some latest := by
  have exactReachable : ∀ host,
      host ∈ (contract.orderedRoute start).hosts ↔
        contract.Reachable start host :=
    RoutingContract.orderedRoute_reaches_exactly_reachable
      contract contractValid start
  have initialBounded : ∀ host,
      RevisionBounded latest (execution.initial host) := by
    intro host current currentEquation
    exact latestUnique.2.1 current
      (initialAdmitted host current currentEquation)
  have allStatesBounded : ∀ n host,
      RevisionBounded latest (execution.stateAt n host) :=
    execution_revisions_bounded execution latest initialBounded
      revisionPreservation
  have routeEventual : ∀ host,
      host ∈ (contract.orderedRoute start).hosts →
      ∃ time, admittedAt ≤ time ∧ quiescenceTime ≤ time ∧
        execution.eventAt time = some ⟨host, latest⟩ := by
    intro host member
    exact eventualDelivery host ((exactReachable host).mp member)
  obtain ⟨bound, deliveryWitness⟩ :=
    finite_delivery_times_have_upper_bound execution latest admittedAt
      quiescenceTime (contract.orderedRoute start).hosts routeEventual
  refine ⟨bound, ?_⟩
  intro n boundLe host hostMember
  obtain ⟨time, _admittedBefore, quiescentBefore, delivered,
    timeBound⟩ := deliveryWitness host hostMember
  have deliveryAdmitted : latest ∈ admitted :=
    deliveriesAdmitted time ⟨host, latest⟩ delivered
  have noHigherAtDelivery : ¬ latest.revision < latest.revision :=
    quiescence time quiescentBefore ⟨host, latest⟩ delivered
      deliveryAdmitted
  have mergeClassificationUnique :
      merge (execution.stateAt time host) latest =
        merge (execution.stateAt time host) latest :=
    deterministicMerge (execution.stateAt time host) latest _ _ rfl rfl
  have installedAtNext :
      (execution.stateAt (time + 1) host).current = some latest :=
    delivered_latest_is_installed execution latest noEqualConflict
      (allStatesBounded time host) delivered
  exact installed_latest_stays_installed execution latest revisionPreservation
    payloadPreservation installedAtNext n (timeBound.trans boundLe)

/-! ## Route payload preservation and the confluence boundary -/

@[expose] def RoutePayloadPreserving
    {Host EdgeId Payload : Type*}
    (transport : OrderedRoute Host EdgeId → Payload → Payload) : Prop :=
  ∀ route payload, transport route payload = payload

@[expose] def RoutePathIndependent
    {Host EdgeId Payload : Type*}
    (transport : OrderedRoute Host EdgeId → Payload → Payload) : Prop :=
  ∀ left right payload, transport left payload = transport right payload

@[surface_novel, surface_published]
theorem payload_preserving_routes_are_path_independent
    {Host EdgeId Payload : Type*}
    (transport : OrderedRoute Host EdgeId → Payload → Payload)
    (payloadPreserving : RoutePayloadPreserving transport) :
    RoutePathIndependent transport := by
  intro left right payload
  rw [payloadPreserving left payload, payloadPreserving right payload]

/-- A genuinely path-dependent edge-transforming transport cannot obtain the
same-value route convergence conclusion from this package.  A confluence (or
equivalent path-independence) proof must be supplied separately. -/
@[surface_novel, surface_published]
theorem edge_transforming_routes_require_confluence
    {Host EdgeId Payload : Type*}
    (transport : OrderedRoute Host EdgeId → Payload → Payload)
    (notConfluent : ¬ RoutePathIndependent transport) :
    ¬ RoutePayloadPreserving transport := by
  intro payloadPreserving
  exact notConfluent
    (payload_preserving_routes_are_path_independent transport payloadPreserving)

end Surface.Core.XYZ
