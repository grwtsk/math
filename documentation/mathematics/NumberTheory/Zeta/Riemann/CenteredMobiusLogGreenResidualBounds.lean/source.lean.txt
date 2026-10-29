/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenContinuumPhase
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Nonaliasing phase residual bound, retaining the actual centered residue. -/
theorem norm_greenPhaseHarmonicResidual_le_residue
    {X : ℕ} (hX : 1 ≤ X) {k : ℤ}
    (R : GreenCenteredResidue X k) (hr : R.r ≠ 0) :
    ‖greenPhaseHarmonicResidual X k‖ ≤
      3 / (2 * Real.pi * |(k : ℝ)|) +
        1 / (2 * |(R.r : ℝ)|) := by
  unfold greenPhaseHarmonicResidual
  have hcont := norm_greenContinuumPhaseIntegral_le (by
    intro hk0
    subst k
    have := R.relation
    simp at this
    omega)
  have hdisc := norm_greenDiscretePhaseRiemannSum_le_residue hX R hr
  have hrewrite :
      (∑ j ∈ Finset.Icc 1 X,
        ((1 / (X : ℝ) : ℝ) : ℂ) *
          (fourier (-k) (greenRightMeshPoint X j : AddCircle (1 : ℝ)) /
            (1 + (greenRightMeshPoint X j : ℂ)))) =
        greenDiscretePhaseRiemannSum X k := rfl
  rw [hrewrite]
  exact (norm_sub_le _ _).trans (add_le_add hcont hdisc)

/-- Explicit nonaliasing centering-residual estimate. -/
theorem norm_greenCenteringResidual_le_residue
    {X : ℕ} (hX : 1 ≤ X)
    {k : ℤ} (hk : k ≠ 0)
    (R : GreenCenteredResidue X k) (hr : R.r ≠ 0) :
    ‖greenCenteringResidual X k‖ ≤
      (1 / (2 * Real.pi * |(k : ℝ)|)) *
        (3 / (2 * Real.pi * |(k : ℝ)|) +
          1 / (2 * |(R.r : ℝ)|) +
          1 / (2 * (X : ℝ))) := by
  rw [greenCenteringResidual_eq_phase_sub_constant hX hk, norm_mul]
  have hpref :
      ‖(1 : ℂ) / (-2 * Real.pi * Complex.I * k)‖ =
        1 / (2 * Real.pi * |(k : ℝ)|) := by
    rw [norm_div, norm_one, norm_mul, norm_mul, norm_mul,
      norm_ofNat, Real.norm_eq_abs, abs_of_pos Real.pi_pos,
      norm_I, norm_intCast]
  rw [hpref]
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  calc
    ‖greenPhaseHarmonicResidual X k -
        greenConstantHarmonicResidual X‖ ≤
      ‖greenPhaseHarmonicResidual X k‖ +
        ‖greenConstantHarmonicResidual X‖ := norm_sub_le _ _
    _ ≤ (3 / (2 * Real.pi * |(k : ℝ)|) +
          1 / (2 * |(R.r : ℝ)|)) +
        1 / (2 * (X : ℝ)) := by
      exact add_le_add
        (norm_greenPhaseHarmonicResidual_le_residue hX R hr)
        (norm_greenConstantHarmonicResidual_le hX)
    _ = _ := by ring

/-- Exact-alias residual bound. The discrete terms cancel before estimation. -/
theorem norm_greenCenteringResidual_le_aliasing
    {X : ℕ} (hX : 1 ≤ X)
    {k : ℤ} (hk0 : k ≠ 0)
    (hk : GreenMeshAliasing X k) :
    ‖greenCenteringResidual X k‖ ≤
      (1 / (2 * Real.pi * |(k : ℝ)|)) *
        (3 / (2 * Real.pi * |(k : ℝ)|) + Real.log 2) := by
  rw [greenCenteringResidual_aliasing_exact hX hk0 hk, norm_mul]
  have hpref :
      ‖(1 : ℂ) / (-2 * Real.pi * Complex.I * k)‖ =
        1 / (2 * Real.pi * |(k : ℝ)|) := by
    rw [norm_div, norm_one, norm_mul, norm_mul, norm_mul,
      norm_ofNat, Real.norm_eq_abs, abs_of_pos Real.pi_pos,
      norm_I, norm_intCast]
  rw [hpref]
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  calc
    ‖greenContinuumPhaseIntegral k -
        greenContinuumConstantIntegral‖ ≤
      ‖greenContinuumPhaseIntegral k‖ +
        ‖greenContinuumConstantIntegral‖ := norm_sub_le _ _
    _ ≤ 3 / (2 * Real.pi * |(k : ℝ)|) + Real.log 2 := by
      apply add_le_add (norm_greenContinuumPhaseIntegral_le hk0)
      rw [greenContinuumConstantIntegral_eq_log_two]
      simp only [Complex.norm_real, Real.norm_eq_abs]
      rw [abs_of_nonneg (Real.log_nonneg (by norm_num))]
    _ = _ := rfl

end GRWTSK.RiemannHypothesis
