import Mathlib

/-!
# Least-cost balanced corrections and exact two-moment jets

Finite optimization from audited RH conversation Batches 17–18. A vanishing
Dirichlet-polynomial moment can be achieved cheaply in one declared quadratic
metric. This does not estimate the signed arithmetic consumer, and a different
support or metric is a different optimization problem.

Human direction: grwtsk contributors. Lean implementation: OpenAI Codex.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.CorrectionOptimization

open scoped BigOperators
noncomputable section

def inverseWeightSum {ι : Type*} (s : Finset ι) (q d : ι → ℝ) : ℝ :=
  ∑ i ∈ s, 1 / (q i * d i ^ 2)

def optimalCorrection {ι : Type*} (s : Finset ι) (q d : ι → ℝ) (m : ℝ) (i : ι) : ℝ :=
  m / (inverseWeightSum s q d * q i * d i)

theorem correction_square_expand {q d S : ℝ}
    (hq : q ≠ 0) (hd : d ≠ 0) (hS : S ≠ 0) (r m : ℝ) :
    q * (r - m / (S * q * d)) ^ 2 =
      q * r ^ 2 - (2 * m / S) * (r / d) + (m / S) ^ 2 * (1 / (q * d ^ 2)) := by
  field_simp
  ring

/-- The optimal vector satisfies the literal reciprocal-moment constraint. -/
theorem optimalCorrection_moment {ι : Type*} (s : Finset ι) (q d : ι → ℝ)
    (hq : ∀ i ∈ s, q i ≠ 0) (hd : ∀ i ∈ s, d i ≠ 0)
    (hS : inverseWeightSum s q d ≠ 0) (m : ℝ) :
    (∑ i ∈ s, optimalCorrection s q d m i / d i) = m := by
  calc
    _ = ∑ i ∈ s, (m / inverseWeightSum s q d) * (1 / (q i * d i ^ 2)) := by
      apply Finset.sum_congr rfl
      intro i hi
      unfold optimalCorrection
      field_simp [hq i hi, hd i hi]
    _ = (m / inverseWeightSum s q d) * inverseWeightSum s q d := by
      rw [← Finset.mul_sum]
      rfl
    _ = m := div_mul_cancel₀ m hS

/-- Every admissible correction pays the minimum plus its exact positive defect. -/
theorem correction_cost_identity {ι : Type*} (s : Finset ι) (q d r : ι → ℝ)
    (hq : ∀ i ∈ s, q i ≠ 0) (hd : ∀ i ∈ s, d i ≠ 0)
    (hS : inverseWeightSum s q d ≠ 0) (m : ℝ)
    (hm : ∑ i ∈ s, r i / d i = m) :
    (∑ i ∈ s, q i * r i ^ 2) = m ^ 2 / inverseWeightSum s q d +
      ∑ i ∈ s, q i * (r i - optimalCorrection s q d m i) ^ 2 := by
  have hs : (∑ i ∈ s, q i * (r i - optimalCorrection s q d m i) ^ 2) =
      (∑ i ∈ s, q i * r i ^ 2) - (2 * m / inverseWeightSum s q d) * m +
        (m / inverseWeightSum s q d) ^ 2 * inverseWeightSum s q d := by
    calc
      _ = ∑ i ∈ s, (q i * r i ^ 2 - (2 * m / inverseWeightSum s q d) *
          (r i / d i) + (m / inverseWeightSum s q d) ^ 2 * (1 / (q i * d i ^ 2))) := by
        apply Finset.sum_congr rfl
        intro i hi
        exact correction_square_expand (hq i hi) (hd i hi) hS _ _
      _ = _ := by
        rw [Finset.sum_add_distrib, Finset.sum_sub_distrib, ← Finset.mul_sum,
          ← Finset.mul_sum, hm]
        rfl
  rw [hs]
  field_simp
  ring

/-- Positivity of the chosen metric gives the lower bound, without an arithmetic estimate. -/
theorem correction_cost_minimum {ι : Type*} (s : Finset ι) (q d r : ι → ℝ)
    (hq : ∀ i ∈ s, 0 < q i) (hd : ∀ i ∈ s, d i ≠ 0)
    (hS : inverseWeightSum s q d ≠ 0) (m : ℝ)
    (hm : ∑ i ∈ s, r i / d i = m) :
    m ^ 2 / inverseWeightSum s q d ≤ ∑ i ∈ s, q i * r i ^ 2 := by
  rw [correction_cost_identity s q d r (fun i hi => (hq i hi).ne') hd hS m hm]
  have h := Finset.sum_nonneg (s := s) (f := fun i =>
    q i * (r i - optimalCorrection s q d m i) ^ 2)
    (fun i hi => mul_nonneg (hq i hi).le (sq_nonneg _))
  linarith

/-- Equality forces the unique optimizer on every supported coordinate. -/
theorem correction_minimum_unique {ι : Type*} (s : Finset ι) (q d r : ι → ℝ)
    (hq : ∀ i ∈ s, 0 < q i) (hd : ∀ i ∈ s, d i ≠ 0)
    (hS : inverseWeightSum s q d ≠ 0) (m : ℝ)
    (hm : ∑ i ∈ s, r i / d i = m)
    (hcost : ∑ i ∈ s, q i * r i ^ 2 = m ^ 2 / inverseWeightSum s q d) :
    ∀ i ∈ s, r i = optimalCorrection s q d m i := by
  have heq := correction_cost_identity s q d r (fun i hi => (hq i hi).ne') hd hS m hm
  have hzero : (∑ i ∈ s, q i * (r i - optimalCorrection s q d m i) ^ 2) = 0 := by
    linarith
  intro i hi
  have hterm := Finset.single_le_sum
    (fun j hj => mul_nonneg (hq j hj).le (sq_nonneg (r j - optimalCorrection s q d m j))) hi
  rw [hzero] at hterm
  have he : q i * (r i - optimalCorrection s q d m i) ^ 2 = 0 :=
    le_antisymm hterm (mul_nonneg (hq i hi).le (sq_nonneg _))
  have hsquare : (r i - optimalCorrection s q d m i) ^ 2 = 0 :=
    (mul_eq_zero.mp he).resolve_left (hq i hi).ne'
  exact sub_eq_zero.mp (sq_eq_zero_iff.mp hsquare)

/-- A two-point correction realizes both moments with exact logarithmic normalization. -/
theorem two_support_jet (q M₀ M₁ κ : ℝ) (hq : q ≠ 0) (hlog : Real.log q ≠ 0) :
    (M₀ - (M₁ + κ) / Real.log q) +
        (q * (M₁ + κ) / Real.log q) / q = M₀ ∧
      ((q * (M₁ + κ) / Real.log q) / q) * Real.log q = M₁ + κ := by
  constructor <;> field_simp
  ring

end
end GRWTSK.RiemannHypothesis.Conversation.CorrectionOptimization
