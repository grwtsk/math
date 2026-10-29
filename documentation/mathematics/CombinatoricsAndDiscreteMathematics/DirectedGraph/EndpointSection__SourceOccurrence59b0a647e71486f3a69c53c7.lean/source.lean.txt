/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib/Lean authorship and Apache-2.0 terms are retained through the attributed
PathUnfolding, OccurrencePrefix and PrefixObstruction imports. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.OccurrencePrefix
import GRWTSK.FoundationsLogicAndTypeTheory.Order.Embeddings.PrefixObstruction

/-!
# Reachability-preserving endpoint sections are obstructed by joins

An endpoint section chooses one complete rooted history for each reachable base
vertex. Its right-inverse identity alone does not make it preserve reachability.
Incomparable root-reachable vertices with a common reachable upper vertex rule
out such a preserving section: composing it with the complete trace map would
contradict the existing prefix obstruction. Reflection comes from actual path
projection and the endpoint right inverse, rather than from assumed injectivity.

The concrete model reuses the existing four-element `Diamond` and `DiamondLe`.
Arrows are `PLift (DiamondLe a b)`, so identity loops and the bottom-to-top
shortcut are present. This is the reflexive/transitive thin quiver, not the
four-edge Hasse DAG. Its finite vertex set does not make its history set finite.
No new generic comparability theorem, path/reachability type, paper universal
property, runtime refinement, or proof/permission authority is asserted.
-/

set_option autoImplicit false

namespace GRWTSK.Combinatorics.DirectedGraph.EndpointSection

open Quiver PathUnfolding OccurrencePrefix
open GRWTSK.Order.Embeddings.PrefixObstruction

variable {V : Type*} [Quiver V] {root : V}

/-- A common upper bound of incomparable reachable vertices prevents any preserving endpoint section.
No finiteness, countability, acyclicity, connectedness or arrow-uniqueness premise is needed. -/
theorem no_preserving_endpoint_section (a b c : ReachableVertex root)
    (hac : Reachable a.1 c.1) (hbc : Reachable b.1 c.1)
    (hab : ¬ Reachable a.1 b.1) (hba : ¬ Reachable b.1 a.1) :
    ¬ ∃ select : ReachableVertex root → Occurrence root,
      Function.RightInverse select reachableEndpoint ∧
        ∀ x y : ReachableVertex root, Reachable x.1 y.1 → Reachable (select x) (select y) := by
  rintro ⟨select, hsection, hpreserve⟩
  apply no_prefix_representation_of_incomparable_upper
    (Label := EdgeTrace.TotalEdge V) (fun x y : ReachableVertex root => Reachable x.1 y.1)
    a b c hac hbc hab hba
  refine ⟨fun vertex => trace (select vertex), ?_, ?_⟩
  · intro x y hreach
    exact (reachable_iff_prefix _ _).mp (hpreserve x y hreach)
  · intro x y hprefix
    obtain ⟨lifted⟩ := (reachable_iff_prefix (select x) (select y)).mpr hprefix
    have hprojected := ((projection root).mapPath lifted).reachable
    change Reachable (select x).endpoint (select y).endpoint at hprojected
    have hx : (select x).endpoint = x.1 := congrArg Subtype.val (hsection x)
    have hy : (select y).endpoint = y.1 := congrArg Subtype.val (hsection y)
    simpa only [hx, hy] using hprojected

/-- The existing diamond order as a thin quiver, explicitly including loops and the shortcut. -/
instance diamondQuiver : Quiver Diamond := ⟨fun a b => PLift (DiamondLe a b)⟩

/-- Actual path reachability in this quiver is exactly the pre-existing diamond relation. -/
theorem diamond_reachable_iff (a b : Diamond) : Reachable a b ↔ DiamondLe a b := by
  constructor
  · rintro ⟨history⟩
    induction history with
    | nil => exact diamondLe_refl _
    | cons history edge ih => exact diamondLe_trans ih edge.down
  · intro hrel
    exact ⟨(show a ⟶ b from PLift.up hrel).toPath⟩

theorem diamond_bottom_reachable (vertex : Diamond) : Reachable Diamond.bottom vertex :=
  (diamond_reachable_iff _ _).mpr (Or.inl rfl)

/-- Each actual diamond vertex, with an existing rooted path witness. -/
def diamondVertex (vertex : Diamond) : ReachableVertex Diamond.bottom :=
  ⟨vertex, diamond_bottom_reachable vertex⟩

end GRWTSK.Combinatorics.DirectedGraph.EndpointSection
