/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReductionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["non-squarefree Mobius divisor moduli contribute zero",
   "the centered anchor remains present with modulus one",
   "the squarefree-active centered sum equals Lambda(n)-1",
   "the squarefree-active pair block equals the previous full divisor block",
   "every active attached modulus is positive and squarefree",
   "the active pair gcd is positive, squarefree, and divides the shift",
   "dividing both moduli by their gcd produces coprime primitive moduli",
   "both primitive factors and their product remain squarefree",
   "the product of attached moduli is gcd^2 times the primitive product",
   "active pairs are grouped exactly by squarefree divisors g of the shift",
   "the grouped pair block equals the previous LCM-progression block",
   "the grouped positive-shift aggregate equals the previous aggregate",
   "the new supplier is exactly equivalent to the previous supplier",
   "the exact X^(3/2) log^4 squarefree-gcd stratified bound remains open",
   "no threshold descent or Riemann Hypothesis result is supplied"]

theorem squarefreeSupportReductionClosed
    (n : ℕ) :
    centeredMobiusLogSquarefreeDivisorIndexSum n =
      centeredVonMangoldtAtom n :=
  centeredMobiusLogSquarefreeDivisorIndexSum_eq_centeredVonMangoldt n

theorem primitiveCoprimeReductionClosed
    {n h : ℕ} {uv : Option ℕ × Option ℕ}
    (huv :
      uv ∈ centeredMobiusLogSquarefreeDivisorPairIndexSet n h) :
    Nat.Coprime
      (centeredMobiusLogPairPrimitiveLeft uv)
      (centeredMobiusLogPairPrimitiveRight uv) :=
  centeredMobiusLogPairPrimitive_coprime_of_mem huv

def remainingArithmeticFrontier : Prop :=
  SevenEighthsBoundaryMinimalMobiusLogSquarefreeGCDBound

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReductionControls
