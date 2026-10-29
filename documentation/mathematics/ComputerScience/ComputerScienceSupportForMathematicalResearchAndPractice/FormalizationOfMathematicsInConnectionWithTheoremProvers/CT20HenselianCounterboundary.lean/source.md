# CT20 Henselian Counterboundary — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `859d91271a9596a2d3dde4842543d8e3c1ea2e4b` · SHA-256 `0da210e6535ba5cc06fb86dc1f730670a2942d9e43806f1089af5209c79398ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-20: the characteristic-zero/mixed-characteristic obstruction to unrestricted Henselian essential surjectivity.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct20_henselianCounterboundary
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT20Claim S :=
  registry.ct20

end FCRS.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ecee9db8b4682d438de1b2703a51ac78e0c344433b7634927d4411daf2ce86f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CT20HenselianCounterboundary/Variant0da210e6535ba5cc06fb86dc1f730670a2942d9e43806f1089af5209c79398ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
