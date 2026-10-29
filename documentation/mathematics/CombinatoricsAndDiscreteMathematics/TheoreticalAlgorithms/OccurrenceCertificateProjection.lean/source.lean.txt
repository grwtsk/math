import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OutputMapEventFolds

/-!
Finite transport of the source-verified Rust producer postcondition to the Lean
certificate consumer. Rust-facing records retain origin and root fields which
the consumer's positional source identities do not store. Source identities are
bound by ordered route position, never recovered from a possibly repeated root.
The finite map views, character/String interpretation, library comparator, and
source-to-Verus interpretation remain separately recorded interfaces.
-/
namespace GRWTSK.CertificateCorrespondence
open SourceRefinement CertificateProducer CertificateOrchestration CertificateMaintenance

inductive RustArea where
  | taxonomy | archive
  deriving DecidableEq

inductive RustOrigin where
  | source | destination | preservation
  deriving DecidableEq

def areaCode : RustArea → Nat
  | .taxonomy => 0
  | .archive => 1

def originCode : RustOrigin → Nat
  | .source => 0
  | .destination => 1
  | .preservation => 2

structure RustReadSet where
  root : String
  present : Bool
  directories : List String
  files : List (String × Nat)
  deriving DecidableEq

def readSet (value : RustReadSet) : ReadSet :=
  ⟨value.root, value.present, value.directories, value.files⟩

structure RustOccurrence where
  origin : RustOrigin
  sourceRoot : String
  sourcePath : String
  targetArea : RustArea
  target : String
  object : Nat
  deriving DecidableEq

structure RustOutput where
  area : RustArea
  path : String
  object : Nat
  deriving DecidableEq

def output (value : RustOutput) : Output :=
  ⟨areaCode value.area, value.path, value.object⟩

structure RustCertificate where
  schema : String
  planLabel : String
  objects : List Bytes
  source : RustReadSet
  destination : RustReadSet
  archive : RustReadSet
  preservation : RustReadSet
  rawSources : List RustReadSet
  occurrences : List RustOccurrence
  outputs : List RustOutput
  deriving DecidableEq

structure Frozen where
  planLabel : String
  objects : List Bytes
  source : RustReadSet
  destination : RustReadSet
  archive : RustReadSet
  preservation : RustReadSet
  rawSources : List RustReadSet
  raw : List RawRoute
  prepared : List Binding
  placeholders : List String
  empty : Nat
  deriving DecidableEq

def readSets (input : Frozen) : List ReadSet :=
  [readSet input.source, readSet input.destination, readSet input.archive,
    readSet input.preservation] ++ input.rawSources.map readSet

def bindings (input : Frozen) : List Binding := routeBindings input.raw input.prepared

/-- Each raw route names its own source-set position and a preservation slot.
This is an independent finite admission condition, not an inferred property of
producer success or a premise that the consumer has already accepted. -/
def InputAdmission (input : Frozen) : Prop :=
  (∀ set ∈ readSets input, canonicalReadSet input.objects set) ∧
  bindingKeys (bindings input) = completeSourceKeys (readSets input) ∧
  (∀ route ∈ input.raw, 4 ≤ route.binding.sourceSet ∧
    sourceSlot (readSets input) route.binding = sourceSlot (readSets input)
      ⟨3, route.retainedPath, route.binding.area, route.binding.target⟩ ∧
    (sourceSlot (readSets input) route.binding).isSome = true) ∧
  (∀ binding ∈ input.prepared, binding.sourceSet = 0) ∧
  input.objects[input.empty]? = some []

/-- Positional binding preserves the batch index even when roots repeat. Root,
origin, source path, destination, object slot, and literal bounds are separate
checks. No checker result, producer execution, or byte-decoding conclusion is
included in this relation. -/
def EntryMatches (input : Frozen) (binding : Binding) (entry : RustOccurrence) : Prop :=
  (∃ set, (readSets input)[binding.sourceSet]? = some set ∧ entry.sourceRoot = set.root) ∧
  entry.sourcePath = binding.sourcePath ∧ areaCode entry.targetArea = binding.area ∧
  entry.target = binding.target ∧
  ((binding.sourceSet = 0 ∧ entry.origin = .source) ∨
    (4 ≤ binding.sourceSet ∧ entry.origin = .preservation)) ∧
  sourceSlot (readSets input) binding = some entry.object ∧
  entry.object < input.objects.length

def occurrence (binding : Binding) (entry : RustOccurrence) : Occurrence :=
  ⟨⟨binding.sourceSet, entry.sourcePath, areaCode entry.targetArea, entry.target⟩, entry.object⟩

/-- Length admission makes the positional join total: neither side can be
silently truncated by the underlying finite zip. -/
def projectEntries (expected : List Binding) (actual : List RustOccurrence) : Option (List Occurrence) :=
  if expected.length = actual.length then some (List.zipWith occurrence expected actual) else none

def projectedEntries (input : Frozen) (certificate : RustCertificate) : List Occurrence :=
  List.zipWith occurrence (bindings input) certificate.occurrences

def projectedOutputs (certificate : RustCertificate) : List Output := certificate.outputs.map output

def Envelope (input : Frozen) (certificate : RustCertificate) : Prop :=
  certificate.schema = "noe.taxonomy-byte-certificate/1" ∧ certificate.planLabel = input.planLabel ∧
  certificate.objects = input.objects ∧ certificate.source = input.source ∧
  certificate.destination = input.destination ∧ certificate.archive = input.archive ∧
  certificate.preservation = input.preservation ∧ certificate.rawSources = input.rawSources

