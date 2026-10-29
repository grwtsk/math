import FCRS.ControlledSpherical.Foundations

universe uVertex uEdge uPoint uMorph uFactor

namespace FCRS.ControlledSpherical

open FCRS.ControlledPlane

/--
An abstract carrier realizing a supplied graph.  `edgeSupport` is incidence
data only; `Point` is not asserted to be a topological realization.
-/
structure GraphRealization
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge) where
  Point : Type uPoint
  vertexPoint : Vertex → Point
  edgeSupport : Edge → Point → Prop

/-- An edge has at least one point in the declared realization support. -/
def RealizesEdge
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    (R : GraphRealization G) (e : Edge) : Prop :=
  ∃ p, R.edgeSupport e p

/--
Exactly the sieve-admitted edges are represented by the supplied graph
realization.  Both directions are explicit research obligations.
-/
structure SieveRealizationCompatible
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {Morph : Type uMorph} {Factorization : Type uFactor}
    {G : DirectedGraph Vertex Edge}
    (R : GraphRealization G)
    (sieve : FactoringSieve Morph Factorization)
    (occurs : Edge → Factorization → Prop) : Prop where
  admittedEdgeRealized :
    ∀ e, AdmissibleEdge sieve occurs e → RealizesEdge R e
  realizedEdgeAdmitted :
    ∀ e, RealizesEdge R e → AdmissibleEdge sieve occurs e

end FCRS.ControlledSpherical
