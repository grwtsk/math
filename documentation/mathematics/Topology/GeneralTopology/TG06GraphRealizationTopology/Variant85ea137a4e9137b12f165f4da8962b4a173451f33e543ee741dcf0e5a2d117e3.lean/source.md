# Complete source: GRWTSK.Topology.GeneralTopology.TG06GraphRealizationTopology.Variant85ea137a4e9137b12f165f4da8962b4a173451f33e543ee741dcf0e5a2d117e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb7564e3d8bba08d9c5c68075058e0f4e7a88c75` · SHA-256 `85ea137a4e9137b12f165f4da8962b4a173451f33e543ee741dcf0e5a2d117e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.TopologicalClaims

universe uVertex uEdge uInterval

namespace FCRS.ControlledSpherical.TopologicalTheorems

open FCRS.ControlledPlane
open FCRS.ControlledSpherical
open FCRS.Topology

theorem tg06_graphRealizationTopology
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval}) : TG06Claim G I where
  topologyIsQuotient := rfl
  quotientContinuous := quotientMap_continuous G I
  edgePathsContinuous := edgePath_continuous G I

end FCRS.ControlledSpherical.TopologicalTheorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=40687871bb4b2ce0cbe47913e905d29286cd284fd8d1f6fa8c2beece9012cd72 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/TG06GraphRealizationTopology/Variant85ea137a4e9137b12f165f4da8962b4a173451f33e543ee741dcf0e5a2d117e3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