/-- These are the finite semantic facts exported by the source-verified frozen
producer. Inventory equality is extensional; ordering and key uniqueness are
independent clauses, and all indices are bounded. -/
def SourceContract (input : Frozen) (certificate : RustCertificate) : Prop :=
  Envelope input certificate ∧
  (bindings input).Forall₂ (EntryMatches input) certificate.occurrences ∧
  ((projectedOutputs certificate).map outputKey).Nodup ∧
  ((projectedOutputs certificate).map outputKey).Pairwise targetLess ∧
  (projectedOutputs certificate ⊆ archiveOutputs (readSets input) ++
    (projectedEntries input certificate).map occurrenceOutput ++ placeholderOutputs input.placeholders input.empty) ∧
  (archiveOutputs (readSets input) ++ (projectedEntries input certificate).map occurrenceOutput ++
    placeholderOutputs input.placeholders input.empty ⊆ projectedOutputs certificate) ∧
  (∀ row ∈ projectedOutputs certificate, row.object < input.objects.length)

instance (input : Frozen) : Decidable (InputAdmission input) := inferInstanceAs
  (Decidable ((∀ set ∈ readSets input, canonicalReadSet input.objects set) ∧
    bindingKeys (bindings input) = completeSourceKeys (readSets input) ∧
    (∀ route ∈ input.raw, 4 ≤ route.binding.sourceSet ∧
      sourceSlot (readSets input) route.binding = sourceSlot (readSets input)
        ⟨3, route.retainedPath, route.binding.area, route.binding.target⟩ ∧
      (sourceSlot (readSets input) route.binding).isSome = true) ∧
    (∀ binding ∈ input.prepared, binding.sourceSet = 0) ∧ input.objects[input.empty]? = some []))

/-- Root witness and matching object slot are executable equalities. -/
def entryCheck (input : Frozen) (binding : Binding) (entry : RustOccurrence) : Bool :=
  match (readSets input)[binding.sourceSet]? with
  | none => false
  | some set => decide (entry.sourceRoot = set.root ∧ entry.sourcePath = binding.sourcePath ∧
      areaCode entry.targetArea = binding.area ∧ entry.target = binding.target ∧
      ((binding.sourceSet = 0 ∧ entry.origin = .source) ∨
        (4 ≤ binding.sourceSet ∧ entry.origin = .preservation)) ∧
      sourceSlot (readSets input) binding = some entry.object ∧ entry.object < input.objects.length)

theorem areaCode_injective {first second : RustArea} (equal : areaCode first = areaCode second) :
    first = second := by cases first <;> cases second <;> simp_all [areaCode]

theorem originCode_injective {first second : RustOrigin} (equal : originCode first = originCode second) :
    first = second := by cases first <;> cases second <;> simp_all [originCode]

theorem fixed_readset_prefix (input : Frozen) :
    (readSets input)[0]? = some (readSet input.source) ∧
    (readSets input)[1]? = some (readSet input.destination) ∧
    (readSets input)[2]? = some (readSet input.archive) ∧
    (readSets input)[3]? = some (readSet input.preservation) := by simp [readSets]

theorem raw_readset_index (input : Frozen) (index : Nat) :
    (readSets input)[index + 4]? = (input.rawSources[index]?).map readSet := by
  simp [readSets]

theorem readsets_have_fixed_prefix (input : Frozen) : 4 ≤ (readSets input).length := by
  simp [readSets]

theorem admission_input_check {input : Frozen} (admitted : InputAdmission input) :
    inputCheck input.objects (readSets input) input.raw input.prepared input.empty = true := by
  apply (inputCheck_spec _ _ _ _ _).mpr
  refine ⟨(readsetsCheck_spec _ _).mpr ⟨readsets_have_fixed_prefix input, admitted.1⟩,
    admitted.2.1, ?_, admitted.2.2.2.1, admitted.2.2.2.2⟩
  apply List.all_eq_true.mpr
  intro route member
  obtain ⟨raw, retained, present⟩ := admitted.2.2.1 route member
  obtain ⟨index, selected⟩ := Option.isSome_iff_exists.mp present
  have preserved := retained.symm.trans selected
  simp [raw, selected, preserved]

theorem entryCheck_exact (input : Frozen) (binding : Binding) (entry : RustOccurrence) :
    entryCheck input binding entry = true ↔ EntryMatches input binding entry := by
  unfold entryCheck EntryMatches
  cases found : (readSets input)[binding.sourceSet]? with
  | none => simp
  | some set => simp

instance (input : Frozen) (binding : Binding) (entry : RustOccurrence) :
    Decidable (EntryMatches input binding entry) :=
  decidable_of_iff (entryCheck input binding entry = true) (entryCheck_exact input binding entry)

instance (input : Frozen) (certificate : RustCertificate) : Decidable (Envelope input certificate) := by
  unfold Envelope
  infer_instance

instance (input : Frozen) (certificate : RustCertificate) : Decidable (SourceContract input certificate) := by
  unfold SourceContract
  infer_instance

theorem entry_fields_exact {input : Frozen} {binding : Binding} {entry : RustOccurrence}
    (matched : EntryMatches input binding entry) :
    (occurrence binding entry).binding = binding := by
  obtain ⟨_, path, area, target, _⟩ := matched
  cases binding
  simp_all [occurrence]

theorem entry_root_exact {input : Frozen} {binding : Binding} {entry : RustOccurrence}
    (matched : EntryMatches input binding entry) :
    ∃ set, (readSets input)[binding.sourceSet]? = some set ∧ entry.sourceRoot = set.root := matched.1

theorem entry_origin_exact {input : Frozen} {binding : Binding} {entry : RustOccurrence}
    (matched : EntryMatches input binding entry) :
    (binding.sourceSet = 0 ∧ entry.origin = .source) ∨
      (4 ≤ binding.sourceSet ∧ entry.origin = .preservation) := matched.2.2.2.2.1

theorem entry_slot_exact {input : Frozen} {binding : Binding} {entry : RustOccurrence}
    (matched : EntryMatches input binding entry) :
    sourceSlot (readSets input) binding = some entry.object := matched.2.2.2.2.2.1

