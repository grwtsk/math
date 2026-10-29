/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightBoundedCapacity
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Exact amplitude envelopes for the pinned prime-weight capacity obstruction

The preceding bounded-capacity layer proved that a small optimized deficit
forces

  X * (target - admittedError) ≤ C * A_X^2.

For a nonnegative admitted error and a positive scale, this module proves the
converse as well.  Thus the optimized bounded-deficit estimate is exactly the
same mathematical obligation as one stagewise amplitude-envelope inequality.

The equivalence is algebraic.  It does not estimate the pinned amplitude,
construct an arithmetic coefficient source, prove either threshold criterion,
or prove the Riemann Hypothesis.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
POINTWISE_CAPACITY_AMPLITUDE_EQUIVALENCE_DEFINED /
AMPLITUDE_CRITERION_EQUIVALENCE_DEFINED /
PINNED_AMPLITUDE_ESTIMATE_OPEN /
COEFFICIENT_SOURCE_LAW_OPEN / NO_RH_CLAIM.
-/

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

namespace GRWTSK.RiemannHypothesis

/-- Denominator-free stagewise requirement equivalent to a bounded optimal
residual at a positive scale.  It is a nonvacuous lower-bound requirement only
when the target remaining after the admitted error is positive. -/
def pinnedPrimeWeightAmplitudeRequirement
    (X : ℕ) (C v E : ℝ) : Prop :=
  (X : ℝ) * ((|thetaError v| + 1) - E) ≤
    C * (pinnedPrimeWeightedAmplitude X)^2

/-- The error allowance used at a dyadic stage by the capacity criteria. -/
def pinnedPrimeWeightStageErrorEnvelope
    (j : ℕ) (R ρ η : ℝ) : ℝ :=
  R * Real.rpow (dyadicScale j : ℝ)
    (quadraticThreshold ρ + η / 2)

/-- A nonnegative envelope constant gives a nonnegative stage allowance. -/
theorem pinnedPrimeWeightStageErrorEnvelope_nonnegative
    (j : ℕ) {R ρ η : ℝ} (hR : 0 ≤ R) :
    0 ≤ pinnedPrimeWeightStageErrorEnvelope j R ρ η := by
  unfold pinnedPrimeWeightStageErrorEnvelope
  exact mul_nonneg hR
    (Real.rpow_nonneg (Nat.cast_nonneg (dyadicScale j)) _)

/-- For a nonnegative admitted error, the optimized max-deficit bound is
exactly the corresponding capacity inequality. -/
theorem pinnedPrimeWeightBoundedDeficit_le_iff_target_sub_error_le_capacity
    {X : ℕ} {C v E : ℝ} (hE : 0 ≤ E) :
    pinnedPrimeWeightBoundedDeficit X C v ≤ E ↔
      (|thetaError v| + 1) - E ≤
        pinnedPrimeWeightBoundedCapacity X C := by
  unfold pinnedPrimeWeightBoundedDeficit
  constructor
  · intro h
    have hsub :
        (|thetaError v| + 1) -
            pinnedPrimeWeightBoundedCapacity X C ≤ E :=
      (le_max_right (0 : ℝ)
        ((|thetaError v| + 1) -
          pinnedPrimeWeightBoundedCapacity X C)).trans h
    linarith
  · intro h
    exact max_le hE (by linarith)

/-- At a positive scale, the capacity inequality is exactly the
coefficient-weighted amplitude-square requirement. -/
theorem pinnedPrimeWeightBoundedDeficit_le_iff_amplitudeRequirement
    {X : ℕ} (hX : 0 < X) {C v E : ℝ}
    (hE : 0 ≤ E) :
    pinnedPrimeWeightBoundedDeficit X C v ≤ E ↔
      pinnedPrimeWeightAmplitudeRequirement X C v E := by
  rw [
    pinnedPrimeWeightBoundedDeficit_le_iff_target_sub_error_le_capacity
      hE]
  unfold pinnedPrimeWeightAmplitudeRequirement
    pinnedPrimeWeightBoundedCapacity
  have hXr : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast hX
  constructor
  · intro h
    have hmul := (le_div_iff₀ hXr).mp h
    simpa [mul_comm] using hmul
  · intro h
    apply (le_div_iff₀ hXr).mpr
    simpa [mul_comm] using h

/-- Zero optimized deficit is exactly full capacity coverage at a positive
scale. -/
theorem pinnedPrimeWeightBoundedDeficit_eq_zero_iff_amplitudeRequirement
    {X : ℕ} (hX : 0 < X) {C v : ℝ} :
    pinnedPrimeWeightBoundedDeficit X C v = 0 ↔
      pinnedPrimeWeightAmplitudeRequirement X C v 0 := by
  have hiff :=
    pinnedPrimeWeightBoundedDeficit_le_iff_amplitudeRequirement
      (X := X) (C := C) (v := v) (E := 0)
      hX (show (0 : ℝ) ≤ 0 by norm_num)
  constructor
  · intro hzero
    apply hiff.mp
    simp [hzero]
  · intro hrequirement
    have hle :
        pinnedPrimeWeightBoundedDeficit X C v ≤ 0 :=
      hiff.mpr hrequirement
    exact le_antisymm hle
      (pinnedPrimeWeightBoundedDeficit_nonnegative X C v)

