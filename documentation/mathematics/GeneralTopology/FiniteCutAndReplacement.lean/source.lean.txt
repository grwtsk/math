/-
Deterministic replay of an established source split; no new conceptual review.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515
Organized SHA-256: 68340f32725ab341898b3f5c89b4bb63d24916ea447360c970829be7224bf717
Established decision SHA-256: ad13c4f5fe0d7f3ddd063ba7c8c3de1f4a1fff66aa1a52f2f1304a643e22f5f1
PMD: 510.4.070 combinatorial topology
Source mathematics, hypotheses, namespaces, imports and proof text remain source copies.
Comments may differ from the established source; all exact versions remain archived.
Uncompiled; no Lean/Lake, public umbrella admission, proof acceptance or authorship determination.
-/

import BitMatrix.Topology.RasterCubicalComplex
import Mathlib.Data.Int.Basic

/-!
# Finite digital surgery data

The operation here is exact replacement on a finite set of typed raster
cells.  It proves locality and reconstruction laws.  Topology-sensitive use is
represented by a provider-scoped `DigitalTopologySemantics` and a
`ControlledDigitalSurgery` checked against that one fixed provider.  The
provider is an explicit conditional capability: this module neither chooses a
canonical digital topology nor proves that a provider is mathematically
adequate.  No such record is promoted to smooth manifold surgery.
-/

namespace GRWTSK.Topology.CombinatorialTopology.FiniteRasterReplacement.Variantd682b033bfb58079

namespace BitMatrix.Surgery.Digital

open BitMatrix.Runtime.Semantics
open BitMatrix.Topology.Raster

/-- A finite Boolean raster state. -/
abbrev RasterState (rows columns : Nat) := GridCell rows columns → Bool

/-- Local cut data: source state, selected cells, retained exterior, and its
edge-adjacent exposed interface. -/
structure CutDatum (rows columns : Nat) where
  source : RasterState rows columns
  selected : Finset (GridCell rows columns)

namespace CutDatum

/-- Cells retained by the finite cut. -/
def exterior {rows columns : Nat} (cut : CutDatum rows columns) :
    Finset (GridCell rows columns) :=
  Finset.univ \ cut.selected

/-- Retained cells sharing a cubical edge with at least one selected cell.
This is the exposed boundary of the retained cubical complex; the configurable
foreground/background digital-adjacency interfaces are defined separately
below. -/
def exposedInterface {rows columns : Nat} (cut : CutDatum rows columns) :
    Finset (GridCell rows columns) :=
  cut.exterior.filter fun outside =>
    ∃ inside ∈ cut.selected, EdgeAdjacent outside inside

theorem exposedInterface_subset_exterior {rows columns : Nat}
    (cut : CutDatum rows columns) :
    cut.exposedInterface ⊆ cut.exterior := by
  intro cell member
  exact (Finset.mem_filter.mp member).1

theorem exterior_disjoint_selected {rows columns : Nat}
    (cut : CutDatum rows columns) :
    Disjoint cut.exterior cut.selected := by
  rw [Finset.disjoint_left]
  intro cell exteriorMember selectedMember
  exact (Finset.mem_sdiff.mp exteriorMember).2 selectedMember

end CutDatum

/-- A replacement value for every selected cell. -/
structure Repair {rows columns : Nat} (cut : CutDatum rows columns) where
  replacement : (cell : GridCell rows columns) → cell ∈ cut.selected → Bool

namespace Repair

/-- Apply the local replacement and retain the source on its complement. -/
def apply {rows columns : Nat} {cut : CutDatum rows columns}
    (repair : Repair cut) : RasterState rows columns :=
  fun cell =>
    if member : cell ∈ cut.selected then repair.replacement cell member
    else cut.source cell

@[simp]
theorem apply_inside {rows columns : Nat} {cut : CutDatum rows columns}
    (repair : Repair cut) (cell : GridCell rows columns)
    (member : cell ∈ cut.selected) :
    repair.apply cell = repair.replacement cell member := by
  simp [apply, member]

@[simp]
theorem apply_outside {rows columns : Nat} {cut : CutDatum rows columns}
    (repair : Repair cut) (cell : GridCell rows columns)
    (outside : cell ∉ cut.selected) :
    repair.apply cell = cut.source cell := by
  simp [apply, outside]

/-- The exact set on which the state changes. -/
def changeSupport {rows columns : Nat} {cut : CutDatum rows columns}
    (repair : Repair cut) : Finset (GridCell rows columns) :=
  Finset.univ.filter fun cell => repair.apply cell ≠ cut.source cell

/-- Selected cells changing from background to foreground. -/
def addedCells {rows columns : Nat} {cut : CutDatum rows columns}
    (repair : Repair cut) : Finset (GridCell rows columns) :=
  Finset.univ.filter fun cell =>
    cut.source cell = false ∧ repair.apply cell = true

/-- Selected cells changing from foreground to background. -/
def deletedCells {rows columns : Nat} {cut : CutDatum rows columns}
    (repair : Repair cut) : Finset (GridCell rows columns) :=
  Finset.univ.filter fun cell =>
    cut.source cell = true ∧ repair.apply cell = false

/-- Local replacement cannot modify a cell outside the declared cut. -/
theorem changeSupport_subset_selected {rows columns : Nat}
    {cut : CutDatum rows columns} (repair : Repair cut) :
    repair.changeSupport ⊆ cut.selected := by
  intro cell changed
  by_contra outside
  have differs : repair.apply cell ≠ cut.source cell :=
    (Finset.mem_filter.mp changed).2
  exact differs (repair.apply_outside cell outside)

theorem addedCells_subset_selected {rows columns : Nat}
    {cut : CutDatum rows columns} (repair : Repair cut) :
    repair.addedCells ⊆ cut.selected := by
  intro cell added
  apply repair.changeSupport_subset_selected
  rw [addedCells, Finset.mem_filter] at added
  rw [changeSupport, Finset.mem_filter]
  refine ⟨Finset.mem_univ cell, ?_⟩
  intro unchanged
  rw [unchanged, added.2.1] at added
  exact Bool.noConfusion added.2.2

theorem deletedCells_subset_selected {rows columns : Nat}
    {cut : CutDatum rows columns} (repair : Repair cut) :
    repair.deletedCells ⊆ cut.selected := by
  intro cell deleted
  apply repair.changeSupport_subset_selected
  rw [deletedCells, Finset.mem_filter] at deleted
  rw [changeSupport, Finset.mem_filter]
  refine ⟨Finset.mem_univ cell, ?_⟩
  intro unchanged
  rw [unchanged, deleted.2.1] at deleted
  exact Bool.noConfusion deleted.2.2

/-- Regluing the retained original values reconstructs the exact source. -/
def reconstruct {rows columns : Nat} (cut : CutDatum rows columns) : Repair cut where
  replacement := fun cell _ => cut.source cell

@[simp]
theorem reconstruct_apply {rows columns : Nat} (cut : CutDatum rows columns) :
    (reconstruct cut).apply = cut.source := by
  funext cell
  by_cases member : cell ∈ cut.selected <;>
    simp [reconstruct, apply, member]

/-- A later repair of the same cut overwrites the earlier replacement. -/
theorem overwrite {rows columns : Nat} {cut : CutDatum rows columns}
    (first second : Repair cut) :
    (fun cell =>
      if member : cell ∈ cut.selected then second.replacement cell member
      else first.apply cell) = second.apply := by
  funext cell
  by_cases member : cell ∈ cut.selected <;> simp [apply, member]

end Repair

end BitMatrix.Surgery.Digital

end GRWTSK.Topology.CombinatorialTopology.FiniteRasterReplacement.Variantd682b033bfb58079
