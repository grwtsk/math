/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenResidueChord
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Abel plus the centered-residue chord bound. -/
theorem norm_greenMesh_weighted_phase_sum_le_residue
    {X : ℕ} (hX : 1 ≤ X) {k : ℤ}
    (R : GreenCenteredResidue X k)
    (hr : R.r ≠ 0) :
    ‖∑ j ∈ Finset.Icc 1 X,
        (greenMeshWeight X j : ℂ) * (greenMeshPhase X k) ^ j‖ ≤
      (X : ℝ) / (2 * |(R.r : ℝ)|) := by
  have hq : greenMeshPhase X k ≠ 1 := by
    intro h
    have hchord := centeredResidue_chord_lower_bound hX R
    rw [h, sub_self, norm_zero] at hchord
    have hrabs : 0 < |(R.r : ℝ)| := abs_pos.mpr (by exact_mod_cast hr)
    have hXr : 0 < (X : ℝ) := by exact_mod_cast hX
    positivity
  have habel := norm_greenMesh_weighted_phase_sum_le hX hq
  have hchord := centeredResidue_chord_lower_bound hX R
  have hrabs : 0 < |(R.r : ℝ)| := abs_pos.mpr (by exact_mod_cast hr)
  have hXr : 0 < (X : ℝ) := by exact_mod_cast hX
  have hden : 0 < ‖1 - greenMeshPhase X k‖ := norm_pos_iff.mpr (sub_ne_zero.mpr hq)
  calc
    _ ≤ 2 / ‖1 - greenMeshPhase X k‖ := habel
    _ ≤ (X : ℝ) / (2 * |(R.r : ℝ)|) := by
      apply (div_le_iff₀ hden).2
      apply (le_div_iff₀ (by positivity : 0 < 2 * |(R.r : ℝ)|)).2
      nlinarith

/-- The actual discrete phase Riemann sum includes the 1/X mesh factor, which
cancels the X in the Abel small-denominator estimate. -/
def greenDiscretePhaseRiemannSum (X : ℕ) (k : ℤ) : ℂ :=
  ∑ j ∈ Finset.Icc 1 X,
    ((1 / (X : ℝ) : ℝ) : ℂ) *
      (fourier (-k) (greenRightMeshPoint X j : AddCircle (1 : ℝ)) /
        (1 + (greenRightMeshPoint X j : ℂ)))

theorem norm_greenDiscretePhaseRiemannSum_le_residue
    {X : ℕ} (hX : 1 ≤ X) {k : ℤ}
    (R : GreenCenteredResidue X k)
    (hr : R.r ≠ 0) :
    ‖greenDiscretePhaseRiemannSum X k‖ ≤
      1 / (2 * |(R.r : ℝ)|) := by
  unfold greenDiscretePhaseRiemannSum
  have hphase := norm_greenMesh_weighted_phase_sum_le_residue hX R hr
  have hrewrite :
      (∑ j ∈ Finset.Icc 1 X,
        ((1 / (X : ℝ) : ℝ) : ℂ) *
          (fourier (-k) (greenRightMeshPoint X j : AddCircle (1 : ℝ)) /
            (1 + (greenRightMeshPoint X j : ℂ)))) =
      ((1 / (X : ℝ) : ℝ) : ℂ) *
        ∑ j ∈ Finset.Icc 1 X,
          (greenMeshWeight X j : ℂ) * (greenMeshPhase X k) ^ j := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro j _
    rw [fourier_mesh_eq_phase_pow hX]
    unfold greenMeshWeight greenRightMeshPoint
    push_cast
    ring
  rw [hrewrite, norm_mul, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (by positivity : 0 ≤ 1 / (X : ℝ))]
  have hXr : 0 < (X : ℝ) := by exact_mod_cast hX
  calc
    (1 / (X : ℝ)) *
        ‖∑ j ∈ Finset.Icc 1 X,
          (greenMeshWeight X j : ℂ) * (greenMeshPhase X k) ^ j‖ ≤
      (1 / (X : ℝ)) * ((X : ℝ) / (2 * |(R.r : ℝ)|)) :=
        mul_le_mul_of_nonneg_left hphase (by positivity)
    _ = 1 / (2 * |(R.r : ℝ)|) := by
      field_simp
      ring

end GRWTSK.RiemannHypothesis
