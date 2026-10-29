import Mathematics.GammaBridge.ParameterProfile
import Mathlib.Analysis.Normed.Module.Basic

/-! # Certified finite bridge approximation -/

namespace Mathematics.GammaBridge

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

structure CertifiedApproximation (bridge : Exact E) where
  compiled : ℝ → E
  errorBound : ℝ
  errorBoundNonnegative : 0 ≤ errorBound
  pointwiseError :
    ∀ time ∈ Set.Icc (0 : ℝ) 1,
      ‖compiled time - bridge.path time‖ ≤ errorBound

end Mathematics.GammaBridge
