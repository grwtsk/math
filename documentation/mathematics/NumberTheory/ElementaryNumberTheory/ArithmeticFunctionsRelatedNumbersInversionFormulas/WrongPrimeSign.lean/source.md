# Complete source: GRWTSK.NumberTheory.Moebius.PrimitiveIdentification.Checks.Negative.WrongPrimeSign

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e1ebdcfd56e20e136573600d0a1c1b29537f6e8` · SHA-256 `9b08606db1cc389c5cc9cf57414b3a86930d0dceb2449478f9b3c504c4d94816`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.PrimitiveIdentification
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.ProofHorizon.CorkscrewChamberCap

example : ArithmeticPickupSource.moebiusCoefficient 2 = (1 : ℝ) := by
  norm_num [ArithmeticPickupSource.moebiusCoefficient,
    ArithmeticFunction.moebius_apply_prime Nat.prime_two]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=733c6d7093f4b4e1ea9f575c0fdb96c093f65ff56f4c68f6c19aba92a63180b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/PrimitiveIdentification/Checks/Negative/WrongPrimeSign.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
