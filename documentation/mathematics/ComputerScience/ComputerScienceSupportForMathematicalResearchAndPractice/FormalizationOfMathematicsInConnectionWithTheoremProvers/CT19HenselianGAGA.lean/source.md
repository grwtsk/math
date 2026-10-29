# CT19 Henselian GAGA — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e83af9b689faeaa10899daaaa8bb35805acca514` · SHA-256 `0e85a22db23b5ce9ed31a7f84034957af589f30c4260d947cfe0a4c489f6b702`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-19: exact fully faithful Henselian GAGA.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct19_henselianGAGA
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT19Claim S :=
  registry.ct19

end FCRS.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0837d4ac7494e57ca2f36cb56b6b5e64f7dc4b4639e715bae647c9acda395332 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CT19HenselianGAGA/Variant0e85a22db23b5ce9ed31a7f84034957af589f30c4260d947cfe0a4c489f6b702.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
