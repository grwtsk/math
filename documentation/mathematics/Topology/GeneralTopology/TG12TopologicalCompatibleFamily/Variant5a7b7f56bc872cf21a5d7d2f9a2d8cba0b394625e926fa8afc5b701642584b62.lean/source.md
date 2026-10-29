# Complete source: GRWTSK.Topology.GeneralTopology.TG12TopologicalCompatibleFamily.Variant5a7b7f56bc872cf21a5d7d2f9a2d8cba0b394625e926fa8afc5b701642584b62

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4783e8294357714d2068f85c9f4d331f8aee5537` · SHA-256 `5a7b7f56bc872cf21a5d7d2f9a2d8cba0b394625e926fa8afc5b701642584b62`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.TopologicalClaims

universe uStage uPoint

namespace FCRS.ControlledSpherical.TopologicalTheorems

open FCRS.ControlledSpherical
open FCRS.Topology

theorem tg12_topologicalCompatibleFamily
    {Stage : Type uStage}
    (R : ContinuousRefinementSystem.{uStage, uPoint} Stage) : TG12Claim R where
  topologyIsSubspace := rfl
  projectionsContinuous := continuous_topologicalCompatibleFamilyProjection R
  projectionsCommute := by
    intro x next prev h
    exact topologicalCompatibleFamily_projection_commutes R x h

end FCRS.ControlledSpherical.TopologicalTheorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2678f9f567166e3291a400aad5f8605765631b888373abf097b172ceaf3bad1e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/TG12TopologicalCompatibleFamily/Variant5a7b7f56bc872cf21a5d7d2f9a2d8cba0b394625e926fa8afc5b701642584b62.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
