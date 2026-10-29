/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Moebius.WeightedIntegralGrowth
import GRWTSK.NumberTheory.Moebius.WeightedIntegralEnergy

/-!
# CCC literal signed supplier and conditional growth consumer

These definitions retain the prescribed source, normalization, correlation,
integer kernel, closed cutoffs, reset, positive envelope, and both strict
polarity sectors. The supplier proposition is open. The theorem consumes the
actual absolute pickup-growth proposition before supplying concrete supplier
witnesses; it does not prove that growth premise, source normalization, kernel
regularity, spectral recognition, or RH. The absolute bound controls every
reading, so this consumer does not need to infer arithmetic cancellation from
the kernel's polarity or from an auxiliary geometry.

Research direction: grwtsk contributors.
Lean implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticSupplier

open MeasureTheory Set
open ArithmeticPickupSource

noncomputable section

/-- The prescribed compact polynomial profile. -/
def bump (x : ℝ) : ℝ := if x ∈ Icc (-1 : ℝ) 1 then (1 - x ^ 2) ^ 4 else 0

def source (A x : ℝ) : ℝ := A ^ (-(1 / 2 : ℝ)) * bump (x / A)

def sourceResidual (A x : ℝ) : ℝ :=
  deriv (deriv (source A)) x - (1 / 4 : ℝ) * source A x

def sourceNormalization (A : ℝ) : ℝ := ∫ x : ℝ, |sourceResidual A x| ^ 2

def normalizedSource (A x : ℝ) : ℝ := sourceResidual A x / Real.sqrt (sourceNormalization A)

def correlation (A t : ℝ) : ℝ :=
  ∫ x : ℝ, normalizedSource A x * normalizedSource A (x - t)

def integerCutoff (A : ℝ) : ℕ := ⌊Real.exp (2 * A)⌋₊

def reset (A : ℝ) : ℝ := 2 * Real.log A

def readingWindow (A : ℝ) : Set ℝ := Icc (reset A) (2 * A)

/-- Literal closed integer inventory; composites and prime powers are retained. -/
def polarityKernel (A t : ℝ) : ℝ :=
  ∑ k ∈ Finset.Icc 2 (integerCutoff A),
    Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
      (deriv (deriv (correlation A)) (t + Real.log (k : ℝ)) -
        (1 / 2 : ℝ) * deriv (correlation A) (t + Real.log (k : ℝ)))

def resetPickup (A t : ℝ) : ℝ := pickup t - pickup (reset A)

/-- The original previous positive maximum on a finite real-time interval. -/
def positiveEnvelope (T : ℝ) : ℝ := max 0 (sSup (pickup '' Icc 0 T))

theorem positive_envelope_nonneg (T : ℝ) : 0 ≤ positiveEnvelope T := le_max_left _ _

/-- The real supremum is over the actual bounded history, rather than an
unbounded-set default. This finite allowance is not a polynomial-growth theorem. -/
theorem positive_envelope_history_bounded (T : ℝ) : BddAbove (pickup '' Icc 0 T) :=
  ArithmeticPickupEnergy.pickup_image_bdd_above T

theorem positive_envelope_dominates_history {T t : ℝ} (reading : t ∈ Icc 0 T) :
    pickup t ≤ positiveEnvelope T := by
  exact (le_csSup (positive_envelope_history_bounded T)
    (mem_image_of_mem pickup reading)).trans (le_max_right _ _)

/-- For nonnegative horizons the zero reading belongs to the closed history. -/
theorem positive_envelope_eq_sup {T : ℝ} (hT : 0 ≤ T) :
    positiveEnvelope T = sSup (pickup '' Icc 0 T) := by
  apply max_eq_right
  have zeroMember : (0 : ℝ) ∈ pickup '' Icc 0 T := by
    exact ⟨0, ⟨le_rfl, hT⟩, pickup_zero⟩
  exact le_csSup (positive_envelope_history_bounded T) zeroMember

/-- Exact all-real, two-strict-sector supplier proposition; zero sectors are silent.
No axiom or theorem asserts this open arithmetic proposition. -/
def OriginalSupplierEstimate : Prop :=
  ∃ K₀ D p R : ℝ, 0 ≤ K₀ ∧ 0 ≤ D ∧ 0 ≤ p ∧ max 1 (4 * K₀) ≤ R ∧
    ∀ A : ℝ, R ≤ A → ∀ σ : ℝ, (σ = -1 ∨ σ = 1) →
      ∀ᵐ t : ℝ ∂volume,
        (t ∈ readingWindow A ∧ 0 < σ * polarityKernel A t) →
          σ * resetPickup A t ≤
            ((1 + K₀ / A) / Real.sqrt 2) * positiveEnvelope (2 * A) + D * A ^ p

/-- The actual growth premise gives the original witnesses `K₀=0`, `R=1` and
`D=2C3^p`. The premise remains open, and no converse is asserted. -/
theorem whole_pickup_poly_supplies_original (growth : WholePickupPoly) :
    OriginalSupplierEstimate := by
  rcases growth with ⟨C, p, hC, hp, bound⟩
  refine ⟨0, 2 * C * 3 ^ p, p, 1, le_rfl, ?_, hp, ?_, ?_⟩
  · exact mul_nonneg (mul_nonneg (by norm_num) hC) (Real.rpow_nonneg (by norm_num) p)
  · norm_num
  · intro A hA σ hσ
    apply Filter.Eventually.of_forall
    intro t incident
    have reading := incident.1
    have signed := pickup_reset_signed_bound hC hp bound hA reading.1 reading.2 hσ
    have envelope := mul_nonneg
      (div_nonneg (by norm_num : (0 : ℝ) ≤ 1) (Real.sqrt_nonneg 2))
      (positive_envelope_nonneg (2 * A))
    simp only [zero_div, add_zero]
    change σ * (pickup t - pickup (2 * Real.log A)) ≤ _
    linarith

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticSupplier
