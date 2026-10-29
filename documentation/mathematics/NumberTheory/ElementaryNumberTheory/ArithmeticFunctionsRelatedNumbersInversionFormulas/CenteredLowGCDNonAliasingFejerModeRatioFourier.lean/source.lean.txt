/- Copyright (c) 2026 grwtsk contributors. MIT. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerModeRatioCore
import Mathlib.Analysis.Fourier.ZMod
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

theorem fourier_periodFourX_lattice_eq_pow
    {X : ℕ} (hX : 0 < X)
    (k : ℤ) (r : ℕ) :
    fourier k
        ((((r : ℝ) /
          ((fejerOctavePeriod X : ℕ) : ℝ))) :
          AddCircle (1 : ℝ)) =
      (periodFourXModeRatio X k) ^ r := by
  rw [fourier_coe_apply]
  unfold periodFourXModeRatio
  rw [← Complex.exp_nat_mul]
  have hLc : ((fejerOctavePeriod X : ℕ) : ℂ) ≠ 0 := by
    unfold fejerOctavePeriod
    exact_mod_cast (by omega : (4 * X : ℕ) ≠ 0)
  congr 1
  push_cast
  field_simp [hLc]
  ring

end GRWTSK.RiemannHypothesis
