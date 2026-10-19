import FormalResearch.RiemannHypothesis.SourceComparison.SmallDivisorBudget

open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

example (x : ℝ) (hx : 0 ≤ x) :
    |∑ n ∈ Finset.Icc 1 ⌊x⌋₊, (ArithmeticFunction.moebius n : ℝ)| ≤ x := by
  calc
    _ ≤ ∑ n ∈ Finset.Icc 1 ⌊x⌋₊, |(ArithmeticFunction.moebius n : ℝ)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _n ∈ Finset.Icc 1 ⌊x⌋₊, (1 : ℝ) := by
      apply Finset.sum_le_sum
      intro n _
      exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := n))
    _ = (⌊x⌋₊ : ℝ) := by simp
    _ ≤ x := Nat.floor_le hx

example (A : ℝ) (hA : 1 ≤ A) (m : ℝ) (hm : |m| ≤ A ^ 2) :
    |m * SourceSampling.sourceSamplingKernel A (A ^ 2)| ≤
      8 * A + 4 * Real.sqrt (65 / 3) := by
  have hA0 : 0 < A := by linarith
  have hp : |SourceSampling.sourceSamplingKernel A (A ^ 2)| ≤
      (8 + 4 * Real.sqrt (65 / 3) / A) / A := by
    simpa only [Real.sqrt_sq hA0.le] using
      SourceSampling.sourceSamplingKernel_abs_le A (A ^ 2) hA (sq_pos_of_pos hA0)
  rw [abs_mul]
  calc
    _ ≤ A ^ 2 * ((8 + 4 * Real.sqrt (65 / 3) / A) / A) :=
      mul_le_mul hm hp (abs_nonneg _) (sq_nonneg A)
    _ = _ := by field_simp
