# Remaining Variation Independent Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e81c7a03d09a10c21746e421d6e5d99897c6a904` · SHA-256 `8f028a79c0ffb671ef0a668dd529380e7e7dfe3cfc7f6e0f646c3614dc22f619`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceRemainingVariationConsumer

set_option autoImplicit false
set_option linter.style.setOption false
set_option linter.hashCommand false
set_option pp.all true
set_option pp.fullNames true

open FormalResearch.RiemannHypothesis.SourceRemainingVariationObstruction
open FormalResearch.RiemannHypothesis.SourceRemainingVariationConsumer

#check remainingDerivativeMass
#check criticalPrimeTest_deriv_early_lower
#check remainingDerivativeMass_exponential_lower
#check remainingDerivativeMass_linear_lower
#check remainingDerivativeMass_not_eventually_bounded
#check remainingAtomWork_abs_le_elementary_budget
#check elementary_remaining_budget_not_eventually_bounded
#print axioms remainingDerivativeMass
#print axioms criticalPrimeTest_deriv_early_lower
#print axioms remainingDerivativeMass_exponential_lower
#print axioms remainingDerivativeMass_linear_lower
#print axioms remainingDerivativeMass_not_eventually_bounded
#print axioms remainingAtomWork_abs_le_elementary_budget
#print axioms elementary_remaining_budget_not_eventually_bounded
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8b672735f76497a00860ce03132844f62ac66579bb84ab92c0ff2dee058c3bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RemainingVariationIndependentAudit/Variant8f028a79c0ffb671ef0a668dd529380e7e7dfe3cfc7f6e0f646c3614dc22f619.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
