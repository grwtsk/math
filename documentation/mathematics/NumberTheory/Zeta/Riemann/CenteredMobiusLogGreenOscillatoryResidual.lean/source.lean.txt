/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFiniteHeadComparison
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- The primitive is a 1/k multiple of phase minus one. -/
theorem fourierModeValue_factor_phase_sub_one
    {k : ℤ} (hk : k ≠ 0) (t : ℝ) :
    fourierModeValue k t =
      (1 : ℂ) / (-2 * Real.pi * Complex.I * k) *
        (fourier (-k) (t : AddCircle (1 : ℝ)) - 1) := by
  unfold fourierModeValue fourierModePrimitive
  have hz : fourier (-k) ((0 : ℝ) : AddCircle (1 : ℝ)) = 1 := by simp
  rw [hz]
  ring

/-- Harmonic quadrature residual for the constant part of phase-minus-one. -/
def greenConstantHarmonicResidual (X : ℕ) : ℂ :=
  (∫ t in (0 : ℝ)..1, (1 : ℂ) / (1 + (t : ℂ))) -
    ∑ j ∈ Finset.Icc 1 X,
      ((1 / (X : ℝ) : ℝ) : ℂ) *
        ((1 : ℂ) / (1 + (greenRightMeshPoint X j : ℂ)))

/-- Oscillatory quadrature residual for the root-of-unity phase. -/
def greenPhaseHarmonicResidual (X : ℕ) (k : ℤ) : ℂ :=
  (∫ t in (0 : ℝ)..1,
      fourier (-k) (t : AddCircle (1 : ℝ)) / (1 + (t : ℂ))) -
    ∑ j ∈ Finset.Icc 1 X,
      ((1 / (X : ℝ) : ℝ) : ℂ) *
        (fourier (-k)
            (greenRightMeshPoint X j : AddCircle (1 : ℝ)) /
          (1 + (greenRightMeshPoint X j : ℂ)))

/-- Exact oscillatory decomposition of the centering residual. Both pieces
carry the explicit 1/k primitive prefactor. -/
theorem greenCenteringResidual_eq_phase_sub_constant
    {X : ℕ} (hX : 1 ≤ X)
    {k : ℤ} (hk : k ≠ 0) :
    greenCenteringResidual X k =
      (1 : ℂ) / (-2 * Real.pi * Complex.I * k) *
        (greenPhaseHarmonicResidual X k -
          greenConstantHarmonicResidual X) := by
  rw [greenCenteringResidual_eq_integral_sub_rightRiemannSum hX]
  unfold greenFourierBackgroundCoordinate greenFourierRightRiemannSum
    greenFourierBackgroundIntegrand
    greenPhaseHarmonicResidual greenConstantHarmonicResidual
  simp_rw [fourierModeValue_factor_phase_sub_one hk]
  rw [intervalIntegral.integral_const_mul]
  simp_rw [mul_div_assoc]
  rw [Finset.mul_sum]
  ring

/-- Aliasing predicate for mesh frequency k mod X. -/
def GreenMeshAliasing (X : ℕ) (k : ℤ) : Prop :=
  (X : ℤ) ∣ k

/-- Nonaliasing is the exact regime where the mesh phase is nonconstant. -/
def GreenMeshNonaliasing (X : ℕ) (k : ℤ) : Prop :=
  ¬ GreenMeshAliasing X k

end GRWTSK.RiemannHypothesis
