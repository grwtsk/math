# Audit Edition8 Source Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4e5b915aa77bc0bf8feac3547c2ba8b24357458` · SHA-256 `7c8324aa03a928e1cab71297d8515405d86c6647314f1c13bef78875c6d15d83`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePairedTailTest

set_option linter.hashCommand false

open FormalResearch.RiemannHypothesis.SourcePairedTailTest

#check negativeSurvival
#print axioms negativeSurvival
#check pairedTailTest
#print axioms pairedTailTest
#check negativeTimeMean
#print axioms negativeTimeMean
#check negativeSurvival_hasDerivAt
#print axioms negativeSurvival_hasDerivAt
#check negativeSurvival_deriv
#print axioms negativeSurvival_deriv
#check negativeSurvival_contDiff
#print axioms negativeSurvival_contDiff
#check negativeSurvival_continuous
#print axioms negativeSurvival_continuous
#check negativeSurvival_at_zero
#print axioms negativeSurvival_at_zero
#check negativeSurvival_at_upper
#print axioms negativeSurvival_at_upper
#check negativeSurvival_antitone
#print axioms negativeSurvival_antitone
#check negativeSurvival_nonneg
#print axioms negativeSurvival_nonneg
#check negativeSurvival_le_one
#print axioms negativeSurvival_le_one
#check pairedTailTest_hasDerivAt
#print axioms pairedTailTest_hasDerivAt
#check pairedTailTest_deriv
#print axioms pairedTailTest_deriv
#check pairedTailTest_contDiff
#print axioms pairedTailTest_contDiff
#check pairedTailTest_continuous
#print axioms pairedTailTest_continuous
#check pairedTailTest_at_zero
#print axioms pairedTailTest_at_zero
#check pairedTailTest_at_upper
#print axioms pairedTailTest_at_upper
#check negativeTimeMean_nonneg
#print axioms negativeTimeMean_nonneg
#check negativeTimeMean_le_upper
#print axioms negativeTimeMean_le_upper
#check negativeSurvival_integral_eq_timeMean
#print axioms negativeSurvival_integral_eq_timeMean
#check pairedTailTest_integral_eq
#print axioms pairedTailTest_integral_eq
#check pairedTailTest_deriv_abs
#print axioms pairedTailTest_deriv_abs
#check pairedTailTest_variation_eq
#print axioms pairedTailTest_variation_eq
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e0f4edb5a2617a947d137a872aeedce0f90c0bdb887f9019d10c84d2cc7f05ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Audit/Variant7c8324aa03a928e1cab71297d8515405d86c6647314f1c13bef78875c6d15d83.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
