import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LiteralLengthBounds.Basic

/-!
Capture construction is interpreted over a finite frozen stream of observed
file events. Each event carries the exact bytes returned by its read, a path,
a complete opaque digest label, and a closed file kind. Construction derives
the record byte count from that literal payload and inserts the record and
payload at the same fresh key. A rejected construction returns no partial maps.
The event-to-filesystem interface (including traversal, read authenticity,
classification, digest computation, and concurrent mutation) remains external.
-/
namespace GRWTSK.CaptureConstruction
open PlanOutputBounds LiteralLengthBounds

structure Observation where
  path : String
  label : String
  kind : FileKind
  payload : Payload
  deriving DecidableEq

structure Captured where
  records : Files Record
  payloads : Files Payload
  deriving DecidableEq

def observationRecord (event : Observation) : Record :=
  recordFromPayload event.label event.kind event.payload

theorem observationRecord_exact (event : Observation) :
    observationRecord event = ⟨event.label, event.payload.length, event.kind⟩ := rfl

theorem observationRecord_bytes (event : Observation) :
    (observationRecord event).bytes = event.payload.length := rfl

theorem observationRecord_label (event : Observation) :
    (observationRecord event).label = event.label := rfl

theorem observationRecord_kind (event : Observation) :
    (observationRecord event).kind = event.kind := rfl

def acceptsPrefix (count total bytes : Nat) : Bool :=
  decide (count < PlanResources.maxFiles) && decide (bytes ≤ PlanResources.maxFileBytes) &&
    decide (total ≤ PlanResources.maxTotalBytes) &&
    decide (bytes ≤ PlanResources.maxTotalBytes - total)

theorem acceptsPrefix_exact (count total bytes : Nat) : acceptsPrefix count total bytes = true ↔
    count < PlanResources.maxFiles ∧ bytes ≤ PlanResources.maxFileBytes ∧
      total + bytes ≤ PlanResources.maxTotalBytes := by
  simp only [acceptsPrefix, Bool.and_eq_true, decide_eq_true_eq]
  omega

theorem acceptsPrefix_nonwrapping (count total bytes : Nat)
    (accepted : acceptsPrefix count total bytes = true) :
    total + bytes ≤ PlanResources.maxTotalBytes ∧ total + bytes < GreedyShards.u64Modulus := by
  have exact := (acceptsPrefix_exact _ _ _).mp accepted
  constructor
  · exact exact.2.2
  · have bound := exact.2.2
    simp only [PlanResources.maxTotalBytes, GreedyShards.u64Modulus] at *
    omega

def prepend (event : Observation) (captured : Captured) : Captured :=
  ⟨(event.path, observationRecord event) :: captured.records,
    (event.path, event.payload) :: captured.payloads⟩

def eventFold : List Observation → Captured → Captured
  | [], captured => captured
  | event :: rest, captured => eventFold rest (prepend event captured)

def build : List Observation → Nat → Nat → Captured → Option Captured
  | [], _, _, captured => some captured
  | event :: rest, count, total, captured =>
      if acceptsPrefix count total event.payload.length then
        match lookup event.path captured.records with
        | some _ => none
        | none => build rest (count + 1) (total + event.payload.length) (prepend event captured)
      else none

def construct (events : List Observation) : Option Captured :=
  if events.length ≤ PlanResources.maxFiles then build events 0 0 ⟨[], []⟩ else none

def observedBytes (events : List Observation) : Nat :=
  (events.map fun event => event.payload.length).sum

def coherent (captured : Captured) : Prop :=
  lower Record.bytes captured.records = lower List.length captured.payloads

theorem empty_coherent : coherent ⟨[], []⟩ := rfl

theorem prepend_coherent (event : Observation) (captured : Captured)
    (valid : coherent captured) : coherent (prepend event captured) := by
  simpa [coherent, prepend, lower, observationRecord_bytes] using
    congrArg (List.cons (event.path, event.payload.length)) valid

