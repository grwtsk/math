/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StateTransition.ResearchState

/-!
# Exact observation correspondence before target selection

This is a pure interpretation of an observation-only serialized state. Every
variable source identity, metadata value, version, and event is retained. The
remaining mathematical fields are explicitly fixed: there is no claim catalog,
target, obligation, proved claim, relation, or nontrivial core. This contract
cannot certify a state containing a conjecture or an unrepresented proof.

`Admitted` checks the literal runtime operation name and the entire resulting
state, rather than checking a status label. `admitted_change` supplies the actual
`ResearchState.Change.observe` term for those concrete values. `ReplayAdmitted`
additionally binds a complete ordered list to its computed final state.

JSON parsing, file identity, append-only storage, compiler invocation, and the
faithfulness of an external serializer remain external obligations. Source
strings and event descriptions remain identity data, not authenticated custody
or mathematical proofs. In particular, replay does not authenticate its input.
-/

namespace GRWTSK.Logic.StateTransition.ResearchObservation

open ResearchState

/-- The precise operation name admitted by the observation-only contract. -/
def recordObservationTag : String := "RECORD_OBSERVATION"

/-- Data supplied by one runtime observation. The operation name is checked. -/
structure Observation where
  operation : String := "RECORD_OBSERVATION"
  event : Event
  metadata : Metadata
  deriving DecidableEq, Repr

/-- All variable state fields in the observation-only contract.
Every history entry has the fixed observation operation; a decoder must reject
other operations rather than discard their tags. -/
structure ObservationState where
  sources : List SourceIdentity := []
  metadata : Metadata := {}
  version : Nat := 0
  history : List Event := []
  deriving DecidableEq, Repr

/-- A deliberately small canonical wire language: natural numbers and arrays.
It has no JSON objects, escapes, floating point numbers, or duplicate keys. -/
inductive NatTree where
  | atom (value : Nat)
  | array (values : List NatTree)

mutual
  /-- Total kernel equality for the nested wire language. The explicit
  `noncomputable` modifier suppresses compiled partial-recursion helpers. -/
  noncomputable def NatTree.decEq : (left right : NatTree) → Decidable (left = right)
    | .atom left, .atom right =>
        match (inferInstance : Decidable (left = right)) with
        | .isTrue equal => .isTrue (congrArg NatTree.atom equal)
        | .isFalse different => .isFalse (fun equal ↦ different (NatTree.atom.inj equal))
    | .array left, .array right =>
        match NatTree.listDecEq left right with
        | .isTrue equal => .isTrue (congrArg NatTree.array equal)
        | .isFalse different => .isFalse (fun equal ↦ different (NatTree.array.inj equal))
    | .atom _, .array _ => .isFalse (by intro equal; cases equal)
    | .array _, .atom _ => .isFalse (by intro equal; cases equal)
  termination_by left right => sizeOf left + sizeOf right

  /-- The accompanying structural list equality has no external computation. -/
  noncomputable def NatTree.listDecEq : (left right : List NatTree) → Decidable (left = right)
    | [], [] => .isTrue rfl
    | [], _ :: _ => .isFalse (by intro equal; cases equal)
    | _ :: _, [] => .isFalse (by intro equal; cases equal)
    | left :: lefts, right :: rights =>
        match NatTree.decEq left right with
        | .isFalse different => .isFalse (fun equal ↦ different (List.cons.inj equal).1)
        | .isTrue head =>
            match NatTree.listDecEq lefts rights with
            | .isFalse different => .isFalse (fun equal ↦ different (List.cons.inj equal).2)
            | .isTrue tail => .isTrue (by rw [head, tail])
  termination_by left right => sizeOf left + sizeOf right
end

noncomputable instance : DecidableEq NatTree := NatTree.decEq

/-- The canonical ASCII spelling of a natural-array tree. This pure printer
does not assert that any external JSON decoder agrees with it. -/
noncomputable def NatTree.render : NatTree → String
  | .atom value => toString value
  | .array values => "[" ++ String.intercalate "," (values.map NatTree.render) ++ "]"

