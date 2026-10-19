import Mathematics.Polynomial.Potential
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Topology.Algebra.Polynomial

/-!
# Cubic interval integration

The endpoint difference and the measure-theoretic interval integral are
distinct definitions connected by the fundamental theorem of calculus.
-/

namespace Mathematics.Polynomial

open scoped Interval

/-- Exact endpoint difference of the canonical cubic potential. -/
noncomputable def cubicPotentialDifference
    (a b c d lo hi : ℝ) : ℝ :=
  (cubicPotential a b c d).eval hi -
    (cubicPotential a b c d).eval lo

@[simp] theorem cubicPotentialDifference_self
    (a b c d x : ℝ) :
    cubicPotentialDifference a b c d x x = 0 := by
  simp [cubicPotentialDifference]

/-- Endpoint differences compose over adjacent intervals. -/
theorem cubicPotentialDifference_trans
    (a b c d first middle last : ℝ) :
    cubicPotentialDifference a b c d first middle +
        cubicPotentialDifference a b c d middle last =
      cubicPotentialDifference a b c d first last := by
  simp only [cubicPotentialDifference]
  ring

/-- The genuine interval integral equals the endpoint difference. -/
theorem intervalIntegral_cubic
    (a b c d lo hi : ℝ) :
    (∫ x in lo..hi, (cubic a b c d).eval x) =
      cubicPotentialDifference a b c d lo hi := by
  rw [cubicPotentialDifference]
  apply intervalIntegral.integral_eq_sub_of_hasDerivAt
  · intro x _
    exact hasDerivAt_cubicPotential a b c d x
  · exact (cubic a b c d).continuous.intervalIntegrable lo hi

end Mathematics.Polynomial
