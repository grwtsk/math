# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.S2Realization.Variantd06b4c79e053aaf23b8e166e15915e49da1f27ff0c6e237960a47c345b1ed7ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ae2309ff79e80d30295b02c0b01e6d376ae6a0b` · SHA-256 `d06b4c79e053aaf23b8e166e15915e49da1f27ff0c6e237960a47c345b1ed7ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.VertexPlacement

universe uVertex uEdge uGraph u1 u2

namespace FCRS.ControlledSpherical

open FCRS.ControlledPlane

/--
An injective map from an opaque graph-realization point sort into the opaque
`S²` point sort.  It is not a graph-topological embedding theorem.
-/
structure InjectiveS2Realization
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    (R : GraphRealization.{uVertex, uEdge, uGraph} G)
    (S2 : Sphere2Carrier.{u2}) where
  injection : InjectiveMapWitness R.Point S2.Point

def HasInjectiveS2RealizationWitness
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    (R : GraphRealization.{uVertex, uEdge, uGraph} G)
    (S2 : Sphere2Carrier.{u2}) : Prop :=
  Nonempty (InjectiveS2Realization R S2)

/--
The selected `S²` injection agrees on vertex points with one supplied `S¹`
vertex placement and one supplied `S¹`-to-`S²` point placement.  No edge
interior, cyclic-order, boundary-topology, or intersection law is asserted.
-/
structure VertexCompatibleS2Realization
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    (R : GraphRealization.{uVertex, uEdge, uGraph} G)
    (S1 : Sphere1Carrier.{u1})
    (S2 : Sphere2Carrier.{u2})
    (V : InjectiveS1VertexPlacement G S1)
    (B : InjectiveS1ToS2Placement S1 S2)
    (E : InjectiveS2Realization R S2) : Prop where
  vertexCompatibility :
    ∀ v,
      E.injection.map (R.vertexPoint v) =
        B.injection.map (V.injection.map v)

def HasVertexCompatibleS2RealizationWitness
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    (R : GraphRealization.{uVertex, uEdge, uGraph} G)
    (S1 : Sphere1Carrier.{u1})
    (S2 : Sphere2Carrier.{u2})
    (V : InjectiveS1VertexPlacement G S1)
    (B : InjectiveS1ToS2Placement S1 S2) : Prop :=
  ∃ E : InjectiveS2Realization R S2,
    VertexCompatibleS2Realization R S1 S2 V B E

/-- Forget vertex compatibility while retaining the exact `S²` injection. -/
theorem hasInjectiveS2RealizationWitness_of_vertexCompatible
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {R : GraphRealization.{uVertex, uEdge, uGraph} G}
    {S1 : Sphere1Carrier.{u1}} {S2 : Sphere2Carrier.{u2}}
    {V : InjectiveS1VertexPlacement G S1}
    {B : InjectiveS1ToS2Placement S1 S2}
    {E : InjectiveS2Realization R S2}
    (_h : VertexCompatibleS2Realization R S1 S2 V B E) :
    HasInjectiveS2RealizationWitness R S2 :=
  ⟨E⟩

end FCRS.ControlledSpherical
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64fd1426eb633d064117a90d2d9a7289478a4dde039f432508d16cacae46ba60 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/S2Realization/Variantd06b4c79e053aaf23b8e166e15915e49da1f27ff0c6e237960a47c345b1ed7ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
