# HEN16 Positive Characteristic Route — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ae599b6c992cf9e7a692228d9048889b13e90b0` · SHA-256 `03ec5c65e3e0b48acdee4bbbae34f578f446f27df20a2568c44185cc2ec4d700`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/--
Conditional positive-characteristic globalization: the established affine
input plus P1--P4 route evidence produces HSG.
-/
theorem hen16_positiveCharacteristicRoute
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    HEN16Claim S :=
  registry.hen16

end FCRS.Algebraization.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a274d2caaceb5e2a1485eeff8cbb3b4aac2290e36e669dfc5cf3331b8fb6e636 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN16PositiveCharacteristicRoute/Variant03ec5c65e3e0b48acdee4bbbae34f578f446f27df20a2568c44185cc2ec4d700.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