/-- An exact finite-map membership witness determines the first-match decoder
when the canonical list contains each key once. No comparator implementation
assumption is needed after the list's key uniqueness has been established. -/
theorem slot_of_unique_member {files : List (String × Nat)} {path : String} {object : Nat}
    (unique : (files.map Prod.fst).Nodup) (member : (path, object) ∈ files) :
    slot path files = some object := by
  induction files with
  | nil => simp at member
  | cons head rest ih =>
      rcases head with ⟨headPath, headObject⟩
      have facts := List.nodup_cons.mp unique
      rcases List.mem_cons.mp member with same | member
      · have fields := Prod.mk.inj same
        simp [slot, fields.1, fields.2]
      · have different : path ≠ headPath := by
          intro same
          exact facts.1 (List.mem_map.mpr ⟨(path, object), member, same⟩)
        simp [slot, different, ih facts.2 member]

theorem slot_member_of_lookup {files : List (String × Nat)} {path : String} {object : Nat}
    (found : slot path files = some object) : (path, object) ∈ files := by
  induction files with
  | nil => simp [slot] at found
  | cons head rest ih =>
      rcases head with ⟨headPath, headObject⟩
      by_cases same : path = headPath
      · simp [slot, same] at found
        simp [same, found]
      · simp [slot, same] at found
        exact List.mem_cons_of_mem _ (ih found)

theorem canonical_source_slot_of_member {input : Frozen} {set : ReadSet} {sourceSet : Nat}
    {path : String} {object : Nat} (admitted : InputAdmission input)
    (selected : (readSets input)[sourceSet]? = some set) (member : (path, object) ∈ set.files) :
    sourceSlot (readSets input) ⟨sourceSet, path, 0, ""⟩ = some object ∧
      object < input.objects.length := by
  have canonical := admitted.1 set (List.mem_of_getElem? selected)
  have unique : (set.files.map Prod.fst).Nodup := canonical.1.imp (fun less same => by
    subst same
    exact String.lt_irrefl _ less)
  refine ⟨by simp [sourceSlot, selected, slot_of_unique_member unique member], ?_⟩
  have bounded := canonical.2.2.2 (path, object) member
  simpa using bounded

/-- This is the finite membership form exported by the Rust/Verus map model.
It contains no Lean sourceSlot, collect, producer, or certificate checker result. -/
def FiniteEntryMatches (input : Frozen) (binding : Binding) (entry : RustOccurrence) : Prop :=
  (∃ set, (readSets input)[binding.sourceSet]? = some set ∧ entry.sourceRoot = set.root ∧
    (entry.sourcePath, entry.object) ∈ set.files) ∧
  entry.sourcePath = binding.sourcePath ∧ areaCode entry.targetArea = binding.area ∧
  entry.target = binding.target ∧
  ((binding.sourceSet = 0 ∧ entry.origin = .source) ∨
    (4 ≤ binding.sourceSet ∧ entry.origin = .preservation))

theorem finite_entry_matches_to_entry {input : Frozen} {binding : Binding} {entry : RustOccurrence}
    (admitted : InputAdmission input) (finite : FiniteEntryMatches input binding entry) :
    EntryMatches input binding entry := by
  obtain ⟨⟨set, selected, root, member⟩, path, area, target, origin⟩ := finite
  have sourceMember : (binding.sourcePath, entry.object) ∈ set.files := by simpa [path] using member
  obtain ⟨found, bounded⟩ := canonical_source_slot_of_member admitted selected sourceMember
  refine ⟨⟨set, selected, root⟩, path, area, target, origin, ?_, bounded⟩
  simpa [sourceSlot] using found

theorem finite_entry_matches_iff {input : Frozen} {binding : Binding} {entry : RustOccurrence}
    (admitted : InputAdmission input) :
    FiniteEntryMatches input binding entry ↔ EntryMatches input binding entry := by
  refine ⟨finite_entry_matches_to_entry admitted, ?_⟩
  intro matched
  obtain ⟨set, selected, root⟩ := matched.1
  have found := entry_slot_exact matched
  simp only [sourceSlot, selected] at found
  have member := slot_member_of_lookup found
  refine ⟨⟨set, selected, root, ?_⟩, matched.2.1, matched.2.2.1, matched.2.2.2.1,
    entry_origin_exact matched⟩
  simpa [matched.2.1] using member

theorem projectEntries_rejects_length (expected : List Binding) (actual : List RustOccurrence)
    (different : expected.length ≠ actual.length) : projectEntries expected actual = none := by
  simp [projectEntries, different]

theorem matched_collection {input : Frozen} {expected : List Binding} {actual : List RustOccurrence}
    (matched : expected.Forall₂ (EntryMatches input) actual) :
    collect input.objects (readSets input) expected = some (List.zipWith occurrence expected actual) := by
  induction matched with
  | nil => rfl
  | @cons binding entry expected actual head tail ih =>
      have fields := entry_fields_exact head
      have slot := entry_slot_exact head
      have literal : (input.objects[entry.object]?).isSome = true := by
        simp [head.2.2.2.2.2.2]
      obtain ⟨bytes, exact⟩ := Option.isSome_iff_exists.mp literal
      have record : (⟨binding, entry.object⟩ : Occurrence) = occurrence binding entry := by
        cases entry
        simp_all [occurrence]
      simp [collect, slot, exact, ih, record]

/-- The native finite postcondition differs only at map lookup: it exports
exact finite file membership, which admission transports to the list decoder. -/
def FiniteSourceContract (input : Frozen) (certificate : RustCertificate) : Prop :=
  Envelope input certificate ∧
  (bindings input).Forall₂ (FiniteEntryMatches input) certificate.occurrences ∧
  ((projectedOutputs certificate).map outputKey).Nodup ∧
  ((projectedOutputs certificate).map outputKey).Pairwise targetLess ∧
  (projectedOutputs certificate ⊆ archiveOutputs (readSets input) ++
    (projectedEntries input certificate).map occurrenceOutput ++ placeholderOutputs input.placeholders input.empty) ∧
  (archiveOutputs (readSets input) ++ (projectedEntries input certificate).map occurrenceOutput ++
    placeholderOutputs input.placeholders input.empty ⊆ projectedOutputs certificate) ∧
  (∀ row ∈ projectedOutputs certificate, row.object < input.objects.length)

