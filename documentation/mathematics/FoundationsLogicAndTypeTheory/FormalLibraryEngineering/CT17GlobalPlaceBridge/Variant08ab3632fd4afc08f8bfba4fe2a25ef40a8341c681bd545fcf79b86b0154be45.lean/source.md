# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CT17GlobalPlaceBridge.Variant08ab3632fd4afc08f8bfba4fe2a25ef40a8341c681bd545fcf79b86b0154be45

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ee3ec1d876eda3fdc71b3c64a40253d3eb752c3` · SHA-256 `08ab3632fd4afc08f8bfba4fe2a25ef40a8341c681bd545fcf79b86b0154be45`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-17: global place-wise realization bridge.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct17_globalPlaceBridge
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT17Claim S :=
  registry.ct17

end FCRS.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9db9e66f3512808022a6b4cb75abbc001e0849306dce982339608bafafc17f8b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CT17GlobalPlaceBridge/Variant08ab3632fd4afc08f8bfba4fe2a25ef40a8341c681bd545fcf79b86b0154be45.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
