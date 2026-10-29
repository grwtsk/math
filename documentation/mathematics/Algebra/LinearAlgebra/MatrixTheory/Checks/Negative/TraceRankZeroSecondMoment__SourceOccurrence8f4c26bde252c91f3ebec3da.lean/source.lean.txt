/- Intentionally rejected: the zero Hermitian matrix does not have strictly
positive second moment. The intended false inequality is 0 < 0. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.TraceRank

example : 0 < (((0 : Matrix Unit Unit ℂ) ^ 2).trace).re := by
  have hv : (((0 : Matrix Unit Unit ℂ) ^ 2).trace).re = 0 := by simp
  rw [hv]
  exact (show (0 : ℝ) ≤ 0 from le_rfl)