theorem finite_source_contract_transport {input : Frozen} {certificate : RustCertificate}
    (admitted : InputAdmission input) (finite : FiniteSourceContract input certificate) :
    SourceContract input certificate :=
  ⟨finite.1, finite.2.1.imp (fun _ _ matched => finite_entry_matches_to_entry admitted matched), finite.2.2⟩

theorem contract_exact_collection {input : Frozen} {certificate : RustCertificate}
    (contract : SourceContract input certificate) :
    collect input.objects (readSets input) (bindings input) = some (projectedEntries input certificate) :=
  matched_collection contract.2.1

theorem contract_checked_projection {input : Frozen} {certificate : RustCertificate}
    (contract : SourceContract input certificate) :
    projectEntries (bindings input) certificate.occurrences = some (projectedEntries input certificate) := by
  simp [projectEntries, projectedEntries, List.Forall₂.length_eq contract.2.1]

theorem contract_occurrence_order {input : Frozen} {certificate : RustCertificate}
    (contract : SourceContract input certificate) :
    (projectedEntries input certificate).map Occurrence.binding = bindings input :=
  collect_binding_order (contract_exact_collection contract)

theorem contract_occurrence_count {input : Frozen} {certificate : RustCertificate}
    (contract : SourceContract input certificate) :
    (projectedEntries input certificate).length = input.raw.length + input.prepared.length := by
  have order := congrArg List.length (contract_occurrence_order contract)
  simpa [bindings, routeBindings] using order

theorem contract_occurrence_multiplicity {input : Frozen} {certificate : RustCertificate}
    (contract : SourceContract input certificate) (binding : Binding) :
    ((projectedEntries input certificate).map Occurrence.binding).count binding =
      (bindings input).count binding := by rw [contract_occurrence_order contract]

theorem contract_output_inventory {input : Frozen} {certificate : RustCertificate}
    (contract : SourceContract input certificate) (row : Output) :
    row ∈ projectedOutputs certificate ↔ row ∈ archiveOutputs (readSets input) ∨
      row ∈ (projectedEntries input certificate).map occurrenceOutput ∨
      row ∈ placeholderOutputs input.placeholders input.empty := by
  constructor
  · intro member
    simpa [or_assoc] using contract.2.2.2.2.1 member
  · intro member
    apply contract.2.2.2.2.2.1
    simpa [or_assoc] using member

theorem contract_outputs_total {input : Frozen} {certificate : RustCertificate}
    (contract : SourceContract input certificate) :
    ∃ rendered, renderOutputs input.objects (projectedOutputs certificate) = some rendered := by
  apply renderOutputs_total
  intro row member
  simp [contract.2.2.2.2.2.2 row member]

theorem source_contract_certificate_check {input : Frozen} {certificate : RustCertificate}
    (admitted : InputAdmission input) (contract : SourceContract input certificate) :
    certificateCheck input.objects (readSets input) (readSets input) (bindings input)
      (projectedEntries input certificate) (projectedOutputs certificate) = true := by
  have inputs := (inputCheck_spec _ _ _ _ _).mp (admission_input_check admitted)
  obtain ⟨entries, realized, occurrencesExact⟩ := collect_exact_realization (contract_exact_collection contract)
  obtain ⟨outputs, outputsExact⟩ := contract_outputs_total contract
  apply (certificateCheck_spec _ _ _ _ _ _).mpr
  refine ⟨(readsetsCheck_spec _ _).mp inputs.1, rfl, inputs.2.1, ?_, ?_, ?_⟩
  · rw [realized, occurrencesExact]
  · simp [realized]
  · unfold coverageCheck
    rw [occurrencesExact, outputsExact]
    apply (OccurrencePlans.coverageCheck_eq_true_iff _ _).mpr
    apply renderOccurrences_covered occurrencesExact outputsExact
    intro row member
    apply outputLookup_complete_unique contract.2.2.1
    exact (contract_output_inventory contract row).mpr (Or.inr (Or.inl member))

theorem source_contract_exact_decode {input : Frozen} {certificate : RustCertificate}
    (admitted : InputAdmission input) (contract : SourceContract input certificate) :
    ∃ entries outputs,
      realize input.objects (readSets input) (bindings input) = some entries ∧
      renderOccurrences input.objects (projectedEntries input certificate) = some entries ∧
      renderOutputs input.objects (projectedOutputs certificate) = some outputs ∧
      OccurrencePlans.decode outputs (OccurrencePlans.references entries) = some entries :=
  accepted_exact_decode (source_contract_certificate_check admitted contract)

/-- Independent record projection reads the actual certificate envelope. -/
def projectCertificate (input : Frozen) (certificate : RustCertificate) : Option Certificate := do
  let entries ← projectEntries (bindings input) certificate.occurrences
  pure ⟨certificate.planLabel, certificate.objects,
    [readSet certificate.source, readSet certificate.destination, readSet certificate.archive,
      readSet certificate.preservation] ++ certificate.rawSources.map readSet,
    ⟨entries, projectedOutputs certificate⟩⟩

theorem contract_envelope_exact {input : Frozen} {certificate : RustCertificate}
    (contract : SourceContract input certificate) :
    certificate.schema = "noe.taxonomy-byte-certificate/1" ∧
    certificate.planLabel = input.planLabel ∧ certificate.objects = input.objects ∧
    certificate.source = input.source ∧ certificate.destination = input.destination ∧
    certificate.archive = input.archive ∧ certificate.preservation = input.preservation ∧
    certificate.rawSources = input.rawSources := contract.1

