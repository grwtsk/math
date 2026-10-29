# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CF09ClosedCoordinateSeparation.Variantc6ee9f71602dd910f04956566317407b49f84b50b425af6d951c8f6e34c9c726

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5aef166e24ebdbbeeaf9e1fe3d876923a3398a84` · SHA-256 `c6ee9f71602dd910f04956566317407b49f84b50b425af6d951c8f6e34c9c726`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/-- CF-09 research-rule projection for closed-coordinate separation. -/
theorem cf09_closedCoordinateSeparation
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF09Claim S M :=
  registry.cf09

end FCRS.ControlledPlane.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fba427b133fe91197e87b695ee9d6df6fce5a701a5d7ec5c35eab9f8dd3dd4af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CF09ClosedCoordinateSeparation/Variantc6ee9f71602dd910f04956566317407b49f84b50b425af6d951c8f6e34c9c726.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
