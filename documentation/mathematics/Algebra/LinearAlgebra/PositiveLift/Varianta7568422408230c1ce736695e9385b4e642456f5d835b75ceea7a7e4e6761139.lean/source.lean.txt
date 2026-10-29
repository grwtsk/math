import FormalResearch.PositiveAtlas.Grassmannian.FiniteCauchyBinet

/-!
# Finite positive lifts through rectangular Cauchy--Binet

This module isolates the algebra used by source-specific positive lifts.  A
rectangular factorization does not become positive by taking absolute values:
the increasing minors of the left and right factors must have compatible signs.

The theorem below is finite and exact.  Continuous Andreief identities and
source-specific sign regularity remain separate analytic obligations.
-/

namespace FormalResearch.PositiveAtlas.Grassmannian.PositiveLift

open FormalResearch.PositiveAtlas.Grassmannian.Toeplitz

noncomputable section

/-- Increasing maximal minors of a rectangular left factor are nonnegative. -/
def LeftOrderedNonnegative {k N : ℕ}
    (A : Matrix (Fin k) (Fin N) ℝ) : Prop :=
  ∀ I : Fin k ↪o Fin N, 0 ≤ Matrix.det (A.submatrix id I)

/-- Increasing maximal minors of a rectangular right factor are nonnegative. -/
def RightOrderedNonnegative {k N : ℕ}
    (B : Matrix (Fin N) (Fin k) ℝ) : Prop :=
  ∀ I : Fin k ↪o Fin N, 0 ≤ Matrix.det (B.submatrix I id)

/-- Rectangular Cauchy--Binet is a positive lift when both ordered-minor
families have compatible nonnegative orientation. -/
theorem det_mul_nonnegative {k N : ℕ}
    (A : Matrix (Fin k) (Fin N) ℝ)
    (B : Matrix (Fin N) (Fin k) ℝ)
    (hA : LeftOrderedNonnegative A)
    (hB : RightOrderedNonnegative B) :
    0 ≤ Matrix.det (A * B) := by
  have hs :
      0 ≤ ∑ f : Fin k → Fin N,
        Matrix.det (A.submatrix id f) *
          Matrix.det (B.submatrix f id) := by
    apply Finset.sum_nonneg
    intro f _hf
    exact intermediate_product_nonnegative A B hA hB f
  rw [← cauchyBinet_all_functions] at hs
  exact
    (mul_nonneg_iff_of_pos_left
      (by positivity : 0 < (k.factorial : ℝ))).mp hs

/-- The finite lifted matrix before any determinant is taken. -/
def matrix {k N : ℕ}
    (A : Matrix (Fin k) (Fin N) ℝ)
    (B : Matrix (Fin N) (Fin k) ℝ) :
    Matrix (Fin k) (Fin k) ℝ :=
  A * B

/-- The named finite-lift wrapper exposes exactly the preceding theorem. -/
theorem matrix_det_nonnegative {k N : ℕ}
    (A : Matrix (Fin k) (Fin N) ℝ)
    (B : Matrix (Fin N) (Fin k) ℝ)
    (hA : LeftOrderedNonnegative A)
    (hB : RightOrderedNonnegative B) :
    0 ≤ Matrix.det (matrix A B) := by
  exact det_mul_nonnegative A B hA hB

end

end FormalResearch.PositiveAtlas.Grassmannian.PositiveLift
