# CT05 Strong Noetherian — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22dccd62d070e5cfe8d72eef34fc29d7e24e14fd` · SHA-256 `6e89254e21a0bc4768e1ddf3f6b5a70fcb451e5e05f818da6e190d0dcab4d965`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-05: strong Noetherianity.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct05_strongNoetherian
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT05Claim S :=
  registry.ct05

end FCRS.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=60e8c732f1d580b4e2cf30b1fdaa0a9a1e081a4b54b400052f6dd68ea86e00a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CT05StrongNoetherian/Variant6e89254e21a0bc4768e1ddf3f6b5a70fcb451e5e05f818da6e190d0dcab4d965.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
