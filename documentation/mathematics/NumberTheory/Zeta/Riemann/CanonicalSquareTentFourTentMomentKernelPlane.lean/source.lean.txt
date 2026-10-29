/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentKernelLine
import Mathlib.Tactic

set_option autoImplicit false

open MeasureTheory

/-!
# An exact two-dimensional kernel from four literal Bombieri square tents

Bombieri's two displayed vanishing moments are used on the *actual*
normalized stage-two through stage-five canonical square tents. The
already source-derived stage-two/stage-three moment determinant is nonzero.
For each of the two additional stages, an explicit cofactor vector
satisfies both moment equations, and those vectors are independent.
The full four-coordinate moment kernel is their complex span. The
ordinary and reciprocal rows are also identified with actual
positive-half-line Lebesgue integrals of the corresponding physical
four-tent function.

This is a SOURCE_DRAFT, not a Lean-accepted theorem. The source
does not prove admission to the entire classical Weil test class,
the signed polarized Guinand--Weil pairing, zero-density, density
of test functions or RH. Keep this leaf outside GRWTSK.lean until
a pinned warning-clean build, fresh kernel and full axiom replay.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFourTentMomentKernelPlane

open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentObstruction
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentCorrection
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization

/-- Actual ordinary moment of one canonical stage, complex-embedded. -/
noncomputable def ordinaryAt (j : ℕ) : ℂ :=
  (realOrdinaryMoment j : ℂ)

/-- Actual reciprocal / multiplicative moment of the same physical stage. -/
noncomputable def reciprocalAt (j : ℕ) : ℂ :=
  (realMultiplicativeMoment j : ℂ)

/-- Cofactor for coefficient zero when the extra stage is j. -/
noncomputable def extraCofactorZero (j : ℕ) : ℂ :=
  ordinaryAt j * reciprocalAt 1 - ordinaryAt 1 * reciprocalAt j

/-- Cofactor for coefficient one when the extra stage is j. -/
noncomputable def extraCofactorOne (j : ℕ) : ℂ :=
  ordinaryAt 0 * reciprocalAt j - ordinaryAt j * reciprocalAt 0

/-- The genuine ordinary moment row on the first four source stages. -/
noncomputable def fourTentOrdinaryRow (u : Combination 3) : ℂ :=
  (u (0 : Fin 4) * ordinaryAt 0 + u (1 : Fin 4) * ordinaryAt 1) +
    u (2 : Fin 4) * ordinaryAt 2 + u (3 : Fin 4) * ordinaryAt 3

/-- The genuine reciprocal moment row on the same coefficient vector. -/
noncomputable def fourTentReciprocalRow (u : Combination 3) : ℂ :=
  (u (0 : Fin 4) * reciprocalAt 0 + u (1 : Fin 4) * reciprocalAt 1) +
    u (2 : Fin 4) * reciprocalAt 2 + u (3 : Fin 4) * reciprocalAt 3

/-- Cofactor vector with pivot in the actual stage-four slot (index 2).
Its coefficient in the other extra stage is exactly zero. -/
noncomputable def stageFourKernelVector : Combination 3 :=
  fun i => if i.1 = 0 then extraCofactorZero 2 else
    if i.1 = 1 then extraCofactorOne 2 else
      if i.1 = 2 then cofactorTwo else 0

/-- Cofactor vector with pivot in the actual stage-five slot (index 3). -/
noncomputable def stageFiveKernelVector : Combination 3 :=
  fun i => if i.1 = 0 then extraCofactorZero 3 else
    if i.1 = 1 then extraCofactorOne 3 else
      if i.1 = 3 then cofactorTwo else 0

/-- Cofactor cancellation for the actual ordinary moments, stage four. -/
theorem stageFour_ordinary_zero : fourTentOrdinaryRow stageFourKernelVector = 0 := by
  simp [fourTentOrdinaryRow, stageFourKernelVector, extraCofactorZero,
    extraCofactorOne, ordinaryAt, reciprocalAt, cofactorTwo]
  <;> ring

/-- Cofactor cancellation for the actual reciprocal moments, stage four. -/
theorem stageFour_reciprocal_zero : fourTentReciprocalRow stageFourKernelVector = 0 := by
  simp [fourTentReciprocalRow, stageFourKernelVector, extraCofactorZero,
    extraCofactorOne, ordinaryAt, reciprocalAt, cofactorTwo]
  <;> ring

