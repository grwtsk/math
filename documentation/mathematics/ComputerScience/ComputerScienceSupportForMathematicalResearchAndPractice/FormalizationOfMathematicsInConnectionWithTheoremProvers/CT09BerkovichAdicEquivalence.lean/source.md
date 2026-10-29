# CT09 Berkovich Adic Equivalence — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `81177bf7c217c9f97563278c8cdf63175dd8b2c0` · SHA-256 `fa4bd66baae1c4adfb4ed50e031995bd54485e5b9009e1474423d6bf13038f9e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-09: Berkovich/adic equivalence.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct09_berkovichAdicEquivalence
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT09Claim S :=
  registry.ct09

end FCRS.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a2e04bd28a37c8b849cedc68fcb799308a2534de7b6fd199f595e400e455a6a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CT09BerkovichAdicEquivalence/Variantfa4bd66baae1c4adfb4ed50e031995bd54485e5b9009e1474423d6bf13038f9e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
