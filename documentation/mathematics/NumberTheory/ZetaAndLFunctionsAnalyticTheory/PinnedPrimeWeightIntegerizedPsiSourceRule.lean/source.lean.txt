/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightPsiSourceRule
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Integerized Chebyshev psi source rule

The parent response `X * (psi(v)-v)` contains the deterministic floor term
`X * (floor(v)-v)`.  This module moves that term into the signed residual and
reduces the open nonlinear response theorem to integer next-octave targets.

No quadratic response estimate, explicit formula, or RH theorem is proved.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
INTEGERIZED_PSI_SIGNED_RULE_DEFINED /
FLOOR_CORRECTION_RESIDUALIZED /
INTEGER_TARGET_CAPACITY_EQUIVALENCE_DEFINED /
INTEGER_PSI_QUADRATIC_CAPACITY_OPEN / NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open Chebyshev
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Integer source point underlying a real target. -/
def pinnedPrimeWeightPsiGridIndex (v : ℝ) : ℕ := ⌊v⌋₊

theorem psi_eq_psi_gridIndex (v : ℝ) :
    ψ v = ψ (pinnedPrimeWeightPsiGridIndex v : ℝ) := by
  simpa [pinnedPrimeWeightPsiGridIndex] using
    (Chebyshev.psi_eq_psi_coe_floor v)

theorem pinnedPrimeWeightPsiGridIndex_cast_le
    {v : ℝ} (hv : 0 ≤ v) :
    (pinnedPrimeWeightPsiGridIndex v : ℝ) ≤ v := by
  simpa [pinnedPrimeWeightPsiGridIndex] using Nat.floor_le hv

theorem pinnedPrimeWeightPsiFloorCorrection_abs_le_one
    {v : ℝ} (hv : 0 ≤ v) :
    |(pinnedPrimeWeightPsiGridIndex v : ℝ) - v| ≤ 1 := by
  have hle := pinnedPrimeWeightPsiGridIndex_cast_le hv
  have hlt : v < (pinnedPrimeWeightPsiGridIndex v : ℝ) + 1 := by
    simpa [pinnedPrimeWeightPsiGridIndex] using Nat.lt_floor_add_one v
  rw [abs_of_nonpos (sub_nonpos.mpr hle)]
  linarith

@[simp] theorem pinnedPrimeWeightPsiGridIndex_natCast (m : ℕ) :
    pinnedPrimeWeightPsiGridIndex (m : ℝ) = m := by
  simp [pinnedPrimeWeightPsiGridIndex]

/-- Stage-scaled integer-grid psi error. -/
def pinnedPrimeWeightIntegerPsiResponse (j : ℕ) (v : ℝ) : ℝ :=
  (dyadicScale j : ℝ) *
    psiError (pinnedPrimeWeightPsiGridIndex v : ℝ)

/-- Higher-prime-power correction plus the complete floor sawtooth. -/
def pinnedPrimeWeightIntegerPsiSignedResidual (_j : ℕ) (v : ℝ) : ℝ :=
  θ v - ψ v + ((pinnedPrimeWeightPsiGridIndex v : ℝ) - v)

theorem thetaError_eq_integerPsiResponse_div_add_signedResidual
    (j : ℕ) (v : ℝ) :
    thetaError v =
      pinnedPrimeWeightIntegerPsiResponse j v / (dyadicScale j : ℝ) +
        pinnedPrimeWeightIntegerPsiSignedResidual j v := by
  have hX : (dyadicScale j : ℝ) ≠ 0 := by
    exact_mod_cast Nat.ne_of_gt (GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j)
  have hpsi := psi_eq_psi_gridIndex v
  unfold pinnedPrimeWeightIntegerPsiResponse
    pinnedPrimeWeightIntegerPsiSignedResidual thetaError psiError
  rw [hpsi]
  field_simp [hX]
  ring

/-- Immutable signed rule with the unit-cell sawtooth in the residual. -/
def pinnedPrimeWeightIntegerPsiSourceRule :
    PinnedPrimeWeightSignedSourceRule where
  sourceIdentity := "Mathlib Chebyshev psi floor identity plus exact theta/psi split"
  normalization :=
    "response=X*(psi(floor(v))-floor(v)); residual=theta(v)-psi(v)+floor(v)-v"
  invalidationKey :=
    "mathlib db584cd6d46c92f209a44c0f1c829460d327499d; parent PR #832 head b216617f655b33636bfc73a927c36e4f03642578"
  response := pinnedPrimeWeightIntegerPsiResponse
  signedResidual := pinnedPrimeWeightIntegerPsiSignedResidual
  exactIdentity := by
    intro j v _
    exact thetaError_eq_integerPsiResponse_div_add_signedResidual j v

