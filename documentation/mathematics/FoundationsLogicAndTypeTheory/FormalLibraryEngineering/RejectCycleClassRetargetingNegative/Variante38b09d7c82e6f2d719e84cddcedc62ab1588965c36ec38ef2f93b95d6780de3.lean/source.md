# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectCycleClassRetargetingNegative.Variante38b09d7c82e6f2d719e84cddcedc62ab1588965c36ec38ef2f93b95d6780de3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82ae4a280e4b1e258fa3fa5b4f616bc5efd0c73c` · SHA-256 `e38b09d7c82e6f2d719e84cddcedc62ab1588965c36ec38ef2f93b95d6780de3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge
open GRWTSK.Geometry.Hodge.RationalHodgeTransport
def zeroCycleClass : RationalHodgeData ℚ ℚ := ⟨0⟩
-- Even exact underlying equivalences do not supply the cycle-class square.
def missingSquare : CycleClassEquiv Examples.lineHodgeData zeroCycleClass where
  cycleEquiv := LinearEquiv.refl ℚ ℚ
  hodgeEquiv := LinearEquiv.refl ℚ ℚ
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5441343ecb192c71747cc772efa6dd881467146789885c3bbcfb01104888f6c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectCycleClassRetargetingNegative/Variante38b09d7c82e6f2d719e84cddcedc62ab1588965c36ec38ef2f93b95d6780de3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
