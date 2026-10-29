# Complete source: GRWTSK.NumberTheory.Polynomial.Checks.Positive.DerivativeRadicalBound

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29cb5c298056118e0db4ba4779bcbd21cf3facaa` · SHA-256 `d6cd9261534e006b9937af416016d61716f262fa54834f8ad139c0a818fa8e87`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Polynomial.DerivativeRadicalBound

open Polynomial

example {k : Type*} [Field k] [DecidableEq k] {a b c : k[X]}
    (ha : a ≠ 0) (hb : b ≠ 0) (hc : c ≠ 0)
    (hab : IsCoprime a b) (hsum : a + b + c = 0)
    (hderivative : derivative a ≠ 0) :
    c.natDegree + 1 ≤ (UniqueFactorizationMonoid.radical (a * b * c)).natDegree :=
  (GRWTSK.NumberTheory.Polynomial.degree_bounds_of_derivative_ne_zero
    ha hb hc hab hsum hderivative).2.2
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fbc0c80e6d46dcadab4eb1275b6306df875781ca8ae2592e5a030c030bcd6d07 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Polynomial/Checks/Positive/DerivativeRadicalBound.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
