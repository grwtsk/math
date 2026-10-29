import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CertificateProducer.Basic
import Mathlib.Data.List.Forall2

/-!
Finite representation contracts for the certificate producer's maintained
accelerator and metadata interfaces. Labels are arbitrary deterministic
functions. Extensional dictionary lookup/update, not tree balancing or Rust
allocation, is the map interface in these contracts.
-/
namespace GRWTSK.CertificateMaintenance
open SourceRefinement CertificateProducer

variable {Label : Type} [DecidableEq Label]

def candidateIndices (label : Bytes → Label) (selected : Label) : List Bytes → List Nat
  | [] => []
  | bytes :: rest =>
      let tail := (candidateIndices label selected rest).map (· + 1)
      if label bytes = selected then 0 :: tail else tail

theorem candidateIndices_valid (label : Bytes → Label) (selected : Label) (objects : List Bytes) :
    ∀ index ∈ candidateIndices label selected objects, ∃ bytes, objects[index]? = some bytes := by
  induction objects with
  | nil => simp [candidateIndices]
  | cons head rest ih =>
      intro index member
      by_cases same : label head = selected
      · simp [candidateIndices, same] at member
        rcases member with equal | ⟨prior, member, equal⟩
        · subst index
          exact ⟨head, rfl⟩
        · subst index
          obtain ⟨bytes, exact⟩ := ih prior member
          exact ⟨bytes, exact⟩
      · simp [candidateIndices, same] at member
        obtain ⟨prior, member, equal⟩ := member
        subst index
        obtain ⟨bytes, exact⟩ := ih prior member
        exact ⟨bytes, exact⟩

theorem candidateIndices_complete (label : Bytes → Label) (objects : List Bytes) (payload : Bytes) :
    CandidateCoverage objects payload (candidateIndices label (label payload) objects) := by
  intro index literal
  induction objects generalizing index with
  | nil => simp at literal
  | cons head rest ih =>
      cases index with
      | zero =>
          simp at literal
          simp [candidateIndices, literal]
      | succ prior =>
          have tail : rest[prior]? = some payload := literal
          have member := ih prior tail
          by_cases same : label head = label payload
          · simpa [candidateIndices, same] using member
          · simpa [candidateIndices, same] using member

theorem candidateIndices_append_one (label : Bytes → Label) (selected : Label)
    (objects : List Bytes) (payload : Bytes) :
    candidateIndices label selected (objects ++ [payload]) =
      candidateIndices label selected objects ++
        (if label payload = selected then [objects.length] else []) := by
  induction objects with
  | nil => simp [candidateIndices]
  | cons head rest ih =>
      by_cases first : label head = selected <;>
        by_cases last : label payload = selected <;>
        simp [candidateIndices, first, last, ih, List.map_append]

structure BucketState (Label : Type) where
  values : List Bytes
  buckets : Label → List Nat

/-- This records candidate order, multiplicity, completeness and valid slots. -/
def BucketInvariant (label : Bytes → Label) (state : BucketState Label) : Prop :=
  ∀ selected, state.buckets selected = candidateIndices label selected state.values

def emptyBuckets : BucketState Label := ⟨[], fun _ => []⟩

def appendBucket (label : Bytes → Label) (state : BucketState Label) (payload : Bytes) : BucketState Label :=
  ⟨state.values ++ [payload], fun selected =>
    if selected = label payload then state.buckets selected ++ [state.values.length]
    else state.buckets selected⟩

theorem emptyBuckets_invariant (label : Bytes → Label) : BucketInvariant label emptyBuckets := by
  intro selected
  rfl

theorem appendBucket_selected (label : Bytes → Label) (state : BucketState Label) (payload : Bytes) :
    (appendBucket label state payload).buckets (label payload) =
      state.buckets (label payload) ++ [state.values.length] := by simp [appendBucket]

theorem appendBucket_other (label : Bytes → Label) (state : BucketState Label) (payload : Bytes)
    (selected : Label) (different : selected ≠ label payload) :
    (appendBucket label state payload).buckets selected = state.buckets selected := by
  simp [appendBucket, different]

theorem appendBucket_preserves_invariant (label : Bytes → Label) (state : BucketState Label)
    (payload : Bytes) (valid : BucketInvariant label state) :
    BucketInvariant label (appendBucket label state payload) := by
  intro selected
  simp only [appendBucket, candidateIndices_append_one, valid selected]
  by_cases same : selected = label payload
  · simp [same]
  · simp [same, Ne.symm same]

theorem bucket_valid (label : Bytes → Label) (state : BucketState Label)
    (valid : BucketInvariant label state) (selected : Label) :
    ∀ index ∈ state.buckets selected, ∃ bytes, state.values[index]? = some bytes := by
  rw [valid selected]
  exact candidateIndices_valid label selected state.values

theorem bucket_complete (label : Bytes → Label) (state : BucketState Label)
    (valid : BucketInvariant label state) (payload : Bytes) :
    CandidateCoverage state.values payload (state.buckets (label payload)) := by
  rw [valid (label payload)]
  exact candidateIndices_complete label state.values payload

theorem bucket_miss_implies_absent (label : Bytes → Label) (state : BucketState Label)
    (valid : BucketInvariant label state) (payload : Bytes)
    (miss : candidateLookup state.values payload (state.buckets (label payload)) = some none) :
    payload ∉ state.values :=
  complete_candidate_miss_implies_absent (bucket_complete label state valid payload) miss

theorem bucket_existing_literal_found (label : Bytes → Label) (state : BucketState Label)
    (valid : BucketInvariant label state) (payload : Bytes) (present : payload ∈ state.values) :
    ∃ index, candidateLookup state.values payload (state.buckets (label payload)) = some (some index) ∧
      state.values[index]? = some payload :=
  complete_valid_candidates_find_existing (bucket_complete label state valid payload)
    (bucket_valid label state valid (label payload)) present

/-- The actual hit/miss interface: an existing hit leaves all buckets unchanged;
only a successful literal append appends to the selected candidate list. -/
def maintainBuckets (label : Bytes → Label) (state : BucketState Label) (payload : Bytes) :
    Option (BucketState Label × Nat × Bool) :=
  match candidateLookup state.values payload (state.buckets (label payload)) with
  | none => none
  | some (some index) => some (state, index, false)
  | some none => some (appendBucket label state payload, state.values.length, true)

theorem maintain_hit (label : Bytes → Label) (state : BucketState Label) (payload : Bytes) (index : Nat)
    (hit : candidateLookup state.values payload (state.buckets (label payload)) = some (some index)) :
    maintainBuckets label state payload = some (state, index, false) := by
  simp [maintainBuckets, hit]

theorem maintain_miss (label : Bytes → Label) (state : BucketState Label) (payload : Bytes)
    (miss : candidateLookup state.values payload (state.buckets (label payload)) = some none) :
    maintainBuckets label state payload = some (appendBucket label state payload, state.values.length, true) := by
  simp [maintainBuckets, miss]

theorem maintain_invalid_rejects (label : Bytes → Label) (state : BucketState Label) (payload : Bytes)
    (bad : candidateLookup state.values payload (state.buckets (label payload)) = none) :
    maintainBuckets label state payload = none := by simp [maintainBuckets, bad]

theorem maintain_preserves_invariant (label : Bytes → Label) (state next : BucketState Label)
    (payload : Bytes) (index : Nat) (inserted : Bool) (valid : BucketInvariant label state)
    (step : maintainBuckets label state payload = some (next, index, inserted)) :
    BucketInvariant label next := by
  unfold maintainBuckets at step
  cases found : candidateLookup state.values payload (state.buckets (label payload)) with
  | none => simp [found] at step
  | some result =>
      cases result with
      | none =>
          simp [found] at step
          rcases step with ⟨rfl, _, _⟩
          exact appendBucket_preserves_invariant label state payload valid
      | some prior =>
          simp [found] at step
          rcases step with ⟨rfl, _, _⟩
          exact valid

theorem maintain_literal_exact (label : Bytes → Label) (state next : BucketState Label)
    (payload : Bytes) (index : Nat) (inserted : Bool)
    (step : maintainBuckets label state payload = some (next, index, inserted)) :
    next.values[index]? = some payload := by
  unfold maintainBuckets at step
  cases found : candidateLookup state.values payload (state.buckets (label payload)) with
  | none => simp [found] at step
  | some result =>
      cases result with
      | none =>
          simp [found] at step
          rcases step with ⟨rfl, rfl, _⟩
          simp [appendBucket]
      | some prior =>
          simp [found] at step
          rcases step with ⟨rfl, rfl, _⟩
          exact (candidateLookup_hit_sound found).2

theorem maintain_old_slots (label : Bytes → Label) (state next : BucketState Label)
    (payload : Bytes) (index : Nat) (inserted : Bool)
    (step : maintainBuckets label state payload = some (next, index, inserted))
    (prior : Nat) (bytes : Bytes) (old : state.values[prior]? = some bytes) :
    next.values[prior]? = some bytes := by
  unfold maintainBuckets at step
  cases found : candidateLookup state.values payload (state.buckets (label payload)) with
  | none => simp [found] at step
  | some result =>
      cases result with
      | none =>
          simp [found] at step
          rcases step with ⟨rfl, _, _⟩
          simp only [appendBucket]
          rw [List.getElem?_append_left ((List.getElem?_eq_some_iff.mp old).1)]
          exact old
      | some prior =>
          simp [found] at step
          rcases step with ⟨rfl, _, _⟩
          exact old

theorem maintain_preserves_nodup (label : Bytes → Label) (state next : BucketState Label)
    (payload : Bytes) (index : Nat) (inserted : Bool) (valid : BucketInvariant label state)
    (distinct : state.values.Nodup)
    (step : maintainBuckets label state payload = some (next, index, inserted)) :
    next.values.Nodup := by
  unfold maintainBuckets at step
  cases found : candidateLookup state.values payload (state.buckets (label payload)) with
  | none => simp [found] at step
  | some result =>
      cases result with
      | none =>
          simp [found] at step
          rcases step with ⟨rfl, _, _⟩
          have absent := bucket_miss_implies_absent label state valid payload found
          simp [appendBucket, List.nodup_append, distinct]
          exact fun _ member same => absent (same ▸ member)
      | some prior =>
          simp [found] at step
          rcases step with ⟨rfl, _, _⟩
          exact distinct

theorem maintain_existing_never_appends (label : Bytes → Label) (state : BucketState Label)
    (payload : Bytes) (valid : BucketInvariant label state) (present : payload ∈ state.values) :
    ∃ index, maintainBuckets label state payload = some (state, index, false) := by
  obtain ⟨index, found, _⟩ := bucket_existing_literal_found label state valid payload present
  exact ⟨index, maintain_hit label state payload index found⟩

def maintainMany (label : Bytes → Label) : BucketState Label → List Bytes → Option (BucketState Label)
  | state, [] => some state
  | state, payload :: rest => do
      let (next, _, _) ← maintainBuckets label state payload
      maintainMany label next rest

theorem maintainMany_preserves_invariant (label : Bytes → Label) (state final : BucketState Label)
    (payloads : List Bytes) (valid : BucketInvariant label state)
    (run : maintainMany label state payloads = some final) : BucketInvariant label final := by
  induction payloads generalizing state with
  | nil =>
      simp [maintainMany] at run
      subst final
      exact valid
  | cons payload rest ih =>
      unfold maintainMany at run
      cases hs : maintainBuckets label state payload with
      | none => simp [hs] at run
      | some result =>
          obtain ⟨next, index, inserted⟩ := result
          simp [hs] at run
          exact ih next (maintain_preserves_invariant label state next payload index inserted valid hs) run

theorem constant_label_maintained_collision :
    ∃ final, maintainMany (fun _ => 0) emptyBuckets [[0], [1], [0]] = some final ∧
      final.values = [[0], [1]] ∧ final.buckets 0 = [0, 1] := by
  refine ⟨appendBucket (fun _ => 0) (appendBucket (fun _ => 0) emptyBuckets [0]) [1], ?_⟩
  exact ⟨rfl, rfl, rfl⟩

/- The metadata map is observed extensionally: a key has a stable insertion
slot and literal object index. Tree shape and comparator implementation do not
occur in the mathematical interface. -/
abbrev Targets := List (TargetKey × Nat)

def targetLookup (key : TargetKey) : Targets → Option (Nat × Nat)
  | [] => none
  | (other, object) :: rest =>
      if key = other then some (0, object)
      else (targetLookup key rest).map fun found => (found.1 + 1, found.2)

def targetInsert (targets : Targets) (key : TargetKey) (object : Nat) : Option (Targets × Nat) :=
  match targetLookup key targets with
  | some (slot, previous) => if previous = object then some (targets, slot) else none
  | none => some (targets ++ [(key, object)], targets.length)

theorem targetLookup_sound {targets : Targets} {key : TargetKey} {slot object : Nat}
    (found : targetLookup key targets = some (slot, object)) :
    targets[slot]? = some (key, object) := by
  induction targets generalizing slot with
  | nil => simp [targetLookup] at found
  | cons row rest ih =>
      obtain ⟨other, previous⟩ := row
      by_cases same : key = other
      · simp [targetLookup, same] at found
        obtain ⟨rfl, rfl⟩ := found
        simp [same]
      · cases tail : targetLookup key rest with
        | none => simp [targetLookup, same, tail] at found
        | some prior =>
            obtain ⟨index, value⟩ := prior
            simp [targetLookup, same, tail] at found
            obtain ⟨rfl, rfl⟩ := found
            exact ih tail

theorem targetLookup_none_iff (targets : Targets) (key : TargetKey) :
    targetLookup key targets = none ↔ key ∉ targets.map Prod.fst := by
  induction targets with
  | nil => simp [targetLookup]
  | cons row rest ih =>
      obtain ⟨other, previous⟩ := row
      by_cases same : key = other
      · simp [targetLookup, same]
      · simp [targetLookup, same, ih]