theorem eventFold_coherent (events : List Observation) (captured : Captured)
    (valid : coherent captured) : coherent (eventFold events captured) := by
  induction events generalizing captured with
  | nil => exact valid
  | cons event rest ih => exact ih _ (prepend_coherent _ _ valid)

theorem eventFold_record_keys (events : List Observation) (captured : Captured) :
    (eventFold events captured).records.map Prod.fst =
      (events.reverse.map Observation.path) ++ captured.records.map Prod.fst := by
  induction events generalizing captured with
  | nil => simp [eventFold]
  | cons event rest ih => simp [eventFold, ih, prepend, List.reverse_cons, List.map_append, List.append_assoc]

theorem eventFold_payload_keys (events : List Observation) (captured : Captured) :
    (eventFold events captured).payloads.map Prod.fst =
      (events.reverse.map Observation.path) ++ captured.payloads.map Prod.fst := by
  induction events generalizing captured with
  | nil => simp [eventFold]
  | cons event rest ih => simp [eventFold, ih, prepend, List.reverse_cons, List.map_append, List.append_assoc]

theorem eventFold_records (events : List Observation) (captured : Captured) :
    (eventFold events captured).records =
      (events.reverse.map fun event => (event.path, observationRecord event)) ++ captured.records := by
  induction events generalizing captured with
  | nil => simp [eventFold]
  | cons event rest ih => simp [eventFold, ih, prepend, List.reverse_cons, List.map_append, List.append_assoc]

theorem eventFold_payloads (events : List Observation) (captured : Captured) :
    (eventFold events captured).payloads =
      (events.reverse.map fun event => (event.path, event.payload)) ++ captured.payloads := by
  induction events generalizing captured with
  | nil => simp [eventFold]
  | cons event rest ih => simp [eventFold, ih, prepend, List.reverse_cons, List.map_append, List.append_assoc]

theorem eventFold_record_count (events : List Observation) (captured : Captured) :
    (eventFold events captured).records.length = events.length + captured.records.length := by
  simp [eventFold_records]

theorem eventFold_payload_count (events : List Observation) (captured : Captured) :
    (eventFold events captured).payloads.length = events.length + captured.payloads.length := by
  simp [eventFold_payloads]

theorem eventFold_record_bytes (events : List Observation) (captured : Captured) :
    ((eventFold events captured).records.map fun row => row.2.bytes).sum =
      observedBytes events + (captured.records.map fun row => row.2.bytes).sum := by
  simp [eventFold_records, List.map_append, List.sum_append, List.map_map,
    Function.comp_def, observationRecord_bytes, observedBytes]

theorem eventFold_payload_bytes (events : List Observation) (captured : Captured) :
    ((eventFold events captured).payloads.map fun row => row.2.length).sum =
      observedBytes events + (captured.payloads.map fun row => row.2.length).sum := by
  simp [eventFold_payloads, List.map_append, List.sum_append, List.map_map,
    Function.comp_def, observedBytes]

theorem lookup_none_iff_absent {Value : Type} (path : String) (files : Files Value) :
    lookup path files = none ↔ path ∉ files.map Prod.fst := by
  induction files with
  | nil => simp [lookup]
  | cons row rest ih =>
      by_cases same : path = row.1 <;> simp [lookup, same, ih]

theorem prepend_unique (event : Observation) (captured : Captured)
    (valid : unique captured.records) (fresh : lookup event.path captured.records = none) :
    unique (prepend event captured).records := by
  exact List.nodup_cons.mpr ⟨(lookup_none_iff_absent _ _).mp fresh, valid⟩

theorem build_success_exact (events : List Observation) (count total : Nat)
    (captured result : Captured) (success : build events count total captured = some result) :
    result = eventFold events captured := by
  induction events generalizing count total captured with
  | nil => simpa [build, eventFold] using success.symm
  | cons event rest ih =>
      simp only [build] at success
      by_cases accepted : acceptsPrefix count total event.payload.length = true
      · simp only [accepted, ↓reduceIte] at success
        cases found : lookup event.path captured.records with
        | some previous => simp [found] at success
        | none =>
            simp only [found] at success
            exact ih _ _ _ success
      · simp [accepted] at success

