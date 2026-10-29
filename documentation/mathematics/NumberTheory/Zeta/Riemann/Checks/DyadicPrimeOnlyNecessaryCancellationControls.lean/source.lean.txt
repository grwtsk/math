/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyNecessaryCancellation
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicPrimeOnlyNecessaryCancellationControls

def hardPrimeChannels : List String :=
  ["sum log(p)/p - log 2",
   "(theta(2X)-theta(X))/X - 1",
   "k=-1 prime weighted DFT coordinate",
   "k=+1 prime weighted DFT coordinate"]

end GRWTSK.RiemannHypothesis.Checks.DyadicPrimeOnlyNecessaryCancellationControls
