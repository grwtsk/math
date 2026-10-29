import GRWTSK.Analysis.FiniteSums.WeightedDegreeComparison

open GRWTSK.Analysis.FiniteSums.WeightedDegreeComparison

example : weighted 2 0 1 = -(1 : ℝ) / 4 := by
  rw [weighted_eq 2 (by decide)]
  norm_num

example : unweighted 2 0 1 = -(1 : ℝ) / 10 := by
  rw [unweighted_eq 2 (by decide)]
  norm_num

example (B : ℝ) : ∃ Q : ℝ, B < Q ∧ -Q / 10 ≤ unweighted 2 0 Q := by
  convert unweighted_no_upper_bound 2 (by decide) B using 1
  norm_num

example (n : ℕ) (hn : 1 < n) (D Q E : ℝ)
    (h : -Q / (2 * (2 * (n : ℝ) + 1)) ≤ weighted n D Q + E) :
    Q ≤ (((n : ℝ) + 1) / 2 * D + E) /
      (((n : ℝ) + 1) / 12 - 1 / (2 * (2 * (n : ℝ) + 1))) :=
  weighted_upper_bound n hn D Q E h