theorem build_success_unique (events : List Observation) (count total : Nat)
    (captured result : Captured) (valid : unique captured.records)
    (success : build events count total captured = some result) : unique result.records := by
  induction events generalizing count total captured with
  | nil => simp only [build, Option.some.injEq] at success; exact success ▸ valid
  | cons event rest ih =>
      simp only [build] at success
      by_cases accepted : acceptsPrefix count total event.payload.length = true
      · simp only [accepted, ↓reduceIte] at success
        cases found : lookup event.path captured.records with
        | some previous => simp [found] at success
        | none =>
            simp only [found] at success
            exact ih _ _ _ (prepend_unique _ _ valid found) success
      · simp [accepted] at success

theorem build_success_budgets (events : List Observation) (count total : Nat)
    (captured result : Captured) (countBound : count ≤ PlanResources.maxFiles)
    (totalBound : total ≤ PlanResources.maxTotalBytes)
    (success : build events count total captured = some result) :
    count + events.length ≤ PlanResources.maxFiles ∧
      total + observedBytes events ≤ PlanResources.maxTotalBytes := by
  induction events generalizing count total captured with
  | nil => simpa [observedBytes] using And.intro countBound totalBound
  | cons event rest ih =>
      simp only [build] at success
      by_cases accepted : acceptsPrefix count total event.payload.length = true
      · simp only [accepted, ↓reduceIte] at success
        cases found : lookup event.path captured.records with
        | some previous => simp [found] at success
        | none =>
            simp only [found] at success
            have gate := (acceptsPrefix_exact _ _ _).mp accepted
            have tail := ih (count + 1) (total + event.payload.length) _ (by omega) gate.2.2 success
            simp only [List.length_cons, observedBytes, List.map_cons, List.sum_cons] at *
            omega
      · simp [accepted] at success

theorem build_success_file_bounds (events : List Observation) (count total : Nat)
    (captured result : Captured) (success : build events count total captured = some result) :
    ∀ event ∈ events, event.payload.length ≤ PlanResources.maxFileBytes := by
  induction events generalizing count total captured with
  | nil => simp
  | cons event rest ih =>
      simp only [build] at success
      by_cases accepted : acceptsPrefix count total event.payload.length = true
      · simp only [accepted, ↓reduceIte] at success
        cases found : lookup event.path captured.records with
        | some previous => simp [found] at success
        | none =>
            simp only [found] at success
            intro item member
            rcases List.mem_cons.mp member with same | tail
            · subst item; exact ((acceptsPrefix_exact _ _ _).mp accepted).2.1
            · exact ih _ _ _ success item tail
      · simp [accepted] at success

theorem construct_success_build (events : List Observation) (result : Captured)
    (success : construct events = some result) : build events 0 0 ⟨[], []⟩ = some result := by
  unfold construct at success
  split at success
  · exact success
  · simp at success

theorem construct_success_exact (events : List Observation) (result : Captured)
    (success : construct events = some result) : result = eventFold events ⟨[], []⟩ :=
  build_success_exact _ _ _ _ _ (construct_success_build _ _ success)

theorem construct_success_records (events : List Observation) (result : Captured)
    (success : construct events = some result) : result.records =
      events.reverse.map fun event => (event.path, observationRecord event) := by
  rw [construct_success_exact _ _ success, eventFold_records]
  simp

theorem construct_success_payloads (events : List Observation) (result : Captured)
    (success : construct events = some result) : result.payloads =
      events.reverse.map fun event => (event.path, event.payload) := by
  rw [construct_success_exact _ _ success, eventFold_payloads]
  simp

theorem construct_success_coherent (events : List Observation) (result : Captured)
    (success : construct events = some result) : coherent result := by
  rw [construct_success_exact _ _ success]
  exact eventFold_coherent _ _ empty_coherent

theorem construct_success_unique (events : List Observation) (result : Captured)
    (success : construct events = some result) : unique result.records :=
  build_success_unique _ _ _ _ _ (by simp [unique]) (construct_success_build _ _ success)

theorem construct_success_key_domain (events : List Observation) (result : Captured)
    (success : construct events = some result) :
    result.records.map Prod.fst = result.payloads.map Prod.fst := by
  simp [construct_success_records _ _ success, construct_success_payloads _ _ success,
    List.map_map, Function.comp_def]

theorem construct_success_payload_unique (events : List Observation) (result : Captured)
    (success : construct events = some result) : unique result.payloads := by
  unfold unique
  rw [← construct_success_key_domain _ _ success]
  exact construct_success_unique _ _ success

theorem construct_success_observation_unique (events : List Observation) (result : Captured)
    (success : construct events = some result) : (events.map Observation.path).Nodup := by
  have valid := construct_success_unique _ _ success
  rw [unique, construct_success_records _ _ success] at valid
  simp only [List.map_map, Function.comp_def] at valid
  change (events.reverse.map Observation.path).Nodup at valid
  exact ((List.reverse_perm events).map Observation.path).nodup_iff.mp valid

theorem construct_success_counts (events : List Observation) (result : Captured)
    (success : construct events = some result) : result.records.length = events.length ∧
      result.payloads.length = events.length := by
  rw [construct_success_records _ _ success, construct_success_payloads _ _ success]
  simp

theorem construct_success_exact_byte_totals (events : List Observation) (result : Captured)
    (success : construct events = some result) :
    (result.records.map fun row => row.2.bytes).sum = observedBytes events ∧
      (result.payloads.map fun row => row.2.length).sum = observedBytes events := by
  rw [construct_success_exact _ _ success, eventFold_record_bytes, eventFold_payload_bytes]
  simp

theorem construct_success_bounds (events : List Observation) (result : Captured)
    (success : construct events = some result) : result.records.length ≤ PlanResources.maxFiles ∧
      (result.payloads.map fun row => row.2.length).sum ≤ PlanResources.maxTotalBytes := by
  have bounds := build_success_budgets events 0 0 ⟨[], []⟩ result (by simp [PlanResources.maxFiles])
    (by simp [PlanResources.maxTotalBytes]) (construct_success_build _ _ success)
  have counts := construct_success_counts _ _ success
  have bytes := construct_success_exact_byte_totals _ _ success
  simpa [counts.1, bytes.2] using bounds

theorem construct_success_file_bounds (events : List Observation) (result : Captured)
    (success : construct events = some result) :
    ∀ event ∈ events, event.payload.length ≤ PlanResources.maxFileBytes :=
  build_success_file_bounds _ _ _ _ _ (construct_success_build _ _ success)

theorem construct_success_metadata_quota (events : List Observation) (result : Captured)
    (success : construct events = some result) : recordsWithin result.records = true := by
  apply (recordsWithin_exact _).mpr
  have bounds := construct_success_bounds _ _ success
  have bytes := construct_success_exact_byte_totals _ _ success
  exact ⟨bounds.1, by omega⟩

theorem construct_success_every_record_has_literal (events : List Observation) (result : Captured)
    (success : construct events = some result) (path : String) (record : Record)
    (found : lookup path result.records = some record) :
    ∃ payload, lookup path result.payloads = some payload ∧ record.bytes = payload.length := by
  have exact := construct_success_coherent _ _ success
  have projected := congrArg (lookup path) exact
  rw [lower_lookup, lower_lookup, found] at projected
  cases present : lookup path result.payloads with
  | none => simp [present] at projected
  | some payload =>
      exact ⟨payload, rfl, by simpa [present] using projected⟩

