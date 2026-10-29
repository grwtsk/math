# HEN10 Positive Characteristic Affine — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e5d9620a9d68bbe31137376dbc1998eda78a728` · SHA-256 `1c67bae428b87436fdedc3cd2f08401513841c63e445473ab635995144bcc9c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- HEN-5 in the proposal: the established positive-characteristic affine input. -/
theorem hen10_positiveCharacteristicAffine
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    HEN10Claim S :=
  registry.hen10

end FCRS.Algebraization.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2c5990caf1cae13ab3963ef42646ee59316ee4421e2502eb75195f0bc143f3a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN10PositiveCharacteristicAffine/Variant1c67bae428b87436fdedc3cd2f08401513841c63e445473ab635995144bcc9c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
