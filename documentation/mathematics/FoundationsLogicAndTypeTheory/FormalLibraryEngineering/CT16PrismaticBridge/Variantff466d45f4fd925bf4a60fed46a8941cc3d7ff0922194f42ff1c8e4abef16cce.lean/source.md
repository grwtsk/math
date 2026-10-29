# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CT16PrismaticBridge.Variantff466d45f4fd925bf4a60fed46a8941cc3d7ff0922194f42ff1c8e4abef16cce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e36ed72deac9e655f07b2771b95ed9a532adfb2a` · SHA-256 `ff466d45f4fd925bf4a60fed46a8941cc3d7ff0922194f42ff1c8e4abef16cce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-16: Tate-admissible prismatic bridge.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct16_prismaticBridge
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT16Claim S :=
  registry.ct16

end FCRS.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8d33f1ba7b957e4f5ed969b103f2932acde3e7757e11b7f618094d5b902e0d2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CT16PrismaticBridge/Variantff466d45f4fd925bf4a60fed46a8941cc3d7ff0922194f42ff1c8e4abef16cce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
