/-
EightNeighborVertexAdjacency — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14
Organized SHA-256: de2c6219d73572c5bf91049f28edd7bf941de68224b40546e6098d2147a44c3e
PMD: 510.7.030.010 basic graph theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete neighboring-coordinate relation and symmetry with distinct-cell eight-neighbor adjacency, decision instance and exact symmetry/irreflexivity proofs. No identification with four-neighbor adjacency is made. -/

import BitMatrix.Geometry.GridCell
import Mathlib.Data.Finset.Basic

/-!
# Finite raster cubical complex

This module constructs the cells and face maps of the rectangular two-
dimensional cubical complex underlying a Boolean raster.  It is a finite
combinatorial object; none of the definitions below asserts that a selected
foreground is a manifold or that rasterization preserves continuous topology.
-/

namespace BitMatrix.Topology.Raster

open BitMatrix.Runtime.Semantics

/-- Two raster coordinates are equal or differ by exactly one. -/
def NeighboringCoordinate (left right : Nat) : Prop :=
  left = right ∨ left + 1 = right ∨ right + 1 = left

instance neighboringCoordinateDecidable (left right : Nat) :
    Decidable (NeighboringCoordinate left right) := by
  unfold NeighboringCoordinate
  exact inferInstance

theorem neighboringCoordinate_symmetric {left right : Nat} :
    NeighboringCoordinate left right ↔ NeighboringCoordinate right left := by
  constructor <;> intro neighboring
  · rcases neighboring with equal | forward | backward
    · exact Or.inl equal.symm
    · exact Or.inr (Or.inr forward)
    · exact Or.inr (Or.inl backward)
  · rcases neighboring with equal | forward | backward
    · exact Or.inl equal.symm
    · exact Or.inr (Or.inr forward)
    · exact Or.inr (Or.inl backward)

/-- Eight-neighbor adjacency: two distinct squares meet along an edge or a
vertex. -/
def VertexAdjacent {rows columns : Nat}
    (left right : GridCell rows columns) : Prop :=
  left ≠ right ∧
    NeighboringCoordinate left.row.val right.row.val ∧
    NeighboringCoordinate left.column.val right.column.val

instance vertexAdjacentDecidable {rows columns : Nat}
    (left right : GridCell rows columns) : Decidable (VertexAdjacent left right) :=
  by
    unfold VertexAdjacent
    exact inferInstance

theorem vertexAdjacent_symmetric {rows columns : Nat}
    {left right : GridCell rows columns} :
    VertexAdjacent left right ↔ VertexAdjacent right left := by
  constructor <;> intro adjacent
  · exact ⟨adjacent.1.symm,
      neighboringCoordinate_symmetric.mp adjacent.2.1,
      neighboringCoordinate_symmetric.mp adjacent.2.2⟩
  · exact ⟨adjacent.1.symm,
      neighboringCoordinate_symmetric.mp adjacent.2.1,
      neighboringCoordinate_symmetric.mp adjacent.2.2⟩

theorem not_vertexAdjacent_self {rows columns : Nat}
    (cell : GridCell rows columns) : ¬ VertexAdjacent cell cell := by
  simp [VertexAdjacent]

end BitMatrix.Topology.Raster
