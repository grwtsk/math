# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CS02StableGeometricIdentity.Varianta870bb00c468c04d045880a115f30f1417fdbd47004006f0b72f9a0fa2ef1757

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba375560b5df99d8d00909671aaad7947c82fe7d` · SHA-256 `a870bb00c468c04d045880a115f30f1417fdbd47004006f0b72f9a0fa2ef1757`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.Registry

namespace FCRS.ControlledSpherical.Theorems

/-- CS-02 research-rule projection for versioned geometric identity. -/
theorem cs02_stableGeometricIdentity
    (S : RealizationSystem)
    (M : ControlledPlane.ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (registry : ControlledSphericalResearchRegistry S M SM) :
    CS02Claim SM := by
  rcases registry.witnesses with ⟨W⟩
  exact W.stableGeometricIdentity

end FCRS.ControlledSpherical.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=767bc2b9bfa2563adb3f78ba5745c9173cd84f7bc200192ec30c88d7c187c70e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CS02StableGeometricIdentity/Varianta870bb00c468c04d045880a115f30f1417fdbd47004006f0b72f9a0fa2ef1757.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
