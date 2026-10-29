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
