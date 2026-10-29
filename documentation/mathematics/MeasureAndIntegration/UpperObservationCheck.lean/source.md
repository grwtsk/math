# Upper Observation Check — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a43348d02dbb298e168e8d5fd880573ba648a5e6` · SHA-256 `280b7f79c444deea6006a6c24c95eacf610890c3c0ef9e488d712e7a03d4de1e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondMoment
open MeasureTheory
#check hasCompactSupport_sum
#check HasCompactSupport.finset_sum
#check Finset.hasCompactSupport_sum
#check MeasureTheory.integral_finset_sum
#check MeasureTheory.Integrable.finset_sum
#check Continuous.integrable_of_hasCompactSupport
#check continuous_finset_sum
#check HasCompactSupport.mul_left
#check MeasureTheory.integral_integrableOn_Icc
#check MeasureTheory.integral_eq_integral_Icc_of_support_subset
#check MeasureTheory.setIntegral_eq_integral_of_forall_compl_eq_zero
#check MeasureTheory.integral_indicator
#check MeasureTheory.IntegrableOn
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=53ee05533551332e9e01941cbcc48a4e426e755d6ca4dbefc5b7f1fed00bd2bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/UpperObservationCheck/Variant280b7f79c444deea6006a6c24c95eacf610890c3c0ef9e488d712e7a03d4de1e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
