# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CT11RaynaudEquivalence.Variant91ff304e00c71599dd1233cbcc8ed7d84989d58fff7a88538d9437bbff47f7e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91acdf0c086986769d7253872d63c958df77cc19` · SHA-256 `91ff304e00c71599dd1233cbcc8ed7d84989d58fff7a88538d9437bbff47f7e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-11: Raynaud equivalence.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct11_raynaudEquivalence
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT11Claim S :=
  registry.ct11

end FCRS.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b95035eb0cd283b0f4e77ce6c38af50fb35fd4e0059b620b55f3cf9c09f9628c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CT11RaynaudEquivalence/Variant91ff304e00c71599dd1233cbcc8ed7d84989d58fff7a88538d9437bbff47f7e3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