theorem targetLookup_append_old {targets : Targets} {key : TargetKey} {slot object : Nat}
    (found : targetLookup key targets = some (slot, object)) (tail : Targets) :
    targetLookup key (targets ++ tail) = some (slot, object) := by
  induction targets generalizing slot with
  | nil => simp [targetLookup] at found
  | cons row rest ih =>
      obtain ⟨other, previous⟩ := row
      by_cases same : key = other
      · simp [targetLookup, same] at found ⊢
        exact found
      · cases before : targetLookup key rest with
        | none => simp [targetLookup, same, before] at found
        | some prior =>
            obtain ⟨index, value⟩ := prior
            simp [targetLookup, same, before] at found
            obtain ⟨rfl, rfl⟩ := found
            simpa [targetLookup, same] using ih before

theorem targetLookup_append_new (targets : Targets) (key : TargetKey) (object : Nat)
    (missing : targetLookup key targets = none) :
    targetLookup key (targets ++ [(key, object)]) = some (targets.length, object) := by
  induction targets with
  | nil => simp [targetLookup]
  | cons row rest ih =>
      obtain ⟨other, previous⟩ := row
      by_cases same : key = other
      · simp [targetLookup, same] at missing
      · have tail : targetLookup key rest = none := by
          simpa [targetLookup, same] using missing
        simpa [targetLookup, same] using ih tail

theorem targetInsert_hit (targets : Targets) (key : TargetKey) (slot object : Nat)
    (found : targetLookup key targets = some (slot, object)) :
    targetInsert targets key object = some (targets, slot) := by simp [targetInsert, found]

theorem targetInsert_conflict (targets : Targets) (key : TargetKey) (slot previous object : Nat)
    (found : targetLookup key targets = some (slot, previous)) (different : previous ≠ object) :
    targetInsert targets key object = none := by simp [targetInsert, found, different]

theorem targetInsert_fresh (targets : Targets) (key : TargetKey) (object : Nat)
    (missing : targetLookup key targets = none) :
    targetInsert targets key object = some (targets ++ [(key, object)], targets.length) := by
  simp [targetInsert, missing]

theorem targetInsert_lookup {targets next : Targets} {key : TargetKey} {object slot : Nat}
    (inserted : targetInsert targets key object = some (next, slot)) :
    targetLookup key next = some (slot, object) := by
  unfold targetInsert at inserted
  cases before : targetLookup key targets with
  | none =>
      simp [before] at inserted
      obtain ⟨rfl, rfl⟩ := inserted
      exact targetLookup_append_new targets key object before
  | some prior =>
      obtain ⟨index, previous⟩ := prior
      by_cases same : previous = object
      · simp [before, same] at inserted
        obtain ⟨rfl, rfl⟩ := inserted
        simpa [same] using before
      · simp [before, same] at inserted

theorem targetInsert_stable_slots {targets next : Targets} {key : TargetKey} {object slot : Nat}
    (inserted : targetInsert targets key object = some (next, slot))
    (oldKey : TargetKey) (oldSlot oldObject : Nat)
    (old : targetLookup oldKey targets = some (oldSlot, oldObject)) :
    targetLookup oldKey next = some (oldSlot, oldObject) := by
  unfold targetInsert at inserted
  cases before : targetLookup key targets with
  | none =>
      simp [before] at inserted
      obtain ⟨rfl, _⟩ := inserted
      exact targetLookup_append_old old _
  | some prior =>
      obtain ⟨index, previous⟩ := prior
      by_cases same : previous = object
      · simp [before, same] at inserted
        obtain ⟨rfl, _⟩ := inserted
        exact old
      · simp [before, same] at inserted

theorem targetInsert_unique {targets next : Targets} {key : TargetKey} {object slot : Nat}
    (unique : (targets.map Prod.fst).Nodup)
    (inserted : targetInsert targets key object = some (next, slot)) :
    (next.map Prod.fst).Nodup := by
  unfold targetInsert at inserted
  cases before : targetLookup key targets with
  | none =>
      simp [before] at inserted
      obtain ⟨rfl, _⟩ := inserted
      have absent := (targetLookup_none_iff targets key).mp before
      simp only [List.map_append, List.map_cons, List.map_nil]
      apply List.nodup_append.mpr
      refine ⟨unique, by simp, ?_⟩
      intro a member b singleton same
      simp only [List.mem_singleton] at singleton
      rw [singleton] at same
      exact absent (same ▸ member)
  | some prior =>
      obtain ⟨index, previous⟩ := prior
      by_cases same : previous = object
      · simp [before, same] at inserted
        obtain ⟨rfl, _⟩ := inserted
        exact unique
      · simp [before, same] at inserted

theorem target_slot_in_range {targets : Targets} {key : TargetKey} {slot object : Nat}
    (found : targetLookup key targets = some (slot, object)) : slot < targets.length :=
  (List.getElem?_eq_some_iff.mp (targetLookup_sound found)).1

theorem target_slot_injective {targets : Targets} {first second : TargetKey} {slot a b : Nat}
    (one : targetLookup first targets = some (slot, a))
    (two : targetLookup second targets = some (slot, b)) : first = second ∧ a = b := by
  have same := (targetLookup_sound one).symm.trans (targetLookup_sound two)
  exact Prod.mk.inj (Option.some.inj same)

structure Route where
  target : Nat
  object : Nat
  occurrence : Bool
  deriving DecidableEq

structure Lowered (Metadata : Type) where
  routes : List Route
  metadata : List (Option Metadata)
  deriving DecidableEq

def lowerRoute {Metadata : Type} (before : Lowered Metadata) (target object : Nat)
    (metadata : Option Metadata) : Lowered Metadata :=
  ⟨before.routes ++ [⟨target, object, metadata.isSome⟩], before.metadata ++ [metadata]⟩

theorem lowerRoute_routes_exact {Metadata : Type} (before : Lowered Metadata) (target object : Nat)
    (metadata : Option Metadata) :
    (lowerRoute before target object metadata).routes =
      before.routes ++ [⟨target, object, metadata.isSome⟩] := rfl

theorem lowerRoute_metadata_exact {Metadata : Type} (before : Lowered Metadata) (target object : Nat)
    (metadata : Option Metadata) :
    (lowerRoute before target object metadata).metadata = before.metadata ++ [metadata] := rfl

theorem lowerRoute_preserves_alignment {Metadata : Type} (before : Lowered Metadata)
    (target object : Nat) (metadata : Option Metadata)
    (aligned : before.routes.length = before.metadata.length) :
    (lowerRoute before target object metadata).routes.length =
      (lowerRoute before target object metadata).metadata.length := by simp [lowerRoute, aligned]

theorem lowerRoute_metadata_slot {Metadata : Type} (before : Lowered Metadata)
    (target object : Nat) (metadata : Option Metadata) :
    (lowerRoute before target object metadata).metadata[before.metadata.length]? = some metadata := by
  simp [lowerRoute]

/-- A registered key enumeration is supplied in its canonical BTreeMap order;
the slot relation may use an entirely different insertion order. -/
def attachOutputs : List (TargetKey × Nat) → (Nat → Option Nat) → Option (List Output)
  | [], _ => some []
  | (key, slot) :: rest, slots => do
      let object ← slots slot
      let tail ← attachOutputs rest slots
      pure (⟨key.1, key.2, object⟩ :: tail)

theorem attachOutputs_keys_exact {ordered : List (TargetKey × Nat)} {slots : Nat → Option Nat}
    {outputs : List Output} (attached : attachOutputs ordered slots = some outputs) :
    outputs.map outputKey = ordered.map Prod.fst := by
  induction ordered generalizing outputs with
  | nil => simp [attachOutputs] at attached; subst outputs; rfl
  | cons row rest ih =>
      obtain ⟨key, slot⟩ := row
      unfold attachOutputs at attached
      cases hs : slots slot with
      | none => simp [hs] at attached
      | some object =>
          cases ht : attachOutputs rest slots with
          | none => simp [hs, ht] at attached
          | some tail =>
              simp [hs, ht] at attached
              subst outputs
              simp [outputKey, ih ht]

theorem attachOutputs_length {ordered : List (TargetKey × Nat)} {slots : Nat → Option Nat}
    {outputs : List Output} (attached : attachOutputs ordered slots = some outputs) :
    outputs.length = ordered.length := by
  have := congrArg List.length (attachOutputs_keys_exact attached)
  simpa using this

theorem attachOutputs_missing_rejects (key : TargetKey) (slot : Nat)
    (rest : List (TargetKey × Nat)) (slots : Nat → Option Nat) (missing : slots slot = none) :
    attachOutputs ((key, slot) :: rest) slots = none := by simp [attachOutputs, missing]

theorem attachOutputs_exact_records (ordered : List (TargetKey × Nat)) (slots : Nat → Option Nat)
    (objects : TargetKey → Nat) (covered : ∀ row ∈ ordered, slots row.2 = some (objects row.1)) :
    attachOutputs ordered slots = some (ordered.map fun row => ⟨row.1.1, row.1.2, objects row.1⟩) := by
  induction ordered with
  | nil => rfl
  | cons row rest ih =>
      obtain ⟨key, slot⟩ := row
      have head := covered (key, slot) (by simp)
      have tail := ih (fun row member => covered row (by simp [member]))
      simp [attachOutputs, head, tail]

def attachOccurrences {Metadata : Type} (metadata : List (Option Metadata)) :
    List Nat → Option (List Metadata)
  | [] => some []
  | index :: rest => do
      let entry ← metadata[index]?
      let value ← entry
      let tail ← attachOccurrences metadata rest
      pure (value :: tail)

