# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CF07LosslessDecoder.Variant3a2f826f8e55580b9f9c61ccaa7d53ee8a3ab4bc8558d097de7a6fa0eb323b2b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c57882a102b6d193836bae214f44dbfe8da807fd` · SHA-256 `3a2f826f8e55580b9f9c61ccaa7d53ee8a3ab4bc8558d097de7a6fa0eb323b2b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/-- CF-07 packages an explicit decoder as controlled losslessness. -/
theorem cf07_losslessDecoder
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (D : LosslessDecoder M.observation) :
    CF07Claim M :=
  ⟨D⟩

end FCRS.ControlledPlane.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7fb66503937bcfcaf13d707ff264640a861ce7069a1bc79c014ad9f962fdb5a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CF07LosslessDecoder/Variant3a2f826f8e55580b9f9c61ccaa7d53ee8a3ab4bc8558d097de7a6fa0eb323b2b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
