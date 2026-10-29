import Mathlib.Algebra.Polynomial.Coeff
import Mathlib.Tactic

/-! Correction check for the two distinct unpublished KL manuscript versions.
No Coxeter algebra, KL recurrence, or positivity-to-vanishing bridge is asserted. -/
namespace GRWTSK.Algebra.Polynomial

/-- The printed diagonal q² cannot equal the required diagonal 1 in ℤ[q]. -/
theorem X_sq_ne_one : (Polynomial.X : Polynomial ℤ) ^ 2 ≠ 1 := by
  intro h
  have hc := congrArg (fun p : Polynomial ℤ => p.coeff 0) h
  norm_num at hc

/-- A normalized polynomial family cannot have the printed q² diagonal. -/
theorem normalized_diagonal_ne_X_sq {W : Type*} (P : W → W → Polynomial ℤ)
    (diagonal : ∀ w, P w w = 1) (w : W) : P w w ≠ Polynomial.X ^ 2 := by
  rw [diagonal]
  exact Ne.symm X_sq_ne_one
end GRWTSK.Algebra.Polynomial
