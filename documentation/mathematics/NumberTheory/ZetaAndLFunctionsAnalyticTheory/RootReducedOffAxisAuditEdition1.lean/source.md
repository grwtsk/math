# Root Reduced Off Axis Audit Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `49d9501ac67d0d543ef40f149f6eef43a1758acd` · SHA-256 `8504a5bf130f3b104b2d095ad3280be4278507ad28cefc8ab3e24981d8b25158`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceReducedOffAxisEstimateConsumer
import SourceReducedOffAxisQuadraticSharp

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceReducedOffAxisEstimateConsumer
#check reducedOffAxisAllowance
#print axioms reducedOffAxisAllowance
#check reducedOffAxisResidualBudget
#print axioms reducedOffAxisResidualBudget
#check reducedOffAxisAllowance_le_at_radius
#print axioms reducedOffAxisAllowance_le_at_radius
#check residual_tail_of_reduced_offAxis_lower
#print axioms residual_tail_of_reduced_offAxis_lower
#check all_real_lower_of_reduced_offAxis_lower
#print axioms all_real_lower_of_reduced_offAxis_lower
#check estimate_of_reduced_offAxis_lower
#print axioms estimate_of_reduced_offAxis_lower
#check leading_tail_of_reduced_offAxis_lower
#print axioms leading_tail_of_reduced_offAxis_lower
end FormalResearch.RiemannHypothesis.SourceReducedOffAxisEstimateConsumer

namespace FormalResearch.RiemannHypothesis.SourceReducedOffAxisQuadraticSharp
#check actualReducedZeroEnvelope_le_at_radius
#print axioms actualReducedZeroEnvelope_le_at_radius
#check quadratic_tail_of_reduced_offAxis_lower
#print axioms quadratic_tail_of_reduced_offAxis_lower
#check all_real_sharp_lower_of_reduced_offAxis_lower
#print axioms all_real_sharp_lower_of_reduced_offAxis_lower
#check estimate_sharp_of_reduced_offAxis_lower
#print axioms estimate_sharp_of_reduced_offAxis_lower
end FormalResearch.RiemannHypothesis.SourceReducedOffAxisQuadraticSharp
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f04e6d50a622b75c308189c0c8b9fe22c2db46a09fdb47834d88463f90e69e46 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootReducedOffAxisAudit/Variant8504a5bf130f3b104b2d095ad3280be4278507ad28cefc8ab3e24981d8b25158.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
