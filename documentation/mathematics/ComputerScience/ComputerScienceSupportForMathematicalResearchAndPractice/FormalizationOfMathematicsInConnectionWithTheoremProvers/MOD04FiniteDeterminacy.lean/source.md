# MOD04 Finite Determinacy — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9efa77b680ce2f72bdce84a2af1976a6063faa1e` · SHA-256 `2acc2cf86c0d4128cd8daaaeafbf43762463f8c95492da9823f34041d133bf32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- ME7: exact finite determinacy, distinguished from finite-order approximation. -/
theorem mod04_finiteDeterminacy
    (S : AlgebraizationSystem)
    {Y : S.categories.SemanticHen.Obj}
    (certificate : ModuliEffectivityCertificate S.moduli Y) :
    S.moduli.finiteDeterminacy Y :=
  certificate.me7_finiteDeterminacy

end FCRS.Algebraization.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6bc4fbfec623d0449681cf1b9ea7305b2b089731ac11e63fe97484f78c60aa99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MOD04FiniteDeterminacy/Variant2acc2cf86c0d4128cd8daaaeafbf43762463f8c95492da9823f34041d133bf32.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
