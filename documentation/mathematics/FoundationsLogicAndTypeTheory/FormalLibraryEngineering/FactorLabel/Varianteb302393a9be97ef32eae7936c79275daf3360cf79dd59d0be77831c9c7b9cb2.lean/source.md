# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FactorLabel.Varianteb302393a9be97ef32eae7936c79275daf3360cf79dd59d0be77831c9c7b9cb2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec8b61b737e27ae4940079767774df36338b22e6` · SHA-256 `eb302393a9be97ef32eae7936c79275daf3360cf79dd59d0be77831c9c7b9cb2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.NumberTheory.PrimeEnumeration

/-!
# Folder.NumberTheory.FactorLabel

Radiation role: number-theory
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: nt.factor_label
Pivot role: arithmetic
Zero typology: none
Contract boundary: definition
Composite stack role: arithmetic
-/

namespace Folder
namespace NumberTheory

structure FactorLabel where
  prime : Nat
  exponent : Nat
  rendered : String

def factorLabelOfPrimePower (P : PrimePower) : FactorLabel where
  prime := P.prime
  exponent := P.exponent
  rendered := "p^e"

end NumberTheory
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5230ee546c9a11c0656bc5b4b473a8bf76e4e6243736a0e3784bc02c684905cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FactorLabel/Varianteb302393a9be97ef32eae7936c79275daf3360cf79dd59d0be77831c9c7b9cb2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
