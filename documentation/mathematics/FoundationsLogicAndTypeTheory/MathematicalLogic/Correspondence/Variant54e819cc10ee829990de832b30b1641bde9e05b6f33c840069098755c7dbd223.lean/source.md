# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Correspondence.Variant54e819cc10ee829990de832b30b1641bde9e05b6f33c840069098755c7dbd223

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `591d2e7eae21736debdbbaa862960862b4a703d5` · SHA-256 `54e819cc10ee829990de832b30b1641bde9e05b6f33c840069098755c7dbd223`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Logic.Equiv.Fin.Basic
import BridgeElements.BitMatrixSurface

/-! # Row-major coordinate correspondence. -/

namespace URSM.Bridge

def rowMajor
    (coordinate : Fin m × Fin n) :
    Fin (m * n) :=
  finProdFinEquiv coordinate

theorem rowMajor_injective :
    Function.Injective
      (rowMajor : Fin m × Fin n → Fin (m * n)) :=
  finProdFinEquiv.injective

@[simp] theorem rowMajor_value
    (i : Fin m)
    (j : Fin n) :
    (rowMajor (i, j)).val = i.val * n + j.val :=
  by
    simp [rowMajor, finProdFinEquiv, Nat.mul_comm, Nat.add_comm]

end URSM.Bridge
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=806955827d19a959b6afa51d02fea6c6d84933a0fbcf5942fb545c8eb7712acd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variant54e819cc10ee829990de832b30b1641bde9e05b6f33c840069098755c7dbd223.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
