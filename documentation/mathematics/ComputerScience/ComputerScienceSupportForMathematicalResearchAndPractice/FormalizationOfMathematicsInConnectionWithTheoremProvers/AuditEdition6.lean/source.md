# Audit Edition6 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e6b0e46f986e8c8fb68d39c671e9924bf2c4eb8` · SHA-256 `8e2174358b9381fec72690a701f6a227dd65a228af0ed1c8c3486298da9b9d30`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FiniteCertificate

#print CommonMean20261004.FiniteCertificate.rationalTailBound
#print CommonMean20261004.FiniteCertificate.tailBound
#print CommonMean20261004.FiniteCertificate.FinitePremises
#print CommonMean20261004.FiniteCertificate.rationalTailBound_lt
#print axioms CommonMean20261004.FiniteCertificate.rationalTailBound_lt
#print CommonMean20261004.FiniteCertificate.rationalTailBound_nonneg
#print axioms CommonMean20261004.FiniteCertificate.rationalTailBound_nonneg
#print CommonMean20261004.FiniteCertificate.tailBound_lt
#print axioms CommonMean20261004.FiniteCertificate.tailBound_lt
#print CommonMean20261004.FiniteCertificate.tailBound_nonneg
#print axioms CommonMean20261004.FiniteCertificate.tailBound_nonneg
#print CommonMean20261004.FiniteCertificate.spectral_lower_of_head_tail
#print axioms CommonMean20261004.FiniteCertificate.spectral_lower_of_head_tail
#print CommonMean20261004.FiniteCertificate.residual_upper_of_spectral_lower
#print axioms CommonMean20261004.FiniteCertificate.residual_upper_of_spectral_lower
#print CommonMean20261004.FiniteCertificate.residual_negative_of_upper
#print axioms CommonMean20261004.FiniteCertificate.residual_negative_of_upper
#print CommonMean20261004.FiniteCertificate.finite_bounds
#print axioms CommonMean20261004.FiniteCertificate.finite_bounds

open Lean in
run_meta do
  let env ← getEnv
  for name in env.header.moduleNames do
    logInfo m!"CLOSURE_MODULE {name}"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bcc885a1faf71c7964a317da8a7d9882c37b0432e63edcc10c56282e2ec22e99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Audit/Variant8e2174358b9381fec72690a701f6a227dd65a228af0ed1c8c3486298da9b9d30.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
