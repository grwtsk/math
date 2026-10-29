import FCRS.ControlledSpherical.S2Realization

universe uVertex uEdge uGraph u2 u3

namespace FCRS.ControlledSpherical

open FCRS.ControlledPlane

/--
An injective map from an opaque graph-realization point sort into the opaque
`S³` point sort.  It is not a graph-topological embedding theorem.
-/
structure InjectiveS3Realization
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    (R : GraphRealization.{uVertex, uEdge, uGraph} G)
    (S3 : Sphere3Carrier.{u3}) where
  injection : InjectiveMapWitness R.Point S3.Point

def HasInjectiveS3RealizationWitness
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    (R : GraphRealization.{uVertex, uEdge, uGraph} G)
    (S3 : Sphere3Carrier.{u3}) : Prop :=
  Nonempty (InjectiveS3Realization R S3)

/-- Supplied positive choice between exact signature-level carrier injections. -/
inductive SphericalRealizationChoice
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    (R : GraphRealization.{uVertex, uEdge, uGraph} G)
    (S2 : Sphere2Carrier.{u2})
    (S3 : Sphere3Carrier.{u3}) where
  | sphere2 : InjectiveS2Realization R S2 →
      SphericalRealizationChoice R S2 S3
  | sphere3 : InjectiveS3Realization R S3 →
      SphericalRealizationChoice R S2 S3

def SphericalRealizationChoice.dimension
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {R : GraphRealization.{uVertex, uEdge, uGraph} G}
    {S2 : Sphere2Carrier.{u2}} {S3 : Sphere3Carrier.{u3}} :
    SphericalRealizationChoice R S2 S3 → SelectedRealizationDimension
  | .sphere2 _ => .two
  | .sphere3 _ => .three

/-- Compactness assertion for the carrier of the selected branch only. -/
def SelectedSphericalCarrierCompact
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {R : GraphRealization.{uVertex, uEdge, uGraph} G}
    {S2 : Sphere2Carrier.{u2}} {S3 : Sphere3Carrier.{u3}} :
    SphericalRealizationChoice R S2 S3 → Prop
  | .sphere2 _ => CompactSphere2 S2
  | .sphere3 _ => CompactSphere3 S3

/--
Choose the `S²` branch when supplied, otherwise the supplied `S³` branch.
`none` means only that no witness was supplied; it proves no impossibility.
-/
def chooseInjectiveSphericalRealization
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {R : GraphRealization.{uVertex, uEdge, uGraph} G}
    {S2 : Sphere2Carrier.{u2}} {S3 : Sphere3Carrier.{u3}}
    (h2 : Option (InjectiveS2Realization R S2))
    (h3 : Option (InjectiveS3Realization R S3)) :
    Option (SphericalRealizationChoice R S2 S3) :=
  match h2, h3 with
  | some e2, _ => some (.sphere2 e2)
  | none, some e3 => some (.sphere3 e3)
  | none, none => none

end FCRS.ControlledSpherical