/-- Cofactor cancellation for the actual ordinary moments, stage five. -/
theorem stageFive_ordinary_zero : fourTentOrdinaryRow stageFiveKernelVector = 0 := by
  simp [fourTentOrdinaryRow, stageFiveKernelVector, extraCofactorZero,
    extraCofactorOne, ordinaryAt, reciprocalAt, cofactorTwo]
  <;> ring

/-- Cofactor cancellation for the actual reciprocal moments, stage five. -/
theorem stageFive_reciprocal_zero : fourTentReciprocalRow stageFiveKernelVector = 0 := by
  simp [fourTentReciprocalRow, stageFiveKernelVector, extraCofactorZero,
    extraCofactorOne, ordinaryAt, reciprocalAt, cofactorTwo]
  <;> ring

/-- The witnesses are linearly independent in the explicit two-vector
sense. This avoids introducing any unverified basis/rank transfer. -/
theorem fourTentKernelWitnesses_independent
    (a b : ℂ)
    (h : (fun i : Fin 4 =>
      a * stageFourKernelVector i + b * stageFiveKernelVector i) =
        (0 : Combination 3)) :
    a = 0 ∧ b = 0 := by
  have h2 : a * cofactorTwo = 0 := by
    have hv := congrArg (fun u : Combination 3 => u (2 : Fin 4)) h
    simpa [stageFourKernelVector, stageFiveKernelVector] using hv
  have h3 : b * cofactorTwo = 0 := by
    have hv := congrArg (fun u : Combination 3 => u (3 : Fin 4)) h
    simpa [stageFourKernelVector, stageFiveKernelVector] using hv
  exact ⟨(mul_eq_zero.mp h2).resolve_right cofactorTwo_ne_zero,
    (mul_eq_zero.mp h3).resolve_right cofactorTwo_ne_zero⟩

/-- All two-moment kernel vectors become combinations of the two
explicit cofactor witnesses after multiplication by the genuine
nonzero two-tent determinant. No division is hidden in this theorem. -/
theorem scaled_decomposition_of_zero_rows
    (u : Combination 3)
    (hOrd : fourTentOrdinaryRow u = 0)
    (hRec : fourTentReciprocalRow u = 0) :
    ∀ i : Fin 4,
      cofactorTwo * u i =
        u (2 : Fin 4) * stageFourKernelVector i +
          u (3 : Fin 4) * stageFiveKernelVector i := by
  change (u (0 : Fin 4) * ordinaryAt 0 + u (1 : Fin 4) * ordinaryAt 1) +
      u (2 : Fin 4) * ordinaryAt 2 +
      u (3 : Fin 4) * ordinaryAt 3 = 0 at hOrd
  change (u (0 : Fin 4) * reciprocalAt 0 + u (1 : Fin 4) * reciprocalAt 1) +
      u (2 : Fin 4) * reciprocalAt 2 +
      u (3 : Fin 4) * reciprocalAt 3 = 0 at hRec
  have h0 :
      cofactorTwo * u (0 : Fin 4) =
        u (2 : Fin 4) * extraCofactorZero 2 +
          u (3 : Fin 4) * extraCofactorZero 3 := by
    unfold cofactorTwo extraCofactorZero
    dsimp [ordinaryAt, reciprocalAt] at *
    linear_combination
      (realOrdinaryMoment 1 : ℂ) * hRec -
        (realMultiplicativeMoment 1 : ℂ) * hOrd
  have h1 :
      cofactorTwo * u (1 : Fin 4) =
        u (2 : Fin 4) * extraCofactorOne 2 +
          u (3 : Fin 4) * extraCofactorOne 3 := by
    unfold cofactorTwo extraCofactorOne
    dsimp [ordinaryAt, reciprocalAt] at *
    linear_combination
      (realMultiplicativeMoment 0 : ℂ) * hOrd -
        (realOrdinaryMoment 0 : ℂ) * hRec
  intro i
  fin_cases i
  · simpa [stageFourKernelVector, stageFiveKernelVector] using h0
  · simpa [stageFourKernelVector, stageFiveKernelVector] using h1
  · simp [stageFourKernelVector, stageFiveKernelVector, mul_comm]
  · simp [stageFourKernelVector, stageFiveKernelVector, mul_comm]

