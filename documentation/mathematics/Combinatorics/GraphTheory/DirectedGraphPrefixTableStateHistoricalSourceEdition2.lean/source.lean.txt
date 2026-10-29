/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib list APIs retain named author credit and Apache-2.0 terms;
Mathlib List.Basic: Parikshit Khanna, Jeremy Avigad, Leonardo de Moura,
Floris van Doorn, Mario Carneiro. Mathlib List.FinRange: Mario Carneiro, Kenny Lau,
Kim Morrison, Alex Keizer. Existing local codecs retain their source credits. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.IncrementalPrefixTable

/-!
# Structurally valid stored prefix-table states

The invariant concerns the actual retained root, prefix-closed valid dictionary,
parent cells and bounded real references. It contains no desired decoding axiom.
Existing numeric parent expansion and actual indexed decoding are derived from
these structural facts. Updating arbitrary invariant states copies their old
dictionary, cells and references literally, and preserves the invariant.

Actual one- and two-step decoding retain ordered complete keyed histories.
Grouping batches need not retain the same dictionary or numeric references.
No finite-fold implementation, runtime/JSON refinement, byte compression or
automatic new-row predicate inheritance is claimed here.
-/

set_option autoImplicit false

namespace GRWTSK.Combinatorics.DirectedGraph.PrefixTableState

open Quiver PathUnfolding OccurrencePrefix PrefixInventory ParentTraceDictionary
open GRWTSK.Logic.FiniteSequences IndexedDictionary DictionaryRevision

variable {V Key : Type*} [Quiver V]

structure State (V Key : Type*) [Quiver V] where
  root : V
  dictionary : List (List (EdgeTrace.TotalEdge V))
  nodes : List (Node V)
  references : List (Key × Nat)

def rawPacked (state : State V Key) : Packed Key (List (EdgeTrace.TotalEdge V)) :=
  ⟨state.dictionary, state.references⟩

def representation (state : State V Key) : Representation V Key :=
  ⟨state.root, state.nodes, state.references⟩

noncomputable def decode (state : State V Key) :
    Option (List (Key × List (EdgeTrace.TotalEdge V))) :=
  decodeReferences (representation state)

variable [DecidableEq (EdgeTrace.TotalEdge V)]

/-- Structural state facts, not an assumed equality of decoders. -/
structure WellFormed (state : State V Key) : Prop where
  nodup : state.dictionary.Nodup
  closed : ∀ {first second}, second ∈ state.dictionary → first <+: second →
    first ∈ state.dictionary
  rooted : ∀ initial ∈ state.dictionary, EdgeTrace.ValidFrom state.root initial
  cells : state.nodes = state.dictionary.map (IncrementalPrefixTable.cell state.dictionary)
  references : Valid (rawPacked state)

theorem node_lookup (state : State V Key) (hstate : WellFormed state) (slot : Nat)
    (initial : List (EdgeTrace.TotalEdge V))
    (hlookup : state.dictionary[slot]? = some initial) :
    state.nodes[slot]? = some (IncrementalPrefixTable.cell state.dictionary initial) := by
  rw [hstate.cells]
  simp only [List.getElem?_map, hlookup, Option.map_some]

theorem parent_lookup (state : State V Key) (hstate : WellFormed state)
    (initial : List (EdgeTrace.TotalEdge V)) (hmem : initial ∈ state.dictionary) :
    state.dictionary[@List.idxOf _ instBEqOfDecidableEq initial.dropLast state.dictionary]? =
      some initial.dropLast := by
  let : BEq (List (EdgeTrace.TotalEdge V)) := instBEqOfDecidableEq
  exact List.getElem?_idxOf (hstate.closed hmem (List.dropLast_prefix initial))

/-- Derive the existing actual fuel decoder from prefix closure and exact cell structure. -/
theorem expand_state (state : State V Key) (hstate : WellFormed state) (fuel : Nat) :
    ∀ (initial : List (EdgeTrace.TotalEdge V)) (slot : Nat),
      initial ∈ state.dictionary → state.dictionary[slot]? = some initial →
      initial.length ≤ fuel → expand state.nodes fuel slot = some initial := by
  induction fuel with
  | zero =>
    intro initial slot hmem hlookup hlength
    have hnil : initial = [] := List.length_eq_zero_iff.mp (by omega)
    subst initial
    simp [expand, node_lookup state hstate slot [] hlookup, IncrementalPrefixTable.cell]
  | succ fuel ih =>
    intro initial slot hmem hlookup hlength
    by_cases hnil : initial = []
    · subst initial
      simp [expand, node_lookup state hstate slot [] hlookup, IncrementalPrefixTable.cell]
    · have hparent := hstate.closed hmem (List.dropLast_prefix initial)
      have hparentLookup := parent_lookup state hstate initial hmem
      have hrecursive := ih initial.dropLast _ hparent hparentLookup
        (by have := parent_rank_lt initial hnil; omega)
      simp only [expand, node_lookup state hstate slot initial hlookup,
        Option.bind_eq_bind, Option.bind, IncrementalPrefixTable.cell, dif_neg hnil]
      rw [node_lookup state hstate _ _ hparentLookup]
      simp only [IncrementalPrefixTable.cell, parent_rank_lt initial hnil, ite_true,
        hrecursive, List.dropLast_append_getLast hnil]

