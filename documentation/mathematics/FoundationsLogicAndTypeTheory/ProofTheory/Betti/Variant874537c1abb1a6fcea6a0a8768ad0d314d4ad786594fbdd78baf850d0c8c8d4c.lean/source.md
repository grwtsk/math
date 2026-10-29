# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.Betti.Variant874537c1abb1a6fcea6a0a8768ad0d314d4ad786594fbdd78baf850d0c8c8d4c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40df93a33d9fd9d4a5f4d081350b6cdb11028013` · SHA-256 `874537c1abb1a6fcea6a0a8768ad0d314d4ad786594fbdd78baf850d0c8c8d4c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Homology.Basic

namespace Surface

structure BettiCertificateDescriptor where
  homology : HomologyDescriptor
  bettiNumber : Nat
  numericalSmokeTest : Bool
  proofCertificate : Prop

theorem bettiCertificate_not_python_proof
    (B : BettiCertificateDescriptor) :
    B.numericalSmokeTest = true -> B.proofCertificate -> B.proofCertificate := by
  intro _ h
  exact h

end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a87e7ecf765f9daab4ac4eb37dc52a4a151a4800490f471ce3e7e770ac313bac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Betti/Variant874537c1abb1a6fcea6a0a8768ad0d314d4ad786594fbdd78baf850d0c8c8d4c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
