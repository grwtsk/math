import GRWTSK.LinearAlgebra.GaugeState
open GRWTSK.LinearAlgebra.GaugeState GRWTSK.Algebra
private def B (n : ℕ) : ℚˣ := Units.mk0 (n + 1 : ℚ) (by positivity)
private def X (_ : ℕ) : ℚˣ := 1
example : gaugeState B X 1 = B 1 • X 1 := by
  apply Units.ext
  norm_num [gaugeState, B, X, smul_eq_mul]
