import GRWTSK.Logic.FiniteCoverage
open GRWTSK.Logic.FiniteCoverage
example : ∃ P : ℝ → Prop, P 0 ∧ P 1 ∧ (∀ x ∈ Set.Icc (0 : ℝ) 1, P x) := endpoints_do_not_cover_interval
