# Complete source: GRWTSK.Algebra.OrderedProduct.Conjugation.Checks.Negative.ShiftedEndpoint

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6080ad0e44f34c152d3616eb5a695b37ef99052` · SHA-256 `18d07c1876985146c50f08411d9b446739ee66b0e7d4266e7b3dc27180729446`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.OrderedProductGauge
open GRWTSK.Algebra GRWTSK.Algebra.OrderedProductGauge
universe u v
set_option autoImplicit false
example {G : Type u} [Group G] (A H : ℕ → G) (n k : ℕ) : orderedProduct (forwardGauge A H) n k = H (n + k + 1) * orderedProduct A n k * (H n)⁻¹ := orderedProduct_forwardGauge A H n k
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d6a5feac1627f279d09235c414e5884e3ebebe6c43cf15ad494119663a1665df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/OrderedProduct/Conjugation/Checks/Negative/ShiftedEndpoint.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
