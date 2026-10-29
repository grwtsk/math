# Heat — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3bc484bb1f7e2e6c9c33acc801cfa393843105fe` · SHA-256 `fdc670710987f48daf0d70624d9548a6c522805752ebd890e83913519d3f4730`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Spectral.Tensor

/-!
# Folder.Spectral.Heat

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.heat
Pivot role: spectral
Zero typology: spectral
Contract boundary: contract
Composite stack role: field
-/


namespace Folder
namespace Spectral

open Carrier

structure GraphHeat (s : GridShape) (k : Nat) where
  heat : NNReal → SpectralTensor s k → SpectralTensor s k
  heat_zero : ∀ X, heat 0 X = X
  heat_add : ∀ t u X, heat (t + u) X = heat t (heat u X)
  preserves_constant :
    ∀ t a, heat t (SpectralTensor.constant s a) =
      SpectralTensor.constant s a

end Spectral
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c21498f7a4a681651881d6c89aeb4bdc67603055e6abac7e4032f042b78ed8c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Heat/Variantfdc670710987f48daf0d70624d9548a6c522805752ebd890e83913519d3f4730.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
