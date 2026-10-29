/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonIntegerSeed

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Chebyshev.Checks.IntegerTaylorSeedControls

open GRWTSK.Analysis.Complex.IntegerTaylorPolynomial
open GRWTSK.Analysis.Complex.IntegerDyadicTrace
open GRWTSK.Analysis.Complex.RationalRoundedArithmetic

/-- Stage zero has the constant term, not an empty sum. -/
theorem stage_zero : numeratorZ 7 (2, -3) 0 = (1, 0) ∧ denominatorZ 7 0 = 1 := by
  norm_num [numeratorZ, denominatorZ]

/-- At w=i,D=2, three terms are 7/8+i/2. The factorial is indispensable. -/
theorem factorial_and_complex_sign :
    numeratorZ 2 (0, 1) 2 = (7, 4) ∧ denominatorZ 2 2 = 8 := by
  norm_num [numeratorZ, denominatorZ, powerZ, addZ, mulZ, scalePair]

theorem three_term_identity :
    QComplex.polynomial (argumentQ 2 (0, 1)) 3 = ⟨7 / 8, 1 / 2⟩ := by
  rw [polynomial_eq_decode 2 (by norm_num) (0, 1) 2]
  norm_num [decodeQ, numeratorZ, denominatorZ, powerZ, addZ, mulZ, scalePair]

/-- A negative component uses floor, not truncation towards zero. -/
theorem negative_floor_rejects_truncation :
    FloorWindow 5 (-7) (-2) ∧ ¬ FloorWindow 5 (-7) (-1) := by
  norm_num [FloorWindow]

/-- Equality belongs to exactly one floor cell and one ceiling cell. -/
theorem strict_window_boundaries :
    FloorWindow 5 10 2 ∧ ¬ FloorWindow 5 10 1 ∧
      CeilingWindow 5 10 2 ∧ ¬ CeilingWindow 5 10 3 := by
  norm_num [FloorWindow, CeilingWindow]

/-- Matching a rational value after a zero denominator cannot grant positivity. -/
theorem zero_denominator_excluded : ¬(0 < denominatorZ 0 1) := by
  norm_num [denominatorZ]

/-- Positive scalar rescaling of a common denominator need not normalize by gcd. -/
theorem unreduced_representation :
    argumentQ 2 (2, -2) = argumentQ 10 (10, -10) := by
  norm_num [argumentQ]

/-- Discarding the complete initial error's logarithm term changes its rounding cell. -/
theorem start_error_not_three :
    GRWTSK.RiemannHypothesis.ConcreteNewtonIntegerSeed.start.errorPart ≠ 3 := by
  norm_num [GRWTSK.RiemannHypothesis.ConcreteNewtonIntegerSeed.start]

end GRWTSK.NumberTheory.Chebyshev.Checks.IntegerTaylorSeedControls
