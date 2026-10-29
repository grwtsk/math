# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixRing.Variantebc2fe6e7d41df9c02e0c49c216d68761251ed9e6457ffa04410ee9454ba7b2d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `881328678aeafc0938e2918ebd20283642c49d8b` · SHA-256 `ebc2fe6e7d41df9c02e0c49c216d68761251ed9e6457ffa04410ee9454ba7b2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Runtime.RingState
import BinaryMatrix

/-!
# Binary-matrix ring adapter

This module specializes the framework-owned generic ring state to fixed-size
Boolean matrices.  It owns only matrix-specific projections.
-/

namespace BinaryMatrix.Runtime

/-- Fixed-size Boolean-matrix entries in a generic ring. -/
abbrev FixedMatrixRingState
    (capacity rows cols : Nat) :=
  DAF.Runtime.RingState capacity (BinMat rows cols)

/-- Observe selected rows in every matrix-valued slot. -/
def selectedRowsObservation
    (select : Fin outRows → Fin rows)
    (state : FixedMatrixRingState capacity rows cols) :
    Fin capacity → BinMat outRows cols :=
  fun slot i j => state.slots slot (select i) j

/-- Observe selected columns in every matrix-valued slot. -/
def selectedColumnsObservation
    (select : Fin outCols → Fin cols)
    (state : FixedMatrixRingState capacity rows cols) :
    Fin capacity → BinMat rows outCols :=
  fun slot i j => state.slots slot i (select j)

end BinaryMatrix.Runtime
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a787142f32e805d714e3064c3b857b24827a0b846c696561a30492bbc6cf376f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MatrixRing/Variantebc2fe6e7d41df9c02e0c49c216d68761251ed9e6457ffa04410ee9454ba7b2d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
