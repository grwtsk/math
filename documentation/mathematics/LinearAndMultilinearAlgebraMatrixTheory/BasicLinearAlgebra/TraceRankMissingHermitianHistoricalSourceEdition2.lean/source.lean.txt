/- Intentionally rejected: without Hermitian symmetry, even the second
spectral moment can be negative. The intended false inequality is 0 ≤ -1. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.TraceRank
import Mathlib.Tactic.NormNum

example : 0 ≤ (((Matrix.diagonal (fun _ : Unit => Complex.I)) ^ 2).trace).re := by
  have hv : (((Matrix.diagonal (fun _ : Unit => Complex.I)) ^ 2).trace).re = -1 := by
    norm_num [Matrix.diagonal_pow, Function.comp_def, Matrix.trace]
  rw [hv]
  exact (show (0 : ℝ) ≤ 1 by norm_num)
