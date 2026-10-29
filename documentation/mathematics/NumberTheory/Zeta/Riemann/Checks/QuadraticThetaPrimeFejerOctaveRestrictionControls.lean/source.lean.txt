/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerOctaveRestriction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerOctaveRestrictionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["arithmetic octave L1 is reindexed through the endpoint-aware residue equivalence",
   "sharp and smoothed arithmetic weights are replaced by their cyclic counterparts",
   "octave residue subtype sum is bounded by the full cyclic sum by nonnegativity",
   "OctaveL1LeCyclicL1Claim is discharged",
   "no arithmetic indexing gap remains before first-moment propagation"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerOctaveRestrictionControls
