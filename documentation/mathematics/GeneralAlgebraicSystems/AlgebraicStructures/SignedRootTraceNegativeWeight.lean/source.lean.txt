/- Intentionally rejected: real nodes do not permit replacing negative weights
by positive ones. The intended mismatch is the false bound 0 ≤ -1. -/
import GRWTSK.Algebra.Polynomial.SignedRootTrace
import Mathlib.Tactic.NormNum

open Polynomial Complex GRWTSK.Polynomial.SignedRootTrace

example : 0 ≤ (squareTrace {0} (fun _ => -1) (1 : Polynomial ℝ)).re := by
  have hv : squareTrace {0} (fun _ => -1) (1 : Polynomial ℝ) = -1 := by
    simp [squareTrace]
  rw [hv]
  change (0 : ℝ) ≤ -1
  exact (show (0 : ℝ) ≤ 1 by norm_num)