/-- The normative wire spelling as numerical ASCII byte values. Decimal atom
digits are separated by comma byte `44` and enclosed by bracket bytes `91, 93`.
The primitive nested recursor keeps concrete equality proofs independent of
well-founded implementation proofs and large `String` equality reductions.
`noncomputable` suppresses unsupported nested-recursor code generation; this
definition has no external evaluator or additional axiom. -/
noncomputable def NatTree.renderBytes : NatTree → List Nat :=
  NatTree.rec (motive_1 := fun _ ↦ List Nat) (motive_2 := fun _ ↦ List (List Nat))
    (fun value ↦ (toString value).toList.map Char.toNat)
    (fun _ children ↦ 91 :: (List.flatten (List.intersperse [44] children)) ++ [93])
    [] (fun _ _ head tail ↦ head :: tail)

/-- Strings are arrays of Unicode scalar values, without JSON escaping. -/
def stringWire (value : String) : NatTree :=
  .array (value.toList.map (fun character ↦ .atom character.toNat))

/-- Field order is repository, commit, tree, path, blob, declaration name. -/
def sourceWire (source : SourceIdentity) : NatTree :=
  .array [stringWire source.repository, stringWire source.commit, stringWire source.tree,
    stringWire source.path, stringWire source.blob, stringWire source.declarationName]

/-- These numerical labels retain the external verification label only. -/
def verificationStatusWire : VerificationStatus → NatTree
  | .unverified => .atom 0
  | .kernelReported => .atom 1
  | .verificationFailed => .atom 2
  | .externalCandidate => .atom 3

/-- A verification record retains its exact source, label, and description. -/
def verificationWire (verification : VerificationMetadata) : NatTree :=
  .array [sourceWire verification.source, verificationStatusWire verification.status,
    stringWire verification.description]

/-- Metadata field order is verification records, then planning strings. -/
def metadataWire (metadata : Metadata) : NatTree :=
  .array [.array (metadata.verification.map verificationWire),
    .array (metadata.planning.map stringWire)]

/-- Event field order is identifier, then complete description. -/
def eventWire (event : Event) : NatTree :=
  .array [.atom event.id, stringWire event.description]

/-- Observation field order is literal operation, event, then metadata. -/
def observationWire (observation : Observation) : NatTree :=
  .array [stringWire observation.operation, eventWire observation.event,
    metadataWire observation.metadata]

/-- State field order is sources, metadata, version, then complete history. -/
def stateWire (state : ObservationState) : NatTree :=
  .array [.array (state.sources.map sourceWire), metadataWire state.metadata,
    .atom state.version, .array (state.history.map eventWire)]

/-- Distinct string values cannot collapse in the scalar-value encoding. -/
theorem stringWire_injective : Function.Injective stringWire := by
  intro left right equal
  apply String.toList_injective
  apply (List.map_injective_iff.mpr (show Function.Injective
    (fun character : Char ↦ NatTree.atom character.toNat) from ?_))
    (NatTree.array.inj equal)
  intro left right equal
  exact Char.toNat_inj.mp (NatTree.atom.inj equal)

theorem sourceWire_injective : Function.Injective sourceWire := by
  intro left right equal
  cases left
  cases right
  simpa only [sourceWire, NatTree.array.injEq, List.cons.injEq, and_true,
    stringWire_injective.eq_iff, SourceIdentity.mk.injEq] using equal

theorem verificationStatusWire_injective : Function.Injective verificationStatusWire := by
  intro left right equal
  cases left <;> cases right <;> simp_all [verificationStatusWire]

theorem verificationWire_injective : Function.Injective verificationWire := by
  intro left right equal
  cases left
  cases right
  simpa only [verificationWire, NatTree.array.injEq, List.cons.injEq, and_true,
    sourceWire_injective.eq_iff, verificationStatusWire_injective.eq_iff,
    stringWire_injective.eq_iff, VerificationMetadata.mk.injEq] using equal

theorem metadataWire_injective : Function.Injective metadataWire := by
  intro left right equal
  cases left
  cases right
  simpa only [metadataWire, NatTree.array.injEq, List.cons.injEq, and_true,
    (List.map_injective_iff.mpr verificationWire_injective).eq_iff,
    (List.map_injective_iff.mpr stringWire_injective).eq_iff, Metadata.mk.injEq] using equal

theorem eventWire_injective : Function.Injective eventWire := by
  intro left right equal
  cases left
  cases right
  simpa only [eventWire, NatTree.array.injEq, NatTree.atom.injEq, List.cons.injEq,
    and_true, stringWire_injective.eq_iff, Event.mk.injEq] using equal

/-- Every operation, event, and metadata value is retained by the wire encoder. -/
theorem observationWire_injective : Function.Injective observationWire := by
  intro left right equal
  cases left
  cases right
  simpa only [observationWire, NatTree.array.injEq, List.cons.injEq, and_true,
    stringWire_injective.eq_iff, eventWire_injective.eq_iff,
    metadataWire_injective.eq_iff, Observation.mk.injEq] using equal