theorem construct_success_every_literal_has_record (events : List Observation) (result : Captured)
    (success : construct events = some result) (path : String) (payload : Payload)
    (found : lookup path result.payloads = some payload) :
    ∃ record, lookup path result.records = some record ∧ record.bytes = payload.length := by
  have exact := construct_success_coherent _ _ success
  have projected := congrArg (lookup path) exact
  rw [lower_lookup, lower_lookup, found] at projected
  cases present : lookup path result.records with
  | none => simp [present] at projected
  | some record =>
      exact ⟨record, rfl, by simpa [present] using projected⟩

theorem build_complete (events : List Observation) (count total : Nat) (captured : Captured)
    (distinct : (events.map Observation.path).Nodup)
    (fresh : ∀ event ∈ events, lookup event.path captured.records = none)
    (countBound : count + events.length ≤ PlanResources.maxFiles)
    (totalBound : total + observedBytes events ≤ PlanResources.maxTotalBytes)
    (fileBounds : ∀ event ∈ events, event.payload.length ≤ PlanResources.maxFileBytes) :
    build events count total captured = some (eventFold events captured) := by
  induction events generalizing count total captured with
  | nil => rfl
  | cons event rest ih =>
      have distinctParts := List.nodup_cons.mp distinct
      have headFresh := fresh event (by simp)
      have headBound := fileBounds event (by simp)
      have totalExact : observedBytes (event :: rest) = event.payload.length + observedBytes rest := rfl
      have gate : acceptsPrefix count total event.payload.length = true := by
        apply (acceptsPrefix_exact _ _ _).mpr
        simp only [List.length_cons] at countBound
        rw [totalExact] at totalBound
        exact ⟨by omega, headBound, by omega⟩
      have tailFresh : ∀ item ∈ rest, lookup item.path (prepend event captured).records = none := by
        intro item member
        have different : item.path ≠ event.path := by
          intro same
          apply distinctParts.1
          exact List.mem_map.mpr ⟨item, member, same⟩
        simpa [prepend, lookup, different] using fresh item (by simp [member])
      have tail := ih (count + 1) (total + event.payload.length) (prepend event captured)
        distinctParts.2 tailFresh (by simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using countBound)
        (by rw [totalExact] at totalBound; omega)
        (fun item member => fileBounds item (by simp [member]))
      simpa [build, gate, headFresh, eventFold] using tail

def admitted (events : List Observation) : Prop :=
  (events.map Observation.path).Nodup ∧ events.length ≤ PlanResources.maxFiles ∧
    (∀ event ∈ events, event.payload.length ≤ PlanResources.maxFileBytes) ∧
    observedBytes events ≤ PlanResources.maxTotalBytes

theorem construct_complete (events : List Observation) (valid : admitted events) :
    construct events = some (eventFold events ⟨[], []⟩) := by
  have built := build_complete events 0 0 ⟨[], []⟩ valid.1
    (fun _ _ => rfl) (by simpa using valid.2.1) (by simpa using valid.2.2.2) valid.2.2.1
  simpa [construct, valid.2.1] using built

theorem construct_success_iff (events : List Observation) :
    (construct events).isSome = true ↔ admitted events := by
  constructor
  · intro accepted
    cases found : construct events with
    | none => simp [found] at accepted
    | some result =>
        have counts := construct_success_counts _ _ found
        have bounds := construct_success_bounds _ _ found
        have exact := construct_success_exact_byte_totals _ _ found
        exact ⟨construct_success_observation_unique _ _ found, by omega,
          construct_success_file_bounds _ _ found, by omega⟩
  · intro valid
    simp [construct_complete _ valid]

theorem construct_failure_iff (events : List Observation) : construct events = none ↔ ¬admitted events := by
  constructor
  · intro failed valid
    have complete := construct_complete events valid
    rw [failed] at complete
    cases complete
  · intro invalid
    cases found : construct events with
    | none => rfl
    | some result =>
        have valid := (construct_success_iff events).mp (by simp [found])
        exact False.elim (invalid valid)

theorem construct_success_event_record (events : List Observation) (result : Captured)
    (success : construct events = some result) (event : Observation) (member : event ∈ events) :
    lookup event.path result.records = some (observationRecord event) := by
  apply lookup_of_member_unique _ _ _ (construct_success_unique _ _ success)
  rw [construct_success_records _ _ success]
  exact List.mem_map.mpr ⟨event, List.mem_reverse.mpr member, rfl⟩

theorem construct_success_event_payload (events : List Observation) (result : Captured)
    (success : construct events = some result) (event : Observation) (member : event ∈ events) :
    lookup event.path result.payloads = some event.payload := by
  apply lookup_of_member_unique _ _ _ (construct_success_payload_unique _ _ success)
  rw [construct_success_payloads _ _ success]
  exact List.mem_map.mpr ⟨event, List.mem_reverse.mpr member, rfl⟩

theorem construct_success_full_record (events : List Observation) (result : Captured)
    (success : construct events = some result) (event : Observation) (member : event ∈ events) :
    lookup event.path result.records = some ⟨event.label, event.payload.length, event.kind⟩ :=
  construct_success_event_record _ _ success _ member

theorem construct_success_enumeration_bounds (events : List Observation) (result : Captured)
    (enumeration : Files Record) (success : construct events = some result)
    (permuted : result.records.Perm enumeration) :
    enumeration.length ≤ PlanResources.maxFiles ∧
      (enumeration.map fun row => row.2.bytes).sum ≤ PlanResources.maxTotalBytes :=
  record_enumeration_bounds _ _ permuted (construct_success_metadata_quota _ _ success)

/-- A native BTreeMap enumeration may differ from reverse observation order.
A unique enumeration with the same lookups represents the same finite map. -/
def represents {Value : Type} (native model : Files Value) : Prop :=
  unique native ∧ unique model ∧ ∀ path, lookup path native = lookup path model

theorem represents_permutation {Value : Type} (native model : Files Value)
    (same : represents native model) : native.Perm model := by
  apply (List.perm_ext_iff_of_nodup
    (LiteralLengthBounds.unique_entries _ same.1)
    (LiteralLengthBounds.unique_entries _ same.2.1)).mpr
  intro row
  constructor
  · intro member
    have found := LiteralLengthBounds.lookup_of_member_unique native row.1 row.2 same.1 member
    rw [same.2.2] at found
    exact LiteralLengthBounds.lookup_member _ _ _ found
  · intro member
    have found := LiteralLengthBounds.lookup_of_member_unique model row.1 row.2 same.2.1 member
    rw [← same.2.2] at found
    exact LiteralLengthBounds.lookup_member _ _ _ found

theorem construct_native_enumeration_exact (events : List Observation) (result : Captured)
    (records : Files Record) (payloads : Files Payload) (success : construct events = some result)
    (recordRepresentation : represents records result.records)
    (payloadRepresentation : represents payloads result.payloads) :
    records.Perm (events.reverse.map fun event => (event.path, observationRecord event)) ∧
      payloads.Perm (events.reverse.map fun event => (event.path, event.payload)) := by
  constructor
  · rw [← construct_success_records _ _ success]
    exact represents_permutation _ _ recordRepresentation
  · rw [← construct_success_payloads _ _ success]
    exact represents_permutation _ _ payloadRepresentation

theorem construct_native_enumeration_bounds (events : List Observation) (result : Captured)
    (payloads : Files Payload) (success : construct events = some result)
    (representation : represents payloads result.payloads) :
    payloads.length ≤ PlanResources.maxFiles ∧
      (payloads.map fun row => row.2.length).sum ≤ PlanResources.maxTotalBytes := by
  have same := represents_permutation _ _ representation
  have count := construct_success_counts _ _ success
  have bound := construct_success_bounds _ _ success
  have length := same.length_eq
  have bytes := (same.map (fun row => row.2.length)).sum_nat
  exact ⟨by omega, bytes ▸ bound.2⟩

