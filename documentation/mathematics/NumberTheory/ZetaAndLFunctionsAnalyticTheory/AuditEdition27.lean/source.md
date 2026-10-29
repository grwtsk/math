# Audit Edition27 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc17ac0f472d126f9c7824360fe92bd1bab79d8d` · SHA-256 `410070a2e1038ad7858361316f6701a8c41c431e8df92f27dc0ff8f1b57f6ca7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8fe8817ed52b9d22b55958c6a789ae097fe9091694c9b79f4abf32d98225e4b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variant410070a2e1038ad7858361316f6701a8c41c431e8df92f27dc0ff8f1b57f6ca7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
