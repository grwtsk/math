# Audit Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `02228e6ee21988c7bffaff74f06f895f4023e09f` · SHA-256 `36004edb30978c444228145368f2ae66da4113109ed8ee2c8c65334094d124ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceCriticalRemovedPrimeWork

set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourceCriticalRemovedPrimeWork

#check criticalRemovedPairedWork
#print axioms criticalRemovedPairedWork
#check criticalRemovedRemainder
#print axioms criticalRemovedRemainder
#check CriticalRemovedPairedTailLowerBound
#print axioms CriticalRemovedPairedTailLowerBound
#check criticalRemovedPairedWork_eq
#print axioms criticalRemovedPairedWork_eq
#check criticalRemovedPairedWork_eq_squareRemoved
#print axioms criticalRemovedPairedWork_eq_squareRemoved
#check mertensResidual_eq_criticalRemoved
#print axioms mertensResidual_eq_criticalRemoved
#check criticalRemovedRemainder_uniformly_bounded
#print axioms criticalRemovedRemainder_uniformly_bounded
#check criticalRemoved_tail_iff_residual_tail
#print axioms criticalRemoved_tail_iff_residual_tail
#check criticalRemovedPairedWork_eq_prime_quadrature
#print axioms criticalRemovedPairedWork_eq_prime_quadrature
#check criticalRemoved_error_window
#print axioms criticalRemoved_error_window
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3614f2fc5889eeeb52f6520cba0b979ed7938dee3a76e6a91b11bc1a0097b55c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/Audit/Variant36004edb30978c444228145368f2ae66da4113109ed8ee2c8c65334094d124ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
