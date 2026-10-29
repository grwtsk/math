# CS04 Selected S2 Realization — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00acfa51bbdb0dfe0cba161eddefde20686f75b9` · SHA-256 `56603136daf72c729112a977df3441598810d9d48ea51eb9f02e57af0955ceaa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.Registry

namespace FCRS.ControlledSpherical.Theorems

/--
CS-04 projects the branch-relative `S²` claim.  When `S²` is selected this
is its compactness assertion; an `S³` selection creates no `S²` witness.
-/
theorem cs04_selectedS2Realization
    (S : RealizationSystem)
    (M : ControlledPlane.ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (registry : ControlledSphericalResearchRegistry S M SM) :
    ∃ W : ControlledSphericalWitnessPackage S M SM, CS04Claim W := by
  rcases registry.witnesses with ⟨W⟩
  exact ⟨W, W.cs04Claim⟩

end FCRS.ControlledSpherical.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=823e1f66a90b4f16ae6765679d52ddc982971af2c73ff322fe24b9e80e1a3d1b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CS04SelectedS2Realization/Variant56603136daf72c729112a977df3441598810d9d48ea51eb9f02e57af0955ceaa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
