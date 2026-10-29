/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicUnitSupport
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicUnitSupportControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["unit-shift error support is explicit as a finite ZMod filter",
   "each changed residue contributes exactly one to L1",
   "unit translation L1 equals support cardinality exactly",
   "unit bound reduces to support card <= 2",
   "full translation-cardinality theorem reduces to the same two-boundary support claim"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicUnitSupportControls
