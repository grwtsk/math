/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularPairPartition
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularPairPartitionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["autocorrelation pair square is explicit",
   "zero/positive/negative offset regions are pairwise disjoint and cover the square",
   "any pair sum decomposes into the three regions",
   "G_N*conj(G_N) is exactly the pair-square sum",
   "remaining step is finite reindexing of positive/negative regions by offset"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularPairPartitionControls
