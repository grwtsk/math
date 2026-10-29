# Equiv — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5337f8ae42f64824246115f7fd5a06efc5dbedcd` · SHA-256 `31f7ec478320ece35b135ed3f9ecff84bedcb3c465c3545a9e628983f68bb5ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Int.Order.Units
import Mathlib.GroupTheory.Perm.Finite

example : orderOf (-1 : ℤˣ) = 2 :=
  orderOf_eq_prime (Int.units_sq _) (by decide)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8719d6855f07738a86c3b9ab3ea16b2d7657621ab520289bfbd16c8c7d1d999 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Equiv/Variant31f7ec478320ece35b135ed3f9ecff84bedcb3c465c3545a9e628983f68bb5ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
