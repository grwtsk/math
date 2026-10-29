# Actual Psi Negative Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2bbe9b8ecfadbf3be6db09b3b16824c974eacb2` · SHA-256 `1385ef209588a6a6f49b4dc180af4896201a86d445da3ab93f631ad7a3641596`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualPsiNegativeBlock

set_option autoImplicit false
set_option linter.style.setOption false
set_option linter.hashCommand false
set_option pp.all true
set_option pp.fullNames true

open RH16ActualPsiNegativeBlock

#check shiftedActualChebyshev
#check actual_prime_power_four_contribution
#check actual_psi_on_negative_block
#check shiftedActualChebyshev_negative_on_block
#check actual_psi_at_closed_seven
#check shiftedActualChebyshev_not_nonnegative_everywhere
#print axioms shiftedActualChebyshev
#print axioms actual_prime_power_four_contribution
#print axioms actual_psi_on_negative_block
#print axioms shiftedActualChebyshev_negative_on_block
#print axioms actual_psi_at_closed_seven
#print axioms shiftedActualChebyshev_not_nonnegative_everywhere
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2935d0d10f4c8360f364a306fabd55c3b18e88189b0e4225162319b54ed4057d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPsiNegativeAudit/Variant1385ef209588a6a6f49b4dc180af4896201a86d445da3ab93f631ad7a3641596.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
