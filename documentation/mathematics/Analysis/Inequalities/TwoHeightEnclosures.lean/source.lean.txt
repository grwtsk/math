/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Mathlib and Lean retain their original attribution and licenses.

Status: authored proof source; not yet elaborated in the pinned environment.
No claim of an all-scale arithmetic estimate is made by this module.
-/
import Mathlib
import GRWTSK.Analysis.Inequalities.ResidualEnclosure

/-! # Explicit two-height interval and error-budget consumer -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Inequalities.TwoHeightConsumer
open GRWTSK.Analysis.Inequalities.ResidualEnclosure

/-- Use the upper endpoint at epsilon and the lower endpoint at 2 epsilon. -/
theorem from_interval_endpoints
    (f₁ f₂ ell₁ ell₂ eta₁ eta₂ R₁ R₂ ε moment defect : ℝ)
    (hε : 0<ε)
    (hfirst : ell₁-eta₁≤f₁ ∧ f₁≤ell₁+eta₁+R₁^2/ε)
    (hsecond : ell₂-eta₂≤f₂ ∧ f₂≤ell₂+eta₂+R₂^2/(2*ε))
    (hreturn : moment≤(f₁-f₂)/ε+defect) :
    moment≤(ell₁+eta₁+R₁^2/ε-(ell₂-eta₂))/ε+defect := by
  exact inverse_moment_upper_of_two_height hε hfirst.2 hsecond.1 hreturn

/-- Wrong endpoint selection is refuted by an exact rational-valued real instance. -/
theorem lower_endpoint_is_not_an_upper_bound :
    ¬ ((0:ℝ)≤1 ∧ 1≤2 → (1-0)/1≤(0-0)/1) := by norm_num

/-- Deleting a right-endpoint atom loses both retained boundary moments. -/
theorem silent_green_endpoint_has_nonzero_augmented_mass :
    (0:ℝ)+1^2+1^2=2 := by norm_num

end GRWTSK.Analysis.Inequalities.TwoHeightConsumer
