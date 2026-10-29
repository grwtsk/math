/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib List authors Leonardo de Moura, Jeremy Avigad, Mario Carneiro,
Parikshit Khanna and Floris van Doorn retain their individual Apache-2.0 credits.
Existing local rooted State, batch, compaction and path codecs retain their credits. -/
import GRWTSK.Combinatorics.DirectedGraph.PrefixTableCheckpoint

/-!
# Actual finite schedules of prefix batches and compactions

Standard Sum actions select an actual occurrence batch or the existing compact
producer. The existing root fiber additionally carries its proved structural
WellFormed invariant. An actual List.foldl executes the finite schedule. Erasing
compact actions preserves the actual checked complete chronological histories,
not the raw stored arrays or partial numeric remap composition.
-/

set_option autoImplicit false

namespace GRWTSK.Combinatorics.DirectedGraph.PrefixTableSchedule

open Quiver PathUnfolding OccurrencePrefix PrefixInventory PrefixTableState
open PrefixTableBatch PrefixTableCheckpoint

variable {V Key : Type*} [Quiver V]

abbrev Action (root : V) (Key : Type*) := Sum (List (Key × Occurrence root)) Unit

variable [DecidableEq (EdgeTrace.TotalEdge V)]

/-- Only proved structural validity added to the existing fixed-root State fiber. -/
abbrev ValidRootedState (root : V) (Key : Type*) :=
  {state : RootedState root Key // WellFormed state.1}

/-- Actual producers, with actual invariant proofs; no desired decoding law is stored. -/
noncomputable def applyAction (root : V) (state : ValidRootedState root Key)
    (action : Action root Key) : ValidRootedState root Key :=
  match action with
  | .inl rows => ⟨step root state.1 rows, step_wellFormed root state.1 state.2 rows⟩
  | .inr _ => ⟨compactAt root state.1 state.2, compactAt_wellFormed root state.1 state.2⟩

noncomputable def executeAt (root : V) (state : ValidRootedState root Key)
    (actions : List (Action root Key)) : ValidRootedState root Key :=
  actions.foldl (applyAction root) state

noncomputable def execute (state : State V Key) (hstate : WellFormed state)
    (actions : List (Action state.root Key)) : State V Key :=
  (executeAt state.root ⟨⟨state, rfl⟩, hstate⟩ actions).1.1

def projectBatches (root : V) (actions : List (Action root Key)) :
    List (List (Key × Occurrence root)) :=
  actions.filterMap (fun action => match action with | .inl rows => some rows | .inr _ => none)

theorem execute_root (state : State V Key) (hstate : WellFormed state)
    (actions : List (Action state.root Key)) : (execute state hstate actions).root = state.root :=
  (executeAt state.root ⟨⟨state, rfl⟩, hstate⟩ actions).1.2

theorem execute_wellFormed (state : State V Key) (hstate : WellFormed state)
    (actions : List (Action state.root Key)) : WellFormed (execute state hstate actions) :=
  (executeAt state.root ⟨⟨state, rfl⟩, hstate⟩ actions).2

theorem execute_nil (state : State V Key) (hstate : WellFormed state) :
    execute state hstate [] = state := rfl

/-- Exact checked rows of the actual fold, in the order of the actual batch actions. -/
theorem decode_executeAt (root : V) (state : ValidRootedState root Key)
    (actions : List (Action root Key)) :
    PrefixTableState.decode (executeAt root state actions).1.1 =
      (PrefixTableState.decode state.1.1).map
        (fun entries => entries ++ (projectBatches root actions).flatMap traceRows) := by
  induction actions generalizing state with
  | nil =>
    simp only [executeAt, List.foldl_nil, projectBatches, List.filterMap_nil,
      List.flatMap_nil, List.append_nil]
    cases PrefixTableState.decode state.1.1 <;> rfl
  | cons action rest ih =>
    change PrefixTableState.decode (executeAt root (applyAction root state action) rest).1.1 = _
    rw [ih]
    cases action with
    | inl rows =>
      change ((PrefixTableState.decode (step root state.1 rows).1).map
        (fun entries => entries ++ (projectBatches root rest).flatMap traceRows)) = _
      rw [decode_step root state.1 state.2 rows]
      simp only [Option.map_map, Function.comp_def, projectBatches, List.filterMap_cons,
        List.flatMap_cons, List.append_assoc]
    | inr marker =>
      change ((PrefixTableState.decode (compactAt root state.1 state.2).1).map
        (fun entries => entries ++ (projectBatches root rest).flatMap traceRows)) = _
      rw [decode_compactAt]
      rfl

theorem decode_execute (state : State V Key) (hstate : WellFormed state)
    (actions : List (Action state.root Key)) :
    PrefixTableState.decode (execute state hstate actions) =
      PrefixTableState.decode (run state (projectBatches state.root actions)) := by
  change PrefixTableState.decode
    (executeAt state.root ⟨⟨state, rfl⟩, hstate⟩ actions).1.1 = _
  rw [decode_executeAt, decode_run state hstate]

theorem execute_histories (state : State V Key) (hstate : WellFormed state)
    (actions : List (Action state.root Key)) :
    PrefixTableState.decode (execute state hstate actions) =
      (PrefixTableState.decode state).map
        (fun entries => entries ++ (projectBatches state.root actions).flatMap traceRows) :=
  decode_executeAt state.root ⟨⟨state, rfl⟩, hstate⟩ actions

end GRWTSK.Combinatorics.DirectedGraph.PrefixTableSchedule