/-- Hostile vacuity control: if the admitted error already covers the complete
target, then the amplitude requirement follows from coefficient
nonnegativity and contains no positive amplitude demand. -/
theorem pinnedPrimeWeightAmplitudeRequirement_of_target_le_error
    (X : ℕ) {C v E : ℝ}
    (hC : 0 ≤ C)
    (htarget : |thetaError v| + 1 ≤ E) :
    pinnedPrimeWeightAmplitudeRequirement X C v E := by
  unfold pinnedPrimeWeightAmplitudeRequirement
  have hleft :
      (X : ℝ) * ((|thetaError v| + 1) - E) ≤ 0 :=
    mul_nonpos_of_nonneg_of_nonpos
      (Nat.cast_nonneg X) (sub_nonpos.mpr htarget)
  have hright :
      0 ≤ C * (pinnedPrimeWeightedAmplitude X)^2 :=
    mul_nonneg hC (sq_nonneg _)
  exact hleft.trans hright

/-- Variable-budget amplitude-envelope criterion.  It is definitionally the
bounded-capacity criterion with the optimized deficit replaced by its exact
positive-scale amplitude inequality. -/
def PinnedPrimeWeightAmplitudeCriterionAt (ρ : ℝ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧
    ∃ R : ℝ, 0 ≤ R ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        ∀ v ∈ pinnedPrimeWeightNextOctave j,
          pinnedPrimeWeightAmplitudeRequirement
            (dyadicScale j) C v
            (pinnedPrimeWeightStageErrorEnvelope j R ρ η)

/-- Fixed-budget amplitude-envelope criterion.  The coefficient budget is
selected before the epsilon quantifier. -/
def PinnedPrimeWeightFixedCapacityAmplitudeCriterionAt
    (C ρ : ℝ) : Prop :=
  0 ≤ C ∧
  ∀ η : ℝ, 0 < η →
    ∃ R : ℝ, 0 ≤ R ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        ∀ v ∈ pinnedPrimeWeightNextOctave j,
          pinnedPrimeWeightAmplitudeRequirement
            (dyadicScale j) C v
            (pinnedPrimeWeightStageErrorEnvelope j R ρ η)

/-- The variable-budget capacity criterion and the amplitude-envelope
criterion are exactly equivalent. -/
theorem pinnedPrimeWeightCapacityCriterion_iff_amplitudeCriterion
    (ρ : ℝ) :
    PinnedPrimeWeightCapacityCriterionAt ρ ↔
      PinnedPrimeWeightAmplitudeCriterionAt ρ := by
  constructor
  · intro hcapacity η hη
    obtain ⟨C, hC, R, hR, j₀, hstages⟩ :=
      hcapacity η hη
    refine ⟨C, hC, R, hR, j₀, ?_⟩
    intro j hj v hv
    let E : ℝ :=
      pinnedPrimeWeightStageErrorEnvelope j R ρ η
    have hE : 0 ≤ E := by
      dsimp [E]
      exact
        pinnedPrimeWeightStageErrorEnvelope_nonnegative
          (j := j) hR
    have hdeficit :
        pinnedPrimeWeightBoundedDeficit
            (dyadicScale j) C v ≤ E := by
      simpa [E, pinnedPrimeWeightStageErrorEnvelope] using
        hstages j hj v hv
    exact
      (pinnedPrimeWeightBoundedDeficit_le_iff_amplitudeRequirement
        (X := dyadicScale j) (C := C) (v := v) (E := E)
        (GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j) hE).mp hdeficit
  · intro hamplitude η hη
    obtain ⟨C, hC, R, hR, j₀, hstages⟩ :=
      hamplitude η hη
    refine ⟨C, hC, R, hR, j₀, ?_⟩
    intro j hj v hv
    let E : ℝ :=
      pinnedPrimeWeightStageErrorEnvelope j R ρ η
    have hE : 0 ≤ E := by
      dsimp [E]
      exact
        pinnedPrimeWeightStageErrorEnvelope_nonnegative
          (j := j) hR
    have hdeficit :
        pinnedPrimeWeightBoundedDeficit
            (dyadicScale j) C v ≤ E :=
      (pinnedPrimeWeightBoundedDeficit_le_iff_amplitudeRequirement
        (X := dyadicScale j) (C := C) (v := v) (E := E)
        (GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j) hE).mpr
        (hstages j hj v hv)
    simpa [E, pinnedPrimeWeightStageErrorEnvelope] using hdeficit

/-- The fixed-budget capacity criterion and its amplitude-envelope form are
exactly equivalent. -/
theorem pinnedPrimeWeightFixedCapacityCriterion_iff_amplitudeCriterion
    (C ρ : ℝ) :
    PinnedPrimeWeightFixedCapacityCriterionAt C ρ ↔
      PinnedPrimeWeightFixedCapacityAmplitudeCriterionAt C ρ := by
  constructor
  · intro hcapacity
    refine ⟨hcapacity.1, ?_⟩
    intro η hη
    obtain ⟨R, hR, j₀, hstages⟩ :=
      hcapacity.2 η hη
    refine ⟨R, hR, j₀, ?_⟩
    intro j hj v hv
    let E : ℝ :=
      pinnedPrimeWeightStageErrorEnvelope j R ρ η
    have hE : 0 ≤ E := by
      dsimp [E]
      exact
        pinnedPrimeWeightStageErrorEnvelope_nonnegative
          (j := j) hR
    have hdeficit :
        pinnedPrimeWeightBoundedDeficit
            (dyadicScale j) C v ≤ E := by
      simpa [E, pinnedPrimeWeightStageErrorEnvelope] using
        hstages j hj v hv
    exact
      (pinnedPrimeWeightBoundedDeficit_le_iff_amplitudeRequirement
        (X := dyadicScale j) (C := C) (v := v) (E := E)
        (GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j) hE).mp hdeficit
  · intro hamplitude
    refine ⟨hamplitude.1, ?_⟩
    intro η hη
    obtain ⟨R, hR, j₀, hstages⟩ :=
      hamplitude.2 η hη
    refine ⟨R, hR, j₀, ?_⟩
    intro j hj v hv
    let E : ℝ :=
      pinnedPrimeWeightStageErrorEnvelope j R ρ η
    have hE : 0 ≤ E := by
      dsimp [E]
      exact
        pinnedPrimeWeightStageErrorEnvelope_nonnegative
          (j := j) hR
    have hdeficit :
        pinnedPrimeWeightBoundedDeficit
            (dyadicScale j) C v ≤ E :=
      (pinnedPrimeWeightBoundedDeficit_le_iff_amplitudeRequirement
        (X := dyadicScale j) (C := C) (v := v) (E := E)
        (GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j) hE).mpr
        (hstages j hj v hv)
    simpa [E, pinnedPrimeWeightStageErrorEnvelope] using hdeficit

/-- Every immutable bounded coefficient rule must satisfy the corresponding
source-independent amplitude-envelope criterion. -/
theorem pinnedPrimeWeightRuleDeficitCriterion_to_amplitudeCriterion
    {rule : PinnedPrimeWeightCoefficientRule} {ρ : ℝ}
    (hcriterion :
      PinnedPrimeWeightRuleDeficitCriterionAt rule ρ) :
    PinnedPrimeWeightAmplitudeCriterionAt ρ :=
  (pinnedPrimeWeightCapacityCriterion_iff_amplitudeCriterion ρ).mp
    (pinnedPrimeWeightRuleDeficitCriterion_to_capacityCriterion
      hcriterion)

/-- The fixed amplitude-envelope criterion is exactly the constant analytic
optimizer criterion.  No arithmetic source interpretation is added. -/
theorem pinnedPrimeWeightFixedCapacityAmplitudeCriterion_iff_constantRule
    (C ρ : ℝ) :
    PinnedPrimeWeightFixedCapacityAmplitudeCriterionAt C ρ ↔
      (0 ≤ C ∧
        PinnedPrimeWeightRuleDeficitCriterionAt
          (pinnedPrimeWeightConstantCapacityRule C) ρ) := by
  calc
    PinnedPrimeWeightFixedCapacityAmplitudeCriterionAt C ρ ↔
        PinnedPrimeWeightFixedCapacityCriterionAt C ρ :=
      (pinnedPrimeWeightFixedCapacityCriterion_iff_amplitudeCriterion
        C ρ).symm
    _ ↔
        (0 ≤ C ∧
          PinnedPrimeWeightRuleDeficitCriterionAt
            (pinnedPrimeWeightConstantCapacityRule C) ρ) :=
      pinnedPrimeWeightFixedCapacityCriterion_iff_constantRule C ρ

/-- A fixed amplitude-envelope criterion supplies the already isolated
quadratic recurrence. -/
theorem pinnedPrimeWeightFixedCapacityAmplitudeCriterion_to_recurrence
    {C ρ : ℝ}
    (hcriterion :
      PinnedPrimeWeightFixedCapacityAmplitudeCriterionAt C ρ) :
    QuadraticThetaSourceRecurrenceAt ρ :=
  pinnedPrimeWeightFixedCapacityCriterion_to_recurrence
    ((pinnedPrimeWeightFixedCapacityCriterion_iff_amplitudeCriterion
      C ρ).mpr hcriterion)

/-- In the admitted threshold range, a fixed amplitude-envelope criterion
supplies one quadratic descent step. -/
theorem pinnedPrimeWeightFixedCapacityAmplitudeCriterion_to_descent
    {C ρ : ℝ}
    (hρ : (3 : ℝ) / 4 ≤ ρ)
    (hcriterion :
      PinnedPrimeWeightFixedCapacityAmplitudeCriterionAt C ρ) :
    QuadraticThetaDescentAt ρ :=
  pinnedPrimeWeightFixedCapacityCriterion_to_descent hρ
    ((pinnedPrimeWeightFixedCapacityCriterion_iff_amplitudeCriterion
      C ρ).mpr hcriterion)

end GRWTSK.RiemannHypothesis
