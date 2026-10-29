/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction
import Mathlib.Tactic

set_option autoImplicit false

open MeasureTheory

/-!
# A three-square-tent correction for Bombieri's two moments

The genuine stage-two and stage-three canonical tents have independent
ordinary and reciprocal moments. The preceding rank-obstruction file
proves that no nonzero combination of just those two tents can have both
moments zero.

Here a third **actual source tent** (stage four) is included. The
cofactor combination of the three source moment columns has zero
ordinary and reciprocal integrals. The stage-two/stage-three moment
determinant is strictly positive by the preceding theorem, so the
stage-four coefficient is nonzero. Evaluation at the interior point
x = 20, where the first two tents vanish and the third is positive,
shows that the resulting actual function is nonzero.

This is an unconditional construction *relative to the imported
square-tent and Lebesgue-integral source theorems*, not a new axiom or
an assumed cancellation record. It proves ONLY the two moment
conditions, and not the full piecewise-C1/decay/admissibility class
of Bombieri's Weil criterion. It does not preserve the old arithmetic
Gram, supply the Hermitian classical Weil form, a dense realization,
the signed normalization, or an RH implication.

Source-only draft pending pinned Lean 4.33.0/Mathlib compilation,
fresh kernel checking and transitive trust audit.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentCorrection

open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentObstruction
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction
open GRWTSK.Analysis.Real.TentWeight
open GRWTSK.NumberTheory.Chebyshev.TentSource

/-- The first cofactor of the actual 2-by-3 source moment matrix. -/
noncomputable def cofactorZero : ℂ :=
  (realOrdinaryMoment 2 : ℂ) * (realMultiplicativeMoment 1 : ℂ) -
    (realOrdinaryMoment 1 : ℂ) * (realMultiplicativeMoment 2 : ℂ)

/-- The second cofactor of the actual 2-by-3 source moment matrix. -/
noncomputable def cofactorOne : ℂ :=
  (realOrdinaryMoment 0 : ℂ) * (realMultiplicativeMoment 2 : ℂ) -
    (realOrdinaryMoment 2 : ℂ) * (realMultiplicativeMoment 0 : ℂ)

/-- Third cofactor: the already source-proved nonzero two-tent determinant. -/
noncomputable def cofactorTwo : ℂ :=
  (realOrdinaryMoment 1 : ℂ) * (realMultiplicativeMoment 0 : ℂ) -
    (realOrdinaryMoment 0 : ℂ) * (realMultiplicativeMoment 1 : ℂ)

theorem cofactorTwo_eq_twoTentMomentDeterminant :
    cofactorTwo = (twoTentMomentDeterminant : ℂ) := by
  unfold cofactorTwo twoTentMomentDeterminant
  push_cast
  ring

theorem cofactorTwo_ne_zero : cofactorTwo ≠ 0 := by
  rw [cofactorTwo_eq_twoTentMomentDeterminant]
  exact Complex.ofReal_ne_zero.mpr
    (ne_of_gt twoTentMomentDeterminant_pos)

/-- Algebraic cancellation in the actual ordinary-moment column. -/
theorem cofactor_ordinary_balance :
    cofactorZero * (realOrdinaryMoment 0 : ℂ) +
      cofactorOne * (realOrdinaryMoment 1 : ℂ) +
      cofactorTwo * (realOrdinaryMoment 2 : ℂ) = 0 := by
  unfold cofactorZero cofactorOne cofactorTwo
  ring

/-- Algebraic cancellation in the actual reciprocal-moment column. -/
theorem cofactor_multiplicative_balance :
    cofactorZero * (realMultiplicativeMoment 0 : ℂ) +
      cofactorOne * (realMultiplicativeMoment 1 : ℂ) +
      cofactorTwo * (realMultiplicativeMoment 2 : ℂ) = 0 := by
  unfold cofactorZero cofactorOne cofactorTwo
  ring

/-- Literal complex linear combination of the source's first three square
tents; no independent fitted test functions are substituted. -/
noncomputable def correctedThreeTent (x : ℝ) : ℂ :=
  (cofactorZero * canonicalTentComplex 0 x +
    cofactorOne * canonicalTentComplex 1 x) +
    cofactorTwo * canonicalTentComplex 2 x

