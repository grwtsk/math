# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TAN01EffectiveTannaka.Variantf8192aa34b6999c697b07260a34d84d630f34ebcbf6e0ae8dfea9ad6540f4eb2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `caf8c669b8144779d9b20ef88e62be4aabea6232` · SHA-256 `f8192aa34b6999c697b07260a34d84d630f34ebcbf6e0ae8dfea9ad6540f4eb2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- Tannakian reconstruction with values in effective Henselian semantics. -/
theorem tan01_effectiveTannaka
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    TAN01Claim S :=
  registry.tan01

end FCRS.Algebraization.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=094114736225ef5acd84364559cf47c62e638e2441c355037fcb66da8a2ce4b7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TAN01EffectiveTannaka/Variantf8192aa34b6999c697b07260a34d84d630f34ebcbf6e0ae8dfea9ad6540f4eb2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
