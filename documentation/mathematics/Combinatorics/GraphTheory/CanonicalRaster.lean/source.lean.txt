import BitMatrix.Surgery.Digital
import Mathlib.Combinatorics.SimpleGraph.Connectivity.Finite

/-!
# Canonical finite-raster digital topology

This module inhabits the conditional topology interface from `Surgery.Digital`
for the project's finite Boolean raster profile.  Foreground pixels form a
finite simple graph.  The canonical convention uses edge (four-neighbor)
foreground adjacency and vertex (eight-neighbor) background adjacency.

The topology measured here is the topology of that finite foreground graph:
`beta 0` is its exact connected-component count and `beta 1` is its graph
cycle rank.  The canonical manifold predicate is consequently the
nonbranching one-dimensional cubical-graph condition (degree at most two), not
a claim that the union of closed raster squares is a smooth surface.
-/

namespace BitMatrix.Surgery.CanonicalRaster

open BitMatrix.Runtime.Semantics
open BitMatrix.Topology.Raster
open BitMatrix.Surgery.Digital

/-! ## Exact cubical incidence -/

/-- Every immediate face of a typed rectangular raster cell.  Incidence is
geometric and therefore independent of the foreground/background adjacency
pair. -/
def incidenceFaces {rows columns : Nat} :
    Cell rows columns → Finset (Cell rows columns)
  | .vertex _ => ∅
  | .horizontal edge =>
      let endpoints := horizontalEndpoints edge
      { .vertex endpoints.1, .vertex endpoints.2 }
  | .vertical edge =>
      let endpoints := verticalEndpoints edge
      { .vertex endpoints.1, .vertex endpoints.2 }
  | .square cell =>
      let boundary := squareBoundary cell
      { .horizontal boundary.top, .horizontal boundary.bottom,
        .vertical boundary.left, .vertical boundary.right }

/-- The square case is definitionally the exact four-face boundary: no face
is inferred from adjacency, and no additional cell occurs in the incidence
set. -/
theorem incidenceFaces_square_eq {rows columns : Nat}
    (cell : GridCell rows columns) :
    incidenceFaces (Cell.square cell) =
      { Cell.horizontal (squareBoundary cell).top,
        Cell.horizontal (squareBoundary cell).bottom,
        Cell.vertical (squareBoundary cell).left,
        Cell.vertical (squareBoundary cell).right } := by
  rfl

/-- Membership in a square's incidence set is exactly membership among its
four typed boundary edges. -/
theorem mem_incidenceFaces_square_iff {rows columns : Nat}
    (cell : GridCell rows columns) (face : Cell rows columns) :
    face ∈ incidenceFaces (Cell.square cell) ↔
      face = Cell.horizontal (squareBoundary cell).top ∨
      face = Cell.horizontal (squareBoundary cell).bottom ∨
      face = Cell.vertical (squareBoundary cell).left ∨
      face = Cell.vertical (squareBoundary cell).right := by
  simp [incidenceFaces]

/-- Geometric compatibility of the canonical four-neighbor relation: two
distinct raster squares are edge-adjacent exactly when their exact immediate
incidence sets share a typed one-dimensional face.  Vertex-only contact is
therefore excluded from foreground adjacency by construction. -/
theorem edgeAdjacent_iff_shared_incidence_face {rows columns : Nat}
    (left right : GridCell rows columns) :
    AdjacencyPolicy.edge.Adjacent left right ↔
      left ≠ right ∧
        ∃ face : Cell rows columns,
          face ∈ incidenceFaces (Cell.square left) ∧
          face ∈ incidenceFaces (Cell.square right) := by
  rcases left with ⟨leftRow, leftColumn⟩
  rcases right with ⟨rightRow, rightColumn⟩
  simp [AdjacencyPolicy.Adjacent, EdgeAdjacent, incidenceFaces, squareBoundary]
  omega

/-- Canonical incidence always lowers cubical dimension by exactly one. -/
theorem incidenceFaces_lowersDimension {rows columns : Nat}
    (cell face : Cell rows columns) (member : face ∈ incidenceFaces cell) :
    face.dimension < cell.dimension := by
  cases cell with
  | vertex vertex => simp [incidenceFaces] at member
  | horizontal edge =>
      simp only [incidenceFaces, Finset.mem_insert, Finset.mem_singleton] at member
      rcases member with rfl | rfl <;> simp [Cell.dimension]
  | vertical edge =>
      simp only [incidenceFaces, Finset.mem_insert, Finset.mem_singleton] at member
      rcases member with rfl | rfl <;> simp [Cell.dimension]
  | square cell =>
      simp only [incidenceFaces, Finset.mem_insert, Finset.mem_singleton] at member
      rcases member with rfl | rfl | rfl | rfl <;> simp [Cell.dimension]

/-! ## Foreground graph and graph Betti numbers -/

/-- The true cells of one Boolean raster state. -/
abbrev ForegroundCell {rows columns : Nat} (state : RasterState rows columns) :=
  { cell : GridCell rows columns // state cell = true }

/-- The exact finite foreground-adjacency graph selected by a policy. -/
def foregroundGraph {rows columns : Nat} (policy : AdjacencyPolicy)
    (state : RasterState rows columns) : SimpleGraph (ForegroundCell state) where
  Adj := fun left right => policy.Adjacent left.1 right.1
  symm := ⟨fun _left _right adjacent =>
    policy.adjacent_symmetric.mp adjacent⟩
  loopless := ⟨fun cell adjacent =>
    policy.not_adjacent_self cell.1 adjacent⟩

instance foregroundGraphAdjacencyDecidable {rows columns : Nat}
    (policy : AdjacencyPolicy) (state : RasterState rows columns) :
    DecidableRel (foregroundGraph policy state).Adj := fun left right =>
  adjacencyPolicyDecidable policy left.1 right.1

/-- Zeroth graph Betti number: exact connected-component count. -/
def betaZero {rows columns : Nat} (policy : AdjacencyPolicy)
    (state : RasterState rows columns) : Nat :=
  Fintype.card (foregroundGraph policy state).ConnectedComponent

/-- First graph Betti number (cycle rank) of the finite foreground graph. -/
def betaOne {rows columns : Nat} (policy : AdjacencyPolicy)
    (state : RasterState rows columns) : Nat :=
  (foregroundGraph policy state).edgeFinset.card + betaZero policy state -
    Fintype.card (ForegroundCell state)

/-- The full `2 x 2` raster is the smallest edge-adjacent raster cycle. -/
def fullTwoByTwo : RasterState 2 2 := fun _cell => true

/-- The full `2 x 2` edge-adjacency graph is connected. -/
theorem fullTwoByTwo_betaZero : betaZero .edge fullTwoByTwo = 1 := by
  decide

/-- The full `2 x 2` edge-adjacency graph has four vertices and four edges,
so its graph cycle rank is exactly one.  This is a nontrivial witness that
`betaOne` detects a cycle rather than merely paths and isolated vertices. -/
theorem fullTwoByTwo_betaOne : betaOne .edge fullTwoByTwo = 1 := by
  decide

/-- The canonical finite graph Betti sequence.  A graph has no homology above
degree one. -/
def graphBetti {rows columns : Nat} (foreground _background : AdjacencyPolicy)
    (state : RasterState rows columns) : Nat → Nat
  | 0 => betaZero foreground state
  | 1 => betaOne foreground state
  | _ + 2 => 0

/-! ## Canonical profile obligations -/

/-- The project-selected complementary adjacency convention. -/
def CanonicalAdjacencyPair (foreground background : AdjacencyPolicy) : Prop :=
  foreground = .edge ∧ background = .vertex

instance canonicalAdjacencyPairDecidable
    (foreground background : AdjacencyPolicy) :
    Decidable (CanonicalAdjacencyPair foreground background) := by
  unfold CanonicalAdjacencyPair
  infer_instance

/-- Exact coordinate characterization of eight-neighbor adjacency.  Both
coordinates differ by at most one and the cells are distinct. -/
theorem vertexAdjacent_iff_coordinate_bounds {rows columns : Nat}
    (left right : GridCell rows columns) :
    AdjacencyPolicy.vertex.Adjacent left right ↔
      left ≠ right ∧
      left.row.val ≤ right.row.val + 1 ∧
      right.row.val ≤ left.row.val + 1 ∧
      left.column.val ≤ right.column.val + 1 ∧
      right.column.val ≤ left.column.val + 1 := by
  simp only [AdjacencyPolicy.Adjacent, VertexAdjacent, NeighboringCoordinate]
  constructor
  · rintro ⟨distinct, rowNeighbor, columnNeighbor⟩
    rcases rowNeighbor with equal | forward | backward <;>
      rcases columnNeighbor with equal' | forward' | backward' <;>
      constructor
    all_goals try exact distinct
    all_goals omega
  · rintro ⟨distinct, rowForward, rowBackward, columnForward, columnBackward⟩
    refine ⟨distinct, ?_, ?_⟩ <;> omega

/-- Number of foreground neighbors of one foreground pixel. -/
def foregroundDegree {rows columns : Nat} (policy : AdjacencyPolicy)
    (state : RasterState rows columns) (cell : ForegroundCell state) : Nat :=
  (Finset.univ.filter fun other : ForegroundCell state =>
    policy.Adjacent cell.1 other.1).card

/-- A finite foreground graph is a nonbranching cubical graph when every
vertex has degree at most two.  Paths, cycles, and isolated zero-dimensional
components satisfy this precise mixed-dimensional digital condition. -/
def NonbranchingCubicalGraph {rows columns : Nat}
    (policy : AdjacencyPolicy) (state : RasterState rows columns) : Prop :=
  ∀ cell : ForegroundCell state, foregroundDegree policy state cell ≤ 2

instance nonbranchingCubicalGraphDecidable {rows columns : Nat}
    (policy : AdjacencyPolicy) (state : RasterState rows columns) :
    Decidable (NonbranchingCubicalGraph policy state) := by
  unfold NonbranchingCubicalGraph
  infer_instance

/-- The canonical manifold condition couples the fixed adjacency pair to the
nonbranching graph condition. -/
def canonicalCubicalManifold {rows columns : Nat}
    (foreground background : AdjacencyPolicy)
    (state : RasterState rows columns) : Prop :=
  CanonicalAdjacencyPair foreground background ∧
    NonbranchingCubicalGraph foreground state

/-- Exact carrier compatibility means precisely that the declared cut is the
change carrier; no selected cell is inert and no unselected cell changes. -/
def canonicalExactCarrierCompatible {rows columns : Nat}
    (foreground background : AdjacencyPolicy)
    (cut : CutDatum rows columns) (repair : Repair cut) : Prop :=
  CanonicalAdjacencyPair foreground background ∧
    repair.changeSupport = cut.selected

/-- Foreground part of the cut link: retained true cells adjacent to a true
selected cell in the supplied state.  Unlike the geometric interface, this
depends on the foreground state on both sides of the cut. -/
def foregroundLink {rows columns : Nat} (cut : CutDatum rows columns)
    (policy : AdjacencyPolicy) (state : RasterState rows columns) :
    Finset (GridCell rows columns) :=
  cut.exterior.filter fun outside =>
    state outside = true ∧
      ∃ inside ∈ cut.selected,
        state inside = true ∧ policy.Adjacent outside inside

theorem foregroundLink_subset_exterior {rows columns : Nat}
    (cut : CutDatum rows columns) (policy : AdjacencyPolicy)
    (state : RasterState rows columns) :
    foregroundLink cut policy state ⊆ cut.exterior := by
  intro cell member
  exact (Finset.mem_filter.mp member).1

/-- The Boolean complement interpreted as the retained background state. -/
def backgroundState {rows columns : Nat} (state : RasterState rows columns) :
    RasterState rows columns :=
  fun cell => !state cell

/-- Retained false cells adjacent to a false selected cell, computed using
the explicitly supplied background policy. -/
def backgroundLink {rows columns : Nat} (cut : CutDatum rows columns)
    (policy : AdjacencyPolicy) (state : RasterState rows columns) :
    Finset (GridCell rows columns) :=
  foregroundLink cut policy (backgroundState state)

/-- Exact connected-component count of the complementary background graph. -/
def backgroundBetaZero {rows columns : Nat} (policy : AdjacencyPolicy)
    (state : RasterState rows columns) : Nat :=
  betaZero policy (backgroundState state)

/-- The finite graph link condition used by the canonical profile.  A
controlled event must use the selected adjacency pair, expose a retained
foreground neighbor, preserve both foreground and background links, preserve
the foreground nonbranching condition and graph Betti sequence, and preserve
the number of vertex-adjacent background components.  Topology-changing
repairs can use a separate profile; this canonical controlled profile
certifies topology-preserving local moves. -/
def canonicalLinkCondition {rows columns : Nat}
    (foreground background : AdjacencyPolicy)
    (cut : CutDatum rows columns) (repair : Repair cut) : Prop :=
  CanonicalAdjacencyPair foreground background ∧
    foregroundLink cut foreground cut.source ≠ ∅ ∧
    foregroundLink cut foreground cut.source =
      foregroundLink cut foreground repair.apply ∧
    backgroundLink cut background cut.source =
      backgroundLink cut background repair.apply ∧
    NonbranchingCubicalGraph foreground cut.source ∧
    NonbranchingCubicalGraph foreground repair.apply ∧
    graphBetti foreground background cut.source =
      graphBetti foreground background repair.apply ∧
    backgroundBetaZero background cut.source =
      backgroundBetaZero background repair.apply

/-- The concrete canonical digital-topology provider.  No topology-sensitive
operation remains caller-selected. -/
def semantics (rows columns : Nat) : DigitalTopologySemantics rows columns where
  incidenceMap := fun _foreground _background cell => incidenceFaces cell
  incidenceLowersDimension := fun _foreground _background cell face member =>
    incidenceFaces_lowersDimension cell face member
  linkCondition := canonicalLinkCondition
  betti := graphBetti
  exactCarrierCompatible := canonicalExactCarrierCompatible
  cubicalManifold := canonicalCubicalManifold

/-! ## A nontrivial checked surgery -/

/-- The left endpoint of the canonical three-pixel path. -/
def leftCell : GridCell 1 3 := ⟨⟨0, by omega⟩, ⟨0, by omega⟩⟩

/-- The retained middle pixel of the canonical three-pixel path. -/
def middleCell : GridCell 1 3 := ⟨⟨0, by omega⟩, ⟨1, by omega⟩⟩

/-- The right endpoint of the canonical three-pixel path. -/
def rightCell : GridCell 1 3 := ⟨⟨0, by omega⟩, ⟨2, by omega⟩⟩

/-- Before state `110`: a two-vertex path on the left. -/
def shiftBefore : RasterState 1 3 := fun cell => cell.column.val < 2

/-- The two endpoint cells are the exact local change carrier. -/
def shiftCut : CutDatum 1 3 where
  source := shiftBefore
  selected := {leftCell, rightCell}

/-- Replace `110` by `011`, retaining the middle pixel and shifting the path
one cell to the right. -/
def shiftRepair : Repair shiftCut where
  replacement := fun cell _ => cell = rightCell

/-- After state of the nontrivial shift repair. -/
def shiftAfter : RasterState 1 3 := shiftRepair.apply

theorem shiftRepair_changes_state : shiftAfter ≠ shiftBefore := by
  intro equal
  have atLeft := congrFun equal leftCell
  simp [shiftAfter, shiftRepair, Repair.apply, shiftCut, shiftBefore,
    leftCell, rightCell] at atLeft

theorem shift_changeSupport : shiftRepair.changeSupport = shiftCut.selected := by
  decide

theorem shift_interface_nonempty :
    foregroundLink shiftCut .edge shiftBefore ≠ ∅ := by
  decide

theorem shift_link_preserved :
    foregroundLink shiftCut .edge shiftBefore =
      foregroundLink shiftCut .edge shiftAfter := by
  decide

theorem shift_background_link_preserved :
    backgroundLink shiftCut .vertex shiftBefore =
      backgroundLink shiftCut .vertex shiftAfter := by
  decide

theorem shift_before_nonbranching :
    NonbranchingCubicalGraph .edge shiftBefore := by
  decide

theorem shift_after_nonbranching :
    NonbranchingCubicalGraph .edge shiftAfter := by
  decide

theorem shift_betti_preserved :
    graphBetti .edge .vertex shiftBefore = graphBetti .edge .vertex shiftAfter := by
  funext degree
  rcases degree with _ | _ | degree
  · decide
  · decide
  · rfl

theorem shift_background_components_preserved :
    backgroundBetaZero .vertex shiftBefore =
      backgroundBetaZero .vertex shiftAfter := by
  decide

/-- A production inhabitant of controlled digital surgery.  It changes two
pixels, retains the middle interface, and proves that the foreground graph is
a one-edge path before and after. -/
def controlledShift : ControlledDigitalSurgery (semantics 1 3) shiftCut where
  repair := shiftRepair
  foregroundAdjacency := .edge
  backgroundAdjacency := .vertex
  adjacencyCompatible := by decide
  linkConditionEvidence :=
    ⟨⟨rfl, rfl⟩, shift_interface_nonempty, shift_link_preserved,
      shift_background_link_preserved,
      shift_before_nonbranching,
      shift_after_nonbranching, shift_betti_preserved,
      shift_background_components_preserved⟩
  expectedBettiDelta := fun _ => 0
  bettiDeltaVerified := by
    intro degree
    change Int.ofNat (graphBetti .edge .vertex shiftAfter degree) -
      Int.ofNat (graphBetti .edge .vertex shiftBefore degree) = 0
    rw [← congrFun shift_betti_preserved degree]
    simp
  exactCarrierEvidence := ⟨⟨rfl, rfl⟩, shift_changeSupport⟩
  cubicalManifoldEvidence := ⟨⟨rfl, rfl⟩, shift_after_nonbranching⟩

/-! ## Audit report -/

/-- Audit fields distinguish a computed value from an inapplicable field and
from one that has not been established. -/
inductive AuditDatum (Value : Type) where
  | known (value : Value)
  | notApplicable
  | notEstablished
  deriving DecidableEq, Repr

/-- Number of boundary components of the zero-dimensional boundary of a
nonbranching foreground graph: exactly its degree-one vertices. -/
def boundaryComponentCount {rows columns : Nat} (policy : AdjacencyPolicy)
    (state : RasterState rows columns) : Nat :=
  (Finset.univ.filter fun cell : ForegroundCell state =>
    foregroundDegree policy state cell = 1).card

/-- The complete finite-graph snapshot used on each side of a digital surgery
report.  Every applicable value is computed from the state; none is a caller
assertion.  `backgroundComponents` is computed from the Boolean complement
under the separately supplied background adjacency. -/
structure RasterTopologySnapshot where
  dimension : Nat
  manifold : Bool
  boundaryComponents : Nat
  orientable : AuditDatum Bool
  genus : AuditDatum Nat
  betti : Nat → Nat
  eulerCharacteristic : Int
  fundamentalGroupFreeRank : AuditDatum Nat
  homologyRanks : Nat → Nat
  backgroundComponents : Nat
  carrierMultiplicity : AuditDatum Nat
  fixedPointSetCardinality : AuditDatum Nat
  distinguishedEquilibriumRemains : AuditDatum Bool

/-- Canonical snapshot of a finite foreground graph.  A graph with an edge has
dimension one, while a discrete graph has dimension zero.  Graph fundamental
groups are free and their rank is the first graph Betti number.  Surface genus
is inapplicable; fixed-point and equilibrium fields are inapplicable because a
raster state alone supplies neither a self-map nor a distinguished point. -/
def topologySnapshot {rows columns : Nat} (foreground background : AdjacencyPolicy)
    (state : RasterState rows columns) : RasterTopologySnapshot :=
  let graph := foregroundGraph foreground state
  let b0 := betaZero foreground state
  let b1 := betaOne foreground state
  let manifold := NonbranchingCubicalGraph foreground state
  { dimension := if graph.edgeFinset.card = 0 then 0 else 1
    manifold := decide manifold
    boundaryComponents := boundaryComponentCount foreground state
    orientable := if manifold then .known true else .notEstablished
    genus := .notApplicable
    betti := graphBetti foreground background state
    eulerCharacteristic := Int.ofNat b0 - Int.ofNat b1
    fundamentalGroupFreeRank := .known b1
    homologyRanks := graphBetti foreground background state
    backgroundComponents := backgroundBetaZero background state
    carrierMultiplicity := .known (Fintype.card (ForegroundCell state))
    fixedPointSetCardinality := .notApplicable
    distinguishedEquilibriumRemains := .notApplicable }

/-- Computed local datum at the discrete transition. -/
structure RasterSurgeryDatumSummary where
  selectedCells : Nat
  changedCells : Nat
  retainedLinkBefore : Nat
  retainedLinkAfter : Nat
  addedCells : Nat
  deletedCells : Nat
  deriving DecidableEq, Repr

/-- Extract the actual finite cut and repair counts. -/
def surgeryDatumSummary {rows columns : Nat} {cut : CutDatum rows columns}
    (policy : AdjacencyPolicy) (repair : Repair cut) : RasterSurgeryDatumSummary where
  selectedCells := cut.selected.card
  changedCells := repair.changeSupport.card
  retainedLinkBefore := (foregroundLink cut policy cut.source).card
  retainedLinkAfter := (foregroundLink cut policy repair.apply).card
  addedCells := repair.addedCells.card
  deletedCells := repair.deletedCells.card

/-- Machine-checkable before/datum/after invariant report for one canonical
finite surgery.  It covers dimension, manifold and boundary status,
orientability, genus applicability, Betti/homology ranks, Euler
characteristic, free fundamental-group rank, carrier multiplicity, fixed-point
applicability, and distinguished-equilibrium applicability.  These are audit
fields, not an assertion that all values are invariant. -/
structure SurgeryInvariantReport {rows columns : Nat}
    (semantics : DigitalTopologySemantics rows columns)
    (cut : CutDatum rows columns) where
  surgery : ControlledDigitalSurgery semantics cut
  before : RasterTopologySnapshot
  datum : RasterSurgeryDatumSummary
  after : RasterTopologySnapshot
  before_spec : before = topologySnapshot
    surgery.foregroundAdjacency surgery.backgroundAdjacency cut.source
  datum_spec : datum = surgeryDatumSummary
    surgery.foregroundAdjacency surgery.repair
  after_spec : after = topologySnapshot
    surgery.foregroundAdjacency surgery.backgroundAdjacency surgery.repair.apply
  changedCarrier : Finset (GridCell rows columns)
  changedCarrier_spec : changedCarrier = surgery.repair.changeSupport
  localityEvidence : changedCarrier ⊆ cut.selected
  postManifold : semantics.cubicalManifold
    surgery.foregroundAdjacency surgery.backgroundAdjacency surgery.repair.apply

/-- The invariant report of `controlledShift`, reachable from the production
surgery aggregate. -/
def controlledShiftReport : SurgeryInvariantReport (semantics 1 3) shiftCut where
  surgery := controlledShift
  before := topologySnapshot .edge .vertex shiftBefore
  datum := surgeryDatumSummary .edge shiftRepair
  after := topologySnapshot .edge .vertex shiftAfter
  before_spec := rfl
  datum_spec := rfl
  after_spec := rfl
  changedCarrier := shiftRepair.changeSupport
  changedCarrier_spec := rfl
  localityEvidence := controlledShift.changes_only_selected
  postManifold := controlledShift.cubicalManifoldEvidence

theorem controlledShiftReport_bettiZero :
    controlledShiftReport.before.betti 0 = 1 ∧
      controlledShiftReport.after.betti 0 = 1 := by
  decide

theorem controlledShiftReport_bettiOne :
    controlledShiftReport.before.betti 1 = 0 ∧
      controlledShiftReport.after.betti 1 = 0 := by
  decide

theorem controlledShiftReport_backgroundComponents :
    controlledShiftReport.before.backgroundComponents = 1 ∧
      controlledShiftReport.after.backgroundComponents = 1 := by
  decide

theorem controlledShiftReport_local_counts :
    controlledShiftReport.datum.selectedCells = 2 ∧
      controlledShiftReport.datum.changedCells = 2 ∧
      controlledShiftReport.datum.retainedLinkBefore = 1 ∧
      controlledShiftReport.datum.retainedLinkAfter = 1 ∧
      controlledShiftReport.datum.addedCells = 1 ∧
      controlledShiftReport.datum.deletedCells = 1 := by
  decide

theorem controlledShiftReport_eulerCharacteristic :
    controlledShiftReport.before.eulerCharacteristic = 1 ∧
      controlledShiftReport.after.eulerCharacteristic = 1 := by
  decide

end BitMatrix.Surgery.CanonicalRaster
