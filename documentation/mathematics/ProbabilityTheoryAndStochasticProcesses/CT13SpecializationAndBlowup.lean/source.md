# CT13 Specialization And Blowup — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e24e6c5e6111b16fd495bb52d7b11880d14752cf` · SHA-256 `9b554bba1e2b42c2277ef9686a524032a075b9a6bae808378a6c6ca72470d68c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-13: specialization naturality and generic-fiber blow-up invariance.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct13_specializationAndBlowup
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT13Claim S :=
  registry.ct13

end FCRS.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab7eca7b88b7e64beeacf4b17c663736d1f657b229b2bb1207d4189576b4c128 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CT13SpecializationAndBlowup/Variant9b554bba1e2b42c2277ef9686a524032a075b9a6bae808378a6c6ca72470d68c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
