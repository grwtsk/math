# TT01 Bertrand — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1bd6e283c990e779771b56a5eec0acf49de9f605` · SHA-256 `8c40223c710ccdf442f12cc009b1cce5adab4ec1bbf8c5a7b24af7dbd853f020`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Transport.Bertrand

namespace FCRS.Transport.Theorems

/-- Full strict-endpoint Bertrand theorem for every natural `n > 1`. -/
theorem tt01_bertrand :
    ∀ n : Nat, 1 < n →
      ∃ q : Nat, Nat.Prime q ∧ n < q ∧ q < 2 * n :=
  bertrandProof

end FCRS.Transport.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15982099ef97450101a40efbdd12ec606c2f98807649552ece70824ecb5ff90b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/TT01Bertrand/Variant8c40223c710ccdf442f12cc009b1cce5adab4ec1bbf8c5a7b24af7dbd853f020.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