@[simp] theorem pinnedPrimeWeightIntegerPsiSourceRule_response
    (j : ℕ) (v : ℝ) :
    pinnedPrimeWeightIntegerPsiSourceRule.response j v =
      (dyadicScale j : ℝ) *
        psiError (pinnedPrimeWeightPsiGridIndex v : ℝ) := rfl

@[simp] theorem pinnedPrimeWeightIntegerPsiSourceRule_signedResidual
    (j : ℕ) (v : ℝ) :
    pinnedPrimeWeightIntegerPsiSourceRule.signedResidual j v =
      θ v - ψ v + ((pinnedPrimeWeightPsiGridIndex v : ℝ) - v) := rfl

theorem pinnedPrimeWeightIntegerPsiSourceRule_response_abs
    (j : ℕ) (v : ℝ) :
    |pinnedPrimeWeightIntegerPsiSourceRule.response j v| =
      (dyadicScale j : ℝ) *
        |psiError (pinnedPrimeWeightPsiGridIndex v : ℝ)| := by
  rw [pinnedPrimeWeightIntegerPsiSourceRule_response, abs_mul,
    abs_of_nonneg (Nat.cast_nonneg _)]

theorem pinnedPrimeWeightNextOctave_nonnegative
    {j : ℕ} {v : ℝ} (hv : v ∈ pinnedPrimeWeightNextOctave j) :
    0 ≤ v := by
  exact (by positivity : (0 : ℝ) ≤ (dyadicScale (j + 1) : ℝ)).trans hv.1

/-- The integerized residual costs at most one more unit than the parent
higher-prime-power residual. -/
theorem pinnedPrimeWeightIntegerPsiResidual_abs_le_parent_add_one
    {j : ℕ} {v : ℝ} (hv : v ∈ pinnedPrimeWeightNextOctave j) :
    |pinnedPrimeWeightIntegerPsiSourceRule.signedResidual j v| ≤
      |pinnedPrimeWeightPsiSourceRule.signedResidual j v| + 1 := by
  rw [pinnedPrimeWeightIntegerPsiSourceRule_signedResidual,
    pinnedPrimeWeightPsiSourceRule_signedResidual]
  calc
    |(θ v - ψ v) + ((pinnedPrimeWeightPsiGridIndex v : ℝ) - v)|
        ≤ |θ v - ψ v| +
            |(pinnedPrimeWeightPsiGridIndex v : ℝ) - v| := abs_add_le _ _
    _ ≤ |θ v - ψ v| + 1 :=
      add_le_add le_rfl
        (pinnedPrimeWeightPsiFloorCorrection_abs_le_one
          (pinnedPrimeWeightNextOctave_nonnegative hv))

/-- Exact parent/new response comparison. -/
theorem pinnedPrimeWeightPsiResponse_eq_integerResponse_add_floorCorrection
    (j : ℕ) (v : ℝ) :
    pinnedPrimeWeightPsiSourceRule.response j v =
      pinnedPrimeWeightIntegerPsiSourceRule.response j v +
        (dyadicScale j : ℝ) *
          ((pinnedPrimeWeightPsiGridIndex v : ℝ) - v) := by
  rw [pinnedPrimeWeightPsiSourceRule_response,
    pinnedPrimeWeightIntegerPsiSourceRule_response]
  unfold psiError
  rw [psi_eq_psi_gridIndex v]
  ring

@[simp] theorem pinnedPrimeWeightPsiGridIndex_nat_add_half (m : ℕ) :
    pinnedPrimeWeightPsiGridIndex ((m : ℝ) + 1 / 2) = m := by
  unfold pinnedPrimeWeightPsiGridIndex
  rw [Nat.floor_eq_iff (by positivity)]
  constructor <;> norm_num