theorem contract_projectCertificate {input : Frozen} {certificate : RustCertificate}
    (contract : SourceContract input certificate) :
    projectCertificate input certificate = some ⟨input.planLabel, input.objects, readSets input,
      ⟨projectedEntries input certificate, projectedOutputs certificate⟩⟩ := by
  rcases contract_envelope_exact contract with ⟨_, label, objects, source, destination, archive, preservation, raw⟩
  simp [projectCertificate, contract_checked_projection contract, label, objects,
    source, destination, archive, preservation, raw, readSets]

theorem contract_readset_identity {input : Frozen} {certificate : RustCertificate}
    (contract : SourceContract input certificate) :
    [readSet certificate.source, readSet certificate.destination, readSet certificate.archive,
      readSet certificate.preservation] ++ certificate.rawSources.map readSet = readSets input := by
  rcases contract_envelope_exact contract with ⟨_, _, _, source, destination, archive, preservation, raw⟩
  simp [readSets, source, destination, archive, preservation, raw]

theorem projected_certificate_consumed {input : Frozen} {certificate : RustCertificate} {projected : Certificate}
    (admitted : InputAdmission input) (contract : SourceContract input certificate)
    (projectedExact : projectCertificate input certificate = some projected) :
    projected.objects = input.objects ∧ projected.readsets = readSets input ∧
    projected.planLabel = input.planLabel ∧
    certificateCheck projected.objects projected.readsets projected.readsets (bindings input)
      projected.result.occurrences projected.result.outputs = true := by
  have same := Option.some.inj (projectedExact.symm.trans (contract_projectCertificate contract))
  subst projected
  exact ⟨rfl, rfl, rfl, source_contract_certificate_check admitted contract⟩

theorem output_key_nodup_implies_records_nodup (outputs : List Output)
    (unique : (outputs.map outputKey).Nodup) : outputs.Nodup := by
  induction outputs with
  | nil => simp
  | cons head rest ih =>
      simp only [List.map_cons, List.nodup_cons] at unique ⊢
      refine ⟨?_, ih unique.2⟩
      intro member
      exact unique.1 (List.mem_map.mpr ⟨head, member, rfl⟩)

theorem targetLess_asymmetric {first second : TargetKey}
    (forward : targetLess first second) : ¬ targetLess second first := by
  rcases forward with less | ⟨same, less⟩
  · rintro (back | ⟨equal, _⟩)
    · exact Nat.lt_asymm less back
    · omega
  · rintro (back | ⟨_, reverse⟩)
    · omega
    · exact String.lt_asymm less reverse

theorem canonical_inventory_determines_records {first second : List Output}
    (firstUnique : (first.map outputKey).Nodup) (secondUnique : (second.map outputKey).Nodup)
    (firstSorted : (first.map outputKey).Pairwise targetLess)
    (secondSorted : (second.map outputKey).Pairwise targetLess)
    (inventory : ∀ row, row ∈ first ↔ row ∈ second) : first = second := by
  have permutation := (List.perm_ext_iff_of_nodup
    (output_key_nodup_implies_records_nodup first firstUnique)
    (output_key_nodup_implies_records_nodup second secondUnique)).mpr inventory
  apply List.Perm.eq_of_pairwise (le := fun a b => targetLess (outputKey a) (outputKey b))
      _ (firstSorted.of_map outputKey (fun _ _ h => h))
      (secondSorted.of_map outputKey (fun _ _ h => h)) permutation
  intro first second _ _ forward backward
  exact False.elim (targetLess_asymmetric forward backward)

/-- Canonical output order upgrades extensional request inventory to exact list
identity. Numeric insertion slots never stand in for literal object indices. -/
theorem source_contract_derive_correspondence {input : Frozen} {certificate : RustCertificate}
    {ordered : List (TargetKey × Nat)} {derived : Certificate}
    (contract : SourceContract input certificate)
    (produced : derive input.planLabel input.objects (readSets input) input.raw input.prepared
      input.placeholders input.empty ordered = some derived) :
    derived = ⟨input.planLabel, input.objects, readSets input,
      ⟨projectedEntries input certificate, projectedOutputs certificate⟩⟩ := by
  have collected := derive_exact_occurrences produced
  have sameOccurrences := Option.some.inj (collected.symm.trans (contract_exact_collection contract))
  have sorts := derive_output_keys_unique produced
  have sameOutputs : derived.result.outputs = projectedOutputs certificate := by
    apply canonical_inventory_determines_records sorts.1 contract.2.2.1
      (sorts.2.imp (fun h => h)) contract.2.2.2.1
    intro row
    rw [derive_complete_output_records produced row, contract_output_inventory contract row, sameOccurrences]
  have envelope := derive_preserves_inputs produced
  cases derived with
  | mk label objects sets result =>
      cases result
      simp_all

theorem insertOutput_total_with_reference {reference current : List Output} {row : Output}
    (unique : (reference.map outputKey).Nodup) (before : current ⊆ reference)
    (requested : row ∈ reference) :
    ∃ next, insertOutput current row = some next ∧ next ⊆ reference := by
  cases found : outputLookup (outputKey row) current with
  | none =>
      refine ⟨current ++ [row], by simp [insertOutput, found], ?_⟩
      intro item member
      rcases List.mem_append.mp member with old | new
      · exact before old
      · simpa using (List.mem_singleton.mp new) ▸ requested
  | some previous =>
      obtain ⟨prior, member, key, object⟩ := outputLookup_witness found
      have old := outputLookup_complete_unique unique (before member)
      have new := outputLookup_complete_unique unique requested
      rw [key] at old
      have same : previous = row.object := object.symm.trans (Option.some.inj (old.symm.trans new))
      exact ⟨current, by simp [insertOutput, found, same], before⟩

