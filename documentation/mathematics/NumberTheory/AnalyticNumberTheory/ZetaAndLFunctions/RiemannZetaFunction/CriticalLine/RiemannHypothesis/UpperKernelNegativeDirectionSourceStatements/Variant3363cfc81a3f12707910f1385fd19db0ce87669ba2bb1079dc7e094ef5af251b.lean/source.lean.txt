import FormalResearch.RiemannHypothesis.SourceComparison.UpperKernelNegativeDirection

section UpperKernelNegativeDirectionExactStatements
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourceComparison.UpperKernelNegativeDirection

example : (3 : ℝ) ≤ Real.log 32 := log_thirty_two_ge_three

example :
    23 ∈ Ioc (⌊Real.exp (Real.log (32 : ℝ))⌋₊ / 2) ⌊Real.exp (Real.log (32 : ℝ))⌋₊ ∧
    17 ∈ Ioc (⌊Real.exp (Real.log (32 : ℝ))⌋₊ / 2) ⌊Real.exp (Real.log (32 : ℝ))⌋₊ :=
  actual_upper_pair

example : SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 23) = 0 :=
  actual_diagonal_zero

example : 0 < SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 17) :=
  actual_offDiagonal_pos

example :
    SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 23) *
      SourceSampling.sourceSamplingKernel (Real.log 32) ((17 : ℝ) * 17) -
      SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 17) ^ 2 < 0 :=
  actual_pair_determinant_neg

example : ∃ u v : ℝ,
    u ^ 2 * SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 23) +
    2 * u * v * SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 17) +
    v ^ 2 * SourceSampling.sourceSamplingKernel (Real.log 32) ((17 : ℝ) * 17) = -1 :=
  actual_negative_direction

example : ¬∀ u v : ℝ,
    0 ≤ u ^ 2 * SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 23) +
      2 * u * v * SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 17) +
      v ^ 2 * SourceSampling.sourceSamplingKernel (Real.log 32) ((17 : ℝ) * 17) :=
  not_actual_pair_positiveSemidefinite

end UpperKernelNegativeDirectionExactStatements
