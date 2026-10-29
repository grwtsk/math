import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Tactic

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

theorem scalar_mode_ratio_bound {A : ℝ} (hA : 3 ≤ A) (n : ℝ) :
    n ^ 2 * (2 * A * n ^ 2 - 3) / (2 * A - 3) ≤ 2 * n ^ 4 := by
  apply (div_le_iff₀ (by linarith : (0 : ℝ) < 2 * A - 3)).mpr
  have h : 0 ≤ 2 * (A - 3) * n ^ 4 + 3 * n ^ 2 := by
    positivity
  nlinarith only [h]

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
