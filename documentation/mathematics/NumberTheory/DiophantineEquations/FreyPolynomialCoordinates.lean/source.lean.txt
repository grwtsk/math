/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib quadratic algebras and fraction rings (Apache-2.0).
Formalization assistance: OpenAI.

Separate polynomial coordinates p(X)+Y*q(X) on the EXISTING localized
Frey coordinate ring. The auxiliary quadratic algebra is not assumed to be
a field or a smooth curve. Its two coordinate projections detect the two
polynomials. No global section-space, divisor, lattice or height theorem
is asserted. Unelaborated source proof scripts.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedSections
import Mathlib.Algebra.QuadraticAlgebra.Defs
import Mathlib.RingTheory.Localization.FractionRing

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyPolynomialCoordinates

open FreyTorsionOpen
open Polynomial

variable {K : Type*} [Field K]

/- The same named coefficient action as the existing weighted stages. -/
attribute [local instance] FreyWeightedSections.coefficientAlgebra

/-- Evaluation in the actual C[1/X], not in an independently chosen vector space. -/
def polynomialValue (a b : K) : K[X] →ₐ[K] OpenCurve a b := Polynomial.aeval (x a b)

@[simp] theorem polynomialValue_C (a b c : K) :
    polynomialValue a b (Polynomial.C c) = scalar a b c := by
  simp [polynomialValue]

@[simp] theorem polynomialValue_X (a b : K) :
    polynomialValue a b (Polynomial.X : K[X]) = x a b := by
  simp [polynomialValue]

/-- The polynomial pair whose uniqueness is the required independence statement. -/
def pairValue (a b : K) (p q : K[X]) : OpenCurve a b :=
  polynomialValue a b p + y a b * polynomialValue a b q

abbrev RationalFunctions (K : Type*) [Field K] := FractionRing (Polynomial K)

def fractionMap : K[X] →+* RationalFunctions K := algebraMap _ _

theorem fractionMap_injective : Function.Injective (fractionMap (K := K)) :=
  IsFractionRing.injective (Polynomial K) (RationalFunctions K)

def coefficientFraction : K →+* RationalFunctions K := fractionMap.comp Polynomial.C

def radicand (a b : K) : RationalFunctions K :=
  fractionMap (Polynomial.X * (Polynomial.X - Polynomial.C a) *
    (Polynomial.X + Polynomial.C b))

/-- Rank two over K(X) by its actual pair carrier, even for reducible radicands.
This is a separating target only; it is NOT declared a function field. -/
abbrev SeparatingAlgebra (a b : K) := QuadraticAlgebra (RationalFunctions K) (radicand a b) 0

def separatingScalar (a b : K) : K →+* SeparatingAlgebra a b :=
  (algebraMap (RationalFunctions K) (SeparatingAlgebra a b)).comp coefficientFraction

def separatingX (a b : K) : SeparatingAlgebra a b :=
  algebraMap (RationalFunctions K) _ (fractionMap (Polynomial.X : K[X]))

def separatingY (a b : K) : SeparatingAlgebra a b := ⟨0, 1⟩

def separatingInverseX (a b : K) : SeparatingAlgebra a b :=
  algebraMap (RationalFunctions K) _ ((fractionMap (Polynomial.X : K[X]))⁻¹)

/-- X is transcendental before any Frey specialization, so its fraction is a unit. -/
theorem separatingX_inverse (a b : K) :
    separatingX a b * separatingInverseX a b = 1 := by
  have hX : fractionMap (Polynomial.X : K[X]) ≠ 0 := by
    intro h
    apply Polynomial.X_ne_zero (R := K)
    apply fractionMap_injective
    simpa only [map_zero] using h
  unfold separatingX separatingInverseX
  rw [← map_mul, mul_inv_cancel₀ hX, map_one]