theorem attachOccurrences_exact {Metadata : Type} {metadata : List (Option Metadata)}
    {emitted : List Nat} {values : List Metadata}
    (attached : attachOccurrences metadata emitted = some values) :
    emitted.Forall₂ (fun index value => metadata[index]? = some (some value)) values := by
  induction emitted generalizing values with
  | nil => simp [attachOccurrences] at attached; subst values; exact .nil
  | cons index rest ih =>
      unfold attachOccurrences at attached
      cases hs : metadata[index]? with
      | none => simp [hs] at attached
      | some entry =>
          cases entry with
          | none => simp [hs] at attached
          | some value =>
              cases ht : attachOccurrences metadata rest with
              | none => simp [hs, ht] at attached
              | some tail =>
                  simp [hs, ht] at attached
                  subst values
                  exact .cons hs (ih ht)

theorem attachOccurrences_length {Metadata : Type} {metadata : List (Option Metadata)}
    {emitted : List Nat} {values : List Metadata}
    (attached : attachOccurrences metadata emitted = some values) : values.length = emitted.length :=
  (attachOccurrences_exact attached).length_eq.symm

theorem attachOccurrences_missing_rejects {Metadata : Type} (metadata : List (Option Metadata))
    (index : Nat) (rest : List Nat) (missing : metadata[index]? = none) :
    attachOccurrences metadata (index :: rest) = none := by simp [attachOccurrences, missing]

theorem attachOccurrences_unmarked_rejects {Metadata : Type} (metadata : List (Option Metadata))
    (index : Nat) (rest : List Nat) (missing : metadata[index]? = some none) :
    attachOccurrences metadata (index :: rest) = none := by simp [attachOccurrences, missing]

theorem attachOccurrences_append {Metadata : Type} (metadata : List (Option Metadata))
    (first second : List Nat) :
    attachOccurrences metadata (first ++ second) = (do
      let left ← attachOccurrences metadata first
      let right ← attachOccurrences metadata second
      pure (left ++ right)) := by
  induction first with
  | nil => simp [attachOccurrences]
  | cons index rest ih =>
      simp only [List.cons_append]
      conv_lhs => rw [attachOccurrences]
      conv_rhs => arg 1; rw [attachOccurrences]
      cases hs : metadata[index]? with
      | none => simp
      | some entry =>
          cases entry with
          | none => simp
          | some value => simp [ih, Option.bind_assoc]

theorem attachOccurrences_repetition {Metadata : Type} (metadata : List (Option Metadata))
    (index : Nat) (value : Metadata) (present : metadata[index]? = some (some value)) :
    attachOccurrences metadata [index, index] = some [value, value] := by
  simp [attachOccurrences, present]

theorem distinct_metadata_shared_output :
    attachOccurrences ([some "first", none, some "second"] : List (Option String)) [0, 2] =
      some ["first", "second"] ∧
      attachOutputs [((0, "shared"), 0)] (fun index => if index = 0 then some 7 else none) =
        some [⟨0, "shared", 7⟩] := by decide

/-- The assembly loop emits precisely these ordered route positions. -/
def markedIndices : List Bool → List Nat
  | [] => []
  | marked :: rest =>
      let tail := (markedIndices rest).map (· + 1)
      if marked then 0 :: tail else tail

def MetadataAligned {Metadata : Type} (lowered : Lowered Metadata) : Prop :=
  lowered.routes.map Route.occurrence = lowered.metadata.map Option.isSome

theorem empty_lowering_aligned {Metadata : Type} :
    MetadataAligned (⟨[], []⟩ : Lowered Metadata) := rfl

theorem lowerRoute_flags_exact {Metadata : Type} (before : Lowered Metadata)
    (target object : Nat) (metadata : Option Metadata) (aligned : MetadataAligned before) :
    MetadataAligned (lowerRoute before target object metadata) := by
  simpa [MetadataAligned, lowerRoute] using congrArg (· ++ [metadata.isSome]) aligned

theorem alignment_includes_lengths {Metadata : Type} (lowered : Lowered Metadata)
    (aligned : MetadataAligned lowered) : lowered.routes.length = lowered.metadata.length := by
  have := congrArg List.length aligned
  simpa using this

theorem attachOccurrences_shift {Metadata : Type} (head : Option Metadata)
    (metadata : List (Option Metadata)) (indices : List Nat) :
    attachOccurrences (head :: metadata) (indices.map (· + 1)) =
      attachOccurrences metadata indices := by
  induction indices with
  | nil => rfl
  | cons index rest ih =>
      simp only [List.map_cons]
      conv_lhs => rw [attachOccurrences]
      conv_rhs => rw [attachOccurrences]
      simp only [List.getElem?_cons_succ, ih]

