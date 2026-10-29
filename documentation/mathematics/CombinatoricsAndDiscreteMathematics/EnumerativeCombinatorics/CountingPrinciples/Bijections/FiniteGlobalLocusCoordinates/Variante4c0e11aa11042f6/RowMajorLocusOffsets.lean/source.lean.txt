/-
RowMajorLocusOffsets — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: e4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e
Organized SHA-256: 2127b7e397fc48de2533c51341545de9a942984a36b59c274bf7ebc942f57ce8
PMD: 510.7.010.010.010 bijections (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact original imported BitMatrix.FiniteField.Galois rowMajorIndexEquiv and ArrayBacked.flatIdx providers retained, with full offset/membership theorems. The newly split source401 is not substituted for this historical import. Captured context bytes do not activate its original import environment. -/

import BitMatrix.FiniteField.Galois
import Mathlib.Data.Finset.Sort

import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.FiniteGlobalLocusCoordinates.Variante4c0e11aa11042f6.OrderedGlobalLoci

/-!
# Absolute row and column loci for binary matrices

A `MatrixLocus m n` is a pair of finite sets in the original `Fin m` and
`Fin n` coordinate frames.  Local indices are enumerated increasingly, and
the embeddings below retain the exact global index.  They never create an
independent coordinate universe.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.FiniteGlobalLocusCoordinates.Variante4c0e11aa11042f6


namespace BitMatrix.Geometry

namespace MatrixLocus

variable {m n : Nat}

/-- Recover the global matrix coordinate represented by a row-major offset. -/
def coordinateOfOffset (k : Fin (m * n)) :
    Fin m × Fin n :=
  (BitMatrix.FiniteField.rowMajorIndexEquiv m n).symm k


@[simp]
theorem coordinateOfOffset_flatIdx
    (i : Fin m) (j : Fin n) :
    coordinateOfOffset (BitMatrix.ArrayBacked.flatIdx i j) = (i, j) := by
  unfold coordinateOfOffset
  rw [← BitMatrix.FiniteField.rowMajorIndexEquiv_apply]
  exact Equiv.symm_apply_apply _ _


/--
The exact row-major implementation offsets whose decoded global coordinates
lie in both components of the formal matrix locus.
-/
def rowMajorOffsets (L : MatrixLocus m n) : Finset (Fin (m * n)) :=
  Finset.univ.filter fun k =>
    (coordinateOfOffset k).1 ∈ L.rows ∧
      (coordinateOfOffset k).2 ∈ L.columns


theorem mem_rowMajorOffsets_iff
    (L : MatrixLocus m n) (k : Fin (m * n)) :
    k ∈ L.rowMajorOffsets ↔
      (coordinateOfOffset k).1 ∈ L.rows ∧
        (coordinateOfOffset k).2 ∈ L.columns := by
  simp [rowMajorOffsets]


@[simp]
theorem flatIdx_mem_rowMajorOffsets_iff
    (L : MatrixLocus m n) (i : Fin m) (j : Fin n) :
    BitMatrix.ArrayBacked.flatIdx i j ∈ L.rowMajorOffsets ↔
      i ∈ L.rows ∧ j ∈ L.columns := by
  simp [mem_rowMajorOffsets_iff]


end MatrixLocus

end BitMatrix.Geometry

end GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.FiniteGlobalLocusCoordinates.Variante4c0e11aa11042f6