/-- Wire equality binds all four variable state fields, without projection loss. -/
theorem stateWire_injective : Function.Injective stateWire := by
  intro left right equal
  cases left
  cases right
  simpa only [stateWire, NatTree.array.injEq, NatTree.atom.injEq, List.cons.injEq,
    and_true, (List.map_injective_iff.mpr sourceWire_injective).eq_iff,
    metadataWire_injective.eq_iff,
    (List.map_injective_iff.mpr eventWire_injective).eq_iff,
    ObservationState.mk.injEq] using equal

/-- Empty means that no proposition can be introduced by this interpretation. -/
def emptyCatalog : Catalog Empty where
  statement := Empty.elim
  hypotheses := Empty.elim
  source := Empty.elim

/-- The only core in this pre-target contract carries no additional assertion. -/
def coreMeaning (_ : Unit) : Prop := True

/-- Explicit interpretation into the established mathematical research state. -/
def realize (s : ObservationState) : State emptyCatalog Unit where
  target := none
  obligations := ∅
  frontier := ∅
  proved := ∅
  core := ()
  sources := s.sources
  specification := .unrestricted
  relations := []
  metadata := s.metadata
  version := s.version
  history := s.history.map (fun event ↦ (.observe, event))

/-- The empty pre-target lineage with its exact initial source identities. -/
def initial (sources : List SourceIdentity) : ObservationState :=
  { sources := sources }

theorem realize_initial (sources : List SourceIdentity) :
    realize (initial sources) = initialState emptyCatalog () sources := rfl

/-- Pure runtime update. Its use as a transition requires `Admitted`. -/
def recordObservation (s : ObservationState) (observation : Observation) : ObservationState :=
  { s with
    metadata := observation.metadata
    version := s.version + 1
    history := s.history ++ [observation.event] }

/-- Acceptance compares the actual entire resulting state and literal tag. -/
def Admitted (before : ObservationState) (observation : Observation)
    (after : ObservationState) : Prop :=
  observation.operation = recordObservationTag ∧
    after = recordObservation before observation

instance (before : ObservationState) (observation : Observation)
    (after : ObservationState) : Decidable (Admitted before observation after) :=
  inferInstanceAs (Decidable (_ ∧ _))

/-- The serialized update and mathematical `observe` commute exactly. -/
theorem realize_recordObservation (s : ObservationState) (observation : Observation) :
    realize (recordObservation s observation) =
      advance { realize s with metadata := observation.metadata } .observe observation.event := by
  simp [realize, recordObservation, advance, List.map_append]

/-- A successful concrete acceptance proof gives an actual `Change.observe`. -/
theorem admitted_change {before after : ObservationState} {observation : Observation}
    (admitted : Admitted before observation after) :
    Change coreMeaning (realize before) (realize after) := by
  rw [admitted.2, realize_recordObservation]
  exact Change.observe (realize before) observation.event observation.metadata (by
    simp [realize, SelfSpecification.unrestricted])

/-- The interpretation retains exact source identity lists. -/
theorem realize_sources (s : ObservationState) : (realize s).sources = s.sources := rfl

/-- The interpretation retains all metadata, including external verification labels. -/
theorem realize_metadata (s : ObservationState) : (realize s).metadata = s.metadata := rfl

/-- Every retained event has exactly the mathematical observation operation. -/
theorem realize_history (s : ObservationState) :
    (realize s).history = s.history.map (fun event ↦ (.observe, event)) := rfl

/-- No mathematical debt or target can be smuggled through metadata. -/
theorem realize_has_no_claims (s : ObservationState) :
    (realize s).target = none ∧ (realize s).obligations = ∅ ∧
    (realize s).frontier = ∅ ∧ (realize s).proved = ∅ ∧
    (realize s).relations = [] := by
  exact ⟨rfl, rfl, rfl, rfl, rfl⟩

/-- This validity is vacuous for claims and does not assert reachability. -/
theorem realize_valid (s : ObservationState) : Valid emptyCatalog coreMeaning (realize s) := by
  refine ⟨?_, ?_, ?_, ?_, True.intro, ?_, ?_⟩ <;>
    simp [realize, Holds]

/-- Replay is a pure ordered fold; acceptance separately checks all tags. -/
def replay (s : ObservationState) (observations : List Observation) : ObservationState :=
  observations.foldl recordObservation s

