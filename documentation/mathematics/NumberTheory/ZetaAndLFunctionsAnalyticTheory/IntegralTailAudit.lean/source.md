# Integral Tail Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1cfc5118545e5863c360020e7adc902aa66befa` · SHA-256 `d86a8bcc5594d2909215f6bc697a5fa38304cd98d8a6e9546612331cb3b9e99d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaIntegralTailLogSlope
open FormalResearch.RiemannHypothesis.ThetaPositiveLift

#check integralTail
#print integralTail
#print axioms integralTail
#check integralTail_eq_sub
#print integralTail_eq_sub
#print axioms integralTail_eq_sub
#check hasDerivAt_integralTail
#print hasDerivAt_integralTail
#print axioms hasDerivAt_integralTail
#check integralTail_positive
#print integralTail_positive
#print axioms integralTail_positive
#check logSlope_cross_nonnegative
#print logSlope_cross_nonnegative
#print axioms logSlope_cross_nonnegative
#check integral_deriv_Ici_eq_neg
#print integral_deriv_Ici_eq_neg
#print axioms integral_deriv_Ici_eq_neg
#check integralTail_logSlope_identity
#print integralTail_logSlope_identity
#print axioms integralTail_logSlope_identity
#check integralTail_logSlope_nonnegative
#print integralTail_logSlope_nonnegative
#print axioms integralTail_logSlope_nonnegative
#check hasDerivAt_integralTail_ratio
#print hasDerivAt_integralTail_ratio
#print axioms hasDerivAt_integralTail_ratio
#check integralTail_ratio_antitone
#print integralTail_ratio_antitone
#print axioms integralTail_ratio_antitone
#check integralTail_logSlope_antitone
#print integralTail_logSlope_antitone
#print axioms integralTail_logSlope_antitone
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1385a3b8b76641dd574147b96e9daaaefb5890cb8f4870ce098521cc86b3379e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D86a8bcc5594d2909215f6bc697a5fa38304cd98d8a6e9546612331cb3b9e99dIntegralTailAudi/Variantd86a8bcc5594d2909215f6bc697a5fa38304cd98d8a6e9546612331cb3b9e99d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