theorem mergeOutputs_total_with_reference {reference rows current : List Output}
    (unique : (reference.map outputKey).Nodup) (requested : rows ⊆ reference)
    (before : current ⊆ reference) :
    ∃ result, mergeOutputs rows current = some result ∧ result ⊆ reference := by
  induction rows generalizing current with
  | nil => exact ⟨current, rfl, before⟩
  | cons row rest ih =>
      obtain ⟨next, inserted, contained⟩ := insertOutput_total_with_reference (row := row) unique before (requested (by simp))
      obtain ⟨result, merged, bounded⟩ := ih (fun _ member => requested (by simp [member])) contained
      exact ⟨result, by simp [mergeOutputs, inserted, merged], bounded⟩

theorem insertion_defined_agrees (state : Outputs) (row : Output) :
    (insertOutput (records state.targets) row).isSome =
      (targetInsert state.targets (outputKey row) row.object).isSome := by
  unfold insertOutput targetInsert
  rw [records_lookup]
  cases found : targetLookup (outputKey row) state.targets with
  | none => rfl
  | some pair =>
      rcases pair with ⟨slot, object⟩
      by_cases same : object = row.object <;> simp [same]

theorem insert_event_of_record_insert {state : Outputs} {event : Event} {rows : List Output}
    (matched : metadataMatches (outputKey event.output) event.output.object event.metadata = true)
    (inserted : insertOutput (records state.targets) event.output = some rows) :
    ∃ next, applyEvent state event = some next ∧ records next.targets = rows := by
  have defined := insertion_defined_agrees state event.output
  rw [inserted] at defined
  cases changed : targetInsert state.targets (outputKey event.output) event.output.object with
  | none => simp [changed] at defined
  | some pair =>
      rcases pair with ⟨targets, slot⟩
      let next : Outputs := ⟨targets, lowerRoute state.lowered slot event.output.object event.metadata⟩
      have step : applyEvent state event = some next := by simp [applyEvent, CertificateOrchestration.insert, matched, changed, next]
      refine ⟨next, step, ?_⟩
      exact Option.some.inj ((insert_records_correspondence step).symm.trans inserted)

theorem run_of_merge {state : Outputs} {history : List Event} {rows : List Output}
    (matched : ∀ event ∈ history,
      metadataMatches (outputKey event.output) event.output.object event.metadata = true)
    (merged : mergeOutputs (history.map Event.output) (records state.targets) = some rows) :
    ∃ final, run state history = some final ∧ records final.targets = rows := by
  induction history generalizing state with
  | nil =>
      simp [mergeOutputs] at merged
      exact ⟨state, rfl, merged⟩
  | cons event rest ih =>
      simp only [List.map_cons, mergeOutputs] at merged
      cases inserted : insertOutput (records state.targets) event.output with
      | none => simp [inserted] at merged
      | some nextRows =>
          simp [inserted] at merged
          obtain ⟨next, changed, exactRows⟩ := insert_event_of_record_insert (matched event (by simp)) inserted
          rw [← exactRows] at merged
          obtain ⟨final, executed, finalRows⟩ := ih (fun e member => matched e (by simp [member])) merged
          exact ⟨final, by simp [run, changed, executed], finalRows⟩

theorem events_metadata_matches (sets : List ReadSet) (entries : List Occurrence)
    (placeholders : List String) (empty : Nat) :
    ∀ event ∈ events sets entries placeholders empty,
      metadataMatches (outputKey event.output) event.output.object event.metadata = true := by
  intro event member
  simp only [events, List.mem_append, List.mem_map] at member
  rcases member with (⟨row, _, rfl⟩ | ⟨entry, _, rfl⟩) | ⟨row, _, rfl⟩
  · rfl
  · simp [metadataMatches, occurrenceOutput, outputKey]
  · rfl

def targetSlot (state : Outputs) (key : TargetKey) : Nat :=
  ((targetLookup key state.targets).getD (0, 0)).1

def canonicalEnumeration (state : Outputs) (reference : List Output) : List (TargetKey × Nat) :=
  reference.map fun row => (outputKey row, targetSlot state (outputKey row))

theorem reference_target_lookup {state : Outputs} {reference : List Output} {row : Output}
    (valid : Invariant state) (inventory : ∀ item, item ∈ reference ↔ item ∈ records state.targets)
    (member : row ∈ reference) :
    ∃ slot, targetLookup (outputKey row) state.targets = some (slot, row.object) := by
  have found := outputLookup_complete_unique (by simpa [records_keys] using valid.1) ((inventory row).mp member)
  rw [records_lookup] at found
  cases slot : targetLookup (outputKey row) state.targets with
  | none => simp [slot] at found
  | some pair =>
      rcases pair with ⟨index, object⟩
      simp [slot] at found
      exact ⟨index, by simp [← found]⟩

theorem canonicalEnumeration_checked {state : Outputs} {reference : List Output}
    (valid : Invariant state) (unique : (reference.map outputKey).Nodup)
    (sorted : (reference.map outputKey).Pairwise targetLess)
    (inventory : ∀ row, row ∈ reference ↔ row ∈ records state.targets) :
    enumerationCheck state (canonicalEnumeration state reference) = true := by
  have keys : (reference.map outputKey).Perm (state.targets.map Prod.fst) := by
    apply (List.perm_ext_iff_of_nodup unique valid.1).mpr
    intro key
    rw [← records_keys]
    constructor
    · intro member
      obtain ⟨row, member, same⟩ := List.mem_map.mp member
      exact List.mem_map.mpr ⟨row, (inventory row).mp member, same⟩
    · intro member
      obtain ⟨row, member, same⟩ := List.mem_map.mp member
      exact List.mem_map.mpr ⟨row, (inventory row).mpr member, same⟩
  have projectedKeys : (canonicalEnumeration state reference).map Prod.fst = reference.map outputKey := by
    simp [canonicalEnumeration, List.map_map, Function.comp_def]
  have sorted' : (reference.map outputKey).Pairwise keyLt := sorted.imp (fun h => h)
  simp only [enumerationCheck, Bool.and_eq_true, decide_eq_true_eq]
  refine ⟨⟨by simpa [projectedKeys] using unique, by simpa [projectedKeys] using keys,
    by simpa [projectedKeys] using sorted'⟩, ?_⟩
  apply List.all_eq_true.mpr
  intro pair member
  obtain ⟨row, present, rfl⟩ := List.mem_map.mp member
  obtain ⟨slot, found⟩ := reference_target_lookup valid inventory present
  simp [targetSlot, found]