theorem decodeSlot_state (state : State V Key) (hstate : WellFormed state) (slot : Nat)
    (initial : List (EdgeTrace.TotalEdge V)) (hmem : initial ∈ state.dictionary)
    (hlookup : state.dictionary[slot]? = some initial) :
    decodeSlot state.nodes slot = some initial := by
  simp only [decodeSlot, node_lookup state hstate slot initial hlookup,
    Option.bind_eq_bind, Option.bind, IncrementalPrefixTable.cell]
  exact expand_state state hstate initial.length initial slot hmem hlookup (Nat.le_refl _)

theorem expandDictionary_state (state : State V Key) (hstate : WellFormed state) :
    expandDictionary state.nodes = some state.dictionary := by
  have hlength : state.nodes.length = state.dictionary.length := by
    rw [hstate.cells, List.length_map]
  have hbound (slot : Fin state.nodes.length) : slot.1 < state.dictionary.length :=
    hlength ▸ slot.2
  have hfun : (fun slot : Fin state.nodes.length => decodeSlot state.nodes slot.1) =
      (fun slot : Fin state.nodes.length => some (state.dictionary[slot.1]'(hbound slot))) := by
    funext slot
    exact decodeSlot_state state hstate slot.1 _ (List.getElem_mem (hbound slot))
      (List.getElem?_eq_getElem (hbound slot))
  have hlist : (List.finRange state.nodes.length).map
      (fun slot => state.dictionary[slot.1]'(hbound slot)) = state.dictionary := by
    rw [← List.ofFn_eq_map]
    apply List.ext_getElem
    · simp only [List.length_ofFn, hlength]
    · intro index hleft hright
      simp only [List.getElem_ofFn]
  unfold expandDictionary
  rw [hfun]
  calc
    _ = some ((List.finRange state.nodes.length).map
        (fun slot => state.dictionary[slot.1]'(hbound slot))) := List.mapM_pure
    _ = some state.dictionary := congrArg some hlist

theorem expandedPacked_state (state : State V Key) (hstate : WellFormed state) :
    expandedPacked (representation state) = some (rawPacked state) := by
  simp only [expandedPacked, representation, expandDictionary_state state hstate]
  rfl

theorem decode_eq_unpack (state : State V Key) (hstate : WellFormed state) :
    decode state = unpack (rawPacked state) := by
  rw [decode, decodeReferences, expandedPacked_state state hstate]
  rfl

/-- Every bounded real reference decodes, and each actual output retains root/join validity. -/
theorem unpack_success (state : State V Key) (hstate : WellFormed state) :
    ∃ entries, unpack (rawPacked state) = some entries ∧
      ∀ entry ∈ entries, EdgeTrace.ValidFrom state.root entry.2 := by
  have main (references : List (Key × Nat))
      (hbound : ∀ reference ∈ references, reference.2 < state.dictionary.length) :
      ∃ entries, unpack (⟨state.dictionary, references⟩ : Packed Key _) = some entries ∧
        ∀ entry ∈ entries, EdgeTrace.ValidFrom state.root entry.2 := by
    induction references with
    | nil => exact ⟨[], rfl, by simp⟩
    | cons reference references ih =>
      obtain ⟨tail, htail, htailValid⟩ := ih
        (fun r hr => hbound r (List.mem_cons_of_mem _ hr))
      have hindex := hbound reference (List.mem_cons_self ..)
      let initial := state.dictionary[reference.2]'hindex
      have hlookup : state.dictionary[reference.2]? = some initial :=
        List.getElem?_eq_getElem hindex
      refine ⟨(reference.1, initial) :: tail, ?_, ?_⟩
      · change List.mapM (decodeReference state.dictionary) references = some tail at htail
        simp only [unpack, List.mapM_cons, decodeReference, hlookup, Option.map_some,
          Option.bind_eq_bind, Option.bind]
        rw [htail]
        rfl
      · intro entry hentry
        rcases List.mem_cons.mp hentry with rfl | htailEntry
        · exact hstate.rooted initial (List.getElem_mem hindex)
        · exact htailValid entry htailEntry
  exact main state.references hstate.references

theorem decode_success (state : State V Key) (hstate : WellFormed state) :
    ∃ entries, decode state = some entries ∧
      ∀ entry ∈ entries, EdgeTrace.ValidFrom state.root entry.2 := by
  rw [decode_eq_unpack state hstate]
  exact unpack_success state hstate

/-- Successful output validity is a consequence of the structural state invariant. -/
theorem output_valid (state : State V Key) (hstate : WellFormed state)
    (entries : List (Key × List (EdgeTrace.TotalEdge V)))
    (hdecoded : decode state = some entries) :
    ∀ entry ∈ entries, EdgeTrace.ValidFrom state.root entry.2 := by
  obtain ⟨actual, hactual, hvalid⟩ := decode_success state hstate
  have hequal : actual = entries := Option.some.inj (hactual.symm.trans hdecoded)
  subst actual
  exact hvalid

noncomputable def extendedDictionary (state : State V Key)
    (rows : List (Key × Occurrence state.root)) : List (List (EdgeTrace.TotalEdge V)) :=
  IncrementalDictionary.expandedDictionary state.dictionary
    (IncrementalPrefixTable.prefixEntries rows)

theorem mem_extended_iff (state : State V Key) (rows : List (Key × Occurrence state.root))
    (initial : List (EdgeTrace.TotalEdge V)) :
    initial ∈ extendedDictionary state rows ↔
      initial ∈ state.dictionary ∨ initial ∈ inventory rows := by
  simp only [extendedDictionary, IncrementalDictionary.expandedDictionary, List.mem_append,
    IncrementalDictionary.mem_missingPayloads_iff, IncrementalPrefixTable.prefixEntries,
    List.map_map, Function.comp_def, List.map_id_fun']
  tauto

noncomputable def extendedNodes (state : State V Key)
    (rows : List (Key × Occurrence state.root)) : List (Node V) :=
  state.nodes ++ (IncrementalDictionary.missingPayloads state.dictionary
    (IncrementalPrefixTable.prefixEntries rows)).map
      (IncrementalPrefixTable.cell (extendedDictionary state rows))

noncomputable def basePacked (state : State V Key)
    (rows : List (Key × Occurrence state.root)) : Packed Key (List (EdgeTrace.TotalEdge V)) :=
  replaceDictionary (rawPacked state) (extendedDictionary state rows)

noncomputable def realPacked (state : State V Key)
    (rows : List (Key × Occurrence state.root)) : Packed Key (List (EdgeTrace.TotalEdge V)) :=
  IncrementalDictionary.appendEntries (basePacked state rows) (traceRows rows)

theorem base_valid (state : State V Key) (hstate : WellFormed state)
    (rows : List (Key × Occurrence state.root)) : Valid (basePacked state rows) := by
  intro reference hreference
  exact lt_of_lt_of_le (hstate.references reference hreference)
    (IncrementalDictionary.dictionary_prefix state.dictionary
      (IncrementalPrefixTable.prefixEntries rows)).length_le

theorem real_dictionary (state : State V Key) (rows : List (Key × Occurrence state.root)) :
    (realPacked state rows).dictionary = extendedDictionary state rows := by
  have hmissing : IncrementalDictionary.missingPayloads (extendedDictionary state rows)
      (traceRows rows) = [] := by
    unfold IncrementalDictionary.missingPayloads
    apply (List.dedup_eq_nil _).mpr
    apply List.filter_eq_nil_iff.mpr
    intro initial hmem
    obtain ⟨entry, hentry, rfl⟩ := List.mem_map.mp hmem
    obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp hentry
    have hnew := (mem_extended_iff state rows _).mpr
      (Or.inr (trace_mem_inventory rows row hrow))
    simp [hnew]
  simp only [realPacked, IncrementalDictionary.appendEntries, basePacked, replaceDictionary]
  rw [IncrementalDictionary.expandedDictionary, hmissing, List.append_nil]

/-- Update actual stored data without recanonicalizing the old dictionary or old cells. -/
noncomputable def update (state : State V Key) (rows : List (Key × Occurrence state.root)) :
    State V Key :=
  ⟨state.root, extendedDictionary state rows, extendedNodes state rows,
    (realPacked state rows).references⟩

theorem old_cell_stable (state : State V Key) (hstate : WellFormed state)
    (rows : List (Key × Occurrence state.root)) (initial : List (EdgeTrace.TotalEdge V))
    (hmem : initial ∈ state.dictionary) :
    IncrementalPrefixTable.cell (extendedDictionary state rows) initial =
      IncrementalPrefixTable.cell state.dictionary initial := by
  let : BEq (List (EdgeTrace.TotalEdge V)) := instBEqOfDecidableEq
  simp only [IncrementalPrefixTable.cell]
  by_cases hnil : initial = []
  · simp only [dif_pos hnil]
  · simp only [dif_neg hnil]
    have hparent := hstate.closed hmem (List.dropLast_prefix initial)
    have hindex : (extendedDictionary state rows).idxOf initial.dropLast =
        state.dictionary.idxOf initial.dropLast := List.idxOf_append_of_mem hparent
    rw [hindex]

theorem extended_cells (state : State V Key) (hstate : WellFormed state)
    (rows : List (Key × Occurrence state.root)) :
    extendedNodes state rows = (extendedDictionary state rows).map
      (IncrementalPrefixTable.cell (extendedDictionary state rows)) := by
  have hold : state.nodes = state.dictionary.map
      (IncrementalPrefixTable.cell (extendedDictionary state rows)) := by
    rw [hstate.cells]
    apply List.map_congr_left
    intro initial hmem
    exact (old_cell_stable state hstate rows initial hmem).symm
  rw [extendedNodes, hold, ← List.map_append]
  rfl

/-- The actual updater closes the structural invariant on arbitrary stored states. -/
theorem update_wellFormed (state : State V Key) (hstate : WellFormed state)
    (rows : List (Key × Occurrence state.root)) : WellFormed (update state rows) := by
  refine ⟨IncrementalDictionary.expandedDictionary_nodup _ _ hstate.nodup, ?_, ?_,
    extended_cells state hstate rows, ?_⟩
  · intro first second hmem hprefix
    rcases (mem_extended_iff state rows second).mp hmem with hold | hnew
    · exact (mem_extended_iff state rows first).mpr (Or.inl (hstate.closed hold hprefix))
    · exact (mem_extended_iff state rows first).mpr (Or.inr (prefix_closed rows hnew hprefix))
  · intro initial hmem
    rcases (mem_extended_iff state rows initial).mp hmem with hold | hnew
    · exact hstate.rooted initial hold
    · exact inventory_valid rows initial hnew
  · have hvalid := IncrementalDictionary.appendEntries_valid (basePacked state rows)
      (traceRows rows) (base_valid state hstate rows)
    change Valid (⟨extendedDictionary state rows,
      (realPacked state rows).references⟩ : Packed Key _)
    rw [← real_dictionary state rows]
    exact hvalid

theorem prefixes_retained (state : State V Key) (rows : List (Key × Occurrence state.root)) :
    state.dictionary <+: (update state rows).dictionary ∧
      state.nodes <+: (update state rows).nodes ∧
      state.references <+: (update state rows).references :=
  ⟨IncrementalDictionary.dictionary_prefix _ _, List.prefix_append _ _,
    IncrementalDictionary.references_prefix (basePacked state rows) (traceRows rows)⟩

theorem unpack_base (state : State V Key) (hstate : WellFormed state)
    (rows : List (Key × Occurrence state.root)) :
    unpack (basePacked state rows) = unpack (rawPacked state) := by
  apply unpack_replaceDictionary
  intro reference hreference
  exact (List.getElem?_append_left (hstate.references reference hreference)).symm

theorem rawPacked_update (state : State V Key) (rows : List (Key × Occurrence state.root)) :
    rawPacked (update state rows) = realPacked state rows := by
  change (⟨extendedDictionary state rows, (realPacked state rows).references⟩ : Packed Key _) = _
  rw [← real_dictionary state rows]

/-- The actual reference decoder appends exactly the new real ordered rows. -/
theorem unpack_update (state : State V Key) (hstate : WellFormed state)
    (rows : List (Key × Occurrence state.root)) :
    unpack (rawPacked (update state rows)) =
      (unpack (rawPacked state)).map (fun oldRows => oldRows ++ traceRows rows) := by
  rw [rawPacked_update, realPacked,
    IncrementalDictionary.unpack_appendEntries _ _ (base_valid state hstate rows),
    unpack_base state hstate rows]

theorem decode_update (state : State V Key) (hstate : WellFormed state)
    (rows : List (Key × Occurrence state.root)) :
    decode (update state rows) = (decode state).map (fun oldRows => oldRows ++ traceRows rows) := by
  rw [decode_eq_unpack _ (update_wellFormed state hstate rows),
    unpack_update state hstate rows, decode_eq_unpack state hstate]

theorem decode_two_updates (state : State V Key) (hstate : WellFormed state)
    (first second : List (Key × Occurrence state.root)) :
    decode (update (update state first) second) =
      (decode state).map (fun oldRows => oldRows ++ (traceRows first ++ traceRows second)) := by
  calc
    _ = (decode (update state first)).map (fun oldRows => oldRows ++ traceRows second) :=
      decode_update (update state first) (update_wellFormed state hstate first) second
    _ = _ := by
      rw [decode_update state hstate first]
      simp only [Option.map_map, Function.comp_def, List.append_assoc]

theorem decode_grouped (state : State V Key) (hstate : WellFormed state)
    (first second : List (Key × Occurrence state.root)) :
    decode (update (update state first) second) = decode (update state (first ++ second)) := by
  rw [decode_two_updates state hstate, decode_update state hstate]
  simp only [traceRows, List.map_append]

/-- Actual complete traces recover actual old and newly appended occurrences. -/
theorem update_recovers (state : State V Key) (hstate : WellFormed state)
    (oldRows rows : List (Key × Occurrence state.root))
    (hold : decode state = some (traceRows oldRows))
    (entries : List (Key × List (EdgeTrace.TotalEdge V)))
    (hdecoded : decode (update state rows) = some entries) :
    recoverRows entries (output_valid _ (update_wellFormed state hstate rows) entries hdecoded) =
      oldRows ++ rows := by
  have hfull : decode (update state rows) = some (traceRows (oldRows ++ rows)) := by
    rw [decode_update state hstate rows, hold]
    simp only [Option.map_some, traceRows, List.map_append]
  have hequal : entries = traceRows (oldRows ++ rows) :=
    Option.some.inj (hdecoded.symm.trans hfull)
  subst entries
  exact recoverRows_traceRows (oldRows ++ rows)

/-- Initialize from the actual previously proved one-step stable producer. -/
noncomputable def ofOneStep {root : V}
    (oldRows newRows : List (Key × Occurrence root)) : State V Key :=
  ⟨root, IncrementalPrefixTable.dictionary oldRows newRows,
    IncrementalPrefixTable.nodes oldRows newRows,
    (IncrementalPrefixTable.realPacked oldRows newRows).references⟩

theorem ofOneStep_wellFormed {root : V} (oldRows newRows : List (Key × Occurrence root)) :
    WellFormed (ofOneStep oldRows newRows) := by
  refine ⟨IncrementalPrefixTable.dictionary_nodup _ _,
    fun hmem hprefix => IncrementalPrefixTable.dictionary_closed _ _ hmem hprefix,
    IncrementalPrefixTable.dictionary_valid _ _, IncrementalPrefixTable.nodes_eq_map _ _, ?_⟩
  have hvalid := IncrementalDictionary.appendEntries_valid
    (IncrementalPrefixTable.oldPacked oldRows newRows) (traceRows newRows)
    (IncrementalPrefixTable.oldPacked_valid oldRows newRows)
  change Valid (⟨IncrementalPrefixTable.dictionary oldRows newRows,
    (IncrementalPrefixTable.realPacked oldRows newRows).references⟩ : Packed Key _)
  rw [← IncrementalPrefixTable.realPacked_dictionary oldRows newRows]
  exact hvalid

theorem decode_ofOneStep {root : V} (oldRows newRows : List (Key × Occurrence root)) :
    decode (ofOneStep oldRows newRows) = some (traceRows (oldRows ++ newRows)) :=
  IncrementalPrefixTable.decode_representation oldRows newRows

def empty (root : V) : State V Key := ⟨root, [], [], []⟩

theorem empty_wellFormed (root : V) : WellFormed (empty (Key := Key) root) := by
  refine ⟨List.nodup_nil, ?_, ?_, rfl, ?_⟩
  · intro first second hmem
    exact False.elim (List.not_mem_nil hmem)
  · intro initial hmem
    exact False.elim (List.not_mem_nil hmem)
  · intro reference hmem
    exact False.elim (List.not_mem_nil hmem)

omit [DecidableEq (EdgeTrace.TotalEdge V)] in
theorem decode_empty (root : V) : decode (empty (Key := Key) root) = some [] := rfl

end GRWTSK.Combinatorics.DirectedGraph.PrefixTableState
