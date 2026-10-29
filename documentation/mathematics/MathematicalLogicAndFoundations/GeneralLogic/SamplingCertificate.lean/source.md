# Sampling Certificate — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a61d5b207134898b17f6ff24fdb0aa81efe45621` · SHA-256 `0c25d43caed79936eb84b66b2b99c192c270f864f5bdf3d9d737cdc9a1461e9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Sampling.TraceApproximation

/-!
# Independent discrepancy verification custody
-/

namespace Mathematics.GraphAccess

structure IndependentSamplingVerification where
  samplerRef : String
  verifierRef : String
  independent : Prop
  discrepancyAccepted : Prop
  independentEvidence : independent
  discrepancyAcceptedEvidence : discrepancyAccepted

theorem independently_verified_sampling_bound_is_accepted
    (verification : IndependentSamplingVerification) :
    verification.discrepancyAccepted :=
  verification.discrepancyAcceptedEvidence

end Mathematics.GraphAccess
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=28ec9d60746ead42de52cb6d769f2806ed9e465accafa2ff33fe3ab5b700c7ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SamplingCertificate/Variant0c25d43caed79936eb84b66b2b99c192c270f864f5bdf3d9d737cdc9a1461e9b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