/-- Acceptance transports as well as successful-result facts: the finite Lean
producer accepts every admitted source postcondition, with an explicit canonical
enumeration whose values are target slots rather than literal object indices. -/
theorem source_contract_derive_exists {input : Frozen} {certificate : RustCertificate}
    (admitted : InputAdmission input) (contract : SourceContract input certificate) :
    ∃ ordered,
      derive input.planLabel input.objects (readSets input) input.raw input.prepared
        input.placeholders input.empty ordered = some ⟨input.planLabel, input.objects, readSets input,
          ⟨projectedEntries input certificate, projectedOutputs certificate⟩⟩ := by
  let entries := projectedEntries input certificate
  let reference := projectedOutputs certificate
  let history := events (readSets input) entries input.placeholders input.empty
  have requested : history.map Event.output ⊆ reference := by
    rw [events_output_rows]
    exact contract.2.2.2.2.2.1
  obtain ⟨merged, mergedExact, _⟩ := mergeOutputs_total_with_reference contract.2.2.1 requested
    (by simp : ([] : List Output) ⊆ reference)
  have initialRecords : records initial.targets = [] := rfl
  rw [← initialRecords] at mergedExact
  obtain ⟨final, ran, rows⟩ := run_of_merge (events_metadata_matches _ _ _ _) mergedExact
  have valid := run_preserves_invariant initial_invariant ran
  have inventory : ∀ row, row ∈ reference ↔ row ∈ records final.targets := by
    intro row
    rw [rows]
    have mergedInventory := mergeOutputs_record_inventory mergedExact row
    have exactRows : row ∈ merged ↔ row ∈ archiveOutputs (readSets input) ∨
        row ∈ (projectedEntries input certificate).map occurrenceOutput ∨
        row ∈ placeholderOutputs input.placeholders input.empty := by
      simpa [initialRecords, history, entries, events_output_rows, or_assoc] using mergedInventory
    exact (contract_output_inventory contract row).trans exactRows.symm
  let ordered := canonicalEnumeration final reference
  have checked : enumerationCheck final ordered = true :=
    canonicalEnumeration_checked valid contract.2.2.1 contract.2.2.2.1 inventory
  let result : Produced := ⟨final.lowered.metadata.filterMap id,
    ordered.map fun row => ⟨row.1.1, row.1.2, targetObject final row.1⟩⟩
  have finished : finish final ordered (slotObject final)
      (markedIndices (final.lowered.routes.map Route.occurrence)) = some result :=
    canonical_finish_exact valid checked
  have outputInventory : ∀ row, row ∈ result.outputs ↔ row ∈ reference := by
    intro row
    apply Iff.trans _ (inventory row).symm
    apply attach_enumeration_inventory valid (enumerationCheck_sound checked).1
    exact attach_enumeration_exact (enumerationCheck_sound checked).1
  obtain ⟨rendered, renderedExact⟩ := renderOutputs_total input.objects result.outputs (by
    intro row member
    simp [contract.2.2.2.2.2.2 row ((outputInventory row).mp member)])
  let derived : Certificate := ⟨input.planLabel, input.objects, readSets input, result⟩
  have accepted : derive input.planLabel input.objects (readSets input) input.raw input.prepared
      input.placeholders input.empty ordered = some derived := by
    apply (derive_spec _ _ _ _ _ _ _ _ _).mpr
    exact ⟨admission_input_check admitted, entries, final, result, contract_exact_collection contract,
      ran, checked, finished, by simp [renderedExact], rfl⟩
  have same := source_contract_derive_correspondence contract accepted
  exact ⟨ordered, same ▸ accepted⟩

theorem finite_source_contract_certificate_check {input : Frozen} {certificate : RustCertificate}
    (admitted : InputAdmission input) (finite : FiniteSourceContract input certificate) :
    certificateCheck input.objects (readSets input) (readSets input) (bindings input)
      (projectedEntries input certificate) (projectedOutputs certificate) = true :=
  source_contract_certificate_check admitted (finite_source_contract_transport admitted finite)

theorem finite_source_contract_derive_exists {input : Frozen} {certificate : RustCertificate}
    (admitted : InputAdmission input) (finite : FiniteSourceContract input certificate) :
    ∃ ordered,
      derive input.planLabel input.objects (readSets input) input.raw input.prepared
        input.placeholders input.empty ordered = some ⟨input.planLabel, input.objects, readSets input,
          ⟨projectedEntries input certificate, projectedOutputs certificate⟩⟩ :=
  source_contract_derive_exists admitted (finite_source_contract_transport admitted finite)

/-- Two distinct raw batches intentionally have the same root and source path.
Their positional identities and literal slots remain distinct. -/
def fixtureInput : Frozen :=
  ⟨"plan", [[1], [2], []],
    ⟨"source", true, [], [("A.lean", 0)]⟩,
    ⟨"destination", false, [], []⟩,
    ⟨"archive", true, [], [("old", 1)]⟩,
    ⟨"preservation", true, [], [("keep-one", 0), ("keep-two", 1)]⟩,
    [⟨"shared-raw-root", true, [], [("R.lean", 0)]⟩,
     ⟨"shared-raw-root", true, [], [("R.lean", 1)]⟩],
    [⟨⟨4, "R.lean", 1, "raw/one/R.lean"⟩, "keep-one"⟩,
     ⟨⟨5, "R.lean", 1, "raw/two/R.lean"⟩, "keep-two"⟩],
    [⟨0, "A.lean", 0, "Logic/A.lean"⟩], [".gitkeep"], 2⟩

