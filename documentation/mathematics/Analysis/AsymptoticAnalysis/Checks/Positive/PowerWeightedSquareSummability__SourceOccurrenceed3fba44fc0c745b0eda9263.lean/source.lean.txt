import GRWTSK.Analysis.AsymptoticAnalysis.PowerWeightedSquareSummability

open GRWTSK.Analysis.Asymptotics.PowerWeightedSquareSummability

example (f : ℕ → ℝ) {C α q : ℝ}
    (hf0 : f 0 = 0)
    (hf : ∀ n : ℕ, 1 ≤ n → |f n| ≤ C * (n : ℝ) ^ α)
    (hexp : 2 * α - q < -1) :
    Summable (fun n : ℕ => f n ^ 2 * (n : ℝ) ^ (-q)) :=
  summable_sq_mul_rpow_of_abs_le_rpow f hf0 hf hexp

#print axioms GRWTSK.Analysis.Asymptotics.PowerWeightedSquareSummability.summable_sq_mul_rpow_of_abs_le_rpow
