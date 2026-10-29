/-
TypedCellsFacesAndDimension — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14
Organized SHA-256: de2c6219d73572c5bf91049f28edd7bf941de68224b40546e6098d2147a44c3e
PMD: 510.4.070.020 cell complexes (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole vertex/edge/square-boundary/cell types, endpoint and face constructors, all intrinsic range proofs, deriving clauses and dimension function. No manifold, homology, boundary-squared or rasterization theorem is asserted. -/

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

/-- A vertex of an `rows × columns` rectangular raster complex. -/
structure Vertex (rows columns : Nat) where
  row : Fin (rows + 1)
  column : Fin (columns + 1)
  deriving DecidableEq, Repr

/-- A horizontal unit edge, named by its left endpoint. -/
structure HorizontalEdge (rows columns : Nat) where
  row : Fin (rows + 1)
  column : Fin columns
  deriving DecidableEq, Repr

/-- A vertical unit edge, named by its upper endpoint. -/
structure VerticalEdge (rows columns : Nat) where
  row : Fin rows
  column : Fin (columns + 1)
  deriving DecidableEq, Repr

/-- The endpoints of a horizontal edge. -/
def horizontalEndpoints {rows columns : Nat}
    (edge : HorizontalEdge rows columns) :
    Vertex rows columns × Vertex rows columns :=
  (⟨edge.row, ⟨edge.column, Nat.lt_succ_of_lt edge.column.isLt⟩⟩,
    ⟨edge.row, ⟨edge.column + 1, Nat.add_lt_add_right edge.column.isLt 1⟩⟩)

/-- The endpoints of a vertical edge. -/
def verticalEndpoints {rows columns : Nat}
    (edge : VerticalEdge rows columns) :
    Vertex rows columns × Vertex rows columns :=
  (⟨⟨edge.row, Nat.lt_succ_of_lt edge.row.isLt⟩, edge.column⟩,
    ⟨⟨edge.row + 1, Nat.add_lt_add_right edge.row.isLt 1⟩, edge.column⟩)

/-- All four one-dimensional faces of one top-dimensional raster cell. -/
structure SquareBoundary (rows columns : Nat) where
  top : HorizontalEdge rows columns
  bottom : HorizontalEdge rows columns
  left : VerticalEdge rows columns
  right : VerticalEdge rows columns
  deriving DecidableEq, Repr

/-- The canonical four-face boundary of a closed raster square. -/
def squareBoundary {rows columns : Nat} (cell : GridCell rows columns) :
    SquareBoundary rows columns where
  top := ⟨⟨cell.row, Nat.lt_succ_of_lt cell.row.isLt⟩, cell.column⟩
  bottom :=
    ⟨⟨cell.row + 1, Nat.add_lt_add_right cell.row.isLt 1⟩, cell.column⟩
  left := ⟨cell.row, ⟨cell.column, Nat.lt_succ_of_lt cell.column.isLt⟩⟩
  right :=
    ⟨cell.row, ⟨cell.column + 1,
      Nat.add_lt_add_right cell.column.isLt 1⟩⟩

/-- The complete finite cell inventory of the rectangular complex. -/
inductive Cell (rows columns : Nat) where
  | vertex : Vertex rows columns → Cell rows columns
  | horizontal : HorizontalEdge rows columns → Cell rows columns
  | vertical : VerticalEdge rows columns → Cell rows columns
  | square : GridCell rows columns → Cell rows columns
  deriving DecidableEq

/-- Cubical dimension of each typed cell. -/
def Cell.dimension {rows columns : Nat} : Cell rows columns → Nat
  | .vertex _ => 0
  | .horizontal _ | .vertical _ => 1
  | .square _ => 2

end BitMatrix.Topology.Raster
