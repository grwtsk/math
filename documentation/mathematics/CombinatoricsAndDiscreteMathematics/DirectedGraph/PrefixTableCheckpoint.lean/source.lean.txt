/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib List authors Leonardo de Moura, Jeremy Avigad, Mario Carneiro,
Parikshit Khanna and Floris van Doorn retain their individual Apache-2.0 credits.
Existing local path, trace, parent-state, compaction and batch codecs retain their credits. -/
import GRWTSK.Combinatorics.DirectedGraph.PrefixTableBatch

/-!
# Actual compaction checkpoints between finite chronological batches

An actual first run is compacted by the existing producer, then the second run
uses the same retained root through the existing fixed-root State fiber. Initial
WellFormed derives every required invariant. Actual checked complete ordered
histories agree with the chronological combined run. No decoder, serializer or
reference-remapping equality is assumed, and no raw stored-array or numeric-slot
equality is claimed across compaction.
-/

set_option autoImplicit false

namespace GRWTSK.Combinatorics.DirectedGraph.PrefixTableCheckpoint

open Quiver PathUnfolding OccurrencePrefix PrefixInventory PrefixTableState
open PrefixTableBatch PrefixTableCompaction

variable {V Key : Type*} [Quiver V] [DecidableEq (EdgeTrace.TotalEdge V)]

/-- Apply the actual compact producer, retaining the proved actual outer root. -/
noncomputable def compactAt (root : V) (state : RootedState root Key)
    (hstate : WellFormed state.1) : RootedState root Key :=
  ⟨compact state.1 hstate, (compact_root state.1 hstate).trans state.2⟩

theorem compactAt_wellFormed (root : V) (state : RootedState root Key)
    (hstate : WellFormed state.1) : WellFormed (compactAt root state hstate).1 :=
  compact_wellFormed state.1 hstate

theorem decode_compactAt (root : V) (state : RootedState root Key)
    (hstate : WellFormed state.1) :
    PrefixTableState.decode (compactAt root state hstate).1 = PrefixTableState.decode state.1 :=
  decode_compact state.1 hstate

/-- Actual split execution, using the existing List.foldl append law. -/
theorem split_runAt (root : V) (state : RootedState root Key)
    (first second : List (List (Key × Occurrence root))) :
    runAt root state (first ++ second) = runAt root (runAt root state first) second :=
  List.foldl_append

/-- Actual first run, actual compaction, then actual second run. -/
noncomputable def executeAt (root : V) (state : RootedState root Key)
    (hstate : WellFormed state.1) (first second : List (List (Key × Occurrence root))) :
    RootedState root Key :=
  runAt root (compactAt root (runAt root state first)
    (runAt_wellFormed root state hstate first)) second

noncomputable def checkpoint (state : State V Key) (hstate : WellFormed state)
    (first second : List (List (Key × Occurrence state.root))) : State V Key :=
  (executeAt state.root ⟨state, rfl⟩ hstate first second).1

theorem checkpoint_root (state : State V Key) (hstate : WellFormed state)
    (first second : List (List (Key × Occurrence state.root))) :
    (checkpoint state hstate first second).root = state.root :=
  (executeAt state.root ⟨state, rfl⟩ hstate first second).2

theorem executeAt_wellFormed (root : V) (state : RootedState root Key)
    (hstate : WellFormed state.1) (first second : List (List (Key × Occurrence root))) :
    WellFormed (executeAt root state hstate first second).1 :=
  runAt_wellFormed root _
    (compactAt_wellFormed root _ (runAt_wellFormed root state hstate first)) second

theorem checkpoint_wellFormed (state : State V Key) (hstate : WellFormed state)
    (first second : List (List (Key × Occurrence state.root))) :
    WellFormed (checkpoint state hstate first second) :=
  executeAt_wellFormed state.root ⟨state, rfl⟩ hstate first second

/-- Exact actual checked histories agree; this is not equality of the stored arrays. -/
theorem decode_executeAt (root : V) (state : RootedState root Key)
    (hstate : WellFormed state.1) (first second : List (List (Key × Occurrence root))) :
    PrefixTableState.decode (executeAt root state hstate first second).1 =
      PrefixTableState.decode (runAt root state (first ++ second)).1 := by
  change PrefixTableState.decode (runAt root
    (compactAt root (runAt root state first)
      (runAt_wellFormed root state hstate first)) second).1 = _
  rw [decode_runAt root _
      (compactAt_wellFormed root _ (runAt_wellFormed root state hstate first)),
    decode_compactAt, split_runAt,
    decode_runAt root _ (runAt_wellFormed root state hstate first)]

theorem decode_checkpoint (state : State V Key) (hstate : WellFormed state)
    (first second : List (List (Key × Occurrence state.root))) :
    PrefixTableState.decode (checkpoint state hstate first second) =
      PrefixTableState.decode (run state (first ++ second)) :=
  decode_executeAt state.root ⟨state, rfl⟩ hstate first second

/-- The actual old rows followed by both chronological segments, with all repetitions. -/
theorem checkpoint_histories (state : State V Key) (hstate : WellFormed state)
    (first second : List (List (Key × Occurrence state.root))) :
    PrefixTableState.decode (checkpoint state hstate first second) =
      (PrefixTableState.decode state).map
        (fun entries => entries ++ (first ++ second).flatMap traceRows) := by
  rw [decode_checkpoint, decode_run state hstate]

end GRWTSK.Combinatorics.DirectedGraph.PrefixTableCheckpoint