theorem construct_excess_count_rejected (events : List Observation)
    (excess : PlanResources.maxFiles < events.length) : construct events = none := by
  simp [construct, Nat.not_le.mpr excess]

theorem construct_excess_total_rejected (events : List Observation)
    (excess : PlanResources.maxTotalBytes < observedBytes events) : construct events = none := by
  cases accepted : construct events with
  | none => rfl
  | some result =>
      have bounds := construct_success_bounds _ _ accepted
      have exact := construct_success_exact_byte_totals _ _ accepted
      omega

theorem construct_excess_file_rejected (events : List Observation) (event : Observation)
    (member : event ∈ events) (excess : PlanResources.maxFileBytes < event.payload.length) :
    construct events = none := by
  cases accepted : construct events with
  | none => rfl
  | some result => have bound := construct_success_file_bounds _ _ accepted event member; omega

theorem construct_duplicate_rejected (events : List Observation)
    (duplicate : ¬(events.map Observation.path).Nodup) : construct events = none := by
  cases accepted : construct events with
  | none => rfl
  | some result => exact False.elim (duplicate (construct_success_observation_unique _ _ accepted))

/-- No result map is returned by a rejected capture; the caller-owned seed is
not an argument and cannot be changed by this pure constructor. -/
theorem construct_failure_has_no_result (events : List Observation) (failed : construct events = none) :
    ¬∃ result, construct events = some result := by simp [failed]

def sampleEvents : List Observation := [
  ⟨"A.lean", "digest-a", .lean, [1, 2, 3]⟩,
  ⟨"B.lean", "digest-a", .lean, [1, 2, 3]⟩,
  ⟨"Gap/.gitkeep", "empty", .gitkeep, []⟩,
  ⟨"notes/data", "digest-b", .sidecar, [4, 5]⟩]

theorem fixture_capture_accepted : construct sampleEvents = some (eventFold sampleEvents ⟨[], []⟩) := by decide

theorem fixture_capture_actual_bytes : observedBytes sampleEvents = 8 := by decide

theorem fixture_shared_payload_counts_per_path : (sampleEvents.take 2).length = 2 ∧
    observedBytes (sampleEvents.take 2) = 6 := by decide

theorem fixture_empty_capture_accepted : construct [] = some ⟨[], []⟩ := by decide

theorem fixture_empty_payload_retained : construct [⟨"empty", "label", .gitkeep, []⟩] =
    some ⟨[("empty", ⟨"label", 0, .gitkeep⟩)], [("empty", [])]⟩ := by decide

theorem fixture_duplicate_equal_payload_rejected : construct
    [⟨"same", "label", .lean, [1]⟩, ⟨"same", "label", .lean, [1]⟩] = none := by decide

theorem fixture_duplicate_different_payload_rejected : construct
    [⟨"same", "label-a", .lean, [1]⟩, ⟨"same", "label-b", .sidecar, [2]⟩] = none := by decide

theorem fixture_exact_prefix_total_accepted : acceptsPrefix 0 1073741824 0 = true := by decide

theorem fixture_prefix_total_excess_rejected : acceptsPrefix 0 1073741824 1 = false := by decide

theorem fixture_exact_file_cap_accepted : acceptsPrefix 0 0 67108864 = true := by decide

theorem fixture_file_cap_plus_one_rejected : acceptsPrefix 0 0 67108865 = false := by decide

theorem fixture_final_count_slot_accepted : acceptsPrefix 99999 0 0 = true := by decide

theorem fixture_count_cap_rejected : acceptsPrefix 100000 0 0 = false := by decide

theorem fixture_oversized_total_no_subtraction_wrap : acceptsPrefix 0 18446744073709551615 0 = false := by decide

end GRWTSK.CaptureConstruction
