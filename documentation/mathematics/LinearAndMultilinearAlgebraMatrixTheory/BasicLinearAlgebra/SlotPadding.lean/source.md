# Slot Padding — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f12e77eecab619b8ff8df5f335ed1d302fd93c0` · SHA-256 `707bd469f512df4c10ff859a11bc27b02808f253e09dca9e80a248d93dba91a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BridgeElements.BitMatrixSurface
import URSMContracts

/-! # Preservation of logical matrix cells under Rust-owned slot embedding. -/

namespace URSM.Bridge

open URSM.Contracts

def padBitMatrix
    (slot : SlotEmbedding n S)
    (matrix : BitMatrix n n) :
    BitMatrix S S :=
  slot.pad (asContractSquare n matrix)

@[simp] theorem padBitMatrix_on_image
    (slot : SlotEmbedding n S)
    (matrix : BitMatrix n n)
    (i j : Fin n) :
    padBitMatrix slot matrix (slot.encode i) (slot.encode j) =
      matrix i j :=
  slot.pad_on_image (asContractSquare n matrix) i j

end URSM.Bridge
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2bd98a117f952dc3002fd49c787f87ee394bf7b0dfa0885fd607d8c5b0e86c4a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SlotPadding/Variant707bd469f512df4c10ff859a11bc27b02808f253e09dca9e80a248d93dba91a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
