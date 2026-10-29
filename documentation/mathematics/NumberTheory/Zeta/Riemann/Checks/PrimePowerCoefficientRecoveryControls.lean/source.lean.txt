/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerCoefficientRecovery
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PrimePowerCoefficientRecoveryControls

open GRWTSK.ArithmeticScale
open GRWTSK.RiemannHypothesis

def primeThree : PrimeIndex := ⟨3, by norm_num⟩

def threeCubedEvent : PrimePowerEvent where
  prime := primeThree
  exponent := 3
  exponent_pos := by norm_num

/-- log 3 is genuinely nonzero, so coefficient-to-weight recovery cannot divide
by a zero prime amplitude. -/
theorem threeCubed_mangoldt_nonzero :
    threeCubedEvent.mangoldtScale ≠ 0 :=
  threeCubedEvent.mangoldtScale_ne_zero

/-- A toy exact coefficient source demonstrates that the vertical coordinate is
the coefficient, not an independent geometric parameter. -/
def toyCoefficientSource : ExplicitFormulaPrimePowerCoefficient where
  sourceId := "toy-only"
  revision := "toy-only"
  normalization := "coefficient=5"
  coefficient := fun _ => 5

theorem toy_vertical_coordinate_is_five :
    (toyCoefficientSource.toWeight.packingPoint threeCubedEvent).y = 5 :=
  toyCoefficientSource.packingPoint_y_eq_coefficient threeCubedEvent

/-- Any competing toy weight giving coefficient five is forced to the same
quotient by log 3. -/
theorem toy_weight_is_unique
    (w : ℝ)
    (h : w * threeCubedEvent.mangoldtScale = 5) :
    w = 5 / threeCubedEvent.mangoldtScale :=
  toyCoefficientSource.testWeight_unique threeCubedEvent w h

end GRWTSK.RiemannHypothesis.Checks.PrimePowerCoefficientRecoveryControls
