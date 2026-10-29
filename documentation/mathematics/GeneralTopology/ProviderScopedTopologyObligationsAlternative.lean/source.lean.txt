/-
ProviderScopedTopologyObligations — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: d682b033bfb58079f87071b8d5c04e3103f7ad3006c564126d5382a3d7cc8361
Organized SHA-256: cff5d89efedb8d8db0d7342e45700f49e923bde5d9f8fa436bc3bd2c892b0a01
PMD: 510.4.070 combinatorial topology (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Every DigitalTopologySemantics function and incidence-dimension law remains; every ControlledDigitalSurgery field remains tied to its actual cut/repair/state and selected provider, including the exact Int Betti-delta equation. This is complete conditional mathematical data, not a constructed manifold/homology theory or a fresh acceptance certificate. Supplied predicate meanings are not silently strengthened. -/

import BitMatrix.Topology.RasterCubicalComplex
import Mathlib.Data.Int.Basic

import GRWTSK.Topology.CombinatorialTopology.FiniteRasterReplacement.Variantd682b033bfb58079.FiniteCutAndReplacement
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.Adjacency.FiniteRasterReplacement.Variantd682b033bfb58079.AdjacencyPoliciesAndInterfaces
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

/--
A named provider of the topology-sensitive semantics needed to interpret a
finite raster replacement.  Each predicate is a function of the actual cut,
repair, or resulting state; individual surgery records cannot substitute an
unrelated proposition or unrelated Betti functions.

This structure is a conditional interface.  Supplying a value is not, by
itself, evidence that the chosen digital topology agrees with a smooth or
cubical-manifold theory.
-/
structure DigitalTopologySemantics (rows columns : Nat) where
  incidenceMap :
    AdjacencyPolicy → AdjacencyPolicy →
      Cell rows columns → Finset (Cell rows columns)
  incidenceLowersDimension :
    ∀ foreground background cell face,
      face ∈ incidenceMap foreground background cell →
        face.dimension < cell.dimension
  linkCondition :
    (foreground background : AdjacencyPolicy) →
      (cut : CutDatum rows columns) → Repair cut → Prop
  betti :
    AdjacencyPolicy → AdjacencyPolicy →
      RasterState rows columns → Nat → Nat
  exactCarrierCompatible :
    (foreground background : AdjacencyPolicy) →
      (cut : CutDatum rows columns) → Repair cut → Prop
  cubicalManifold :
    AdjacencyPolicy → AdjacencyPolicy → RasterState rows columns → Prop

/--
Proof-carrying obligations for calling a finite replacement *controlled
digital surgery*.  All topology-sensitive propositions are selected once by
the explicit semantics provider and are applied to the record's actual cut,
repair, and post-repair state.  Merely constructing `Repair` supplies none of
their evidence.
-/
structure ControlledDigitalSurgery {rows columns : Nat}
    (semantics : DigitalTopologySemantics rows columns)
    (cut : CutDatum rows columns) where
  repair : Repair cut
  foregroundAdjacency : AdjacencyPolicy
  backgroundAdjacency : AdjacencyPolicy
  adjacencyCompatible : foregroundAdjacency ≠ backgroundAdjacency
  linkConditionEvidence :
    semantics.linkCondition foregroundAdjacency backgroundAdjacency cut repair
  expectedBettiDelta : Nat → Int
  bettiDeltaVerified : ∀ degree,
    Int.ofNat
        (semantics.betti foregroundAdjacency backgroundAdjacency repair.apply degree) -
      Int.ofNat
        (semantics.betti foregroundAdjacency backgroundAdjacency cut.source degree) =
      expectedBettiDelta degree
  exactCarrierEvidence :
    semantics.exactCarrierCompatible
      foregroundAdjacency backgroundAdjacency cut repair
  cubicalManifoldEvidence :
    semantics.cubicalManifold
      foregroundAdjacency backgroundAdjacency repair.apply

namespace ControlledDigitalSurgery

/-- Every controlled surgery retains the unconditional finite locality law. -/
theorem changes_only_selected {rows columns : Nat}
    {semantics : DigitalTopologySemantics rows columns}
    {cut : CutDatum rows columns}
    (surgery : ControlledDigitalSurgery semantics cut) :
    surgery.repair.changeSupport ⊆ cut.selected :=
  surgery.repair.changeSupport_subset_selected

/-- Added cells are computed from the pre/post states and cannot be supplied
independently by a caller. -/
theorem added_only_selected {rows columns : Nat}
    {semantics : DigitalTopologySemantics rows columns}
    {cut : CutDatum rows columns}
    (surgery : ControlledDigitalSurgery semantics cut) :
    surgery.repair.addedCells ⊆ cut.selected :=
  surgery.repair.addedCells_subset_selected

/-- Deleted cells are computed from the pre/post states and cannot be supplied
independently by a caller. -/
theorem deleted_only_selected {rows columns : Nat}
    {semantics : DigitalTopologySemantics rows columns}
    {cut : CutDatum rows columns}
    (surgery : ControlledDigitalSurgery semantics cut) :
    surgery.repair.deletedCells ⊆ cut.selected :=
  surgery.repair.deletedCells_subset_selected

end ControlledDigitalSurgery


end BitMatrix.Surgery.Digital

end GRWTSK.Topology.CombinatorialTopology.FiniteRasterReplacement.Variantd682b033bfb58079
