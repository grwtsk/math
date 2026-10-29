# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Audit.Variantc1bd9f8a38e29afef344fc36a3a2f431a6df35c9b223a035c097ed943ad73a11

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f1aad267f31452d4e0fca4b5db2f50b483bbbdd` · SHA-256 `c1bd9f8a38e29afef344fc36a3a2f431a6df35c9b223a035c097ed943ad73a11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Prototype

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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6833d8a659c62dac60a31bfb598d3f8e6c61f206c3ad3e0806281c4034f70cb5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Audit/Variantc1bd9f8a38e29afef344fc36a3a2f431a6df35c9b223a035c097ed943ad73a11.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
