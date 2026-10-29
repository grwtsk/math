/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Lean core List.Nodup.idxOf_getElem (Init/Data/List/Nat/Pairwise.lean) retains
Mario Carneiro and James Gallicchio's Apache-2.0 credits. Imported Lean/Mathlib
List and Option authors Leonardo de Moura, Jeremy Avigad, Mario Carneiro,
Parikshit Khanna, Floris van Doorn and Kenny Lau retain their individual credits.
Existing local state, schedule and transport producers retain their source credits. -/
import GRWTSK.Combinatorics.DirectedGraph.PrefixTableReferenceTransport

/-!
# Direct full-history lookup on original real-reference support

Search the actual final dictionary for the actual old complete typed edge word.
The existing chronological transport producer identifies this search result on
original real-reference support. Final dictionary uniqueness comes from the
actual schedule's structural invariant; successful transport and full payload
lookup are derived by the existing producer theorem. No new retention oracle,
all-old-slot equality, final-reference prefix law or runtime refinement is assumed.
-/

set_option autoImplicit false

namespace GRWTSK.Combinatorics.DirectedGraph.PrefixTableDirectLookup

open PrefixTableState PrefixTableSchedule PrefixTableReferenceTransport

variable {V Key : Type*} [Quiver V]
  [DecidableEq (EdgeTrace.TotalEdge V)]

/-- Search for the complete old payload in the actual final dictionary. -/
noncomputable def directLookupAt (root : V)
    (state : ValidRootedState root Key)
    (actions : List (Action root Key)) (slot : Nat) : Option Nat :=
  state.1.1.dictionary[slot]?.bind fun word =>
    if word ∈ (executeAt root state actions).1.1.dictionary then
      some (@List.idxOf _ instBEqOfDecidableEq word
        (executeAt root state actions).1.1.dictionary)
    else none

/-- On original real-reference support, direct lookup agrees with
the actual cumulative retention map. -/
theorem transportSlotAt_eq_directLookup_of_reference
    (root : V) (state : ValidRootedState root Key)
    (actions : List (Action root Key)) (reference : Key × Nat)
    (hreference : reference ∈ state.1.1.references) :
    transportSlotAt root state actions reference.2 =
      directLookupAt root state actions reference.2 := by
  let : BEq (List (EdgeTrace.TotalEdge V)) := instBEqOfDecidableEq
  obtain ⟨target, htransport, _, hlookup⟩ :=
    transport_reference root state actions reference hreference
  have hold : reference.2 < state.1.1.dictionary.length :=
    state.2.references reference hreference
  let initial : List (EdgeTrace.TotalEdge V) :=
    state.1.1.dictionary[reference.2]'hold
  have hinitial :
      state.1.1.dictionary[reference.2]? = some initial :=
    List.getElem?_eq_some_iff.mpr ⟨hold, rfl⟩
  have hfull :
      (executeAt root state actions).1.1.dictionary[target]? =
        some initial :=
    hlookup.trans hinitial
  obtain ⟨hbound, hvalue⟩ := List.getElem?_eq_some_iff.mp hfull
  have hmem :
      initial ∈ (executeAt root state actions).1.1.dictionary :=
    List.mem_of_getElem? hfull
  have hindex :
      @List.idxOf _ instBEqOfDecidableEq initial
        (executeAt root state actions).1.1.dictionary = target := by
    rw [← hvalue]
    exact (executeAt root state actions).2.nodup.idxOf_getElem
      target hbound
  rw [htransport]
  unfold directLookupAt
  rw [hinitial, Option.bind_some, if_pos hmem, hindex]

end GRWTSK.Combinatorics.DirectedGraph.PrefixTableDirectLookup
