# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CF01ClosedCoordinateFixation.Variant8311cd28363dff71f71dbab7a34cc55ec61607412c9b82ed392914d9de9e7177

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d91056d7457dbedb5abf8dabe83fbc6c19fd448f` · SHA-256 `8311cd28363dff71f71dbab7a34cc55ec61607412c9b82ed392914d9de9e7177`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/-- CF-01 research-rule projection for closed-coordinate fixation. -/
theorem cf01_closedCoordinateFixation
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF01Claim S M :=
  registry.cf01

end FCRS.ControlledPlane.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c02dcf68bc444e5cf25b8681602deb3ac88b4bfbaec76e82b57f322945f47dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CF01ClosedCoordinateFixation/Variant8311cd28363dff71f71dbab7a34cc55ec61607412c9b82ed392914d9de9e7177.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
