import Mathlib.Algebra.Polynomial.Basic
import Mathlib.Tactic.Ring

namespace Noeoueue.Modular.ReciprocalPolynomial

open Polynomial

variable {R : Type} [CommRing R]

theorem generic_factorization (alpha beta : R) :
    (X - C alpha) * (X - C beta) = X ^ 2 - C (alpha + beta) * X + C (alpha * beta) := by
  calc
    (X - C alpha) * (X - C beta) = X ^ 2 - (C alpha + C beta) * X + C alpha * C beta := by ring
    _ = X ^ 2 - C (alpha + beta) * X + C (alpha * beta) := by simp

theorem determinant_one_polynomial (alpha beta : R) (hdet : alpha * beta = 1) :
    (X - C alpha) * (X - C beta) = X ^ 2 - C (alpha + beta) * X + 1 := by
  rw [generic_factorization, hdet]
  simp

variable {K : Type} [GroupWithZero K]

theorem inverse_involution (alpha : K) : (alpha⁻¹)⁻¹ = alpha := inv_inv alpha

/-- The central-character dual remains separately typed from plain inversion. -/
def characterDual (chi alpha : K) : K := chi * alpha⁻¹

end Noeoueue.Modular.ReciprocalPolynomial