theorem pinnedPrimeWeightPsiResponse_at_halfInteger (j m : ℕ) :
    pinnedPrimeWeightPsiSourceRule.response j ((m : ℝ) + 1 / 2) =
      pinnedPrimeWeightIntegerPsiSourceRule.response j ((m : ℝ) + 1 / 2) -
        (dyadicScale j : ℝ) / 2 := by
  rw [pinnedPrimeWeightPsiResponse_eq_integerResponse_add_floorCorrection,
    pinnedPrimeWeightPsiGridIndex_nat_add_half]
  ring

theorem pinnedPrimeWeightIntegerResponse_at_halfInteger_eq_parent_at_nat
    (j m : ℕ) :
    pinnedPrimeWeightIntegerPsiSourceRule.response j ((m : ℝ) + 1 / 2) =
      pinnedPrimeWeightPsiSourceRule.response j (m : ℝ) := by
  rw [pinnedPrimeWeightIntegerPsiSourceRule_response,
    pinnedPrimeWeightPsiSourceRule_response,
    pinnedPrimeWeightPsiGridIndex_nat_add_half]

/-- Two parent bounds on an integer/half-integer pair force the deterministic
square-amplitude floor. -/
theorem pinnedPrimeWeightParentPsiPairBounds_force_sawtoothFloor
    {j m : ℕ} {C A : ℝ}
    (hinteger :
      |pinnedPrimeWeightPsiSourceRule.response j (m : ℝ)| ≤ C * A^2)
    (hhalf :
      |pinnedPrimeWeightPsiSourceRule.response j ((m : ℝ) + 1 / 2)| ≤
        C * A^2) :
    (dyadicScale j : ℝ) ≤ 4 * C * A^2 := by
  have hrel :
      pinnedPrimeWeightPsiSourceRule.response j ((m : ℝ) + 1 / 2) =
        pinnedPrimeWeightPsiSourceRule.response j (m : ℝ) -
          (dyadicScale j : ℝ) / 2 := by
    rw [pinnedPrimeWeightPsiResponse_at_halfInteger,
      pinnedPrimeWeightIntegerResponse_at_halfInteger_eq_parent_at_nat]
  have hgap :
      (dyadicScale j : ℝ) / 2 ≤ 2 * C * A^2 := by
    calc
      (dyadicScale j : ℝ) / 2 =
          |pinnedPrimeWeightPsiSourceRule.response j (m : ℝ) -
            pinnedPrimeWeightPsiSourceRule.response j ((m : ℝ) + 1 / 2)| := by
              rw [hrel]
              ring_nf
              rw [abs_of_nonneg (by positivity)]
      _ ≤ |pinnedPrimeWeightPsiSourceRule.response j (m : ℝ)| +
          |pinnedPrimeWeightPsiSourceRule.response j ((m : ℝ) + 1 / 2)| :=
        abs_sub _ _
      _ ≤ C * A^2 + C * A^2 := add_le_add hinteger hhalf
      _ = 2 * C * A^2 := by ring
  linarith

/-- The floor of a real next-octave target remains in the integer next octave. -/
theorem pinnedPrimeWeightPsiGridIndex_mem_nextOctaveNat
    {j : ℕ} {v : ℝ} (hv : v ∈ pinnedPrimeWeightNextOctave j) :
    dyadicScale (j + 1) ≤ pinnedPrimeWeightPsiGridIndex v ∧
      pinnedPrimeWeightPsiGridIndex v ≤ 2 * dyadicScale (j + 1) := by
  have hv0 := pinnedPrimeWeightNextOctave_nonnegative hv
  constructor
  · change dyadicScale (j + 1) ≤ ⌊v⌋₊
    exact (Nat.le_floor_iff hv0).2 hv.1
  · exact_mod_cast
      (pinnedPrimeWeightPsiGridIndex_cast_le hv0).trans hv.2

theorem natCast_mem_pinnedPrimeWeightNextOctave
    {j m : ℕ}
    (hlower : dyadicScale (j + 1) ≤ m)
    (hupper : m ≤ 2 * dyadicScale (j + 1)) :
    (m : ℝ) ∈ pinnedPrimeWeightNextOctave j := by
  exact ⟨by exact_mod_cast hlower, by exact_mod_cast hupper⟩

/-- Open nonlinear theorem stated only on integer target points. -/
def PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget
    (C : ℝ) : Prop :=
  0 ≤ C ∧ ∃ j₀ : ℕ, ∀ j ≥ j₀, ∀ m : ℕ,
    dyadicScale (j + 1) ≤ m →
    m ≤ 2 * dyadicScale (j + 1) →
    (dyadicScale j : ℝ) * |psiError (m : ℝ)| ≤
      C * (pinnedPrimeWeightedAmplitude (dyadicScale j))^2

