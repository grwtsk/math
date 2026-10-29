# CT12 Separated Formal Models — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bceef60c92e3fec90cc9e3091e123da72c3402ec` · SHA-256 `3d28dc9ad232dbd1fd7865f8916fbd2f1d893eaf44937ef61f64b052f2c95010`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-12: separated formal models.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct12_separatedFormalModels
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT12Claim S :=
  registry.ct12

end FCRS.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=02c3adda936240169c65ad5861597f0e0f98e0860266dffc644b0d9d53836e2d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CT12SeparatedFormalModels/Variant3d28dc9ad232dbd1fd7865f8916fbd2f1d893eaf44937ef61f64b052f2c95010.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
