# Complete source: GRWTSK.Algebra.OrderedProduct.Conjugation.Checks.Negative.MissingClosedPath

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13baa29e2b73308ce5fd648451454ffd567ce3fb` · SHA-256 `46c96cf9ea82fd97e3389e773c19276ce6413d184a46a92418fd413b238e774e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.OrderedProductGauge
open GRWTSK.Algebra GRWTSK.Algebra.OrderedProductGauge
universe u v
set_option autoImplicit false
example {G : Type u} {V : Type v} [Group G] (p : ℕ → V) (H : V → G) (n k : ℕ) : orderedProduct (chartEdges (H ∘ p)) n k = 1 := chart_loop_identity p H n k
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca2188abeff81b49bcbda2c7ebc2d7bcb6d42b6e3d88f7c779500c50b342983c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/OrderedProduct/Conjugation/Checks/Negative/MissingClosedPath.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
