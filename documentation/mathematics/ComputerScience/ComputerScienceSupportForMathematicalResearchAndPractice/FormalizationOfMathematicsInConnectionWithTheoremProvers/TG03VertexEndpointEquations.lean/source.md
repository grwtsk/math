# TG03 Vertex Endpoint Equations — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e75d19310b7c44672ec5ef2c2578a9b06e2dd9e1` · SHA-256 `9d378552cb638e1c336cf78e2dcb25f24e490ea45dd58694321df8ca41cc13d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.TopologicalClaims

universe uVertex uEdge uInterval

namespace FCRS.ControlledSpherical.TopologicalTheorems

open FCRS.ControlledPlane
open FCRS.ControlledSpherical
open FCRS.Topology

theorem tg03_vertexEndpointEquations
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval}) : TG03Claim G I where
  zeroEndpoint := edgePath_zero G I
  oneEndpoint := edgePath_one G I

end FCRS.ControlledSpherical.TopologicalTheorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0190b6578cdd9c80eba8aef7447f493e0a13fa260595b67452106b909d9f19a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TG03VertexEndpointEquations/Variant9d378552cb638e1c336cf78e2dcb25f24e490ea45dd58694321df8ca41cc13d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