theorem reattach_all_marked_metadata {Metadata : Type} (metadata : List (Option Metadata)) :
    attachOccurrences metadata (markedIndices (metadata.map Option.isSome)) =
      some (metadata.filterMap id) := by
  induction metadata with
  | nil => rfl
  | cons head rest ih =>
      cases head with
      | none => simpa [markedIndices, attachOccurrences_shift] using ih
      | some value =>
          simp only [List.map_cons, Option.isSome_some, markedIndices, ↓reduceIte,
            attachOccurrences, List.getElem?_cons_zero,
            attachOccurrences_shift, ih, List.filterMap_cons, id_eq]
          rfl

/-- Composition with the source-verified assembly interface. The emitted list
is supplied by that core's explicit ordered-route-position postcondition. -/
theorem lowering_assembly_reattachment_history {Metadata : Type} (lowered : Lowered Metadata)
    (emitted : List Nat) (aligned : MetadataAligned lowered)
    (assembly_emitted : emitted = markedIndices (lowered.routes.map Route.occurrence)) :
    attachOccurrences lowered.metadata emitted = some (lowered.metadata.filterMap id) := by
  rw [assembly_emitted, aligned]
  exact reattach_all_marked_metadata lowered.metadata

/-- Output reattachment needs both registered-target coverage and the assembly
core's guarantee that every input route is represented by its exact object.
Canonical target order and slot allocation order need not coincide. -/
theorem lowering_assembly_reattachment_outputs (ordered : List (TargetKey × Nat))
    (routes : List Route) (slots : Nat → Option Nat) (objects : TargetKey → Nat)
    (registered : ∀ row ∈ ordered, ∃ route ∈ routes,
      route.target = row.2 ∧ route.object = objects row.1)
    (assembly_covered : ∀ route ∈ routes, slots route.target = some route.object) :
    attachOutputs ordered slots = some (ordered.map fun row => ⟨row.1.1, row.1.2, objects row.1⟩) := by
  apply attachOutputs_exact_records
  intro row member
  obtain ⟨route, used, target, object⟩ := registered row member
  simpa [target, object] using assembly_covered route used

theorem reattached_occurrences_are_exact_history {lowered : Lowered Occurrence}
    {emitted : List Nat} (aligned : MetadataAligned lowered)
    (assembly_emitted : emitted = markedIndices (lowered.routes.map Route.occurrence)) :
    attachOccurrences lowered.metadata emitted = some (lowered.metadata.filterMap id) :=
  lowering_assembly_reattachment_history lowered emitted aligned assembly_emitted

theorem repeated_metadata_route_preserves_multiplicity :
    attachOccurrences ([some "same", none, some "same"] : List (Option String))
      (markedIndices [true, false, true]) = some ["same", "same"] := by decide

theorem candidateIndices_exact_labels (label : Bytes → Label) (selected : Label) (objects : List Bytes) :
    ∀ index ∈ candidateIndices label selected objects,
      ∃ bytes, objects[index]? = some bytes ∧ label bytes = selected := by
  induction objects with
  | nil => simp [candidateIndices]
  | cons head rest ih =>
      intro index member
      by_cases same : label head = selected
      · simp [candidateIndices, same] at member
        rcases member with equal | ⟨prior, member, equal⟩
        · subst index
          exact ⟨head, rfl, same⟩
        · subst index
          obtain ⟨bytes, exact, selectedLabel⟩ := ih prior member
          exact ⟨bytes, exact, selectedLabel⟩
      · simp [candidateIndices, same] at member
        obtain ⟨prior, member, equal⟩ := member
        subst index
        obtain ⟨bytes, exact, selectedLabel⟩ := ih prior member
        exact ⟨bytes, exact, selectedLabel⟩

theorem maintained_bucket_labels (label : Bytes → Label) (state : BucketState Label)
    (valid : BucketInvariant label state) (selected : Label) (index : Nat)
    (member : index ∈ state.buckets selected) :
    ∃ bytes, state.values[index]? = some bytes ∧ label bytes = selected := by
  rw [valid selected] at member
  exact candidateIndices_exact_labels label selected state.values index member

theorem valid_candidates_never_malformed (objects : List Bytes) (payload : Bytes) (candidates : List Nat)
    (valid : ∀ index ∈ candidates, ∃ bytes, objects[index]? = some bytes) :
    (candidateLookup objects payload candidates).isSome = true := by
  induction candidates with
  | nil => rfl
  | cons index rest ih =>
      obtain ⟨bytes, exact⟩ := valid index (by simp)
      have tail := ih (fun index member => valid index (by simp [member]))
      by_cases same : bytes = payload <;> simp [candidateLookup, exact, same, tail]

theorem valid_maintained_bucket_total (label : Bytes → Label) (state : BucketState Label)
    (valid : BucketInvariant label state) (payload : Bytes) :
    ∃ next index inserted, maintainBuckets label state payload = some (next, index, inserted) := by
  have total := valid_candidates_never_malformed state.values payload (state.buckets (label payload))
    (bucket_valid label state valid (label payload))
  cases found : candidateLookup state.values payload (state.buckets (label payload)) with
  | none => simp [found] at total
  | some result =>
      cases result with
      | none => exact ⟨appendBucket label state payload, state.values.length, true, maintain_miss label state payload found⟩
      | some index => exact ⟨state, index, false, maintain_hit label state payload index found⟩

