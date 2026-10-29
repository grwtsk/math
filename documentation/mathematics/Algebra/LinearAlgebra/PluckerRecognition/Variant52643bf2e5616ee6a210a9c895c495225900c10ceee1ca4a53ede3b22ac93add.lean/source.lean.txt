import FormalResearch.PositiveAtlas.Grassmannian.PivotExistence
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

/-!
# Projective maximal minors recognize full-rank row spaces

Replacement-column determinants recover the entries of a normalized matrix.
Sorted selections transfer the same projective factor to every column tuple,
including repeated tuples whose determinants are zero. Together with actual
pivot existence, this proves the row-space / projective-minor equivalence.

The result applies to minors of actual full-rank real matrices. It is not a
converse constructing a plane from arbitrary abstract Pluecker coordinates,
nor does it identify geometric equality with source/provenance equality.
-/

namespace FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

open scoped Matrix

variable {k n : ℕ}

/-- Replacing an entry of the column selection replaces the corresponding matrix column. -/
theorem columnSubmatrix_update_selection (A : Matrix (Fin k) (Fin n) ℝ)
    (c : Fin k → Fin n) (i : Fin k) (j : Fin n) :
    columnSubmatrix A (Function.update c i j) =
      (columnSubmatrix A c).updateCol i (A.col j) := by
  classical
  ext r s
  by_cases hs : s = i
  · subst s
    simp [columnSubmatrix, Matrix.updateCol]
  · simp [columnSubmatrix, Matrix.updateCol, hs]

/-- Updating one identity column has determinant equal to the matching vector entry. -/
theorem det_updateCol_identity (v : Fin k → ℝ) (i : Fin k) :
    Matrix.det ((1 : Matrix (Fin k) (Fin k) ℝ).updateCol i v) = v i := by
  have hv : (fun r : Fin k =>
      ∑ l : Fin k, v l • (1 : Matrix (Fin k) (Fin k) ℝ) r l) = v := by
    funext r
    simp [Matrix.one_apply, smul_eq_mul]
  have h := Matrix.det_updateCol_sum (1 : Matrix (Fin k) (Fin k) ℝ) i v
  rw [hv, Matrix.det_one, smul_eq_mul, mul_one] at h
  exact h

/-- Each entry of a pivot-normalized frame is a replacement-column minor. -/
theorem normalized_entry_eq_columnMinor (A : Matrix (Fin k) (Fin n) ℝ)
    (c : Fin k → Fin n) (hc : columnSubmatrix A c = 1) (i : Fin k) (j : Fin n) :
    A i j = columnMinor A (Function.update c i j) := by
  unfold columnMinor
  rw [columnSubmatrix_update_selection, hc, det_updateCol_identity]
  rfl

/-- Cramer's coordinate formula using the actual selected determinants. -/
theorem pivotNormalize_entry_eq_ratio (A : Matrix (Fin k) (Fin n) ℝ)
    (c : Fin k → Fin n) (hc : columnMinor A c ≠ 0) (i : Fin k) (j : Fin n) :
    pivotNormalize A c i j =
      columnMinor A (Function.update c i j) / columnMinor A c := by
  rw [normalized_entry_eq_columnMinor (pivotNormalize A c) c
    (pivotNormalize_pivot A c hc) i j, columnMinor_pivotNormalize A c _ hc]

/-- Proportional increasing minors give the same factor for all selected column tuples. -/
theorem columnMinor_proportional_of_ordered (A B : Matrix (Fin k) (Fin n) ℝ)
    (t : ℝ) (h : ∀ I : Fin k ↪o Fin n, orderedMinor B I = t * orderedMinor A I)
    (c : Fin k → Fin n) : columnMinor B c = t * columnMinor A c := by
  by_cases hc : Function.Injective c
  · obtain ⟨I, e, he⟩ := exists_ordered_selection c hc
    have hce : c = fun j => I (e j) := funext he
    rw [hce, columnMinor_comp_perm, columnMinor_comp_perm]
    change (Equiv.Perm.sign e : ℝ) * orderedMinor B I =
      t * ((Equiv.Perm.sign e : ℝ) * orderedMinor A I)
    rw [h I]
    ring
  · rw [columnMinor_eq_zero_of_not_injective B c hc,
      columnMinor_eq_zero_of_not_injective A c hc, mul_zero]

