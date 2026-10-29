/-
CheckedRowMajorCellRecord — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: a330bd9a635a18f219f3025cd215fd0b7fb59c56e3cb9b1ff352349a371b4a8f
Organized SHA-256: b502477191351b0f048f5127ff10d07e7bca9102aa3e5815c57bcdee8a001337
PMD: 510.3.010.010 euclidean geometry (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole checked redundant Fin(rows*columns) index equation and exact abstraction/index preservation. No runtime record has been decoded or validated; all original provider imports and empty-dimension types remain unchanged. -/

import BitMatrix.Codec.Profiles
import BitMatrix.Geometry.CarrierGrid
import BitMatrix.Runtime.Semantics

/-!
# Concrete formal/runtime representation relations

These are typed models of the records exchanged with the runtime.  They prove
that abstraction preserves the stated operations.  They do not, on their own,
verify foreign JavaScript or Rust bytes. `BitMatrix.Runtime.ForeignTrace`
provides the separate checked-byte boundary for the two canonical document
encoders; executable conformance vectors remain bounded evidence for the
larger JavaScript geometry surface.
-/

namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.CheckedFiniteCarrierCoordinates.Varianta330bd9a635a18f2

open BitMatrix.Runtime.Semantics
open BitMatrix.Geometry.CarrierGrid
open BitMatrix.Codec
open BitMatrix.Codec.Profiles

namespace BitMatrix.Runtime.Correspondence

/-- A runtime cell record whose redundant numeric index has been checked. -/
structure GridCellRecord (rows columns : Nat) where
  row : Fin rows
  column : Fin columns
  index : Fin (rows * columns)
  indexEquation : index = BitMatrix.ArrayBacked.flatIdx row column


/-- Forget the redundant runtime index. -/
def abstractGridCell {rows columns : Nat}
    (record : GridCellRecord rows columns) : GridCell rows columns :=
  ⟨record.row, record.column⟩


/-- Concrete representation relation for checked row-major cell records. -/
def gridCellRepresentation (rows columns : Nat) :
    RepresentationRelation (GridCell rows columns)
      (GridCellRecord rows columns) where
  abstract := abstractGridCell
  represents record semantic := abstractGridCell record = semantic
  represents_iff _ _ := Iff.rfl


/-- Abstraction preserves the checked row-major index. -/
theorem abstractGridCell_rowMajorIndex {rows columns : Nat}
    (record : GridCellRecord rows columns) :
    (abstractGridCell record).rowMajorIndex = record.index := by
  change BitMatrix.ArrayBacked.flatIdx record.row record.column = record.index
  exact record.indexEquation.symm


end BitMatrix.Runtime.Correspondence

end GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.CheckedFiniteCarrierCoordinates.Varianta330bd9a635a18f2