theorem literal_metadata_roundtrip (occurrences : List Occurrence) :
    attachOccurrences (occurrences.map some)
      (markedIndices ((occurrences.map some).map Option.isSome)) = some occurrences := by
  simpa using reattach_all_marked_metadata (occurrences.map some)

/-- This connects the metadata representation to the previously proved producer:
every source occurrence remains in the same position, with its complete binding
and literal object index; sharing an output never quotients this history. -/
theorem produced_metadata_roundtrip {objects : List Bytes} {sets : List ReadSet}
    {raw : List RawRoute} {prepared : List Binding} {placeholders : List String}
    {empty : Nat} {result : Produced}
    (produced : produce objects sets raw prepared placeholders empty = some result) :
    attachOccurrences (result.occurrences.map some)
      (markedIndices ((result.occurrences.map some).map Option.isSome)) = some result.occurrences ∧
      result.occurrences.map Occurrence.binding = routeBindings raw prepared ∧
      result.occurrences.length = raw.length + prepared.length :=
  ⟨literal_metadata_roundtrip result.occurrences, produced_occurrence_order produced,
    produced_occurrence_count produced⟩

/-- A BTreeMap view is represented by its exact extensional key lookup, not by
its physical tree shape or by an opaque replacement for the key. -/
def TargetRepresentation (dictionary : TargetKey → Option (Nat × Nat)) (targets : Targets) : Prop :=
  ∀ key, dictionary key = targetLookup key targets

theorem targetLookup_append_unrelated (targets : Targets) (query key : TargetKey)
    (object : Nat) (different : query ≠ key) :
    targetLookup query (targets ++ [(key, object)]) = targetLookup query targets := by
  induction targets with
  | nil => simp [targetLookup, different]
  | cons row rest ih =>
      obtain ⟨other, previous⟩ := row
      by_cases same : query = other <;> simp [targetLookup, same, ih]

theorem targetInsert_other_lookup {targets next : Targets} {key query : TargetKey} {object slot : Nat}
    (inserted : targetInsert targets key object = some (next, slot)) (different : query ≠ key) :
    targetLookup query next = targetLookup query targets := by
  unfold targetInsert at inserted
  cases before : targetLookup key targets with
  | none =>
      simp [before] at inserted
      obtain ⟨rfl, _⟩ := inserted
      exact targetLookup_append_unrelated targets query key object different
  | some prior =>
      obtain ⟨index, previous⟩ := prior
      by_cases same : previous = object
      · simp [before, same] at inserted
        obtain ⟨rfl, _⟩ := inserted
        rfl
      · simp [before, same] at inserted

theorem dictionary_insert_correspondence {targets next : Targets}
    (dictionary : TargetKey → Option (Nat × Nat)) (key : TargetKey) (object slot : Nat)
    (represented : TargetRepresentation dictionary targets)
    (inserted : targetInsert targets key object = some (next, slot)) :
    TargetRepresentation (fun query => if query = key then some (slot, object) else dictionary query) next := by
  intro query
  by_cases same : query = key
  · subst query
    simpa using (targetInsert_lookup inserted).symm
  · simp only [same, ↓reduceIte]
    rw [targetInsert_other_lookup inserted same]
    exact represented query

theorem targetLookup_complete {targets : Targets} (unique : (targets.map Prod.fst).Nodup)
    {key : TargetKey} {slot object : Nat} (present : targets[slot]? = some (key, object)) :
    targetLookup key targets = some (slot, object) := by
  induction targets generalizing slot with
  | nil => simp at present
  | cons row rest ih =>
      obtain ⟨head, value⟩ := row
      cases slot with
      | zero =>
          simp at present
          obtain ⟨rfl, rfl⟩ := present
          simp [targetLookup]
      | succ index =>
          have tail : rest[index]? = some (key, object) := present
          have member : key ∈ rest.map Prod.fst :=
            List.mem_map.mpr ⟨(key, object), List.mem_of_getElem? tail, rfl⟩
          have facts := List.nodup_cons.mp unique
          have different : key ≠ head := fun same => facts.1 (same ▸ member)
          simp [targetLookup, different, ih facts.2 tail]

theorem target_slots_dense (targets : Targets) (unique : (targets.map Prod.fst).Nodup)
    (slot : Nat) (bounded : slot < targets.length) :
    ∃ key object, targetLookup key targets = some (slot, object) := by
  refine ⟨targets[slot].1, targets[slot].2, ?_⟩
  apply targetLookup_complete unique
  simpa only [Prod.eta] using (List.getElem?_eq_getElem bounded)

end GRWTSK.CertificateMaintenance
