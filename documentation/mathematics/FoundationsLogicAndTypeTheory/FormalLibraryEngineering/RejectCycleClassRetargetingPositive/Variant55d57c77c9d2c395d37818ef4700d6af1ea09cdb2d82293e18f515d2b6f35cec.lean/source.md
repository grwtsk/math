# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectCycleClassRetargetingPositive.Variant55d57c77c9d2c395d37818ef4700d6af1ea09cdb2d82293e18f515d2b6f35cec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8de05bcdba78cc8e7843c2a38c03fefa6433cfd` · SHA-256 `55d57c77c9d2c395d37818ef4700d6af1ea09cdb2d82293e18f515d2b6f35cec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge
open GRWTSK.Geometry.Hodge.RationalHodgeTransport
example : Examples.lineHodgeData.IsSurjective :=
  (Fixtures.lineEquiv.transportTheorem Examples.lineSourceTheorem).surjective
example (E : CycleClassEquiv Examples.lineHodgeData Examples.lineHodgeData) :
    Examples.lineHodgeData.IsSurjective ↔ Examples.lineHodgeData.IsSurjective :=
  E.surjective_iff
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=69214da45e456ae7b890ea105283259f018d34524d6a6a927d4bd172ea778362 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectCycleClassRetargetingPositive/Variant55d57c77c9d2c395d37818ef4700d6af1ea09cdb2d82293e18f515d2b6f35cec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
