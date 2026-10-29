/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.CompactBoundaryCollar
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRealAxisBase

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Checks.RealAxisMellin

open CriticalStripHeightDescent

example (t : ℝ) : 0 ≤ realFractionalKernel t := realFractionalKernel_nonneg t
example (t : ℝ) : ‖fractionalKernel t‖ ≤ 1 := fractionalKernel_norm_le_one t

example {s : ℂ} (hs : 0 < s.re) : MellinConvergent fractionalKernel (-s) :=
  fractionalMellin_convergent hs

example {s : ℂ} (hs : 0 < s.re) :
    DifferentiableAt ℂ fractionalMellin s := fractionalMellin_differentiableAt hs

example {s : ℂ} (hs : 1 < s.re) :
    riemannZeta s = s * ∫ t : ℝ in Set.Ioi 1,
      (⌊t⌋₊ : ℂ) * (t : ℂ) ^ (-(s + 1)) := zeta_eq_floor_integral hs

example {s : ℂ} (hs : 0 < s.re) :
    poleNormalizedZeta s = s - s * (s - 1) * fractionalMellin s :=
  poleNormalized_eq_fractional hs

example {s : ℝ} (hs : 0 < s) (hs1 : s ≤ 1) :
    s ≤ (poleNormalizedZeta (s : ℂ)).re := real_le_poleNormalized_re hs hs1

example {s : ℝ} (hs : 0 < s) (hs1 : s < 1) :
    (riemannZeta (s : ℂ)).re < 0 :=
  riemannZeta_re_neg_on_real_critical_interval hs hs1

example {z : ℂ} (hz : NontrivialZetaZero z) : z.im ≠ 0 :=
  nontrivialZetaZero_im_ne_zero hz

-- These two declarations have NO real-axis supplier or RH premise.
example : WindowRH 0 := windowRH_zero
example : ∃ η : ℝ, 0 < η ∧ ∀ z : ℂ,
    |ZetaCommutatorRoot.root.heightAt z| ≤ η → ¬ NontrivialZetaZero z :=
  exists_positive_height_without_target_zeros

example : poleNormalizedZeta 0 = (1 / 2 : ℂ) := poleNormalizedZeta_zero
example : poleNormalizedZeta 1 = 1 := poleNormalizedZeta_one

-- The global conclusion STILL requires every source-bound interior cover.
example
    (covers : ∀ N m : ℕ, FiniteVariationCover poleNormalizedZeta
      (rightInteriorShell N m (selectedRightBoundaryCollar N).width)) :
    _root_.RiemannHypothesis := rh_of_selected_interior_covers covers

end GRWTSK.RiemannHypothesis.Checks.RealAxisMellin
