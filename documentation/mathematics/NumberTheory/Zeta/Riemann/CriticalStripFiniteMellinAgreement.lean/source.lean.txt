/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. Mathlib retains its Apache-2.0 attribution. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFinitePowerPatch
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinEnclosure

set_option autoImplicit false

/-!
# Agreement of finite-power and Mellin-prefix certificates

Both routes use the existing pole-normalized zeta function and the same finite
model at a positive integer cutoff. Agreement of their approximate samples charges
both finite errors but no infinite tail; source nonvanishing still requires the
full source error and a strict margin. No prefix is recovered by dividing by s-1.
These are source proof scripts, not an executed evaluator or a shell supplier.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.FiniteMellinAgreement

open MellinCertification

noncomputable section

/-- The two independently introduced derivative-bound expressions are identical. -/
theorem derivative_bounds_agree (a B : ℝ) :
    FinitePowerEnclosure.derivativeBound a B = derivativeMajorant a B := rfl

/-- Finite-model disagreement contains the prefix error only, with no tail term. -/
theorem finitePower_prefix_residual {N : ℕ} {s q : ℂ}
    (hN : 1 ≤ N) (hs : 0 < s.re) :
    finitePowerPoleModel N s - poleMellinEvaluation s q =
      -(s * (s - 1)) * (fractionalMellinTruncation (N : ℝ) s - q) := by
  rw [← truncatedPoleModel_eq_finitePower hN hs]
  unfold truncatedPoleModel poleMellinEvaluation
  ring

/-- A certified prefix encloses the SAME finite-power model after normalization. -/
theorem finitePower_prefix_error {N : ℕ} {s : ℂ}
    (hN : 1 ≤ N) (hs : 0 < s.re)
    (enc : MellinPrefixEnclosure (N : ℝ) s) :
    ‖finitePowerPoleModel N s - poleMellinEvaluation s enc.value‖ ≤
      (‖s‖ * ‖s - 1‖) * enc.error := by
  rw [finitePower_prefix_residual hN hs, norm_mul, norm_neg, norm_mul]
  exact mul_le_mul_of_nonneg_left enc.enclosed
    (mul_nonneg (norm_nonneg _) (norm_nonneg _))

/-- A cross-check of two samples at the exact same source and cutoff. The shared
infinite tail is not charged twice, because this compares finite models only. -/
theorem sample_agreement_le {N : ℕ} {s : ℂ}
    (hN : 1 ≤ N) (hs : 0 < s.re)
    (powers : FinitePowerEnclosure N s)
    (prefix : MellinPrefixEnclosure (N : ℝ) s) :
    ‖powers.sample - poleMellinEvaluation s prefix.value‖ ≤
      powers.finiteError + (‖s‖ * ‖s - 1‖) * prefix.error := by
  have hp : ‖powers.sample - finitePowerPoleModel N s‖ ≤ powers.finiteError := by
    simpa only [norm_sub_rev] using powers.finite_model_error
  calc
    ‖powers.sample - poleMellinEvaluation s prefix.value‖ =
        ‖(powers.sample - finitePowerPoleModel N s) +
          (finitePowerPoleModel N s - poleMellinEvaluation s prefix.value)‖ := by
      congr 1
      ring
    _ ≤ ‖powers.sample - finitePowerPoleModel N s‖ +
        ‖finitePowerPoleModel N s - poleMellinEvaluation s prefix.value‖ := norm_add_le _ _
    _ ≤ _ := add_le_add hp (finitePower_prefix_error hN hs prefix)

/-- The exact-tail margin is invariant under the proved finite-model identity. -/
theorem exact_margin_iff {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    ((‖s‖ * ‖s - 1‖) * mellinTailMajorant s.re (N : ℝ) <
      ‖truncatedPoleModel (N : ℝ) s‖) ↔
    ((‖s‖ * ‖s - 1‖) * mellinTailMajorant s.re (N : ℝ) <
      ‖finitePowerPoleModel N s‖) := by
  rw [truncatedPoleModel_eq_finitePower hN hs]

/-- At an actual zero, every positive integer cutoff fails the strict margin. -/
theorem no_strict_finitePower_margin_at_zero {N : ℕ} {s : ℂ}
    (hN : 1 ≤ N) (hs : 0 < s.re) (hz : poleNormalizedZeta s = 0) :
    ¬ ((‖s‖ * ‖s - 1‖) * mellinTailMajorant s.re (N : ℝ) <
      ‖finitePowerPoleModel N s‖) := by
  have hb := finitePower_source_error hN hs (le_refl s.re)
  rw [hz, zero_sub, norm_neg] at hb
  exact not_lt_of_ge hb

/-- Pointwise mathematical completeness transfers to exact finite sums. This does
not evaluate their powers, decide zeros, or construct any all-height cover. -/
theorem nonzero_iff_exists_finitePower_margin {s : ℂ} (hs : 0 < s.re) :
    poleNormalizedZeta s ≠ 0 ↔ ∃ N : ℕ, 1 ≤ N ∧
      (‖s‖ * ‖s - 1‖) * mellinTailMajorant s.re (N : ℝ) <
        ‖finitePowerPoleModel N s‖ := by
  constructor
  · intro hne
    obtain ⟨n, hn⟩ := (poleNormalized_ne_zero_iff_exists_mellin_margin hs).mp hne
    have hN : 1 ≤ n + 1 := Nat.succ_le_succ (Nat.zero_le n)
    refine ⟨n + 1, hN, ?_⟩
    rw [← truncatedPoleModel_eq_finitePower hN hs]
    simpa only [Nat.cast_add, Nat.cast_one] using hn
  · rintro ⟨N, hN, hm⟩ hz
    exact no_strict_finitePower_margin_at_zero hN hs hz hm

/-- An approximate finite-power sample uses its full source error, not just the
cross-route agreement bound or the exact-model tail margin. -/
theorem nonzero_of_power_sample {N : ℕ} {s : ℂ} {σ : ℝ}
    (powers : FinitePowerEnclosure N s) (hN : 1 ≤ N)
    (hσ : 0 < σ) (hs : σ ≤ s.re)
    (hm : powers.sourceError σ < ‖powers.sample‖) : poleNormalizedZeta s ≠ 0 := by
  intro hz
  have hb := powers.source_encloses hN hσ hs
  rw [hz, zero_sub, norm_neg] at hb
  exact (not_lt_of_ge hb) hm

/-- The pole value agrees without dividing by the vanishing normalization factor. -/
theorem pole_values_agree (N : ℕ) (q : ℂ) :
    finitePowerPoleModel N 1 = poleMellinEvaluation 1 q := by
  simp [poleMellinEvaluation]

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.FiniteMellinAgreement
