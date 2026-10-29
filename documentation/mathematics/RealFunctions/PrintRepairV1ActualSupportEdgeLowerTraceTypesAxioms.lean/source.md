# Print Repair V1 Actual Support Edge Lower Trace Types Axioms — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09e51762fa600f0b173f76c3b6cff7566a04e1d8` · SHA-256 `be3f7a05a53cd6261f52bb096df186e9e7b76b529cc2823065a10451d5529daa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualSupportEdgeLowerTrace
set_option linter.style.header false
set_option linter.hashCommand false
set_option linter.style.setOption false
set_option pp.all true
set_option pp.maxSteps 100000000
set_option maxHeartbeats 10000000
set_option maxRecDepth 100000
set_option pp.rawOnError false
open FormalResearch.RiemannHypothesis.ActualSupportEdgeLowerTrace
set_option pp.fullNames true
#check actualLowerTimeFactor
#print axioms actualLowerTimeFactor
#check actualLowerTimeFactor_eq_negative_error_integral
#print axioms actualLowerTimeFactor_eq_negative_error_integral
#check actualLowerTimeFactor_abs_le
#print axioms actualLowerTimeFactor_abs_le
#check actualCriticalAdjustedLowerColumnTrace_abs_le
#print axioms actualCriticalAdjustedLowerColumnTrace_abs_le
#check actualCriticalAdjustedLowerColumnTrace_abs_le_square
#print axioms actualCriticalAdjustedLowerColumnTrace_abs_le_square
#check actualCriticalAdjustedLowerColumnTrace_tendsto_zero
#print axioms actualCriticalAdjustedLowerColumnTrace_tendsto_zero
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e04d44771966422698e6bf0dd339225162d664112afd6b809a3bfb1280a0353 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/PrintRepairV1ActualSupportEdgeLowerTraceTypesAxioms/Variantbe3f7a05a53cd6261f52bb096df186e9e7b76b529cc2823065a10451d5529daa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
