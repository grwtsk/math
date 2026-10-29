import GRWTSK.Algebra.Hecke.RankOneBarCoordinates
import Mathlib.Algebra.Polynomial.Laurent

/-! Concrete ℤ[v,v⁻¹] coefficient inversion for the rank-one K1/K2 fragments.
General Coxeter braid relations, KL recurrence and geometry remain absent. -/
namespace GRWTSK.Algebra.Hecke
open LaurentPolynomial

/-- Actual Laurent coefficient bar with q=v², rather than an assumed automorphism. -/
noncomputable def laurentRankOneBar : LaurentPolynomial ℤ × LaurentPolynomial ℤ →
    LaurentPolynomial ℤ × LaurentPolynomial ℤ :=
  rankOneBarCoordinates LaurentPolynomial.invert.toRingEquiv (T (-2))

/-- The concrete Laurent rank-one bar is involutive. -/
theorem laurentRankOneBar_involutive : Function.Involutive laurentRankOneBar := by
  unfold laurentRankOneBar
  apply rankOne_bar_involutive (R := LaurentPolynomial ℤ) (LaurentPolynomial.invert (R := ℤ)).toRingEquiv (T 2) (T (-2))
  · exact LaurentPolynomial.involutive_invert
  · simp
  · rw [← T_add]; norm_num

/-- Concrete parameter inversion supplies multiplication compatibility. -/
theorem laurentRankOneBar_mul (x y : LaurentPolynomial ℤ × LaurentPolynomial ℤ) :
    laurentRankOneBar (rankOneCoordinateMul (T 2) x y) =
      rankOneCoordinateMul (T 2) (laurentRankOneBar x) (laurentRankOneBar y) := by
  unfold laurentRankOneBar
  apply rankOne_bar_mul (R := LaurentPolynomial ℤ) (LaurentPolynomial.invert (R := ℤ)).toRingEquiv (T 2) (T (-2))
  · simp
  · rw [← T_add]; norm_num

/-- The actual Laurent normalized C coordinates are bar-fixed. -/
theorem laurentRankOneBar_normalized_fixed :
    laurentRankOneBar (T (-1), T (-1)) = (T (-1), T (-1)) := by
  have hv : (T 1 : LaurentPolynomial ℤ) * T (-1) = 1 := by rw [← T_add]; norm_num
  have hp : (T (-1) : LaurentPolynomial ℤ) ^ 2 = T (-2) := by rw [T_pow]; norm_num
  simpa only [laurentRankOneBar, hp] using
    rankOne_bar_normalized_fixed LaurentPolynomial.invert.toRingEquiv (T 1) (T (-1))
      (by simp) hv

/-- Normalized expansion now has no caller-supplied inverse-parameter premise. -/
theorem laurentRankOne_normalized_existsUnique (a b : LaurentPolynomial ℤ) :
    ∃! xy : LaurentPolynomial ℤ × LaurentPolynomial ℤ,
      a • (1 : Matrix (Fin 2) (Fin 2) (LaurentPolynomial ℤ)) +
        b • rankOneGenerator ((T 1) ^ 2) =
      xy.1 • 1 + xy.2 • rankOneNormalized (T 1) (T (-1)) := by
  apply rankOne_normalized_existsUnique
  rw [← T_add]
  norm_num
end GRWTSK.Algebra.Hecke
