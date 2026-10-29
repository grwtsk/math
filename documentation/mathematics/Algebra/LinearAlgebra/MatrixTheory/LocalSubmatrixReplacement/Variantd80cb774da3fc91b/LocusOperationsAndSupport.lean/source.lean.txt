/-
LocusOperationsAndSupport — individual source review
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

/- All MatrixLocus ordered global embeddings and partial inverse premises remain exact. Extraction after implantation is the identity on replacements; reimplantation of the old block and complement/overwrite/support laws are preserved. RowUnique and ColumnUnique are exact separate predicates, not automatic global consequences. Original root namespace is retained for explicit BitMatrix calls; other historical variants are not claimed coimport-compatible. -/

import BitMatrix.Geometry.GlobalProjection

/-!
# Exact declarative submatrix surgery

Extraction and implantation use the ordered global embeddings supplied by a
`MatrixLocus`.  Payload length and index order are therefore explicit.  The
round-trip theorem says that extracting an implanted replacement returns that
replacement exactly, while `implantSubmatrix_outside` proves the complement
unchanged.  No local invertibility or row/column property is promoted to a
global action-matrix certificate without an additional proof.
-/

namespace BitMatrix

open BitMatrix.Geometry

variable {m n : Nat}

/-- Extract a selected matrix block using exact global coordinate embeddings. -/
def extractSubmatrix (A : BitMatrix m n) (L : MatrixLocus m n) :
    BitMatrix L.rows.card L.columns.card :=
  fun i j => A (L.rowEmbed i) (L.columnEmbed j)

@[simp]
theorem extractSubmatrix_apply
    (A : BitMatrix m n) (L : MatrixLocus m n)
    (i : Fin L.rows.card) (j : Fin L.columns.card) :
    extractSubmatrix A L i j = A (L.rowEmbed i) (L.columnEmbed j) :=
  rfl

/-- Implant a local replacement, falling back to `A` outside the exact locus. -/
def implantSubmatrix
    (A : BitMatrix m n) (L : MatrixLocus m n)
    (replacement : BitMatrix L.rows.card L.columns.card) : BitMatrix m n :=
  fun i j =>
    match L.localRow? i, L.localColumn? j with
    | some a, some b => replacement a b
    | _, _ => A i j

@[simp]
theorem implantSubmatrix_inside
    (A : BitMatrix m n) (L : MatrixLocus m n)
    (replacement : BitMatrix L.rows.card L.columns.card)
    (i : Fin L.rows.card) (j : Fin L.columns.card) :
    implantSubmatrix A L replacement (L.rowEmbed i) (L.columnEmbed j) =
      replacement i j := by
  simp [implantSubmatrix]

/-- Extraction after implantation is the identity on local replacements. -/
@[simp]
theorem extractSubmatrix_implantSubmatrix
    (A : BitMatrix m n) (L : MatrixLocus m n)
    (replacement : BitMatrix L.rows.card L.columns.card) :
    extractSubmatrix (implantSubmatrix A L replacement) L = replacement := by
  apply BitMatrix.ext
  intro i j
  simp

/-- Reimplanting the extracted original block does not change the matrix. -/
@[simp]
theorem implantSubmatrix_extractSubmatrix
    (A : BitMatrix m n) (L : MatrixLocus m n) :
    implantSubmatrix A L (extractSubmatrix A L) = A := by
  apply BitMatrix.ext
  intro i j
  unfold implantSubmatrix
  cases hr : L.localRow? i with
  | none => rfl
  | some a =>
      cases hc : L.localColumn? j with
      | none => rfl
      | some b =>
          simp only
          have hi : L.rowEmbed a = i :=
            (L.localRow?_eq_some_iff i a).mp hr
          have hj : L.columnEmbed b = j :=
            (L.localColumn?_eq_some_iff j b).mp hc
          simp [extractSubmatrix, hi, hj]

/-- An entry outside either selected coordinate set is unchanged. -/
theorem implantSubmatrix_outside
    (A : BitMatrix m n) (L : MatrixLocus m n)
    (replacement : BitMatrix L.rows.card L.columns.card)
    (i : Fin m) (j : Fin n)
    (houtside : i ∉ L.rows ∨ j ∉ L.columns) :
    implantSubmatrix A L replacement i j = A i j := by
  rcases houtside with hi | hj
  · have hnone : L.localRow? i = none :=
      (L.localRow?_eq_none_iff i).mpr hi
    simp [implantSubmatrix, hnone]
  · have hnone : L.localColumn? j = none :=
      (L.localColumn?_eq_none_iff j).mpr hj
    unfold implantSubmatrix
    cases L.localRow? i <;> simp [hnone]

/-- A second replacement of the same locus overwrites the first one exactly. -/
theorem implantSubmatrix_overwrite
    (A : BitMatrix m n) (L : MatrixLocus m n)
    (first second : BitMatrix L.rows.card L.columns.card) :
    implantSubmatrix (implantSubmatrix A L first) L second =
      implantSubmatrix A L second := by
  apply BitMatrix.ext
  intro i j
  unfold implantSubmatrix
  cases L.localRow? i <;> cases L.localColumn? j <;> rfl

/-- Coordinates on which two binary matrices differ. -/
def differenceSupport (A B : BitMatrix m n) : Finset (Fin m × Fin n) :=
  Finset.univ.filter fun ij => A ij.1 ij.2 ≠ B ij.1 ij.2

theorem mem_differenceSupport_iff (A B : BitMatrix m n) (i : Fin m) (j : Fin n) :
    (i, j) ∈ differenceSupport A B ↔ A i j ≠ B i j := by
  simp [differenceSupport]

/-- Implantation can change entries only inside the selected row/column locus. -/
theorem implant_differenceSupport_inside
    (A : BitMatrix m n) (L : MatrixLocus m n)
    (replacement : BitMatrix L.rows.card L.columns.card)
    {i : Fin m} {j : Fin n}
    (h : (i, j) ∈ differenceSupport (implantSubmatrix A L replacement) A) :
    i ∈ L.rows ∧ j ∈ L.columns := by
  have hdiff := (mem_differenceSupport_iff _ _ _ _).mp h
  constructor
  · by_contra hi
    exact hdiff (implantSubmatrix_outside A L replacement i j (Or.inl hi))
  · by_contra hj
    exact hdiff (implantSubmatrix_outside A L replacement i j (Or.inr hj))

/-- Row uniqueness for Boolean action matrices. -/
def RowUnique (A : BitMatrix m n) : Prop :=
  ∀ i, ∃! j, A i j = true

/-- Column uniqueness for Boolean action matrices. -/
def ColumnUnique (A : BitMatrix m n) : Prop :=
  ∀ j, ∃! i, A i j = true

end BitMatrix


