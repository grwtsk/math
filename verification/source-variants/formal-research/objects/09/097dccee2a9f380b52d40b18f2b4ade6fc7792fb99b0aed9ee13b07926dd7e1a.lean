import FCRS.ControlledSpherical.TopologicalRefinement

/-
One anti-witness-drift registry for the genuinely topological spherical branch.
TG-07--TG-11 are research inputs: the registry supplies them through one exact
choice, one exact graph-realization refinement system, and one exact base-stage identification.
-/

universe uVertex uEdge uInterval u1 u2 u3 uStage uPoint

namespace FCRS.ControlledSpherical

open FCRS.ControlledPlane
open FCRS.Topology

/-- A positive choice of one exact quotient-graph embedding branch. -/
inductive TopologicalSphericalEmbeddingChoice
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval})
    (S2 : Sphere2.{u2}) (S3 : Sphere3.{u3}) where
  | sphere2 :
      TopologicalGraphEmbedding G I S2.Point S2.topology →
        TopologicalSphericalEmbeddingChoice G I S2 S3
  | sphere3 :
      TopologicalGraphEmbedding G I S3.Point S3.topology →
        TopologicalSphericalEmbeddingChoice G I S2 S3

/-- Exact boundary compatibility, explicitly conditional on selecting `S²`. -/
def SelectedTopologicalBoundaryCompatibility
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S1 : Sphere1.{u1}} {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    (V : TopologicalS1VertexPlacement G S1)
    (B : TopologicalSphereBoundary S1 S2) :
    TopologicalSphericalEmbeddingChoice G I S2 S3 → Prop :=
  fun choice => ∀ E, choice = .sphere2 E →
    CircleCompatibleTopologicalEmbedding2 G I S1 S2 V B E

/-- Genuine compactness of exactly the selected sphere topology. -/
def SelectedTopologicalSphereCompact
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}} :
    TopologicalSphericalEmbeddingChoice G I S2 S3 → Prop
  | .sphere2 _ => Compact S2.topology
  | .sphere3 _ => Compact S3.topology

/-- The shared package has selected its positive `S²` embedding constructor. -/
def SelectsTopologicalSphere2
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    (choice : TopologicalSphericalEmbeddingChoice G I S2 S3) : Prop :=
  ∃ E, choice = .sphere2 E

/-- The shared package has selected its positive `S³` embedding constructor. -/
def SelectsTopologicalSphere3
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    (choice : TopologicalSphericalEmbeddingChoice G I S2 S3) : Prop :=
  ∃ E, choice = .sphere3 E

/--
The selected branch's strict refinement coherence.  The match retains the
exact selected embedding rather than permitting a second existential witness.
-/
def SelectedTopologicalRefinementCoherence
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    {Stage : Type uStage}
    (R : ContinuousRefinementSystem.{uStage, uPoint} Stage)
    (baseStage : Stage)
    (baseIdentification :
      Homeomorphism (GraphPoint G I) (R.PointAt baseStage)
        (graphRealizationTopology G I) (R.topologyAt baseStage)) :
    TopologicalSphericalEmbeddingChoice G I S2 S3 → Prop
  | .sphere2 E =>
      Nonempty
        (StrictEmbeddingRefinementCoherent R baseStage
          (graphRealizationTopology G I) baseIdentification
          S2.topology E.embedding)
  | .sphere3 E =>
      Nonempty
        (StrictEmbeddingRefinementCoherent R baseStage
          (graphRealizationTopology G I) baseIdentification
          S3.topology E.embedding)

/--
One coherent package for TG-07--TG-11.  It binds the vertex placement,
boundary, selected `S²`/`S³` embedding, literal stagewise sieve-admitted graph
refinement system, base-stage homeomorphism, and strict
embedding/refinement commutation.  Its
compactness fields are the genuine open-cover predicates of the sphere
topologies.
-/
structure TopologicalGraphWitnessPackage
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval})
    (S1 : Sphere1.{u1}) (S2 : Sphere2.{u2}) (S3 : Sphere3.{u3})
    (Stage : Type uStage) where
  vertexPlacement : TopologicalS1VertexPlacement G S1
  boundary : TopologicalSphereBoundary S1 S2
  selectedEmbedding : TopologicalSphericalEmbeddingChoice G I S2 S3
  selectedBoundaryCompatibility :
    SelectedTopologicalBoundaryCompatibility
      vertexPlacement boundary selectedEmbedding

  admittedGraphRefinement :
    ContinuousAdmittedGraphRefinement.{uStage, uPoint, uInterval} Stage I
  baseStage : Stage
  baseIdentification :
    Homeomorphism
      (GraphPoint G I)
      ((admittedGraphRefinement.asContinuousRefinementSystem).PointAt baseStage)
      (graphRealizationTopology G I)
      ((admittedGraphRefinement.asContinuousRefinementSystem).topologyAt baseStage)
  refinementCoherence :
    SelectedTopologicalRefinementCoherence
      admittedGraphRefinement.asContinuousRefinementSystem
      baseStage baseIdentification selectedEmbedding

  sphere1Compact : Compact S1.topology
  selectedSphereCompact :
    SelectedTopologicalSphereCompact selectedEmbedding

/--
The generic refinement view of a package.  Its stage point types unfold to the
literal quotients of the admitted graphs supplied by `admittedGraphRefinement`.
-/
def TopologicalGraphWitnessPackage.refinement
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S1 : Sphere1.{u1}} {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    {Stage : Type uStage}
    (W : TopologicalGraphWitnessPackage.{
      uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
      G I S1 S2 S3 Stage) :
    ContinuousRefinementSystem.{uStage, max uPoint uInterval} Stage :=
  W.admittedGraphRefinement.asContinuousRefinementSystem

/--
The topological research registry has a single field, so TG-07--TG-11 cannot
be discharged by mutually unrelated witnesses.
-/
structure TopologicalGraphResearchRegistry
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval})
    (S1 : Sphere1.{u1}) (S2 : Sphere2.{u2}) (S3 : Sphere3.{u3})
    (Stage : Type uStage) : Prop where
  witnesses :
    Nonempty
      (TopologicalGraphWitnessPackage.{
        uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
        G I S1 S2 S3 Stage)

end FCRS.ControlledSpherical
