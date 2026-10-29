import FormalResearch.RiemannHypothesis.ZeroSide.Assembly
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Tactic

/-!
# B3.3 source-radius Laplace kernel and finite pole algebra

This is the first bounded increment of issue #14.  It freezes the exact finite
objects occurring in RH-0010 equations (17)--(21), after the B3.2 zero-side
identity has been integrated.

The module proves only finite algebra and nonvanishing statements.  The
improper-integral identity for `J_k`, termwise integration of the zero sum,
meromorphic continuation, and local pole isolation are represented by explicit
obligations and are not asserted here.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.Laplace.Algebra

open MeasureTheory Set
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourcePairing
open ZeroSideTargets ZeroObject

noncomputable section

/-- The unchanged arithmetic quantity from the actual dilation family. -/
abbrev actualQ (A : ℝ) : ℝ :=
  sourceQuadraticValue Realization.explicitSecondDerivative A

/-- RH-0010's weighted support-radius source `H(A) = A^17 Z_A Q(A)`. -/
def weightedSource (A : ℝ) : ℝ :=
  A ^ 17 * sourceNormalization A * actualQ A

/-- Exact source kernel
`J_k(w) = exp(-w) * sum_{j=0}^k k! / ((k-j)! w^(j+1))`.
The intended analytic use is guarded by `w ≠ 0`; Lean's division remains
totalized at zero. -/
def J (k : ℕ) (w : ℂ) : ℂ :=
  Complex.exp (-w) *
    ∑ j ∈ Finset.range (k + 1),
      (Nat.factorial k : ℂ) /
        ((Nat.factorial (k - j) : ℂ) * w ^ (j + 1))

/-- The genuine improper integral whose equality with `J` is the first
analytic subtarget of B3.3. -/
def JIntegral (k : ℕ) (w : ℂ) : ℂ :=
  ∫ A : ℝ in Ioi 1, (A : ℂ) ^ k * Complex.exp (-w * (A : ℂ))

/-- Exact half-plane integral target for equation (19). -/
def JIntegralObligation : Prop :=
  ∀ k : ℕ, ∀ w : ℂ, 0 < w.re →
    IntegrableOn
      (fun A : ℝ ↦ (A : ℂ) ^ k * Complex.exp (-w * (A : ℂ)))
      (Ioi 1) ∧
    JIntegral k w = J k w

/-- The analytic remainder form of equation (19), stated separately so no
principal-part claim is inferred from a totalized value at zero. -/
def JRegularPartObligation : Prop :=
  ∀ k : ℕ, ∀ w : ℂ, w ≠ 0 →
    J k w =
      (Nat.factorial k : ℂ) / w ^ (k + 1) -
        ∫ A : ℝ in Icc 0 1,
          (A : ℂ) ^ k * Complex.exp (-w * (A : ℂ))

/-- Exact coefficients of `P(t)^2`, with the monic degree-eight term. -/
theorem transformPolynomial_sq (z : ℂ) :
    transformPolynomial z ^ 2 =
      z ^ 8 - 20 * z ^ 7 + 190 * z ^ 6 - 1110 * z ^ 5 +
        4335 * z ^ 4 - 11550 * z ^ 3 + 20475 * z ^ 2 -
        22050 * z + 11025 := by
  unfold transformPolynomial
  ring

/-- Exact coefficients of the mixed reflected factor
`P(t) P(-t)`; every odd coefficient is zero. -/
theorem transformPolynomial_mul_neg (z : ℂ) :
    transformPolynomial z * transformPolynomial (-z) =
      z ^ 8 - 10 * z ^ 6 + 135 * z ^ 4 - 1575 * z ^ 2 + 11025 := by
  unfold transformPolynomial
  ring

/-- Ordinary complex squaring retains the mixed reflected term. -/
theorem mode_square_expansion (a b z : ℂ) :
    (a * transformPolynomial z - b * transformPolynomial (-z)) ^ 2 =
      a ^ 2 * transformPolynomial z ^ 2 +
        b ^ 2 * transformPolynomial (-z) ^ 2 -
        2 * a * b * transformPolynomial z * transformPolynomial (-z) := by
  ring

/-- The exact coefficient multiplying one occurrence's bracket in equation
(17), before summing over analytic-multiplicity slots. -/
def modeCoefficient (z : ℂ) : ℂ :=
  384 ^ 2 * (z ^ 2 - 1 / 4) ^ 2 / z ^ 18

/-- Reflection preserves the coefficient, including the even denominator. -/
theorem modeCoefficient_neg (z : ℂ) :
    modeCoefficient (-z) = modeCoefficient z := by
  have h2 : (-z) ^ 2 = z ^ 2 := by ring
  have h18 : (-z) ^ 18 = z ^ 18 := by ring
  simp only [modeCoefficient, h2, h18]

/-- Candidate coefficient of `(s - 2z)^(-9)` after combining the occurrences
at `z` and `-z`, with analytic multiplicity `m`. -/
def principalCoefficient (m : ℕ) (z : ℂ) : ℂ :=
  2 * (m : ℂ) * 384 ^ 2 * (Nat.factorial 8 : ℂ) *
    (z ^ 2 - 1 / 4) ^ 2 / z ^ 10

/-- The reflected degree-eight terms give exactly the source coefficient (21). -/
theorem principalCoefficient_eq
    (m : ℕ) (z : ℂ) (hz : z ≠ 0) :
    2 * (m : ℂ) * modeCoefficient z * z ^ 8 *
        (Nat.factorial 8 : ℂ) =
      principalCoefficient m z := by
  unfold modeCoefficient principalCoefficient
  field_simp [hz]

/-- The numerator vanishes only at the two pole-cancelled shifted values. -/
theorem pole_factor_ne_zero
    (z : ℂ) (hp : z ≠ 1 / 2) (hm : z ≠ -(1 / 2)) :
    z ^ 2 - 1 / 4 ≠ 0 := by
  have hfactor :
      z ^ 2 - 1 / 4 = (z - 1 / 2) * (z + 1 / 2) := by
    ring
  rw [hfactor]
  have hplus : z + 1 / 2 ≠ 0 := by
    intro h
    apply hm
    linear_combination h
  exact mul_ne_zero (sub_ne_zero.mpr hp) hplus

/-- Positive multiplicity cannot annihilate the candidate highest coefficient
once `z = 0, ±1/2` are excluded. -/
theorem principalCoefficient_ne_zero
    (m : ℕ) (hm : m ≠ 0) (z : ℂ)
    (hz : z ≠ 0) (hp : z ≠ 1 / 2) (hn : z ≠ -(1 / 2)) :
    principalCoefficient m z ≠ 0 := by
  have hm' : (m : ℂ) ≠ 0 := by exact_mod_cast hm
  have hf : z ^ 2 - 1 / 4 ≠ 0 :=
    pole_factor_ne_zero z hp hn
  unfold principalCoefficient
  exact div_ne_zero
    (mul_ne_zero
      (mul_ne_zero
        (mul_ne_zero
          (mul_ne_zero (by norm_num) hm')
          (by norm_num))
        (by norm_num [Nat.factorial]))
      (pow_ne_zero _ hf))
    (pow_ne_zero _ hz)

/-- B3.3 finite-kernel checkpoint.  It records the exact analytic obligations
that remain after the finite algebra in this module. -/
def KernelCheckpoint : Prop :=
  JIntegralObligation ∧ JRegularPartObligation

end
end FormalResearch.RiemannHypothesis.Laplace.Algebra
