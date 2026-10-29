/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Upstream Mathlib and Lean authorship and Apache-2.0 licensing are preserved. -/
import GRWTSK.Combinatorics.DirectedGraph.EndpointSection

set_option autoImplicit false

open Quiver
open GRWTSK.Combinatorics.DirectedGraph
open PathUnfolding OccurrencePrefix EndpointSection
open GRWTSK.Order.Embeddings.PrefixObstruction

namespace GRWTSK.Combinatorics.DirectedGraph.EndpointSection.Checks.Positive

theorem diamond_middle_obstruction :
    Reachable Diamond.left Diamond.top ∧ Reachable Diamond.right Diamond.top ∧
    ¬ Reachable Diamond.left Diamond.right ∧ ¬ Reachable Diamond.right Diamond.left := by
  simp [diamond_reachable_iff, DiamondLe]

theorem diamond_no_preserving_section :
    ¬ ∃ select : ReachableVertex Diamond.bottom → Occurrence Diamond.bottom,
      Function.RightInverse select reachableEndpoint ∧
        ∀ x y : ReachableVertex Diamond.bottom,
          Reachable x.1 y.1 → Reachable (select x) (select y) :=
  no_preserving_endpoint_section (diamondVertex .left) (diamondVertex .right) (diamondVertex .top)
    diamond_middle_obstruction.1 diamond_middle_obstruction.2.1
    diamond_middle_obstruction.2.2.1 diamond_middle_obstruction.2.2.2

theorem diamond_selected_right_inverse :
    Function.RightInverse (selectedOccurrence (root := Diamond.bottom)) reachableEndpoint :=
  endpoint_right_inverse

theorem diamond_selected_not_preserving :
    ¬ ∀ x y : ReachableVertex Diamond.bottom,
      Reachable x.1 y.1 → Reachable (selectedOccurrence x) (selectedOccurrence y) := by
  intro hpreserve
  exact diamond_no_preserving_section ⟨selectedOccurrence, diamond_selected_right_inverse, hpreserve⟩

theorem actual_diamond_counterexample :
    Function.RightInverse (selectedOccurrence (root := Diamond.bottom)) reachableEndpoint ∧
      ¬ ∀ x y : ReachableVertex Diamond.bottom,
        Reachable x.1 y.1 → Reachable (selectedOccurrence x) (selectedOccurrence y) :=
  ⟨diamond_selected_right_inverse, diamond_selected_not_preserving⟩

/- These actual arrows check the model includes the advertised loop and transitive shortcut. -/
example : Nonempty (Diamond.left ⟶ Diamond.left) := ⟨PLift.up (diamondLe_refl _)⟩

example : Nonempty (Diamond.bottom ⟶ Diamond.top) := ⟨PLift.up (Or.inl rfl)⟩

example (vertex : Diamond) : Reachable Diamond.bottom vertex := diamond_bottom_reachable vertex

noncomputable def leftTopHistory : Path Diamond.bottom Diamond.top :=
  (show Diamond.bottom ⟶ Diamond.left from PLift.up (Or.inl rfl)).toPath.cons
    (show Diamond.left ⟶ Diamond.top from PLift.up (Or.inr (Or.inl rfl)))

noncomputable def rightTopHistory : Path Diamond.bottom Diamond.top :=
  (show Diamond.bottom ⟶ Diamond.right from PLift.up (Or.inl rfl)).toPath.cons
    (show Diamond.right ⟶ Diamond.top from PLift.up (Or.inr (Or.inl rfl)))

theorem distinct_top_histories :
    ofPath leftTopHistory ≠ ofPath rightTopHistory := by
  intro hequal
  have hvertices := congrArg (fun node : Occurrence Diamond.bottom => node.path.vertices) hequal
  change ([Diamond.bottom, Diamond.left, Diamond.top] : List Diamond) =
    [Diamond.bottom, Diamond.right, Diamond.top] at hvertices
  simp at hvertices

example : (ofPath leftTopHistory).endpoint = (ofPath rightTopHistory).endpoint := rfl

example : leftTopHistory.length = 2 ∧ rightTopHistory.length = 2 := ⟨rfl, rfl⟩

end GRWTSK.Combinatorics.DirectedGraph.EndpointSection.Checks.Positive
