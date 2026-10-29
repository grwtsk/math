/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Upstream Mathlib and Lean authorship and Apache-2.0 licensing are preserved. -/
import GRWTSK.Combinatorics.DirectedGraph.PrefixInventory

set_option autoImplicit false

open Quiver
open GRWTSK.Combinatorics.DirectedGraph
open PathUnfolding OccurrencePrefix PrefixInventory

namespace GRWTSK.Combinatorics.DirectedGraph.PrefixInventory.Checks.Positive

noncomputable instance totalEdgeDecidableEq :
    DecidableEq (EdgeTrace.TotalEdge (SingleObj Bool)) := Classical.decEq _

noncomputable def falseOccurrence : Occurrence (SingleObj.star Bool) :=
  ofPath (PathOccurrences.parallelLoop false)

noncomputable def trueOccurrence : Occurrence (SingleObj.star Bool) :=
  ofPath (PathOccurrences.parallelLoop true)

def falseTag : EdgeTrace.TotalEdge (SingleObj Bool) :=
  ⟨SingleObj.star Bool, SingleObj.star Bool, SingleObj.toHom false⟩

def trueTag : EdgeTrace.TotalEdge (SingleObj Bool) :=
  ⟨SingleObj.star Bool, SingleObj.star Bool, SingleObj.toHom true⟩

theorem tags_distinct : falseTag ≠ trueTag := by
  intro hequal
  have harrow := eq_of_heq (Sigma.mk.inj (eq_of_heq (Sigma.mk.inj hequal).2)).2
  have hbool : false = true := harrow
  cases hbool

noncomputable def parallelRows : List (Nat × Occurrence (SingleObj.star Bool)) :=
  [(11, falseOccurrence), (12, trueOccurrence)]

/-- Rightmost deduplication need not put the root prefix at the first slot. -/
theorem parallel_inventory_exact : inventory parallelRows = [[falseTag], [], [trueTag]] := by
  change ([[], [falseTag], [], [trueTag]] :
    List (List (EdgeTrace.TotalEdge (SingleObj Bool)))).dedup = _
  simp [tags_distinct]

theorem parallel_same_endpoint : falseOccurrence.endpoint = trueOccurrence.endpoint := rfl

theorem parallel_occurrences_distinct : falseOccurrence ≠ trueOccurrence := by
  intro hequal
  have htrace := congrArg trace hequal
  exact tags_distinct (List.singleton_inj.mp htrace)

theorem parallel_common_prefix_only_empty (initial : List (EdgeTrace.TotalEdge (SingleObj Bool)))
    (hfalse : initial <+: trace falseOccurrence)
    (htrue : initial <+: trace trueOccurrence) : initial = [] := by
  change initial <+: [falseTag] at hfalse
  change initial <+: [trueTag] at htrue
  have hmem := (List.mem_inits initial [falseTag]).mpr hfalse
  have hcases : initial = [] ∨ initial = [falseTag] := by simpa using hmem
  rcases hcases with hnil | rfl
  · exact hnil
  · exact False.elim (tags_distinct (List.singleton_inj.mp (htrue.eq_of_length rfl)))

/-- Endpoint-only summaries really identify different original keyed histories. -/
theorem endpoint_rows_lose_identity :
    [(7, falseOccurrence.endpoint)] = [(7, trueOccurrence.endpoint)] ∧
      ([(7, falseOccurrence)] : List (Nat × Occurrence (SingleObj.star Bool))) ≠
        [(7, trueOccurrence)] := by
  refine ⟨rfl, ?_⟩
  intro hequal
  exact parallel_occurrences_distinct (congrArg Prod.snd (List.singleton_inj.mp hequal))

example : inventory ([] : List (Nat × Occurrence (SingleObj.star Bool))) = [] := inventory_nil

example : inventory [(5, origin (SingleObj.star Bool))] = [[]] :=
  inventory_singleton_origin 5

example : GRWTSK.Logic.FiniteSequences.IndexedDictionary.unpack (packed parallelRows) =
    some [(11, [falseTag]), (12, [trueTag])] := unpack_packed parallelRows

example : occurrence parallelRows [falseTag]
    (trace_mem_inventory parallelRows (11, falseOccurrence) (by simp [parallelRows])) =
      falseOccurrence :=
  occurrence_trace parallelRows (11, falseOccurrence) (by simp [parallelRows])

example : recoverRows (traceRows parallelRows) (traceRows_valid parallelRows) = parallelRows :=
  recoverRows_traceRows parallelRows

example (entries : List (Nat × List (EdgeTrace.TotalEdge (SingleObj Bool))))
    (hunpack : GRWTSK.Logic.FiniteSequences.IndexedDictionary.unpack (packed parallelRows) =
      some entries) :
    recoverRows entries (unpack_valid parallelRows entries hunpack) = parallelRows :=
  unpack_recovers parallelRows entries hunpack

noncomputable def repeatedRows : List (Nat × Occurrence (SingleObj.star Bool)) :=
  [(21, falseOccurrence), (22, trueOccurrence), (21, falseOccurrence)]

/-- Separate ordered references survive, even when the first and last keyed row coincide. -/
theorem repeated_references_exact : (packed repeatedRows).references =
    [(21, @List.idxOf _ instBEqOfDecidableEq [falseTag] (inventory repeatedRows)),
      (22, @List.idxOf _ instBEqOfDecidableEq [trueTag] (inventory repeatedRows)),
      (21, @List.idxOf _ instBEqOfDecidableEq [falseTag] (inventory repeatedRows))] := rfl

example : (packed repeatedRows).references.length = 3 := references_length repeatedRows

example : GRWTSK.Logic.FiniteSequences.IndexedDictionary.unpack (packed repeatedRows) =
    some [(21, [falseTag]), (22, [trueTag]), (21, [falseTag])] := unpack_packed repeatedRows

example : recoverRows (traceRows repeatedRows) (traceRows_valid repeatedRows) = repeatedRows :=
  recoverRows_traceRows repeatedRows

example : (inventory repeatedRows).length ≤ 6 := inventory_length_le repeatedRows

end GRWTSK.Combinatorics.DirectedGraph.PrefixInventory.Checks.Positive
