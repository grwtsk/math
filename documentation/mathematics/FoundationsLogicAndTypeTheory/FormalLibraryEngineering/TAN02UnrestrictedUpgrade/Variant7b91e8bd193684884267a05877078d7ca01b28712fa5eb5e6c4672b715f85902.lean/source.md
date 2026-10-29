# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TAN02UnrestrictedUpgrade.Variant7b91e8bd193684884267a05877078d7ca01b28712fa5eb5e6c4672b715f85902

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f2b4beb0ba63a4fccd85f1874dbd0a244cac747` · SHA-256 `7b91e8bd193684884267a05877078d7ca01b28712fa5eb5e6c4672b715f85902`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- HSG upgrades effective Tannakian semantics to the unrestricted target. -/
theorem tan02_unrestrictedUpgrade
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    TAN02Claim S :=
  registry.tan02

end FCRS.Algebraization.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=205e68e67c0f56352eebf17b73d9f0df5939a081d86e42b4d2c38c3ed00e32b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TAN02UnrestrictedUpgrade/Variant7b91e8bd193684884267a05877078d7ca01b28712fa5eb5e6c4672b715f85902.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