/-- The exact four-tent two-moment kernel is the two-dimensional
cofactor span, with no structural assumptions on an analytic test space. -/
theorem twoMomentRows_zero_iff_two_cofactors (u : Combination 3) :
    (fourTentOrdinaryRow u = 0 ∧ fourTentReciprocalRow u = 0) ↔
      ∃ a b : ℂ, ∀ i : Fin 4,
        u i = a * stageFourKernelVector i + b * stageFiveKernelVector i := by
  constructor
  · rintro ⟨hOrd, hRec⟩
    let a : ℂ := u (2 : Fin 4) / cofactorTwo
    let b : ℂ := u (3 : Fin 4) / cofactorTwo
    have ha : cofactorTwo * a = u (2 : Fin 4) := by
      dsimp [a]
      field_simp [cofactorTwo_ne_zero]
    have hb : cofactorTwo * b = u (3 : Fin 4) := by
      dsimp [b]
      field_simp [cofactorTwo_ne_zero]
    refine ⟨a, b, ?_⟩
    intro i
    have hscaled := scaled_decomposition_of_zero_rows u hOrd hRec i
    apply (mul_left_cancel₀ cofactorTwo_ne_zero)
    calc
      cofactorTwo * u i =
          u (2 : Fin 4) * stageFourKernelVector i +
            u (3 : Fin 4) * stageFiveKernelVector i := hscaled
      _ = (cofactorTwo * a) * stageFourKernelVector i +
            (cofactorTwo * b) * stageFiveKernelVector i := by
              rw [ha, hb]
      _ = cofactorTwo * (a * stageFourKernelVector i +
            b * stageFiveKernelVector i) := by ring
  · rintro ⟨a, b, hu⟩
    have heq :
        u = fun i => a * stageFourKernelVector i +
          b * stageFiveKernelVector i := by
      funext i
      exact hu i
    rw [heq]
    constructor
    · calc
        fourTentOrdinaryRow (fun i =>
            a * stageFourKernelVector i + b * stageFiveKernelVector i) =
          a * fourTentOrdinaryRow stageFourKernelVector +
            b * fourTentOrdinaryRow stageFiveKernelVector := by
              unfold fourTentOrdinaryRow
              ring
        _ = 0 := by rw [stageFour_ordinary_zero, stageFive_ordinary_zero]; ring
    · calc
        fourTentReciprocalRow (fun i =>
            a * stageFourKernelVector i + b * stageFiveKernelVector i) =
          a * fourTentReciprocalRow stageFourKernelVector +
            b * fourTentReciprocalRow stageFiveKernelVector := by
              unfold fourTentReciprocalRow
              ring
        _ = 0 := by rw [stageFour_reciprocal_zero, stageFive_reciprocal_zero]; ring

/-- A literal physical four-tent source test, with all original stages. -/
noncomputable def actualFourTentFunction (u : Combination 3) (x : ℝ) : ℂ :=
  ((u (0 : Fin 4) * canonicalTentComplex 0 x +
      u (1 : Fin 4) * canonicalTentComplex 1 x) +
    u (2 : Fin 4) * canonicalTentComplex 2 x) +
    u (3 : Fin 4) * canonicalTentComplex 3 x

