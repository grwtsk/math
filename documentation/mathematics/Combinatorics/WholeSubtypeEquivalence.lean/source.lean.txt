/-
WholeSubtypeEquivalence
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac
Organized SHA-256: 18147cff30376cf2b26a729354bbb2914d5a0965b7e297eec3e6c980b337d8b4
PMD: 510.7.010.010.010 bijections (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Graph/diagonal equivalence is a plain subtype equivalence for arbitrary types, distinct from coordinate-swap reflection. Singleton fixed-set uniqueness does not imply attraction. The linear kernel equality retains Ring/AddCommGroup/Module and the full transformation; no analytic, dynamical or spectral conclusion is added. RepresentationRelation keeps the actual universal represents↔abstract equality field, with no constructed foreign abstraction provider. The exact original namespace BitMatrix.Runtime.Semantics is retained for structure-extension and theorem lookup; no GRWTSK alias or replacement historical provider is introduced. Physical subject placement and logical module are GRWTSK. Distinct historical providers and duplicate declaration versions cannot be assumed compatible coimports. -/

import BitMatrix.Codec.BitDocument
import BitMatrix.Core.Basic
import BitMatrix.Geometry.GridCell
import BitMatrix.Geometry.Stroke
import BitMatrix.Rhetorical.Core
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Rat.Floor

/-!
# Runtime-visible Bit semantics

These definitions are the formal side of the runtime correspondence ledger.
They do not claim byte-for-byte equivalence with a Rust or JavaScript program;
that promotion additionally requires the executable conformance tests recorded
by the concept ledger.
-/

namespace BitMatrix.Runtime.Semantics

/-! ## Elementary graph--diagonal fixed-point semantics -/

/-- The doubled carrier used to compare a map's graph with the diagonal. -/
abbrev CarrierProduct (Point : Type*) := Point × Point

/-- Forget the second coordinate of a doubled carrier. -/
def firstProjection {Point : Type*} : CarrierProduct Point → Point :=
  Prod.fst

/-- Embed one carrier point on the diagonal of the doubled carrier.

This is a section `p ↦ (p, p)` of `firstProjection`.  It must not be confused
with the JavaScript operation named `reflectDiagonal`: that runtime operation
is coordinate reflection `(x, y) ↦ (y, x)` and has a different type.  Its
separate semantic object and involution theorem are `RasterPoint.reflectDiagonal`
and `RasterPoint.reflectDiagonal_involutive` above.
-/
def diagonalSection {Point : Type*} (point : Point) : CarrierProduct Point :=
  (point, point)

/-- The canonical point on the graph of an endomap above `point`. -/
def graphPoint {Point : Type*}
    (dynamics : Point → Point) (point : Point) : CarrierProduct Point :=
  (point, dynamics point)

/-- A doubled point lies on the diagonal when its coordinates agree. -/
def LiesOnDiagonal {Point : Type*} (point : CarrierProduct Point) : Prop :=
  point.1 = point.2

/-- A doubled point lies on the graph of `dynamics`. -/
def LiesOnGraph {Point : Type*}
    (dynamics : Point → Point) (point : CarrierProduct Point) : Prop :=
  point.2 = dynamics point.1

/-- The fixed set of an endomap, represented as a set of carrier points. -/
def FixedSet {Point : Type*} (dynamics : Point → Point) : Set Point :=
  { point | dynamics point = point }

/-- A fixed point packaged with its defining equality. -/
abbrev FixedPoint {Point : Type*} (dynamics : Point → Point) :=
  { point // point ∈ FixedSet dynamics }

/-- A graph point packaged with evidence that it also lies on the diagonal. -/
abbrev GraphDiagonalIntersection {Point : Type*} (dynamics : Point → Point) :=
  { point : CarrierProduct Point //
      LiesOnGraph dynamics point ∧ LiesOnDiagonal point }

@[simp]
theorem firstProjection_diagonalSection {Point : Type*} (point : Point) :
    firstProjection (diagonalSection point) = point :=
  rfl

/-- The diagonal embedding is a section of the first projection. -/
theorem firstProjection_comp_diagonalSection {Point : Type*} :
    (firstProjection : CarrierProduct Point → Point) ∘ diagonalSection = id := by
  funext point
  rfl

@[simp]
theorem graphPoint_liesOnGraph {Point : Type*}
    (dynamics : Point → Point) (point : Point) :
    LiesOnGraph dynamics (graphPoint dynamics point) :=
  rfl

/-- A point is fixed exactly when its graph point lies on the diagonal. -/
theorem mem_fixedSet_iff_graphPoint_liesOnDiagonal {Point : Type*}
    (dynamics : Point → Point) (point : Point) :
    point ∈ FixedSet dynamics ↔
      LiesOnDiagonal (graphPoint dynamics point) := by
  simp only [FixedSet, Set.mem_setOf_eq, LiesOnDiagonal, graphPoint]
  exact eq_comm

/-- Fixed points are canonically the intersection of the graph and diagonal.

This is a plain type equivalence.  No topological, smooth, or spectral
structure is assumed or inferred.
-/
def fixedPointEquivGraphDiagonalIntersection {Point : Type*}
    (dynamics : Point → Point) :
    FixedPoint dynamics ≃ GraphDiagonalIntersection dynamics where
  toFun point :=
    ⟨diagonalSection point.1, point.2.symm, rfl⟩
  invFun point :=
    ⟨point.1.1, point.2.1.symm.trans point.2.2.symm⟩
  left_inv point := by
    apply Subtype.ext
    rfl
  right_inv point := by
    apply Subtype.ext
    apply Prod.ext
    · rfl
    · exact point.2.2

/-- Every point is fixed by the identity endomap. -/
@[simp]
theorem fixedSet_identity {Point : Type*} :
    FixedSet (id : Point → Point) = Set.univ := by
  ext point
  simp [FixedSet]

/-- If the fixed set is the singleton `{equilibrium}`, every fixed point is
that equilibrium.  This statement does not imply global attraction.
-/
theorem fixedPoint_eq_of_fixedSet_eq_singleton {Point : Type*}
    {dynamics : Point → Point} {equilibrium point : Point}
    (hfixedSet : FixedSet dynamics = {equilibrium})
    (hpoint : point ∈ FixedSet dynamics) :
    point = equilibrium := by
  have : point ∈ ({equilibrium} : Set Point) := by
    rw [← hfixedSet]
    exact hpoint
  simpa using this

end BitMatrix.Runtime.Semantics