def fixtureCertificate : RustCertificate :=
  ⟨"noe.taxonomy-byte-certificate/1", "plan", fixtureInput.objects,
    fixtureInput.source, fixtureInput.destination, fixtureInput.archive, fixtureInput.preservation,
    fixtureInput.rawSources,
    [⟨.preservation, "shared-raw-root", "R.lean", .archive, "raw/one/R.lean", 0⟩,
     ⟨.preservation, "shared-raw-root", "R.lean", .archive, "raw/two/R.lean", 1⟩,
     ⟨.source, "source", "A.lean", .taxonomy, "Logic/A.lean", 0⟩],
    [⟨.taxonomy, ".gitkeep", 2⟩, ⟨.taxonomy, "Logic/A.lean", 0⟩,
     ⟨.archive, "old", 1⟩, ⟨.archive, "raw/one/R.lean", 0⟩, ⟨.archive, "raw/two/R.lean", 1⟩]⟩

theorem fixture_input_admitted : InputAdmission fixtureInput := by decide

theorem fixture_source_contract : SourceContract fixtureInput fixtureCertificate := by decide

theorem duplicate_raw_roots_remain_positional :
    (readSets fixtureInput)[4]? ≠ (readSets fixtureInput)[5]? ∧
    fixtureInput.rawSources[0]?.map RustReadSet.root = fixtureInput.rawSources[1]?.map RustReadSet.root ∧
    (projectedEntries fixtureInput fixtureCertificate).map (fun entry => entry.binding.sourceSet) = [4, 5, 0] := by
  decide

theorem fixture_checked_by_transport :
    certificateCheck fixtureInput.objects (readSets fixtureInput) (readSets fixtureInput) (bindings fixtureInput)
      (projectedEntries fixtureInput fixtureCertificate) (projectedOutputs fixtureCertificate) = true :=
  source_contract_certificate_check fixture_input_admitted fixture_source_contract

theorem fixture_exact_decode_by_transport :
    ∃ entries outputs,
      realize fixtureInput.objects (readSets fixtureInput) (bindings fixtureInput) = some entries ∧
      renderOccurrences fixtureInput.objects (projectedEntries fixtureInput fixtureCertificate) = some entries ∧
      renderOutputs fixtureInput.objects (projectedOutputs fixtureCertificate) = some outputs ∧
      OccurrencePlans.decode outputs (OccurrencePlans.references entries) = some entries :=
  source_contract_exact_decode fixture_input_admitted fixture_source_contract

theorem omitted_prepared_source_blocks_admission :
    ¬ InputAdmission {fixtureInput with prepared := []} := by decide

theorem unused_invalid_readset_slot_blocks_admission :
    ¬ InputAdmission {fixtureInput with destination := ⟨"destination", true, [], [("unused", 9)]⟩} := by decide

theorem absent_nonempty_readset_blocks_admission :
    ¬ InputAdmission {fixtureInput with destination := ⟨"destination", false, [], [("unused", 0)]⟩} := by decide

theorem unretained_raw_slot_blocks_admission :
    ¬ InputAdmission {fixtureInput with preservation :=
      ⟨"preservation", true, [], [("keep-one", 1), ("keep-two", 1)]⟩} := by decide

theorem malformed_origin_blocks_entry :
    ¬ EntryMatches fixtureInput ⟨0, "A.lean", 0, "Logic/A.lean"⟩
      ⟨.destination, "source", "A.lean", .taxonomy, "Logic/A.lean", 0⟩ := by decide

theorem malformed_root_blocks_entry :
    ¬ EntryMatches fixtureInput ⟨0, "A.lean", 0, "Logic/A.lean"⟩
      ⟨.source, "other-root", "A.lean", .taxonomy, "Logic/A.lean", 0⟩ := by decide

theorem swapped_raw_positions_block_entry :
    ¬ EntryMatches fixtureInput ⟨4, "R.lean", 1, "raw/two/R.lean"⟩
      ⟨.preservation, "shared-raw-root", "R.lean", .archive, "raw/two/R.lean", 1⟩ := by decide

theorem omitted_occurrence_blocks_contract :
    ¬ SourceContract fixtureInput {fixtureCertificate with occurrences := fixtureCertificate.occurrences.tail} := by
  decide

theorem omitted_archive_output_blocks_contract :
    ¬ SourceContract fixtureInput {fixtureCertificate with outputs :=
      [⟨.taxonomy, ".gitkeep", 2⟩, ⟨.taxonomy, "Logic/A.lean", 0⟩,
       ⟨.archive, "raw/one/R.lean", 0⟩, ⟨.archive, "raw/two/R.lean", 1⟩]} := by decide

theorem duplicate_output_blocks_contract :
    ¬ SourceContract fixtureInput {fixtureCertificate with outputs :=
      ⟨.taxonomy, ".gitkeep", 2⟩ :: fixtureCertificate.outputs} := by decide

theorem noncanonical_output_order_blocks_contract :
    ¬ SourceContract fixtureInput {fixtureCertificate with outputs := fixtureCertificate.outputs.reverse} := by decide

theorem fixture_derive_is_inhabited :
    derive fixtureInput.planLabel fixtureInput.objects (readSets fixtureInput)
      fixtureInput.raw fixtureInput.prepared fixtureInput.placeholders fixtureInput.empty
      [((0, ".gitkeep"), 4), ((0, "Logic/A.lean"), 3), ((1, "old"), 0),
       ((1, "raw/one/R.lean"), 1), ((1, "raw/two/R.lean"), 2)] =
      some ⟨fixtureInput.planLabel, fixtureInput.objects, readSets fixtureInput,
        ⟨projectedEntries fixtureInput fixtureCertificate, projectedOutputs fixtureCertificate⟩⟩ := by decide

end GRWTSK.CertificateCorrespondence
