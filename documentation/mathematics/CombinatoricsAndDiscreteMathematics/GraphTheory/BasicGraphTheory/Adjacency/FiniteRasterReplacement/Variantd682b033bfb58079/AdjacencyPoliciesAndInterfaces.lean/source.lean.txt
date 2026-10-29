/-
AdjacencyPoliciesAndInterfaces — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: d682b033bfb58079f87071b8d5c04e3103f7ad3006c564126d5382a3d7cc8361
Organized SHA-256: cff5d89efedb8d8db0d7342e45700f49e923bde5d9f8fa436bc3bd2c892b0a01
PMD: 510.7.030.010.020 adjacency (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Only exact captured edge/vertex relations on typed grid cells and their original proofs are used. The interface is a finite filtered exterior; no topology-changing, digital-manifold or continuous-geometry conclusion is inferred. -/

import BitMatrix.Topology.RasterCubicalComplex
import Mathlib.Data.Int.Basic

import GRWTSK.Topology.CombinatorialTopology.FiniteRasterReplacement.Variantd682b033bfb58079.FiniteCutAndReplacement
/-!
# Finite digital surgery data

The operation here is exact replacement on a finite set of typed raster
cells.  It proves locality and reconstruction laws.  Topology-sensitive use is
represented by a provider-scoped `DigitalTopologySemantics` and a
`ControlledDigitalSurgery` checked against that one fixed provider.  This base
module remains provider-neutral.  The sibling `Surgery.CanonicalRaster` module
inhabits the interface for the project's finite foreground-graph profile; it
does not promote that digital graph model to smooth manifold surgery.
-/

namespace GRWTSK.Topology.CombinatorialTopology.FiniteRasterReplacement.Variantd682b033bfb58079

namespace BitMatrix.Surgery.Digital

open BitMatrix.Runtime.Semantics
open BitMatrix.Topology.Raster

/-- The explicitly chosen digital-neighbor convention. -/
inductive AdjacencyPolicy where
  | edge
  | vertex
  deriving DecidableEq, Repr

/-- Canonical mathematical denotation of the configured four- or
eight-neighbor policy. -/
def AdjacencyPolicy.Adjacent {rows columns : Nat}
    (policy : AdjacencyPolicy) (left right : GridCell rows columns) : Prop :=
  match policy with
  | .edge => EdgeAdjacent left right
  | .vertex => VertexAdjacent left right

instance adjacencyPolicyDecidable {rows columns : Nat}
    (policy : AdjacencyPolicy) (left right : GridCell rows columns) :
    Decidable (policy.Adjacent left right) := by
  cases policy <;> simp only [AdjacencyPolicy.Adjacent] <;> infer_instance

theorem AdjacencyPolicy.adjacent_symmetric {rows columns : Nat}
    (policy : AdjacencyPolicy) {left right : GridCell rows columns} :
    policy.Adjacent left right ↔ policy.Adjacent right left := by
  cases policy
  · exact edgeAdjacent_symmetric
  · exact vertexAdjacent_symmetric

theorem AdjacencyPolicy.not_adjacent_self {rows columns : Nat}
    (policy : AdjacencyPolicy) (cell : GridCell rows columns) :
    ¬ policy.Adjacent cell cell := by
  cases policy
  · exact not_edgeAdjacent_self cell
  · exact not_vertexAdjacent_self cell

namespace CutDatum

/-- The retained interface computed with an explicit digital-adjacency policy. -/
def adjacencyInterface {rows columns : Nat} (cut : CutDatum rows columns)
    (policy : AdjacencyPolicy) : Finset (GridCell rows columns) :=
  cut.exterior.filter fun outside =>
    ∃ inside ∈ cut.selected, policy.Adjacent outside inside

theorem adjacencyInterface_subset_exterior {rows columns : Nat}
    (cut : CutDatum rows columns) (policy : AdjacencyPolicy) :
    cut.adjacencyInterface policy ⊆ cut.exterior := by
  intro cell member
  exact (Finset.mem_filter.mp member).1

@[simp]
theorem adjacencyInterface_edge {rows columns : Nat}
    (cut : CutDatum rows columns) :
    cut.adjacencyInterface .edge = cut.exposedInterface :=
  rfl

end CutDatum


end BitMatrix.Surgery.Digital

end GRWTSK.Topology.CombinatorialTopology.FiniteRasterReplacement.Variantd682b033bfb58079
