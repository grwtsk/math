# Audit Edition13 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05cf477a94ec58174d9bc9133afe7f02784ef2f6` · SHA-256 `d14090257c7046035a57d2bf8d1969bf880c95f5bf7c2c533e51b2371e18e944`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceCriticalSecondAbel

set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourceCriticalSecondAbel

#check @criticalPrimeTest_contDiff_two
#print axioms criticalPrimeTest_contDiff_two
#check @criticalPrimeTest_deriv_lipschitz
#print axioms criticalPrimeTest_deriv_lipschitz
#check @pairedTailTest_deriv_absolutelyContinuous
#print axioms pairedTailTest_deriv_absolutelyContinuous
#check @criticalRemovedPairedWork_eq_cumulative_work
#print axioms criticalRemovedPairedWork_eq_cumulative_work
#check @criticalRemovedPairedWork_eq_second_abel
#print axioms criticalRemovedPairedWork_eq_second_abel
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=776e7f5e659b39ad49f46faa4546facca480a744ab5daf4645952ab2bab73e52 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Audit/Variantd14090257c7046035a57d2bf8d1969bf880c95f5bf7c2c533e51b2371e18e944.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
