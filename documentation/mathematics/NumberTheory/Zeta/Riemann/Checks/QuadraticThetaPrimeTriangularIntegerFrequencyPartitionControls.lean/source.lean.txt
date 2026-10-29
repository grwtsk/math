/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularIntegerFrequencyPartition
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularIntegerFrequencyPartitionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["positive integer-frequency coefficients match (N-d)/N",
   "negative coefficients match by symmetry",
   "zero coefficient is exactly one",
   "endpoint coefficients at plus/minus N vanish",
   "only the finite Icc(-N,N) support partition identity remains"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularIntegerFrequencyPartitionControls
