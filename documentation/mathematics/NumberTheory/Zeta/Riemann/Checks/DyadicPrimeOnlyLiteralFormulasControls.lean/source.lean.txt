/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyLiteralFormulas
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicPrimeOnlyLiteralFormulasControls

open GRWTSK.RiemannHypothesis
open Chebyshev

theorem endpoint_sum_is_theta_octave_discrepancy
    {X : ℕ} (hX : 0 < X) :
    primeOnlyMass0 X + primeOnlyMass1 X =
      (θ (((2 * X : ℕ) : ℝ)) - θ ((X : ℕ) : ℝ)) /
        (X : ℝ) - 1 :=
  primeOnlyMass0_add_mass1_eq_theta_increment hX

end GRWTSK.RiemannHypothesis.Checks.DyadicPrimeOnlyLiteralFormulasControls
