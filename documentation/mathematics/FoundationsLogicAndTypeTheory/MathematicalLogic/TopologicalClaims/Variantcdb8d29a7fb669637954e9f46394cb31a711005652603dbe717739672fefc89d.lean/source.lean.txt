import FCRS.ControlledSpherical.TopologicalRegistry

/-
TG-01--TG-12 are deliberately separate from CS-01--CS-12.  The TG family
speaks about the quotient topology of an admitted directed graph.  It neither
mentions a controlled observation nor equips a control sort with a topology.
-/

universe uVertex uEdge uMorph uFactor uInterval u1 u2 u3 uStage uPoint

namespace FCRS.ControlledSpherical

open FCRS.ControlledPlane
open FCRS.Topology

/-- TG-01: the sieve-selected edge subtype retains the source graph incidence. -/
structure TG01Claim
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {Morph : Type uMorph} {Factorization : Type uFactor}
    (G : DirectedGraph Vertex Edge)
    (sieve : FactoringSieve Morph Factorization)
    (occurs : Edge → Factorization → Prop) : Prop where
  everyEdgeAdmissible :
    ∀ e : AdmittedEdgeType sieve occurs,
      AdmissibleEdge sieve occurs e.1
  sourceInherited :
    ∀ e : AdmittedEdgeType sieve occurs,
      (AdmittedGraph G sieve occurs).source e = G.source e.1
  targetInherited :
    ∀ e : AdmittedEdgeType sieve occurs,
      (AdmittedGraph G sieve occurs).target e = G.target e.1
  sourceEdgeNotDuplicated :
    Function.Injective
      (fun e : AdmittedEdgeType sieve occurs => e.1)

/-- TG-02: quotient equality is exactly endpoint-generated equivalence. -/
structure TG02Claim
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval}) : Prop where
  quotientExact :
    ∀ x y : GraphPrePoint Vertex Edge I.Point,
      quotientMap G I x = quotientMap G I y ↔
        GraphEndpointEqv G I x y
  verticesRemainDistinct : Function.Injective (vertexPoint G I)

/-- TG-03: every edge interval is attached at its declared source and target. -/
structure TG03Claim
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval}) : Prop where
  zeroEndpoint :
    ∀ e, edgePath G I e I.zero = vertexPoint G I (G.source e)
  oneEndpoint :
    ∀ e, edgePath G I e I.one = vertexPoint G I (G.target e)

/-- TG-04: one edge path is injective on the declared interval interior. -/
def TG04Claim
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval}) : Prop :=
  ∀ (e : Edge) {t u : I.Point},
    t ∈ I.interior → u ∈ I.interior →
      edgePath G I e t = edgePath G I e u → t = u

/-- TG-05: distinct edge interiors are disjoint and every interior avoids vertices. -/
structure TG05Claim
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval}) : Prop where
  distinctInteriors :
    ∀ {e f : Edge}, e ≠ f → ∀ {x : GraphPoint G I},
      EdgeInteriorPoint G I e x → EdgeInteriorPoint G I f x → False
  interiorsAvoidVertices :
    ∀ {e : Edge} {x : GraphPoint G I},
      EdgeInteriorPoint G I e x → ∀ {v : Vertex},
        vertexPoint G I v = x → False

/-- TG-06: the realization carries the actual final topology and canonical maps. -/
structure TG06Claim
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval}) : Prop where
  topologyIsQuotient :
    graphRealizationTopology G I =
      quotientTopology (graphPreTopology G I) (quotientMap G I)
  quotientContinuous :
    Continuous (graphPreTopology G I) (graphRealizationTopology G I)
      (quotientMap G I)
  edgePathsContinuous :
    ∀ e, Continuous I.topology (graphRealizationTopology G I)
      (edgePath G I e)

/-- TG-07: selecting the package's `S²` branch exposes its positive witness. -/
def TG07Claim
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S1 : Sphere1.{u1}} {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    {Stage : Type uStage}
    (W : TopologicalGraphWitnessPackage.{
      uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
      G I S1 S2 S3 Stage) : Prop :=
  SelectsTopologicalSphere2 W.selectedEmbedding →
    HasTopologicalPlanarWitness G I S2

/-- TG-08: selecting the package's `S³` branch exposes its positive witness. -/
def TG08Claim
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S1 : Sphere1.{u1}} {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    {Stage : Type uStage}
    (W : TopologicalGraphWitnessPackage.{
      uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
      G I S1 S2 S3 Stage) : Prop :=
  SelectsTopologicalSphere3 W.selectedEmbedding →
    HasTopologicalSpatialWitness G I S3

/-- TG-09: a selected `S²` embedding has the package's exact boundary law. -/
def TG09Claim
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S1 : Sphere1.{u1}} {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    {Stage : Type uStage}
    (W : TopologicalGraphWitnessPackage.{
      uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
      G I S1 S2 S3 Stage) : Prop :=
  ∀ E, W.selectedEmbedding = .sphere2 E →
    CircleCompatibleTopologicalEmbedding2
      G I S1 S2 W.vertexPlacement W.boundary E

/-- TG-10: every declared graph-realization restriction map is continuous. -/
def TG10Claim
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S1 : Sphere1.{u1}} {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    {Stage : Type uStage}
    (W : TopologicalGraphWitnessPackage.{
      uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
      G I S1 S2 S3 Stage) : Prop :=
  ∀ {next prev}, W.refinement.refines next prev →
    Continuous
      (W.refinement.topologyAt next)
      (W.refinement.topologyAt prev)
      (W.refinement.restrict next prev)

/--
TG-11: identity/composition and strict embedding commutation come from the
same selected branch and the same dependent refinement system.
-/
structure TG11Claim
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S1 : Sphere1.{u1}} {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    {Stage : Type uStage}
    (W : TopologicalGraphWitnessPackage.{
      uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
      G I S1 S2 S3 Stage) : Prop where
  refinesReflexive : ∀ s, W.refinement.refines s s
  refinesTransitive :
    ∀ {later middle earlier},
      W.refinement.refines later middle →
      W.refinement.refines middle earlier →
      W.refinement.refines later earlier
  restrictionIdentity :
    ∀ s x, W.refinement.restrict s s x = x
  restrictionComposition :
    ∀ {later middle earlier}
      (_hlm : W.refinement.refines later middle)
      (_hme : W.refinement.refines middle earlier)
      (x : W.refinement.PointAt later),
      W.refinement.restrict middle earlier
          (W.refinement.restrict later middle x) =
        W.refinement.restrict later earlier x
  embeddingCoherence :
    SelectedTopologicalRefinementCoherence
      W.refinement W.baseStage W.baseIdentification W.selectedEmbedding

/--
TG-12: the compatible-family carrier has the dependent-product subspace
topology, continuous stage projections, and the defining restriction laws.
No inverse-limit universal property is included.
-/
structure TG12Claim
    {Stage : Type uStage}
    (R : ContinuousRefinementSystem.{uStage, uPoint} Stage) : Prop where
  topologyIsSubspace :
    topologicalCompatibleFamilyTopology R =
      subspaceTopology (piTopology R.topologyAt) (refinementCompatibleSet R)
  projectionsContinuous :
    ∀ s,
      Continuous (topologicalCompatibleFamilyTopology R) (R.topologyAt s)
        (topologicalCompatibleFamilyProjection R s)
  projectionsCommute :
    ∀ (x : TopologicalCompatibleFamily R) {next prev},
      R.refines next prev →
      R.restrict next prev
          (topologicalCompatibleFamilyProjection R next x) =
        topologicalCompatibleFamilyProjection R prev x

end FCRS.ControlledSpherical
