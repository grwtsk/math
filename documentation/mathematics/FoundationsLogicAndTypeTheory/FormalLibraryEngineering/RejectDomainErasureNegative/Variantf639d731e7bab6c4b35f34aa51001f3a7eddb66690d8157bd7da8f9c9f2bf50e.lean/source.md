# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectDomainErasureNegative.Variantf639d731e7bab6c4b35f34aa51001f3a7eddb66690d8157bd7da8f9c9f2bf50e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e51324d7da99bdbf3393637a79083ba374eb51f2` · SHA-256 `f639d731e7bab6c4b35f34aa51001f3a7eddb66690d8157bd7da8f9c9f2bf50e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Analysis.Operator.UnboundedPort
universe u v w
variable {R : Type u} [Ring R]
variable {E : Type v} [AddCommGroup E] [Module R E]
variable {F : Type w} [AddCommGroup F] [Module R F]
variable {A : UnboundedOperator R E} {B : UnboundedOperator R F}
-- Hostile mutation: an ambient linear map omits exact domain preservation.
example (U : E →ₗ[R] F) : Port A B where
  map := U
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b5ac280a0baf569d6414ed2139ab810d9c8dffa0f10d20766d6caeac24c71c8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectDomainErasureNegative/Variantf639d731e7bab6c4b35f34aa51001f3a7eddb66690d8157bd7da8f9c9f2bf50e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
