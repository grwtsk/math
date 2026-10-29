# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.CoverageCertificate.Variantd2cf8b499cb9cda5b7aaf90dc24c2d67eaa351a717bd65c70a9246c5015cee7c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `73d43ce95251ad811e0aa3ae971ceb293cbc7a68` · SHA-256 `d2cf8b499cb9cda5b7aaf90dc24c2d67eaa351a717bd65c70a9246c5015cee7c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Exploration.UniversalSequence
import Mathematics.GraphAccess.Exploration.DeBruijn

/-!
# Independent coverage verification custody
-/

namespace Mathematics.GraphAccess

structure IndependentCoverageVerification where
  declaredClassOrAlphabetRef : String
  constructorRef : String
  verifierRef : String
  independent : Prop
  coverageAccepted : Prop
  independentEvidence : independent
  coverageAcceptedEvidence : coverageAccepted

theorem independently_verified_coverage_is_accepted
    (verification : IndependentCoverageVerification) :
    verification.coverageAccepted :=
  verification.coverageAcceptedEvidence

end Mathematics.GraphAccess
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d78f9e35714e8b0ad995ad51662fa2cfaf1d7d0965df4cdc66b667af5178f356 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/CoverageCertificate/Variantd2cf8b499cb9cda5b7aaf90dc24c2d67eaa351a717bd65c70a9246c5015cee7c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
