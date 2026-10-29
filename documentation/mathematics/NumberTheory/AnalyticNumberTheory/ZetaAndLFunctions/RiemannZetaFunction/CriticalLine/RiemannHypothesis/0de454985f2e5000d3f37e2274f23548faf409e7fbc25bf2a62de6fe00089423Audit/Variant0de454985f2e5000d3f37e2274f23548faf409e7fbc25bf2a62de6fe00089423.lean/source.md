# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.0de454985f2e5000d3f37e2274f23548faf409e7fbc25bf2a62de6fe00089423Audit.Variant0de454985f2e5000d3f37e2274f23548faf409e7fbc25bf2a62de6fe00089423

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b02f33d93b86a1873f440a68a2ecc9cedd3fbd0e` · SHA-256 `0de454985f2e5000d3f37e2274f23548faf409e7fbc25bf2a62de6fe00089423`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SignedPrefixTransfer

/-! Final-byte independent theorem type and trusted-closure audit. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option linter.hashCommand false

open FormalResearch.RiemannHypothesis.SignedPrefixTransfer

#print cumulativeSum

#check signed_sum_by_parts
#print signed_sum_by_parts
#print axioms signed_sum_by_parts

#check abs_weighted_sum_le_prefix_variation
#print abs_weighted_sum_le_prefix_variation
#print axioms abs_weighted_sum_le_prefix_variation

#check weighted_actual_le_model_add_budget
#print weighted_actual_le_model_add_budget
#print axioms weighted_actual_le_model_add_budget

#check closed_sum_eq_neg_cumulative_integral
#print closed_sum_eq_neg_cumulative_integral
#print axioms closed_sum_eq_neg_cumulative_integral
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=008df25ef860882253c2b959a5e3ad87c067afffaf2bf6a2a9c9b5337ecba17f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0de454985f2e5000d3f37e2274f23548faf409e7fbc25bf2a62de6fe00089423Audit/Variant0de454985f2e5000d3f37e2274f23548faf409e7fbc25bf2a62de6fe00089423.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
