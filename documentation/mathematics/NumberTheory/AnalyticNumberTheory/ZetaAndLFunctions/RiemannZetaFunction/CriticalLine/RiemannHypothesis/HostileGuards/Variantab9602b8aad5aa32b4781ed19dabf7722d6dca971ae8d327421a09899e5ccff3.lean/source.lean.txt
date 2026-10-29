import FormalResearch.RiemannHypothesis.SourceHigherPrimePowerStorage

-- The omitted-cube source fixture is below the residual consumer scope.
example : Real.log (8 : ℝ) / 4 < 1 := by
  have h : Real.log (2 : ℝ) < 1 := by
    have hh := Real.log_lt_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
      (by norm_num : (2 : ℝ) ≠ 1)
    norm_num at hh
    exact hh
  have hlog : Real.log (8 : ℝ) = 3 * Real.log 2 := by
    simpa using Real.log_pow (2 : ℝ) 3
  rw [hlog]
  linarith

-- Unit-source full storage cannot be replaced by the visible square sum alone.
example {A : ℝ} (hA : 0 < A) :
    FormalResearch.RiemannHypothesis.SourceHigherPrimePowerStorage.higherSourceStorage A =
      FormalResearch.RiemannHypothesis.SourceHigherPrimePowerStorage.higherVisibleStorage A +
        (FormalResearch.RiemannHypothesis.SourceHigherPrimePowerCoefficients.higherBaseline -
          FormalResearch.RiemannHypothesis.SourceHigherPrimePowerStorage.higherVisibleBaseline A) :=
  FormalResearch.RiemannHypothesis.SourceHigherPrimePowerStorage.higherSourceStorage_padding hA
