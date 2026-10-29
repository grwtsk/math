import GRWTSK.Analysis.IntervalReflection
open GRWTSK.Analysis.IntervalReflection MeasureTheory
example (a b : ℝ) (f : ℝ → ℝ) :
    (∫ t in a..b, f (intervalReflection a b t) ∂Measure.dirac a) = (∫ t in a..b, f t ∂Measure.dirac a) :=
  integral_reflection a b f