/-- The actual ordinary positive-half-line Lebesgue integral is exactly
the four-column source moment row. -/
theorem actualFourTent_ordinaryMoment_eq (u : Combination 3) :
    bombieriOrdinaryMoment (actualFourTentFunction u) =
      fourTentOrdinaryRow u := by
  have h0 := (canonicalTentComplex_integrableOn 0).const_mul (u (0 : Fin 4))
  have h1 := (canonicalTentComplex_integrableOn 1).const_mul (u (1 : Fin 4))
  have h2 := (canonicalTentComplex_integrableOn 2).const_mul (u (2 : Fin 4))
  have h3 := (canonicalTentComplex_integrableOn 3).const_mul (u (3 : Fin 4))
  unfold bombieriOrdinaryMoment actualFourTentFunction fourTentOrdinaryRow
  have hadd := integral_add ((h0.add h1).add h2) h3
  have hadd012 := integral_add (h0.add h1) h2
  have hadd01 := integral_add h0 h1
  simp only [Pi.add_apply] at hadd hadd012 hadd01
  rw [hadd, hadd012, hadd01]
  rw [integral_const_mul, integral_const_mul,
    integral_const_mul, integral_const_mul]
  change
    (u (0 : Fin 4) * bombieriOrdinaryMoment (canonicalTentComplex 0) +
      u (1 : Fin 4) * bombieriOrdinaryMoment (canonicalTentComplex 1)) +
      u (2 : Fin 4) * bombieriOrdinaryMoment (canonicalTentComplex 2) +
      u (3 : Fin 4) * bombieriOrdinaryMoment (canonicalTentComplex 3) = _
  rw [bombieriOrdinaryMoment_canonicalTent_eq 0,
    bombieriOrdinaryMoment_canonicalTent_eq 1,
    bombieriOrdinaryMoment_canonicalTent_eq 2,
    bombieriOrdinaryMoment_canonicalTent_eq 3]
  rfl

/-- The actual reciprocal dx/x integral is exactly the four-column
source reciprocal moment, not a surrogate weighted mean. -/
theorem actualFourTent_reciprocalMoment_eq (u : Combination 3) :
    bombieriMultiplicativeMoment (actualFourTentFunction u) =
      fourTentReciprocalRow u := by
  have h0 := (canonicalTentComplex_div_integrableOn 0).const_mul (u (0 : Fin 4))
  have h1 := (canonicalTentComplex_div_integrableOn 1).const_mul (u (1 : Fin 4))
  have h2 := (canonicalTentComplex_div_integrableOn 2).const_mul (u (2 : Fin 4))
  have h3 := (canonicalTentComplex_div_integrableOn 3).const_mul (u (3 : Fin 4))
  unfold bombieriMultiplicativeMoment actualFourTentFunction fourTentReciprocalRow
  simp_rw [add_div, mul_div_assoc]
  have hadd := integral_add ((h0.add h1).add h2) h3
  have hadd012 := integral_add (h0.add h1) h2
  have hadd01 := integral_add h0 h1
  simp only [Pi.add_apply] at hadd hadd012 hadd01
  rw [hadd, hadd012, hadd01]
  rw [integral_const_mul, integral_const_mul,
    integral_const_mul, integral_const_mul]
  change
    (u (0 : Fin 4) * bombieriMultiplicativeMoment (canonicalTentComplex 0) +
      u (1 : Fin 4) * bombieriMultiplicativeMoment (canonicalTentComplex 1)) +
      u (2 : Fin 4) * bombieriMultiplicativeMoment (canonicalTentComplex 2) +
      u (3 : Fin 4) * bombieriMultiplicativeMoment (canonicalTentComplex 3) = _
  rw [bombieriMultiplicativeMoment_canonicalTent_eq 0,
    bombieriMultiplicativeMoment_canonicalTent_eq 1,
    bombieriMultiplicativeMoment_canonicalTent_eq 2,
    bombieriMultiplicativeMoment_canonicalTent_eq 3]

/-- Precisely the vectors in the two-dimensional cofactor span
meet both displayed Bombieri moments as real positive-half-line
integrals of the physical four-tent function. -/
theorem physicalTwoMoments_iff_two_cofactors (u : Combination 3) :
    BombieriZeroMomentConditions (actualFourTentFunction u) ↔
      ∃ a b : ℂ, ∀ i : Fin 4,
        u i = a * stageFourKernelVector i + b * stageFiveKernelVector i := by
  constructor
  · intro h
    apply (twoMomentRows_zero_iff_two_cofactors u).mp
    constructor
    · rw [← actualFourTent_ordinaryMoment_eq]
      exact h.ordinaryMoment_zero
    · rw [← actualFourTent_reciprocalMoment_eq]
      exact h.multiplicativeMoment_zero
  · intro h
    obtain ⟨hOrd, hRec⟩ := (twoMomentRows_zero_iff_two_cofactors u).mpr h
    constructor
    · change bombieriMultiplicativeMoment (actualFourTentFunction u) = 0
      rw [actualFourTent_reciprocalMoment_eq]
      exact hRec
    · rw [actualFourTent_ordinaryMoment_eq]
      exact hOrd

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFourTentMomentKernelPlane
