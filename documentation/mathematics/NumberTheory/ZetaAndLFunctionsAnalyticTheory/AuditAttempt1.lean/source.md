# Audit Attempt1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67484fbf9882353c8bdffeeaee2dab5ebffbd40c` · SHA-256 `14ae56e9e8018706352bc1f5d19798feb64a2371d15297235b1f54c730bcaf64`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SignedPrefixTransfer

/-! Final-byte independent theorem type and trusted-closure audit. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option linter.hashCommand false
set_option pp.fullNames true
set_option pp.explicit true
set_option pp.universes true

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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e80eb593ebc211e198f62bc7850f6b57ba9a59c51953f0a653dbec69c2c92eca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/14ae56e9e8018706352bc1f5d19798feb64a2371d15297235b1f54c730bcaf64AuditAttempt1/Variant14ae56e9e8018706352bc1f5d19798feb64a2371d15297235b1f54c730bcaf64.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
