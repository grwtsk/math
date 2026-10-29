# Audit Edition87 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d168ad5878e4c664d26aca415a1871fdd1729cc0` · SHA-256 `fbb9e2ad373d4c4f4c1d31364c346ac0c1c443356e930de3276316f3df5a6f28`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePairedSquareQuadrature

set_option linter.hashCommand false

open FormalResearch.RiemannHypothesis.SourcePairedSquareQuadrature

#check pairedSquareReadout
#print axioms pairedSquareReadout
#check squarePrefix_pairedTail_work
#print axioms squarePrefix_pairedTail_work
#check squareTail_pairedTail_work
#print axioms squareTail_pairedTail_work
#check squareTailPairedWork_eq_neg_integral_pairedTail_deriv
#print axioms squareTailPairedWork_eq_neg_integral_pairedTail_deriv
#check squareTailPairedWork_eq_neg_readout
#print axioms squareTailPairedWork_eq_neg_readout
#check squareRemovedPairedWork_eq_first_square_quadrature
#print axioms squareRemovedPairedWork_eq_first_square_quadrature
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=42f5773d89aad8009108e9cca0e3a9925c94d0873ee71ba9881b2491a5d0d6fa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variantfbb9e2ad373d4c4f4c1d31364c346ac0c1c443356e930de3276316f3df5a6f28.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
