import FormalResearch.PositiveAtlas.Grassmannian.PivotBounds
import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Analysis.InnerProductSpace.Positive

/-!
# Euclidean operator consequences of controlled pivots

The spectral theorem proves the sharp inverse budget. Every norm here is
explicitly the Euclidean operator norm, including rectangular frame norms.

Human direction, theorem selection, and evaluation: grwtsk contributors.
AI-assisted formal implementation: OpenAI Codex, ATLAS-GHH-DESCENT-20261007.
-/

namespace FormalResearch.PositiveAtlas.Grassmannian

set_option maxHeartbeats 30000
set_option diagnostics true

noncomputable section

open scoped Matrix Matrix.Norms.L2Operator

variable {k n : ℕ}

/-- Orthonormal-row frames are contractions in the specified Euclidean operator norm. -/
theorem l2_opNorm_le_one_of_orthonormalRows (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A * A.transpose = 1) : ‖A‖ ≤ 1 := by
  have h := Matrix.l2_opNorm_conjTranspose_mul_self A.transpose
  simp only [Matrix.conjTranspose_eq_transpose_of_trivial, Matrix.transpose_transpose] at h
  have ht : ‖A.transpose‖ = ‖A‖ := by
    simpa only [Matrix.conjTranspose_eq_transpose_of_trivial] using
      Matrix.l2_opNorm_conjTranspose A
  rw [ht, hA] at h
  have hone : ‖(1 : Matrix (Fin k) (Fin k) ℝ)‖ ≤ 1 := by
    rw [← Matrix.diagonal_one, Matrix.l2_opNorm_diagonal]
    exact (pi_norm_le_iff_of_nonneg zero_le_one).mpr (fun _ => by simp)
  nlinarith [norm_nonneg A]

/-- Restricting coordinates by an injection is a Euclidean contraction. -/
theorem euclidean_norm_restrict_le (c : Fin k → Fin n) (hc : Function.Injective c)
    (x : EuclideanSpace ℝ (Fin n)) :
    ‖WithLp.toLp 2 (fun i => x (c i))‖ ≤ ‖x‖ := by
  classical
  apply (sq_le_sq₀ (norm_nonneg _) (norm_nonneg _)).mp
  rw [EuclideanSpace.norm_sq_eq, EuclideanSpace.norm_sq_eq]
  change (∑ i : Fin k, ‖x (c i)‖ ^ 2) ≤ ∑ j : Fin n, ‖x j‖ ^ 2
  calc
    _ = ∑ j ∈ Finset.univ.image c, ‖x j‖ ^ 2 :=
      (Finset.sum_image (f := fun j : Fin n => ‖x j‖ ^ 2)
        (s := Finset.univ) (g := c) hc.injOn).symm
    _ ≤ ∑ j : Fin n, ‖x j‖ ^ 2 :=
      Finset.sum_le_sum_of_subset_of_nonneg (Finset.subset_univ _) (fun _ _ _ => sq_nonneg _)

set_option backward.isDefEq.respectTransparency false in
/-- Column restriction is bounded by the full frame's Euclidean operator norm. -/
theorem l2_opNorm_columnSubmatrix_le (A : Matrix (Fin k) (Fin n) ℝ)
    (c : Fin k → Fin n) (hc : Function.Injective c) :
    ‖columnSubmatrix A c‖ ≤ ‖A‖ := by
  have ht (B : Matrix (Fin k) (Fin n) ℝ) : ‖B.transpose‖ = ‖B‖ := by
    simpa only [Matrix.conjTranspose_eq_transpose_of_trivial] using
      Matrix.l2_opNorm_conjTranspose B
  have hs : ‖(columnSubmatrix A c).transpose‖ = ‖columnSubmatrix A c‖ := by
    simpa only [Matrix.conjTranspose_eq_transpose_of_trivial] using
      Matrix.l2_opNorm_conjTranspose (columnSubmatrix A c)
  rw [← hs, Matrix.l2_opNorm_def]
  apply ContinuousLinearMap.opNorm_le_bound (norm_nonneg A)
  intro x
  have he : Matrix.toEuclideanLin (columnSubmatrix A c).transpose x =
      WithLp.toLp 2 (fun i => (Matrix.toEuclideanLin A.transpose x) (c i)) := rfl
  change ‖Matrix.toEuclideanLin (columnSubmatrix A c).transpose x‖ ≤ ‖A‖ * ‖x‖
  rw [he]
  exact (euclidean_norm_restrict_le c hc _).trans (by
    simpa only [ht A] using Matrix.l2_opNorm_mulVec A.transpose x)


end
end FormalResearch.PositiveAtlas.Grassmannian