/-- The actual ordinary Lebesgue integral equals its three-term
source-coefficient expansion. -/
theorem correctedThreeTent_ordinaryMoment_eq :
    bombieriOrdinaryMoment correctedThreeTent =
      cofactorZero * (realOrdinaryMoment 0 : ℂ) +
        cofactorOne * (realOrdinaryMoment 1 : ℂ) +
        cofactorTwo * (realOrdinaryMoment 2 : ℂ) := by
  have h0 := (canonicalTentComplex_integrableOn 0).const_mul cofactorZero
  have h1 := (canonicalTentComplex_integrableOn 1).const_mul cofactorOne
  have h2 := (canonicalTentComplex_integrableOn 2).const_mul cofactorTwo
  unfold bombieriOrdinaryMoment correctedThreeTent
  have hadd := integral_add (h0.add h1) h2
  have hadd01 := integral_add h0 h1
  simp only [Pi.add_apply] at hadd hadd01
  rw [hadd, hadd01]
  rw [integral_const_mul, integral_const_mul, integral_const_mul]
  change cofactorZero * bombieriOrdinaryMoment (canonicalTentComplex 0) +
      cofactorOne * bombieriOrdinaryMoment (canonicalTentComplex 1) +
      cofactorTwo * bombieriOrdinaryMoment (canonicalTentComplex 2) = _
  rw [bombieriOrdinaryMoment_canonicalTent_eq 0,
    bombieriOrdinaryMoment_canonicalTent_eq 1,
    bombieriOrdinaryMoment_canonicalTent_eq 2]
  rfl

/-- The actual reciprocal-moment integral has exactly the matching
linear expansion. Division is integrable by the previous rank source,
which proved the tent supports stay away from zero. -/
theorem correctedThreeTent_multiplicativeMoment_eq :
    bombieriMultiplicativeMoment correctedThreeTent =
      cofactorZero * (realMultiplicativeMoment 0 : ℂ) +
        cofactorOne * (realMultiplicativeMoment 1 : ℂ) +
        cofactorTwo * (realMultiplicativeMoment 2 : ℂ) := by
  have h0 := (canonicalTentComplex_div_integrableOn 0).const_mul cofactorZero
  have h1 := (canonicalTentComplex_div_integrableOn 1).const_mul cofactorOne
  have h2 := (canonicalTentComplex_div_integrableOn 2).const_mul cofactorTwo
  unfold bombieriMultiplicativeMoment correctedThreeTent
  simp_rw [add_div, mul_div_assoc]
  have hadd := integral_add (h0.add h1) h2
  have hadd01 := integral_add h0 h1
  simp only [Pi.add_apply] at hadd hadd01
  rw [hadd, hadd01]
  rw [integral_const_mul, integral_const_mul, integral_const_mul]
  change cofactorZero * bombieriMultiplicativeMoment (canonicalTentComplex 0) +
      cofactorOne * bombieriMultiplicativeMoment (canonicalTentComplex 1) +
      cofactorTwo * bombieriMultiplicativeMoment (canonicalTentComplex 2) = _
  rw [bombieriMultiplicativeMoment_canonicalTent_eq 0,
    bombieriMultiplicativeMoment_canonicalTent_eq 1,
    bombieriMultiplicativeMoment_canonicalTent_eq 2]

/-- Both source-stated Bombieri moments vanish for the actual, corrected
three-tent function. No full classical test-class admissibility is claimed. -/
theorem correctedThreeTent_zeroMoments :
    BombieriZeroMomentConditions correctedThreeTent := by
  constructor
  · change bombieriMultiplicativeMoment correctedThreeTent = 0
    exact correctedThreeTent_multiplicativeMoment_eq.trans
      cofactor_multiplicative_balance
  · exact correctedThreeTent_ordinaryMoment_eq.trans
      cofactor_ordinary_balance

/-- At x = 20 only the stage-four canonical tent survives. Its coefficient
is the nonzero stage-two/stage-three moment determinant. -/
theorem correctedThreeTent_ne_zero :
    correctedThreeTent ≠ (0 : ℝ → ℂ) := by
  have h0 : canonicalTentComplex 0 (20 : ℝ) = 0 := by
    norm_num [canonicalTentComplex, canonicalTentReal, tent,
      squareCenter, squareRadius]
  have h1 : canonicalTentComplex 1 (20 : ℝ) = 0 := by
    norm_num [canonicalTentComplex, canonicalTentReal, tent,
      squareCenter, squareRadius]
  have h2 : canonicalTentComplex 2 (20 : ℝ) ≠ 0 := by
    norm_num [canonicalTentComplex, canonicalTentReal, tent,
      squareCenter, squareRadius]
  intro heq
  have hv : correctedThreeTent (20 : ℝ) = 0 := by
    have h := congrArg (fun f : ℝ → ℂ => f (20 : ℝ)) heq
    simpa using h
  have hproduct : cofactorTwo * canonicalTentComplex 2 (20 : ℝ) ≠ 0 :=
    mul_ne_zero cofactorTwo_ne_zero h2
  apply hproduct
  simpa [correctedThreeTent, h0, h1] using hv

/-- The two-moment obstruction is sharp at the level of one actual
source-family test: two canonical tents alone cannot produce a nonzero
zero-moment function, whereas the first three do. -/
theorem exists_nonzero_threeTent_zeroMoments :
    ∃ g : ℝ → ℂ, g ≠ 0 ∧ BombieriZeroMomentConditions g :=
  ⟨correctedThreeTent, correctedThreeTent_ne_zero,
    correctedThreeTent_zeroMoments⟩

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentCorrection
