# CF02 Designated Cone Compatibility — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5284304b8c5342c10340ab31f8c51c67a8148bd4` · SHA-256 `0bafda2bbb6826458e03c1dbf04eb0ae46e8b256b457858b127daba1f56542bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/--
CF-02 research-rule projection for designated pullback-shaped-cone and
base-change compatibility.  No universal pullback property is represented.
-/
theorem cf02_designatedConeCompatibility
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF02Claim S M :=
  registry.cf02

end FCRS.ControlledPlane.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7daca3219567cea118227c1c10b864ca5a61e64f576ebc22b4cdf3d7406b8d98 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CF02DesignatedConeCompatibility/Variant0bafda2bbb6826458e03c1dbf04eb0ae46e8b256b457858b127daba1f56542bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