/-- The separating target satisfies the SAME cubic, including its signs. -/
theorem separating_equation (a b : K) :
    separatingY a b ^ 2 = separatingX a b *
      (separatingX a b - separatingScalar a b a) *
      (separatingX a b + separatingScalar a b b) := by
  have hY : separatingY a b ^ 2 =
      algebraMap (RationalFunctions K) (SeparatingAlgebra a b) (radicand a b) := by
    apply QuadraticAlgebra.ext <;>
      simp [separatingY, pow_two, QuadraticAlgebra.algebraMap_eq]
  rw [hY]
  simp only [separatingX, separatingScalar, coefficientFraction, RingHom.comp_apply,
    ← map_sub, ← map_add, ← map_mul, radicand]

/-- Universal evaluation descends from the original curve and its actual localization. -/
def separate (a b : K) : OpenCurve a b →+* SeparatingAlgebra a b :=
  evaluate a b (separatingScalar a b) (separatingX a b) (separatingY a b)
    (separatingInverseX a b) (separatingX_inverse a b) (separating_equation a b)

@[simp] theorem separate_scalar (a b c : K) :
    separate a b (scalar a b c) = separatingScalar a b c := by
  exact evaluate_scalar _ _ _ _ _ _ _ _ _

@[simp] theorem separate_X (a b : K) :
    separate a b (x a b) = separatingX a b := by
  exact evaluate_x _ _ _ _ _ _ _ _

@[simp] theorem separate_Y (a b : K) :
    separate a b (y a b) = separatingY a b := by
  exact evaluate_y _ _ _ _ _ _ _ _

/-- All polynomial coefficients are transported, not just a Taylor prefix. -/
theorem separate_polynomial (a b : K) (p : K[X]) :
    separate a b (polynomialValue a b p) =
      algebraMap (RationalFunctions K) (SeparatingAlgebra a b) (fractionMap p) := by
  have h : (separate a b).comp (polynomialValue a b).toRingHom =
      (algebraMap (RationalFunctions K) (SeparatingAlgebra a b)).comp fractionMap := by
    apply Polynomial.ringHom_ext
    · intro c
      simp only [RingHom.comp_apply, polynomialValue_C,
        separate_scalar, separatingScalar, coefficientFraction]
    · simp only [RingHom.comp_apply, polynomialValue_X,
        separate_X, separatingX]
  exact DFunLike.congr_fun h p

/-- The real coordinate recovers the whole polynomial p in K(X). -/
@[simp] theorem separate_pair_re (a b : K) (p q : K[X]) :
    (separate a b (pairValue a b p q)).re = fractionMap p := by
  simp [pairValue, separate_polynomial, separatingY, QuadraticAlgebra.algebraMap_eq]

/-- The second coordinate recovers q; no choice of a square root kills this channel. -/
@[simp] theorem separate_pair_im (a b : K) (p q : K[X]) :
    (separate a b (pairValue a b p q)).im = fractionMap q := by
  simp [pairValue, separate_polynomial, separatingY, QuadraticAlgebra.algebraMap_eq]

/-- Polynomial pair uniqueness on the actual localized coordinate ring. -/
theorem pairValue_eq_iff (a b : K) (p q p' q' : K[X]) :
    pairValue a b p q = pairValue a b p' q' ↔ p = p' ∧ q = q' := by
  constructor
  · intro h
    constructor
    · apply fractionMap_injective
      simpa only [separate_pair_re] using
        congrArg (fun z => (separate a b z).re) h
    · apply fractionMap_injective
      simpa only [separate_pair_im] using
        congrArg (fun z => (separate a b z).im) h
  · rintro ⟨rfl, rfl⟩
    rfl

theorem pairValue_eq_zero_iff (a b : K) (p q : K[X]) :
    pairValue a b p q = 0 ↔ p = 0 ∧ q = 0 := by
  simpa only [pairValue, map_zero, mul_zero, add_zero] using
    pairValue_eq_iff a b p q 0 0

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyPolynomialCoordinates
