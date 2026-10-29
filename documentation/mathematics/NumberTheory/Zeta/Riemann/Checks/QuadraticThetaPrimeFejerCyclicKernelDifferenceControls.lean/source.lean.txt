/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicKernelDifference
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicKernelDifferenceControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["signed sampled kernel is periodic with arbitrary lattice period",
   "equal ZMod residues give equal signed sampled-kernel values",
   "cyclic residue difference equals integer difference modulo 4X",
   "ArithmeticCyclicKernelDifferenceClaim is discharged",
   "arithmetic/cyclic prefix bridge is reduced to finite reindexing only"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicKernelDifferenceControls
