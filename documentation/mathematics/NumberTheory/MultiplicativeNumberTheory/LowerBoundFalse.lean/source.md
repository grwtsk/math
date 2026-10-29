# Complete source: GRWTSK.NumberTheory.Prime.Checks.Negative.LowerBoundFalse

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa0dac6721444a77cd16724f6e4e0e8c1ccb2bb1` · SHA-256 `34fc91e2097ff9a73b355041b23469fdaaa350b28106bebc5c0e20eee1672c6b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.FirstPrime
example : ∀ p : ℕ, Nat.Prime p → 3 ≤ p := by
  intro p hp
  exact GRWTSK.NumberTheory.two_is_first_prime.2 p hp
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=08cf206b1630575bcd96eb5655fa98e304446428f52dbb1e8da607dc40e07a14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Primes/Checks/Negative/LowerBoundFalse.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
