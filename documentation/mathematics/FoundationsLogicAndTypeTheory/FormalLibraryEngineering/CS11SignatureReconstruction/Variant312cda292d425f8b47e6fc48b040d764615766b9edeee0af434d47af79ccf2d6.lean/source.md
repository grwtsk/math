# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CS11SignatureReconstruction.Variant312cda292d425f8b47e6fc48b040d764615766b9edeee0af434d47af79ccf2d6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6346c9db683d30506ca6c2b5e7491679fc3273d4` · SHA-256 `312cda292d425f8b47e6fc48b040d764615766b9edeee0af434d47af79ccf2d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.Registry

namespace FCRS.ControlledSpherical.Theorems

open FCRS.ControlledPlane

/--
CS-11 derives the observation-image signature isomorphism only from an
explicit full-signature preservation contract, including its one designated
binary operation, together with the decoder.
-/
theorem cs11_signatureReconstruction
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (D : LosslessDecoder M.observation)
    (hPreserves :
      ControlledSignaturePreservation
        SM.provenanceSignature M.observation SM.observedSignature) :
    CS11Claim SM D :=
  ⟨controlledSignatureIso_of_decoder
    SM.provenanceSignature SM.observedSignature D hPreserves⟩

end FCRS.ControlledSpherical.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be9ac7209ddd21ed032e661ad161ce7d6d4281a6d12f592cd7dd16d6f7896abf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CS11SignatureReconstruction/Variant312cda292d425f8b47e6fc48b040d764615766b9edeee0af434d47af79ccf2d6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