def PinnedPrimeWeightIntegerPsiQuadraticResponseCapacity : Prop :=
  ∃ C : ℝ,
    PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget C

/-- Same capacity written over all real targets for the integerized rule. -/
def PinnedPrimeWeightIntegerPsiRuleResponseCapacityWithBudget
    (C : ℝ) : Prop :=
  0 ≤ C ∧ ∃ j₀ : ℕ, ∀ j ≥ j₀, ∀ v ∈ pinnedPrimeWeightNextOctave j,
    |pinnedPrimeWeightIntegerPsiSourceRule.response j v| ≤
      C * (pinnedPrimeWeightedAmplitude (dyadicScale j))^2

theorem pinnedPrimeWeightIntegerPsiCapacity_iff_ruleResponseCapacity
    (C : ℝ) :
    PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget C ↔
      PinnedPrimeWeightIntegerPsiRuleResponseCapacityWithBudget C := by
  constructor
  · rintro ⟨hC, j₀, h⟩
    refine ⟨hC, j₀, ?_⟩
    intro j hj v hv
    have hm := pinnedPrimeWeightPsiGridIndex_mem_nextOctaveNat hv
    rw [pinnedPrimeWeightIntegerPsiSourceRule_response_abs]
    exact h j hj _ hm.1 hm.2
  · rintro ⟨hC, j₀, h⟩
    refine ⟨hC, j₀, ?_⟩
    intro j hj m hlower hupper
    have hv := natCast_mem_pinnedPrimeWeightNextOctave
      (j := j) hlower hupper
    simpa using h j hj (m : ℝ) hv

/-- Parent all-real capacity implies the integer-target condition by restriction. -/
theorem pinnedPrimeWeightPsiCapacity_to_integerPsiCapacity
    {C : ℝ}
    (hcapacity : PinnedPrimeWeightPsiQuadraticResponseCapacityWithBudget C) :
    PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget C := by
  refine ⟨hcapacity.1, ?_⟩
  obtain ⟨j₀, h⟩ := hcapacity.2
  refine ⟨j₀, ?_⟩
  intro j hj m hlower hupper
  have hv := natCast_mem_pinnedPrimeWeightNextOctave
    (j := j) hlower hupper
  have hm := h j hj (m : ℝ) hv
  simpa [pinnedPrimeWeightPsiSourceRule_response_abs] using hm

/-- The bounded floor correction remains inside the descended residual budget. -/
theorem pinnedPrimeWeightIntegerPsiSourceRule_signedResidual_stageEnvelope
    {ρ η : ℝ} (hρ : (3 : ℝ) / 4 ≤ ρ) (hη : 0 < η) :
    ∃ R : ℝ, 0 ≤ R ∧ ∀ j : ℕ, ∀ v ∈ pinnedPrimeWeightNextOctave j,
      |pinnedPrimeWeightIntegerPsiSourceRule.signedResidual j v| + 1 ≤
        pinnedPrimeWeightStageErrorEnvelope j R ρ η := by
  obtain ⟨R₀, hR₀, hparent⟩ :=
    pinnedPrimeWeightPsiSourceRule_signedResidual_stageEnvelope
      (ρ := ρ) (η := η) hρ hη
  let R := R₀ + 1
  refine ⟨R, by dsimp [R]; linarith, ?_⟩
  intro j v hv
  let X := dyadicScale j
  let e := quadraticThreshold ρ + η / 2
  have hX : 0 < X := by dsimp [X]; exact GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j
  have he : 0 ≤ e := by
    dsimp [e]
    linarith [half_le_quadraticThreshold hρ]
  have hone : 1 ≤ Real.rpow (X : ℝ) e := by
    exact Real.one_le_rpow
      (by exact_mod_cast Nat.one_le_iff_ne_zero.mpr (Nat.ne_of_gt hX)) he
  have hnew := pinnedPrimeWeightIntegerPsiResidual_abs_le_parent_add_one hv
  have hp :
      |pinnedPrimeWeightPsiSourceRule.signedResidual j v| + 1 ≤
        R₀ * Real.rpow (X : ℝ) e := by
    simpa [pinnedPrimeWeightStageErrorEnvelope, X, e] using hparent j v hv
  have :
      |pinnedPrimeWeightIntegerPsiSourceRule.signedResidual j v| + 1 ≤
        R * Real.rpow (X : ℝ) e := by
    calc
      _ ≤ (|pinnedPrimeWeightPsiSourceRule.signedResidual j v| + 1) + 1 := by
        linarith
      _ ≤ R₀ * Real.rpow (X : ℝ) e + Real.rpow (X : ℝ) e :=
        add_le_add hp hone
      _ = R * Real.rpow (X : ℝ) e := by dsimp [R]; ring
  simpa [pinnedPrimeWeightStageErrorEnvelope, X, e] using this

/-- Integer capacity plus the controlled residual supplies the fixed source criterion. -/
theorem pinnedPrimeWeightIntegerPsiCapacityWithBudget_to_fixedSignedSourceCoupling
    {C ρ : ℝ} (hρ : (3 : ℝ) / 4 ≤ ρ)
    (hcapacity : PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget C) :
    PinnedPrimeWeightFixedSignedSourceCouplingCriterionAt
      pinnedPrimeWeightIntegerPsiSourceRule C ρ := by
  have hrule :=
    (pinnedPrimeWeightIntegerPsiCapacity_iff_ruleResponseCapacity C).1 hcapacity
  refine ⟨hrule.1, ?_⟩
  intro η hη
  obtain ⟨R, hR, hresidual⟩ :=
    pinnedPrimeWeightIntegerPsiSourceRule_signedResidual_stageEnvelope
      (ρ := ρ) (η := η) hρ hη
  obtain ⟨j₀, hresponse⟩ := hrule.2
  refine ⟨R, hR, j₀, ?_⟩
  intro j hj
  exact ⟨hresponse j hj, hresidual j⟩

theorem pinnedPrimeWeightIntegerPsiCapacityWithBudget_to_recurrence
    {C ρ : ℝ} (hρ : (3 : ℝ) / 4 ≤ ρ)
    (hcapacity : PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget C) :
    QuadraticThetaSourceRecurrenceAt ρ :=
  pinnedPrimeWeightFixedSignedSourceCouplingCriterion_to_recurrence
    (pinnedPrimeWeightIntegerPsiCapacityWithBudget_to_fixedSignedSourceCoupling
      hρ hcapacity)

theorem pinnedPrimeWeightIntegerPsiCapacityWithBudget_to_descent
    {C ρ : ℝ} (hρ : (3 : ℝ) / 4 ≤ ρ)
    (hcapacity : PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget C) :
    QuadraticThetaDescentAt ρ :=
  pinnedPrimeWeightFixedSignedSourceCouplingCriterion_to_descent hρ
    (pinnedPrimeWeightIntegerPsiCapacityWithBudget_to_fixedSignedSourceCoupling
      hρ hcapacity)

theorem pinnedPrimeWeightIntegerPsiCapacity_to_twoRecurrences
    (hcapacity : PinnedPrimeWeightIntegerPsiQuadraticResponseCapacity) :
    QuadraticThetaSourceRecurrenceAt ((7 : ℝ) / 8) ∧
      QuadraticThetaSourceRecurrenceAt ((3 : ℝ) / 4) := by
  obtain ⟨C, hC⟩ := hcapacity
  exact ⟨
    pinnedPrimeWeightIntegerPsiCapacityWithBudget_to_recurrence
      (C := C) (ρ := (7 : ℝ) / 8) (by norm_num) hC,
    pinnedPrimeWeightIntegerPsiCapacityWithBudget_to_recurrence
      (C := C) (ρ := (3 : ℝ) / 4) (by norm_num) hC⟩

/-!
Additional source statements retained from issue #842, branch
`research/842-pinned-prime-psi-grid-v01`, head
`5b8c3527a68ee53eb748eb4622159afbb9c49d5b`, alongside the PR #851
integerized source rule above. The historical branch cited parent PR #832
head `b216617f655b33636bfc73a927c36e4f03642578` and mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
PARENT_SAWTOOTH_FLOOR_OBSTRUCTION_DEFINED /
INTEGER_PSI_CAPACITY_TO_RECURRENCE_DEFINED /
INTEGER_PSI_QUADRATIC_CAPACITY_OPEN / NO_RH_CLAIM.
-/

theorem pinnedPrimeWeightPsiGridIndex_lt_add_one (v : ℝ) :
    v < (pinnedPrimeWeightPsiGridIndex v : ℝ) + 1 := by
  simpa [pinnedPrimeWeightPsiGridIndex] using Nat.lt_floor_add_one v

theorem pinnedPrimeWeightPsiFloorCorrection_nonpositive
    {v : ℝ} (hv : 0 ≤ v) :
    (pinnedPrimeWeightPsiGridIndex v : ℝ) - v ≤ 0 :=
  sub_nonpos.mpr (pinnedPrimeWeightPsiGridIndex_cast_le hv)

theorem pinnedPrimeWeightPsiFloorCorrection_abs_lt_one
    {v : ℝ} (hv : 0 ≤ v) :
    |(pinnedPrimeWeightPsiGridIndex v : ℝ) - v| < 1 := by
  rw [abs_of_nonpos (pinnedPrimeWeightPsiFloorCorrection_nonpositive hv)]
  linarith [pinnedPrimeWeightPsiGridIndex_lt_add_one v]

theorem pinnedPrimeWeightIntegerPsiSourceRule_signedResidual_nonpositive
    {j : ℕ} {v : ℝ} (hv : v ∈ pinnedPrimeWeightNextOctave j) :
    pinnedPrimeWeightIntegerPsiSourceRule.signedResidual j v ≤ 0 := by
  rw [pinnedPrimeWeightIntegerPsiSourceRule_signedResidual]
  have hθ : θ v - ψ v ≤ 0 :=
    sub_nonpos.mpr (Chebyshev.theta_le_psi v)
  have hf : (pinnedPrimeWeightPsiGridIndex v : ℝ) - v ≤ 0 :=
    pinnedPrimeWeightPsiFloorCorrection_nonpositive
      (pinnedPrimeWeightNextOctave_nonnegative hv)
  linarith

theorem pinnedPrimeWeightIntegerPsiSourceRule_signedResidual_abs
    {j : ℕ} {v : ℝ} (hv : v ∈ pinnedPrimeWeightNextOctave j) :
    |pinnedPrimeWeightIntegerPsiSourceRule.signedResidual j v| =
      (ψ v - θ v) + (v - (pinnedPrimeWeightPsiGridIndex v : ℝ)) := by
  rw [abs_of_nonpos
    (pinnedPrimeWeightIntegerPsiSourceRule_signedResidual_nonpositive hv)]
  rw [pinnedPrimeWeightIntegerPsiSourceRule_signedResidual]
  ring

theorem pinnedPrimeWeightIntegerPsiSourceRule_signedResidual_abs_le_parent_add_one
    {j : ℕ} {v : ℝ} (hv : v ∈ pinnedPrimeWeightNextOctave j) :
    |pinnedPrimeWeightIntegerPsiSourceRule.signedResidual j v| ≤
      |pinnedPrimeWeightPsiSourceRule.signedResidual j v| + 1 := by
  rw [pinnedPrimeWeightIntegerPsiSourceRule_signedResidual_abs hv,
    pinnedPrimeWeightPsiSourceRule_signedResidual_abs]
  have h := pinnedPrimeWeightPsiFloorCorrection_abs_le_one
    (pinnedPrimeWeightNextOctave_nonnegative hv)
  rw [abs_of_nonpos (pinnedPrimeWeightPsiFloorCorrection_nonpositive
    (pinnedPrimeWeightNextOctave_nonnegative hv))] at h
  linarith

@[simp] theorem pinnedPrimeWeightPsiResponses_eq_at_nat (j m : ℕ) :
    pinnedPrimeWeightPsiSourceRule.response j (m : ℝ) =
      pinnedPrimeWeightIntegerPsiSourceRule.response j (m : ℝ) := by
  rw [pinnedPrimeWeightPsiResponse_eq_integerResponse_add_floorCorrection]
  simp

theorem pinnedPrimeWeightIntegerPsiCapacity_to_descentProgram
    (hcapacity : PinnedPrimeWeightIntegerPsiQuadraticResponseCapacity) :
    QuadraticThetaDescentSevenEighthsToHalf := by
  obtain ⟨C, hC⟩ := hcapacity
  intro ρ hρ _
  exact pinnedPrimeWeightIntegerPsiCapacityWithBudget_to_descent hρ hC

end GRWTSK.RiemannHypothesis
