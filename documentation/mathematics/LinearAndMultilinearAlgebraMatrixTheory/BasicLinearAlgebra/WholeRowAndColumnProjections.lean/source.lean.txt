/-
WholeRowAndColumnProjections — exact original pure mathematical model
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 426363dc5b10c8f88dc2c6ec242612277a4d6a7d0ca02e262579fc6412169a5c
Organized SHA-256: a9c1cc1cc5103c381ef594298531b70f0dd65939114d107e7a7fa9d60d3b430a
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The complete specialization of a pure two-field generic RingState and both finite matrix-slot projections remain intact. The provider stores slots and a sequence number; ring here names a circular sequence model, not a new algebraic ring. No mutation, atomics, chronological-recovery or matrix algebra theorem is asserted. -/

import DAF.Runtime.RingState
import BitMatrix.Core.Basic

/-!
# Binary-matrix ring adapter

This module specializes the framework-owned generic ring state to fixed-size
Boolean matrices.  It owns only matrix-specific projections.
-/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteSlotMatrixObservations.Variant426363dc5b10c8f8

namespace BitMatrix.Runtime

/-- Fixed-size Boolean-matrix entries in a generic ring. -/
abbrev FixedMatrixRingState
    (capacity rows cols : Nat) :=
  DAF.Runtime.RingState capacity (BitMatrix rows cols)

/-- Observe selected rows in every matrix-valued slot. -/
def selectedRowsObservation
    (select : Fin outRows → Fin rows)
    (state : FixedMatrixRingState capacity rows cols) :
    Fin capacity → BitMatrix outRows cols :=
  fun slot i j => state.slots slot (select i) j

/-- Observe selected columns in every matrix-valued slot. -/
def selectedColumnsObservation
    (select : Fin outCols → Fin cols)
    (state : FixedMatrixRingState capacity rows cols) :
    Fin capacity → BitMatrix rows outCols :=
  fun slot i j => state.slots slot i (select j)

end BitMatrix.Runtime

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteSlotMatrixObservations.Variant426363dc5b10c8f8