/-- The complete ordered input is admitted only when every exact tag agrees and
the separately supplied final state equals the entire computed state. -/
def ReplayAdmitted (initialState : ObservationState) (observations : List Observation)
    (finalState : ObservationState) : Prop :=
  (∀ observation ∈ observations, observation.operation = recordObservationTag) ∧
    finalState = replay initialState observations

instance (initialState : ObservationState) (observations : List Observation)
    (finalState : ObservationState) :
    Decidable (ReplayAdmitted initialState observations finalState) :=
  inferInstanceAs (Decidable (_ ∧ _))

private theorem reachable_trans {s t u : State emptyCatalog Unit}
    (first : Reachable (CoreMeaning := coreMeaning) s t)
    (second : Reachable (CoreMeaning := coreMeaning) t u) :
    Reachable (CoreMeaning := coreMeaning) s u := by
  induction second with
  | initial => exact first
  | next previous edge ih => exact .next ih edge

/-- An admitted ordered fold consists entirely of the actual mathematical edges. -/
theorem replay_reachable (s : ObservationState) (observations : List Observation)
    (tags : ∀ observation ∈ observations, observation.operation = recordObservationTag) :
    Reachable (CoreMeaning := coreMeaning) (realize s) (realize (replay s observations)) := by
  induction observations generalizing s with
  | nil => exact .initial
  | cons observation observations ih =>
      have edge : Change coreMeaning (realize s) (realize (recordObservation s observation)) :=
        admitted_change ⟨tags observation (by simp), rfl⟩
      have rest := ih (recordObservation s observation) (by
        intro other member
        exact tags other (by simp [member]))
      have first : Reachable (CoreMeaning := coreMeaning) (realize s)
          (realize (recordObservation s observation)) := .next .initial edge
      change Reachable (CoreMeaning := coreMeaning) (realize s)
        (realize (replay (recordObservation s observation) observations))
      exact reachable_trans first rest

/-- Admission of concrete replay endpoints supplies reachability between them. -/
theorem replay_admitted_reachable {before after : ObservationState}
    {observations : List Observation} (admitted : ReplayAdmitted before observations after) :
    Reachable (CoreMeaning := coreMeaning) (realize before) (realize after) := by
  rw [admitted.2]
  exact replay_reachable before observations admitted.1

/-- Replay retains the complete original source identity list, in order. -/
theorem replay_sources (s : ObservationState) (observations : List Observation) :
    (replay s observations).sources = s.sources := by
  induction observations generalizing s with
  | nil => rfl
  | cons observation observations ih => exact ih (recordObservation s observation)

/-- Replay appends every supplied event once in its supplied order. -/
theorem replay_history (s : ObservationState) (observations : List Observation) :
    (replay s observations).history = s.history ++ observations.map Observation.event := by
  induction observations generalizing s with
  | nil => simp [replay]
  | cons observation observations ih =>
      simpa [replay, recordObservation, List.append_assoc] using
        ih (recordObservation s observation)

/-- One and only one version increment occurs per retained observation. -/
theorem replay_version (s : ObservationState) (observations : List Observation) :
    (replay s observations).version = s.version + observations.length := by
  induction observations generalizing s with
  | nil => simp [replay]
  | cons observation observations ih =>
      simpa [replay, recordObservation, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using
        ih (recordObservation s observation)

/-- Admitted replay preserves semantic validity via the established invariant. -/
theorem replay_admitted_valid {before after : ObservationState}
    {observations : List Observation} (admitted : ReplayAdmitted before observations after) :
    Valid emptyCatalog coreMeaning (realize after) :=
  reachable_preserves_valid (realize_valid before) (replay_admitted_reachable admitted)

/-- A hostile operation tag has no admission proof, even for a matching update. -/
theorem wrong_operation_rejected (s : ObservationState) (observation : Observation)
    (wrong : observation.operation ≠ recordObservationTag) (after : ObservationState) :
    ¬ Admitted s observation after := fun admitted ↦ wrong admitted.1

/-- A source-list mutation is rejected by the full resulting-state equality. -/
theorem source_mutation_rejected (s : ObservationState) (observation : Observation)
    (after : ObservationState) (changed : after.sources ≠ s.sources) :
    ¬ Admitted s observation after := by
  intro admitted
  apply changed
  rw [admitted.2]
  rfl

end GRWTSK.Logic.StateTransition.ResearchObservation
