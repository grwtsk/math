/-
Deterministic replay of an established source split; no new conceptual review.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: ae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a
Organized SHA-256: 20e244a174896a660df9ce7fc06a9ad2b2b1ea79142ccf9379faf2607f653a9f
Established decision SHA-256: c257a39aec8a78062eea2c3a7b7075faf0fc227f50b4d0149bebcfa9aa408e7b
PMD: 510.3.010.010 euclidean geometry
Source mathematics, hypotheses, namespaces, imports and proof text remain source copies.
Comments may differ from the established source; all exact versions remain archived.
Uncompiled; no Lean/Lake, public umbrella admission, proof acceptance or authorship determination.
-/

import BitMatrix.Codec.Profiles
import BitMatrix.Geometry.CarrierGrid
import BitMatrix.Runtime.Semantics

/-!
# Concrete formal/runtime representation relations

These are typed models of the records exchanged with the runtime.  They prove
that abstraction preserves the stated operations.  They do not, on their own,
verify foreign JavaScript or Rust bytes; executable conformance vectors remain
the authority for that final bridge.
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
