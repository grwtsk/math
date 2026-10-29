# EXT01 Extension Criterion — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca046229e37dbb3edd3201b605b8dcf1dfade8fa` · SHA-256 `9391fc2e9eacd68b0262b27d52fdf58746074bd0fa0e7ecc28dc35c35a32102f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- A Henselian extension is effective exactly when its class lies in the algebraic image. -/
theorem ext01_extensionCriterion
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    ExtensionImageCharacterization S.extensions :=
  registry.ext01

end FCRS.Algebraization.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c324310aa049bd3e287c2b3444852fdb199a87d61b9fd5ddf1556f3ab7fd410 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EXT01ExtensionCriterion/Variant9391fc2e9eacd68b0262b27d52fdf58746074bd0fa0e7ecc28dc35c35a32102f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
