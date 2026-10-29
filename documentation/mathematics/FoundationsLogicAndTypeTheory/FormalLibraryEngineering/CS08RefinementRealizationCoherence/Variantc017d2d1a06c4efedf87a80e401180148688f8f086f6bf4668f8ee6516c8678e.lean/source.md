# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CS08RefinementRealizationCoherence.Variantc017d2d1a06c4efedf87a80e401180148688f8f086f6bf4668f8ee6516c8678e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f73326473fc8ed7d203c17a7875be65e95d77897` · SHA-256 `c017d2d1a06c4efedf87a80e401180148688f8f086f6bf4668f8ee6516c8678e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.Registry

namespace FCRS.ControlledSpherical.Theorems

/--
CS-08 projects refinement coherence for the same vertex placement and selected
realization retained by the package.
-/
theorem cs08_refinementRealizationCoherence
    (S : RealizationSystem)
    (M : ControlledPlane.ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (registry : ControlledSphericalResearchRegistry S M SM) :
    ∃ W : ControlledSphericalWitnessPackage S M SM, CS08Claim W := by
  rcases registry.witnesses with ⟨W⟩
  exact ⟨W, W.cs08Claim⟩

end FCRS.ControlledSpherical.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=409390b31cf35bd7a0992a4eec5e3e3153354167af0499fb151227b0bcfd177a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CS08RefinementRealizationCoherence/Variantc017d2d1a06c4efedf87a80e401180148688f8f086f6bf4668f8ee6516c8678e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
