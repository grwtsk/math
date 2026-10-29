/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Moebius.WeightedSummatoryIntegral

/-!
# CCC source-faithful conditional pickup growth adapters

The polynomial-growth premise is the actual prescribed integral pickup, not a
generic signal or an auxiliary representation. Its equivalence with the finite
material-coordinate formula keeps the same witnesses. The moving-reset adapter
then gives an absolute bound on every original real reading window, and hence
both signed readings for any polarity gate. It asserts no growth premise, no
kernel-sector representation, and no Riemann-hypothesis theorem.

Research direction: grwtsk contributors.
Lean implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupSource

noncomputable section

/-- The completed signed sum and its cutoff flux remain inside one absolute value. -/
def MaterialPickupPoly : Prop :=
  ∃ C p : ℝ, 0 ≤ C ∧ 0 ≤ p ∧
    ∀ x : ℝ, 1 ≤ x → |finitePickupAt x| ≤ C * (1 + Real.log x) ^ p

/-- Exact exponential/logarithmic reparameterization, with unchanged constants. -/
theorem pickup_bound_iff_material_bound (C p : ℝ) :
    (∀ T : ℝ, 0 ≤ T → |pickup T| ≤ C * (1 + T) ^ p) ↔
      (∀ x : ℝ, 1 ≤ x → |finitePickupAt x| ≤ C * (1 + Real.log x) ^ p) := by
  constructor
  · intro bound x hx
    have hlog : 0 ≤ Real.log x := Real.log_nonneg hx
    have result := bound (Real.log x) hlog
    rw [finite_integration_identity _ hlog] at result
    simpa only [finitePickup, Real.exp_log (by linarith : 0 < x)] using result
  · intro bound T hT
    have hexp : 1 ≤ Real.exp T := by simpa using Real.exp_le_exp.mpr hT
    rw [finite_integration_identity T hT]
    simpa only [finitePickup, Real.log_exp] using bound (Real.exp T) hexp

theorem whole_pickup_poly_iff_material : WholePickupPoly ↔ MaterialPickupPoly := by
  unfold WholePickupPoly MaterialPickupPoly
  constructor
  · rintro ⟨C, p, hC, hp, bound⟩
    exact ⟨C, p, hC, hp, (pickup_bound_iff_material_bound C p).mp bound⟩
  · rintro ⟨C, p, hC, hp, bound⟩
    exact ⟨C, p, hC, hp, (pickup_bound_iff_material_bound C p).mpr bound⟩

/-- The reset bound pays both original values; no lower prefix is dropped. -/
theorem pickup_reset_bound {C p A t : ℝ} (hC : 0 ≤ C) (hp : 0 ≤ p)
    (bound : ∀ T : ℝ, 0 ≤ T → |pickup T| ≤ C * (1 + T) ^ p)
    (hA : 1 ≤ A) (hlower : 2 * Real.log A ≤ t) (hupper : t ≤ 2 * A) :
    |pickup t - pickup (2 * Real.log A)| ≤ (2 * C * 3 ^ p) * A ^ p := by
  have hreset : 0 ≤ 2 * Real.log A := mul_nonneg (by norm_num) (Real.log_nonneg hA)
  have ht : 0 ≤ t := hreset.trans hlower
  have hA0 : 0 ≤ A := by linarith
  have common : 0 ≤ (1 + 2 * A : ℝ) := by linarith
  have htime : (1 + t) ^ p ≤ (1 + 2 * A) ^ p :=
    Real.rpow_le_rpow (by linarith) (by linarith) hp
  have hresetTime : (1 + 2 * Real.log A) ^ p ≤ (1 + 2 * A) ^ p :=
    Real.rpow_le_rpow (by linarith) (by linarith) hp
  have hscale : (1 + 2 * A) ^ p ≤ (3 * A) ^ p :=
    Real.rpow_le_rpow common (by linarith) hp
  calc
    |pickup t - pickup (2 * Real.log A)| ≤
        |pickup t| + |pickup (2 * Real.log A)| := by
      simpa only [sub_zero, zero_sub, abs_neg] using
        abs_sub_le (pickup t) 0 (pickup (2 * Real.log A))
    _ ≤ C * (1 + t) ^ p + C * (1 + 2 * Real.log A) ^ p :=
      add_le_add (bound t ht) (bound _ hreset)
    _ ≤ C * (1 + 2 * A) ^ p + C * (1 + 2 * A) ^ p :=
      add_le_add (mul_le_mul_of_nonneg_left htime hC)
        (mul_le_mul_of_nonneg_left hresetTime hC)
    _ = 2 * C * (1 + 2 * A) ^ p := by ring
    _ ≤ 2 * C * (3 * A) ^ p :=
      mul_le_mul_of_nonneg_left hscale (mul_nonneg (by norm_num) hC)
    _ = (2 * C * 3 ^ p) * A ^ p := by
      rw [Real.mul_rpow (by norm_num : (0 : ℝ) ≤ 3) hA0]
      ring

/-- Both signs are controlled at every reading, before restricting to a strict sector. -/
theorem pickup_reset_signed_bound {C p A t σ : ℝ} (hC : 0 ≤ C) (hp : 0 ≤ p)
    (bound : ∀ T : ℝ, 0 ≤ T → |pickup T| ≤ C * (1 + T) ^ p)
    (hA : 1 ≤ A) (hlower : 2 * Real.log A ≤ t) (hupper : t ≤ 2 * A)
    (hσ : σ = -1 ∨ σ = 1) :
    σ * (pickup t - pickup (2 * Real.log A)) ≤ (2 * C * 3 ^ p) * A ^ p := by
  have habs := pickup_reset_bound hC hp bound hA hlower hupper
  rcases hσ with rfl | rfl
  · simpa only [neg_one_mul] using (neg_le_abs (pickup t - pickup (2 * Real.log A))).trans habs
  · simpa only [one_mul] using (le_abs_self (pickup t - pickup (2 * Real.log A))).trans habs

/-- This conditional conclusion supplies no proof of the open growth premise. -/
theorem whole_pickup_poly_reset (growth : WholePickupPoly) :
    ∃ D p : ℝ, 0 ≤ D ∧ 0 ≤ p ∧
      ∀ A t : ℝ, 1 ≤ A → 2 * Real.log A ≤ t → t ≤ 2 * A →
        |pickup t - pickup (2 * Real.log A)| ≤ D * A ^ p := by
  rcases growth with ⟨C, p, hC, hp, bound⟩
  refine ⟨2 * C * 3 ^ p, p, ?_, hp, ?_⟩
  · exact mul_nonneg (mul_nonneg (by norm_num) hC) (Real.rpow_nonneg (by norm_num) p)
  · intro A t hA hlower hupper
    exact pickup_reset_bound hC hp bound hA hlower hupper

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupSource
