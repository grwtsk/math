# Prime Factor Cellular Arithmetic — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7825543fd87bebe3263818512962bdd860cc786d` · SHA-256 `1558f92f5658a0fac862c6380abb44d743a15a4ec97266fa944e39764a5c3f61`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Core.PrimeFactorCellularArithmetic

/-!
# Folder.Theorem.Core.PrimeFactorCellularArithmetic

Radiation role: theorem-wrapper
BinaryMatrix spine: This module participates in the finite carrier, cellular, spectral, torsion, or proof layer radiating from the BinaryMatrix spine.
Ontology: proof.core.prime_factor_cellular_arithmetic
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace Core

theorem prime_factor_cellular_decode_encode
    (n : Folder.NumberTheory.PositiveNat) :
    (Folder.CellularArithmetic.encodePositiveNat n).decode = n.val :=
  Folder.Core.prime_factor_cellular_decode_encode n

end Core
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36beb3b99bd532d1246133dd3a9eaf7e3786200645ed48c8723cf3558ac6f46f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeFactorCellularArithmetic/Variant1558f92f5658a0fac862c6380abb44d743a15a4ec97266fa944e39764a5c3f61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
