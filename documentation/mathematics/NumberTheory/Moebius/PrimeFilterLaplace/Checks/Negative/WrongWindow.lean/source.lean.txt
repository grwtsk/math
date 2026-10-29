import GRWTSK.NumberTheory.Moebius.PrimeFilterLaplace
open GRWTSK.RiemannHypothesis.CCC
example {f : ℝ → ℝ} (hf : Continuous f) (hf0 : f 0 = 0) (z : ℂ)
    {a T : ℝ} (ha : 0 ≤ a) (haT : a ≤ T) :
    noteWindowLaplace (causalShift a f) z T =
      Complex.exp (-z*a)*noteWindowLaplace f z T := by
  exact noteWindowLaplace_causalShift hf hf0 z ha haT
