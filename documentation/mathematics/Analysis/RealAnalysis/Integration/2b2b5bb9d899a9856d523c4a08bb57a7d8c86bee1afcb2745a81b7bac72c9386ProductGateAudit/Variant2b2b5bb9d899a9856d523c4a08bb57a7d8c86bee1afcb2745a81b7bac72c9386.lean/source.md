# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.2b2b5bb9d899a9856d523c4a08bb57a7d8c86bee1afcb2745a81b7bac72c9386ProductGateAudit.Variant2b2b5bb9d899a9856d523c4a08bb57a7d8c86bee1afcb2745a81b7bac72c9386

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3c2409cf140d5294503197589f0e2a9edd46e00` · SHA-256 `2b2b5bb9d899a9856d523c4a08bb57a7d8c86bee1afcb2745a81b7bac72c9386`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitCorrelationMass

set_option pp.fullNames true

open MeasureTheory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

#check EstimateUnitCorrelationMass.unitCorrelation_product_majorant_integrable
#print axioms EstimateUnitCorrelationMass.unitCorrelation_product_majorant_integrable
#check EstimateUnitCorrelationMass.unitCorrelation_product_integrable
#print axioms EstimateUnitCorrelationMass.unitCorrelation_product_integrable
#check integral_sub_left_eq_self

example (A : ℝ) (hA : 0 < A) :
    Integrable (fun z : ℝ × ℝ ↦ EstimateNormalizedSourceProfile.unitProfile A z.2 *
      EstimateNormalizedSourceProfile.unitProfile A (z.2-z.1)) (volume.prod volume) :=
  EstimateUnitCorrelationMass.unitCorrelation_product_integrable A hA
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3333703761206cf1b981d6586b5870c4503ed6ce51eab74df77b0418f9ddd376 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/2b2b5bb9d899a9856d523c4a08bb57a7d8c86bee1afcb2745a81b7bac72c9386ProductGateAudit/Variant2b2b5bb9d899a9856d523c4a08bb57a7d8c86bee1afcb2745a81b7bac72c9386.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
