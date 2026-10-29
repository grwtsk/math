/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.Combinatorics.DirectedGraph.RootedTraceRevision

set_option autoImplicit false

open Quiver
open GRWTSK.Combinatorics.DirectedGraph
open PathUnfolding OccurrencePrefix PrefixInventory ParentTraceDictionary RootedTraceRevision
open GRWTSK.Logic.FiniteSequences IndexedDictionary DictionaryRevision DecisionCertificate

namespace GRWTSK.Combinatorics.DirectedGraph.RootedTraceRevision.Checks.Positive

noncomputable instance loopVertexDecidableEq : DecidableEq (SingleObj Bool) :=
  Classical.decEq _

noncomputable instance loopTagDecidableEq :
    DecidableEq (EdgeTrace.TotalEdge (SingleObj Bool)) := Classical.decEq _

def falseTag : EdgeTrace.TotalEdge (SingleObj Bool) :=
  ⟨SingleObj.star Bool, SingleObj.star Bool, SingleObj.toHom false⟩

def trueTag : EdgeTrace.TotalEdge (SingleObj Bool) :=
  ⟨SingleObj.star Bool, SingleObj.star Bool, SingleObj.toHom true⟩

theorem tags_distinct : falseTag ≠ trueTag := by
  intro hequal
  have harrow := eq_of_heq (Sigma.mk.inj (eq_of_heq (Sigma.mk.inj hequal).2)).2
  have hbool : false = true := harrow
  cases hbool

noncomputable def falseOccurrence : Occurrence (SingleObj.star Bool) :=
  ofPath (PathOccurrences.parallelLoop false)

noncomputable def trueOccurrence : Occurrence (SingleObj.star Bool) :=
  ofPath (PathOccurrences.parallelLoop true)

noncomputable def oldRows : List (Nat × Occurrence (SingleObj.star Bool)) :=
  [(11, falseOccurrence)]

noncomputable def appendedRows : List (Nat × Occurrence (SingleObj.star Bool)) :=
  [(11, falseOccurrence), (12, trueOccurrence)]

noncomputable def repeatedRows : List (Nat × Occurrence (SingleObj.star Bool)) :=
  [(11, falseOccurrence), (12, falseOccurrence)]

theorem old_inventory : inventory oldRows = [[], [falseTag]] := by
  change ([[], [falseTag]] : List (List (EdgeTrace.TotalEdge (SingleObj Bool)))).dedup = _
  simp

theorem appended_inventory : inventory appendedRows = [[falseTag], [], [trueTag]] := by
  change ([[], [falseTag], [], [trueTag]] :
    List (List (EdgeTrace.TotalEdge (SingleObj Bool)))).dedup = _
  simp [tags_distinct]

/-- The exact singleton repetition preserves D; arbitrary repeated histories may reorder D. -/
theorem repeated_inventory : inventory repeatedRows = [[], [falseTag]] := by
  change ([[], [falseTag], [], [falseTag]] :
    List (List (EdgeTrace.TotalEdge (SingleObj Bool)))).dedup = _
  simp

theorem old_references : (PrefixInventory.packed oldRows).references = [(11, 1)] := by
  unfold PrefixInventory.packed
  rw [old_inventory]
  change [(11, @List.idxOf _ instBEqOfDecidableEq [falseTag] [[], [falseTag]])] = _
  simp

theorem stale_lookup_changed :
    (inventory oldRows)[1]? = some [falseTag] ∧
      (inventory appendedRows)[1]? = some [] := by
  rw [old_inventory, appended_inventory]
  exact ⟨rfl, rfl⟩

/-- The stale old index is still valid in the actual expanded after dictionary. -/
theorem stale_references_in_bounds : Valid (afterPacked oldRows appendedRows) := by
  simp [Valid, afterPacked, replaceDictionary, beforePacked, liftPacked,
    old_references, appended_inventory]

theorem stale_not_agreement :
    ¬ AgreesOnReferences (inventory oldRows) (inventory appendedRows)
      (PrefixInventory.packed oldRows).references := by
  intro hagreement
  have hlookup := hagreement (11, 1) (by rw [old_references]; simp)
  rw [stale_lookup_changed.1, stale_lookup_changed.2] at hlookup
  cases hlookup

theorem ranks_root_and_bounds_insufficient :
    ValidRanks (encode oldRows).nodes ∧ ValidRanks (encode appendedRows).nodes ∧
      (encode oldRows).root = (encode appendedRows).root ∧
      Valid (afterPacked oldRows appendedRows) ∧
      ¬ AgreesOnReferences (inventory oldRows) (inventory appendedRows)
        (PrefixInventory.packed oldRows).references :=
  ⟨encoded_validRanks oldRows, encoded_validRanks appendedRows, rfl,
    stale_references_in_bounds, stale_not_agreement⟩

noncomputable def falseCertificate : Certificate Nat (RootedTrace (SingleObj Bool)) where
  entries := rootedRows (SingleObj.star Bool) (traceRows oldRows)
  predicate entries := ∀ entry ∈ entries, entry.2.2 = [falseTag]
  evidence := by simp [rootedRows, traceRows, oldRows]; rfl

/-- Certificate.packed stores full payloads in its own dictionary. -/
example : falseCertificate.packed.dictionary = [(SingleObj.star Bool, [falseTag])] := by
  simp [Certificate.packed, IndexedDictionary.pack, falseCertificate,
    rootedRows, traceRows, oldRows]
  rfl

theorem stale_actual_unpack : unpack (afterPacked oldRows appendedRows) =
    some [(11, (SingleObj.star Bool, []))] := by
  change unpack ⟨(inventory appendedRows).map (fun initial => (SingleObj.star Bool, initial)),
    (PrefixInventory.packed oldRows).references⟩ = _
  rw [old_references, appended_inventory]
  rfl

theorem stale_predicate_rejected :
    ¬ DecodesSatisfying (afterPacked oldRows appendedRows) falseCertificate.predicate := by
  rintro ⟨entries, hdecoded, hpredicate⟩
  have hentries : entries = [(11, (SingleObj.star Bool, []))] :=
    Option.some.inj (hdecoded.symm.trans stale_actual_unpack)
  subst entries
  have hbad : ([] : List (EdgeTrace.TotalEdge (SingleObj Bool))) = [falseTag] :=
    hpredicate (11, (SingleObj.star Bool, [])) (by simp)
  cases hbad

/-- Actual parent expansion succeeds while the stale referenced premise fails its criterion. -/
theorem stale_actual_revision :
    expandRevision (encode oldRows) (encode appendedRows) =
      some (afterPacked oldRows appendedRows) ∧
      unpack (afterPacked oldRows appendedRows) = some [(11, (SingleObj.star Bool, []))] ∧
      ¬ DecodesSatisfying (afterPacked oldRows appendedRows) falseCertificate.predicate :=
  ⟨expandRevision_encode oldRows appendedRows, stale_actual_unpack, stale_predicate_rejected⟩

theorem repeated_agreement :
    AgreesOnReferences (inventory oldRows) (inventory repeatedRows)
      (PrefixInventory.packed oldRows).references := by
  rw [old_inventory, repeated_inventory]
  exact agrees_refl _ _

/-- Existing certificate evidence genuinely reuses the old singleton premise after expansion. -/
theorem repeated_certified_revision :
    (encode oldRows).root = (encode repeatedRows).root ∧
      ∃ revised : Packed Nat (RootedTrace (SingleObj Bool)),
        expandRevision (encode oldRows) (encode repeatedRows) = some revised ∧
        DecodesSatisfying revised falseCertificate.predicate :=
  certified_revision oldRows repeatedRows rfl repeated_agreement falseCertificate rfl

example : unpack (afterPacked oldRows repeatedRows) =
    some [(11, (SingleObj.star Bool, [falseTag]))] :=
  unpack_after oldRows repeatedRows rfl repeated_agreement

example (revised : Packed Nat (RootedTrace (SingleObj Bool)))
    (hexpand : expandRevision (encode oldRows) (encode repeatedRows) = some revised)
    (entries : List (Nat × RootedTrace (SingleObj Bool)))
    (hdecoded : unpack revised = some entries) :
    recoverRows (eraseRoots entries)
      (revised_valid oldRows repeatedRows rfl repeated_agreement revised hexpand entries hdecoded) =
      oldRows :=
  revised_recovers oldRows repeatedRows rfl repeated_agreement revised hexpand entries hdecoded

instance boolQuiver : Quiver Bool := ⟨fun _ _ => Unit⟩

noncomputable instance boolTagDecidableEq : DecidableEq (EdgeTrace.TotalEdge Bool) :=
  Classical.decEq _

noncomputable def emptyBefore : Representation Bool Nat :=
  encode ([] : List (Nat × Occurrence false))

noncomputable def emptyAfter : Representation Bool Nat :=
  encode ([] : List (Nat × Occurrence true))

theorem empty_raw_context_equal : emptyBefore.nodes = emptyAfter.nodes ∧
    emptyBefore.references = emptyAfter.references ∧
    decodeReferences emptyBefore = decodeReferences emptyAfter := ⟨rfl, rfl, rfl⟩

theorem empty_root_context_lost : emptyBefore.root ≠ emptyAfter.root := Bool.false_ne_true

theorem empty_rooted_output_equal :
    expandRevision emptyBefore emptyBefore = expandRevision emptyBefore emptyAfter := rfl

/-- Even rooted payload lifting has no row in which to store the outer root on empty input. -/
theorem empty_roots_still_required :
    AgreesOnReferences (inventory ([] : List (Nat × Occurrence false)))
      (inventory ([] : List (Nat × Occurrence true))) ([] : List (Nat × Nat)) ∧
      emptyBefore.nodes = emptyAfter.nodes ∧
      emptyBefore.references = emptyAfter.references ∧
      expandRevision emptyBefore emptyBefore = expandRevision emptyBefore emptyAfter ∧
      emptyBefore.root ≠ emptyAfter.root :=
  ⟨fun _ hmem => False.elim (List.not_mem_nil hmem), rfl, rfl, rfl, empty_root_context_lost⟩

end GRWTSK.Combinatorics.DirectedGraph.RootedTraceRevision.Checks.Positive