/-- All maximal-minor ratios determine the constructed normal form. -/
theorem pivotNormalize_eq_of_columnMinor_proportional
    (A B : Matrix (Fin k) (Fin n) ℝ) (c : Fin k → Fin n)
    (hA : columnMinor A c ≠ 0) (hB : columnMinor B c ≠ 0)
    (t : ℝ) (ht : t ≠ 0)
    (h : ∀ d : Fin k → Fin n, columnMinor B d = t * columnMinor A d) :
    pivotNormalize A c = pivotNormalize B c := by
  apply Matrix.ext
  intro i j
  rw [pivotNormalize_entry_eq_ratio A c hA,
    pivotNormalize_entry_eq_ratio B c hB, h (Function.update c i j), h c]
  field_simp [ht, hA]

/-- Equality of actual full-rank row spaces produces an invertible row change. -/
theorem exists_rowChange_of_frameRowSpace_eq (A B : Matrix (Fin k) (Fin n) ℝ)
    (hB : B.rank = k) (h : frameRowSpace A = frameRowSpace B) :
    ∃ U : Matrix (Fin k) (Fin k) ℝ, Matrix.det U ≠ 0 ∧ B = U * A := by
  classical
  have hr : ∀ i : Fin k, ∃ u : Fin k → ℝ, u ᵥ* A = B.row i := by
    intro i
    apply (mem_frameRowSpace_iff A (B.row i)).mp
    rw [h]
    exact row_mem_frameRowSpace B i
  choose rows hU using hr
  let U : Matrix (Fin k) (Fin k) ℝ := Matrix.of rows
  have hBA : B = U * A := by
    apply Matrix.ext
    intro i j
    exact (congrFun (hU i) j).symm
  refine ⟨U, ?_, hBA⟩
  obtain ⟨c, hc⟩ := exists_columnMinor_ne_zero_of_rank B hB
  intro hzero
  apply hc
  rw [hBA, columnMinor_mul_left, hzero, zero_mul]

/-- Full-rank row spaces are the orbits of genuine invertible row changes. -/
theorem frameRowSpace_eq_iff_rowChange (A B : Matrix (Fin k) (Fin n) ℝ)
    (hB : B.rank = k) :
    frameRowSpace A = frameRowSpace B ↔
      ∃ U : Matrix (Fin k) (Fin k) ℝ, Matrix.det U ≠ 0 ∧ B = U * A := by
  constructor
  · exact exists_rowChange_of_frameRowSpace_eq A B hB
  · rintro ⟨U, hU, rfl⟩
    exact (frameRowSpace_mul_left_eq U A hU).symm

/-- Actual equal full-rank row spaces have proportional selected maximal minors. -/
theorem columnMinor_proportional_of_frameRowSpace_eq
    (A B : Matrix (Fin k) (Fin n) ℝ) (hB : B.rank = k)
    (h : frameRowSpace A = frameRowSpace B) :
    ∃ t : ℝ, t ≠ 0 ∧
      ∀ c : Fin k → Fin n, columnMinor B c = t * columnMinor A c := by
  obtain ⟨U, hU, hBA⟩ := exists_rowChange_of_frameRowSpace_eq A B hB h
  refine ⟨Matrix.det U, hU, ?_⟩
  intro c
  rw [hBA, columnMinor_mul_left]

/-- Proportional maximal minors recover the actual row space, not merely a coordinate record. -/
theorem frameRowSpace_eq_of_columnMinor_proportional
    (A B : Matrix (Fin k) (Fin n) ℝ) (hA : A.rank = k)
    (t : ℝ) (ht : t ≠ 0)
    (h : ∀ c : Fin k → Fin n, columnMinor B c = t * columnMinor A c) :
    frameRowSpace A = frameRowSpace B := by
  obtain ⟨c, hcA⟩ := exists_columnMinor_ne_zero_of_rank A hA
  have hcB : columnMinor B c ≠ 0 := by
    rw [h c]
    exact mul_ne_zero ht hcA
  apply (pivotNormalize_eq_iff_rowSpace A B c hcA hcB).mp
  exact pivotNormalize_eq_of_columnMinor_proportional A B c hcA hcB t ht h

/-- General projective Pluecker recognition for actual full-rank real matrices. -/
theorem frameRowSpace_eq_iff_orderedMinor_proportional
    (A B : Matrix (Fin k) (Fin n) ℝ) (hA : A.rank = k) (hB : B.rank = k) :
    frameRowSpace A = frameRowSpace B ↔
      ∃ t : ℝ, t ≠ 0 ∧
        ∀ I : Fin k ↪o Fin n, orderedMinor B I = t * orderedMinor A I := by
  constructor
  · intro h
    obtain ⟨t, ht, hp⟩ := columnMinor_proportional_of_frameRowSpace_eq A B hB h
    exact ⟨t, ht, fun I => hp I⟩
  · rintro ⟨t, ht, hp⟩
    apply frameRowSpace_eq_of_columnMinor_proportional A B hA t ht
    exact columnMinor_proportional_of_ordered A B t hp

/-- A full-rank frame's projective proportionality factor is unique. -/
theorem orderedMinor_factor_unique (A B : Matrix (Fin k) (Fin n) ℝ)
    (hA : A.rank = k) (s t : ℝ)
    (hs : ∀ I : Fin k ↪o Fin n, orderedMinor B I = s * orderedMinor A I)
    (ht : ∀ I : Fin k ↪o Fin n, orderedMinor B I = t * orderedMinor A I) : s = t := by
  obtain ⟨I, hI⟩ := exists_orderedMinor_ne_zero_of_rank A hA
  exact mul_right_cancel₀ hI ((hs I).symm.trans (ht I))

/-- On nonnegative full-rank representatives the projective factor is positive. -/
theorem orderedMinor_factor_pos (A B : Matrix (Fin k) (Fin n) ℝ)
    (hA : A.rank = k) (hAn : AllOrderedMinorsNonneg A) (hBn : AllOrderedMinorsNonneg B)
    (t : ℝ) (ht : t ≠ 0)
    (hp : ∀ I : Fin k ↪o Fin n, orderedMinor B I = t * orderedMinor A I) : 0 < t := by
  obtain ⟨I, hI⟩ := exists_orderedMinor_pos_of_rank_nonneg A hA hAn
  have hB0 : orderedMinor B I ≠ 0 := by
    rw [hp I]
    exact mul_ne_zero ht (ne_of_gt hI)
  have hBpos : 0 < orderedMinor B I := lt_of_le_of_ne (hBn I) (Ne.symm hB0)
  rw [hp I] at hBpos
  exact (mul_pos_iff_of_pos_right hI).mp hBpos

/-- Nonnegative representatives admit recognition with a positive projective factor. -/
theorem frameRowSpace_eq_iff_positive_orderedMinor_proportional
    (A B : Matrix (Fin k) (Fin n) ℝ) (hA : A.rank = k) (hB : B.rank = k)
    (hAn : AllOrderedMinorsNonneg A) (hBn : AllOrderedMinorsNonneg B) :
    frameRowSpace A = frameRowSpace B ↔
      ∃ t : ℝ, 0 < t ∧
        ∀ I : Fin k ↪o Fin n, orderedMinor B I = t * orderedMinor A I := by
  constructor
  · intro he
    obtain ⟨t, ht, hp⟩ :=
      (frameRowSpace_eq_iff_orderedMinor_proportional A B hA hB).mp he
    exact ⟨t, orderedMinor_factor_pos A B hA hAn hBn t ht hp, hp⟩
  · rintro ⟨t, ht, hp⟩
    exact (frameRowSpace_eq_iff_orderedMinor_proportional A B hA hB).mpr
      ⟨t, ne_of_gt ht, hp⟩

/-- Equal nonnegative full-rank frames are related by a positive-determinant row change. -/
theorem exists_positive_rowChange_of_frameRowSpace_eq
    (A B : Matrix (Fin k) (Fin n) ℝ) (hA : A.rank = k) (hB : B.rank = k)
    (hAn : AllOrderedMinorsNonneg A) (hBn : AllOrderedMinorsNonneg B)
    (he : frameRowSpace A = frameRowSpace B) :
    ∃ U : Matrix (Fin k) (Fin k) ℝ, 0 < Matrix.det U ∧ B = U * A := by
  obtain ⟨U, hU, hBA⟩ := exists_rowChange_of_frameRowSpace_eq A B hB he
  refine ⟨U, ?_, hBA⟩
  apply orderedMinor_factor_pos A B hA hAn hBn (Matrix.det U) hU
  intro I
  rw [hBA, orderedMinor_mul_left]

end

end FormalResearch.PositiveAtlas.Grassmannian
