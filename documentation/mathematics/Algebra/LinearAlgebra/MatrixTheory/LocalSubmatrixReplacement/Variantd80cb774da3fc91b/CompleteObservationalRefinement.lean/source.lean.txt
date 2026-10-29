/-
CompleteObservationalRefinement — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: d80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465
Organized SHA-256: 4f4155e5496c2783b1329e5b729c2581e009f8e855465497711ee5d2365da854
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Every replacement/result/declarative field and replacement_refines/result_refines equation remains. The exact constructor relates the array-backed implementation to the declarative surgery through toMatrix only, retaining all dimensions/locus and original qualified calls. No new global action-matrix certificate or raw-array identity is inferred. -/

import BitMatrix.Geometry.GlobalProjection

import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.LocalSubmatrixReplacement.Variantd80cb774da3fc91b.CompleteSurgeryAndActionCertificates
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.LocalSubmatrixReplacement.Variantd80cb774da3fc91b.RowMajorReification
/-!
# Exact declarative submatrix surgery

Extraction and implantation use the ordered global embeddings supplied by a
`MatrixLocus`.  Payload length and index order are therefore explicit.  The
round-trip theorem says that extracting an implanted replacement returns that
replacement exactly, while `implantSubmatrix_outside` proves the complement
unchanged.  No local invertibility or row/column property is promoted to a
global action-matrix certificate without an additional proof.
-/

open BitMatrix.Geometry

/--
A proof-bearing connection between one row-major implementation surgery and
the canonical declarative surgery on its `toMatrix` observations.
-/
structure BitMatrix.Surgery.ArrayBackedRefinement
    {m n : Nat} (A : BitMatrix.ArrayBacked m n) (L : MatrixLocus m n) where
  replacement : BitMatrix.ArrayBacked L.rows.card L.columns.card
  result : BitMatrix.ArrayBacked m n
  declarative : BitMatrix.Surgery.SubmatrixSurgery A.toMatrix L
  replacement_refines : replacement.toMatrix = declarative.replacement
  result_refines : result.toMatrix = declarative.result

namespace BitMatrix.Surgery.ArrayBackedRefinement

open BitMatrix.Geometry

variable {m n : Nat}

/-- Canonical executable refinement of a replacement block. -/
def replace
    (A : BitMatrix.ArrayBacked m n) (L : MatrixLocus m n)
    (replacement : BitMatrix.ArrayBacked L.rows.card L.columns.card) :
    BitMatrix.Surgery.ArrayBackedRefinement A L where
  replacement := replacement
  result := BitMatrix.ArrayBacked.implantSubmatrix A L replacement
  declarative := BitMatrix.Surgery.SubmatrixSurgery.replace
    A.toMatrix L replacement.toMatrix
  replacement_refines := rfl
  result_refines := by
    simp [BitMatrix.Surgery.SubmatrixSurgery.replace_result]

@[simp]
theorem replace_result_refines
    (A : BitMatrix.ArrayBacked m n) (L : MatrixLocus m n)
    (replacement : BitMatrix.ArrayBacked L.rows.card L.columns.card) :
    (replace A L replacement).result.toMatrix =
      BitMatrix.implantSubmatrix A.toMatrix L replacement.toMatrix := by
  simp [replace]

end BitMatrix.Surgery.ArrayBackedRefinement

