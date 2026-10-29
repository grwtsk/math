# Reject Domain Erasure Positive — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f079ccd328b5ed91cc6e5c93e98df2a8bc3790e` · SHA-256 `492c2174e16f7faf54ddb5ba4403a7406a80d41563d3422bf9f1741bd0b7ea43`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Analysis.Operator.UnboundedPort
universe u v w
variable {R : Type u} [Ring R]
variable {E : Type v} [AddCommGroup E] [Module R E]
variable {F : Type w} [AddCommGroup F] [Module R F]
variable {A : UnboundedOperator R E} {B : UnboundedOperator R F}
example (U : E →ₗ[R] F) (hU : ∀ x : A.domain, U x ∈ B.domain) : Port A B where
  map := U
  map_domain := hU
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a61e934cef3509983c3e7c5d3a31778a1fb4d58bdc860c59a4c7283d3b8eb28 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectDomainErasurePositive/Variant492c2174e16f7faf54ddb5ba4403a7406a80d41563d3422bf9f1741bd0b7ea43.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
