/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicDistanceSample
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicDistanceSampleControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["geometric block satisfies G(-t)=conj(G(t))",
   "symmetric triangular kernel is even",
   "signed lattice sample is bounded by norm sample",
   "reflected residue L-d has the same kernel norm as d",
   "cyclic kernel sample is bounded by norm sample at cyclic distance",
   "remaining factor-four work is finite regrouping by distance only"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicDistanceSampleControls
