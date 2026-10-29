# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerMobiusLogCongruenceReductionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac5355df98cd1497e7d31e20cffe095ab13a681b` · SHA-256 `91439807c7989a122e7d8242c769dfdc2f66eb4487dc611791c11d893865df5b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogCongruenceReduction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerMobiusLogCongruenceReductionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["Lambda is expanded exactly as the Möbius-log Dirichlet convolution",
   "the centering minus one is retained as a distinguished anchor index",
   "the augmented finite sum equals the centered von Mangoldt atom",
   "weighted augmented atoms equal the existing Fejer-weighted centered von Mangoldt atoms",
   "genuine divisor witnesses at n and n+h force gcd(d,e) to divide h",
   "anchor channels remain in the same finite pair sum and are not estimated separately",
   "the compatibility-filtered pair set equals the actual augmented product index",
   "the compatible pair block equals the product of centered von Mangoldt atoms",
   "the Möbius-log congruence shift aggregate equals the previous von Mangoldt aggregate",
   "the two supplier propositions are exactly equivalent",
   "naive channelwise pair counting has exponent two, above the three-halves target",
   "the centered Möbius-log congruence estimate remains open",
   "no threshold descent or Riemann Hypothesis result is supplied"]

theorem exactSupplierEquivalence :
    SevenEighthsBoundaryMinimalMobiusLogCongruenceBound ↔
      SevenEighthsBoundaryMinimalVonMangoldtShiftCorrelationBound :=
  mobiusLogCongruenceBound_iff_vonMangoldtShiftCorrelationBound

theorem genuineDivisorCompatibility
    {n h : ℕ}
    {p q : ℕ × ℕ}
    (hp : p ∈ n.divisorsAntidiagonal)
    (hq : q ∈ (n + h).divisorsAntidiagonal) :
    Nat.gcd p.1 q.1 ∣ h :=
  gcd_dvd_shift_of_shiftDivisorCongruence
    ⟨fst_dvd_of_mem_divisorsAntidiagonal hp,
      fst_dvd_of_mem_divisorsAntidiagonal hq⟩

def remainingArithmeticFrontier : Prop :=
  SevenEighthsBoundaryMinimalMobiusLogCongruenceBound

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerMobiusLogCongruenceReductionControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba05b09883486b43de5cfb613ba3182f3ddae0edcc1c6568862a63013428077c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogCongruenceReductionControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
