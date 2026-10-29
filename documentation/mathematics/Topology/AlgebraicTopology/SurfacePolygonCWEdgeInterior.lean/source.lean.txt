/-
Copyright (c) 2026 grwtsk contributors. Released under MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #1040 head 9b4caf9799616c951d9dfdd8108588e991f34638.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWCellPartition

/-!
# Strict positive edge interval as an actual topological source

This module packages the genuine strict interior of the real
unitInterval as a subtype, and the authentic positive edge map
restricted to it. Continuity, injectivity, and disjointness are
source candidates; openness onto image and the embedding theorem
remain independent topological obligations.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWEdgeInterior

open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWCellSources
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWInteriorSeparation
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWPositiveEdges

/-- The authentic strict open interval, not a finite combinatorial
stand-in or an arbitrary new topology. -/
def StrictUnitInterior := {t : unitInterval // ¬ IsEndpoint t}

/-- The actual positive edge characteristic map restricted to the
strict interior, with the subspace topology inherited from ℝ. -/
def positiveOpenEdge (k : ℕ) (h : Handle k) (i : Fin 2) :
    StrictUnitInterior → PolygonBoundaryOneSkeleton k :=
  fun t => positiveOneCell k h i t.1

/-- The restricted map is continuous as a composition of the
original interval characteristic map with subtype inclusion. -/
theorem positiveOpenEdge_continuous (k : ℕ)
    (h : Handle k) (i : Fin 2) :
    Continuous (positiveOpenEdge k h i) :=
  (positiveOneCell_continuous k h i).comp continuous_subtype_val

/-- The strict-interior characteristic is injective, consuming the
exact quotient-fiber theorem rather than a local cardinality claim. -/
theorem positiveOpenEdge_injective (k : ℕ)
    (h : Handle k) (i : Fin 2) :
    Function.Injective (positiveOpenEdge k h i) := by
  intro t u heq
  apply Subtype.ext
  exact positiveOneCell_injective_interior k h i t.property heq

/-- Every strict-interior point remains different from the actual
common polygon vertex. -/
theorem positiveOpenEdge_ne_vertex (k : ℕ)
    (h : Handle k) (i : Fin 2)
    (t : StrictUnitInterior) :
    positiveOpenEdge k h i t ≠ polygonZeroCell k :=
  positiveInterior_ne_zeroCell k h i t.1 t.property

/-- Different positive edge labels have disjoint strict interiors. -/
theorem positiveOpenEdge_labels_eq_of_image_eq (k : ℕ)
    (h h' : Handle k) (i j : Fin 2)
    (t u : StrictUnitInterior)
    (heq : positiveOpenEdge k h i t =
      positiveOpenEdge k h' j u) :
    h = h' ∧ i = j :=
  positiveOneCell_disjoint_interior k h h' i j t.property heq

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWEdgeInterior
