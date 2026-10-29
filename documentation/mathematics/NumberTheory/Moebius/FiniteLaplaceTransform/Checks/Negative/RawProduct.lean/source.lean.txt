import GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform
open GRWTSK.RiemannHypothesis.CCC
example (s : ℂ) : pickupDirichletPrefix 3 s =
    (1-Complex.exp (-s*Real.log 2))*(1-Complex.exp (-s*Real.log 3)) := by
  exact cutoff_three_not_raw_product s
