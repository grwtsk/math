# Vertex Placement — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a10e3cc27d0d003e7f080b9cffbbb0210d5541ff` · SHA-256 `1a47187e03a542fcbf19c34c06250917d9218b185508e89efb5e3047ae68095b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.InjectiveMap

universe uVertex uEdge u1 u2

namespace FCRS.ControlledSpherical

open FCRS.ControlledPlane

/-- Injective placement of graph vertices in the opaque `S¹` point sort. -/
structure InjectiveS1VertexPlacement
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (S1 : Sphere1Carrier.{u1}) where
  injection : InjectiveMapWitness Vertex S1.Point

/-- Signature-level injective placement of `S¹` points into `S²` points. -/
structure InjectiveS1ToS2Placement
    (S1 : Sphere1Carrier.{u1})
    (S2 : Sphere2Carrier.{u2}) where
  injection : InjectiveMapWitness S1.Point S2.Point

end FCRS.ControlledSpherical
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=711869331ea70f0c82c55a9ed30eb6c77f8ac0e0c43242b0c804c4950f2b0bc5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VertexPlacement/Variant1a47187e03a542fcbf19c34c06250917d9218b185508e89efb5e3047ae68095b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
