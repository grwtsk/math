# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CF12ControlledPresentationExistence.Variant2ec10b5a338505a725e129551283036a09187a0f6c05c3879c310a017edd3328

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1871884fe5a615da756a71bf1c2b8a843a68adc` · SHA-256 `2ec10b5a338505a725e129551283036a09187a0f6c05c3879c310a017edd3328`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/--
CF-12 research-rule projection for existence of an abstract coherent
controlled presentation from the explicitly packaged premises.
-/
theorem cf12_controlledPresentationExistence
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF12Claim M :=
  registry.cf12

end FCRS.ControlledPlane.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a24977cf8398d1a7f5274c0856493272a2c720f9b3d7152c37dc7b38825484a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CF12ControlledPresentationExistence/Variant2ec10b5a338505a725e129551283036a09187a0f6c05c3879c310a017edd3328.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
