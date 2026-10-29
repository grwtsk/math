/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Moebius.SignedIntegralSectorBounds
import GRWTSK.NumberTheory.Moebius.EnergyGrowthEquivalences
import Mathlib.MeasureTheory.Function.EssSup
import Mathlib.Data.EReal.Basic

/-!
# CCC exact original signed supplier meter

The literal strict sectors are gated by bottom in extended reals. This avoids
assuming source-kernel measurability: essential suprema and their almost-everywhere
upper bounds are defined for every function. Finiteness is proved separately from
the actual compact-window pickup bound before a real meter is formed.

Research direction: grwtsk contributors. Implementation: OpenAI Codex.
No polynomial arithmetic allowance, source regularity, supplier proof, or RH claim.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticSupplierMeter

open MeasureTheory Set
open ArithmeticSupplier ArithmeticPickupSource ArithmeticPickupEnergy

noncomputable section

def strictSector (A σ : ℝ) : Set ℝ :=
  {t | t ∈ readingWindow A ∧ 0 < σ * polarityKernel A t}

def gatedReading (A σ t : ℝ) : EReal := by
  classical
  exact if t ∈ strictSector A σ then ((σ * resetPickup A t : ℝ) : EReal) else ⊥

def sectorEssSup (A σ : ℝ) : EReal := essSup (gatedReading A σ) volume

def extendedMeter (A : ℝ) : EReal :=
  max 0 (max (sectorEssSup A 1) (sectorEssSup A (-1)))

theorem gated_reading_ae_le_iff (A σ : ℝ) (U : EReal) :
    (∀ᵐ t : ℝ ∂volume, gatedReading A σ t ≤ U) ↔
      ∀ᵐ t : ℝ ∂volume,
        t ∈ strictSector A σ → ((σ * resetPickup A t : ℝ) : EReal) ≤ U := by
  constructor
  · intro h
    filter_upwards [h] with t ht incident
    simpa [gatedReading, incident] using ht
  · intro h
    filter_upwards [h] with t ht
    by_cases incident : t ∈ strictSector A σ
    · simpa [gatedReading, incident] using ht incident
    · simp [gatedReading, incident]

/-- This is the subset essential supremum characterized by its exact a.e. upper bounds. -/
theorem sector_esssup_le_iff (A σ : ℝ) (U : EReal) :
    sectorEssSup A σ ≤ U ↔
      ∀ᵐ t : ℝ ∂volume,
        t ∈ strictSector A σ → ((σ * resetPickup A t : ℝ) : EReal) ≤ U := by
  rw [← gated_reading_ae_le_iff]
  constructor
  · intro h
    have upper : ∀ᵐ t : ℝ ∂volume,
        gatedReading A σ t ≤ sectorEssSup A σ := ae_le_essSup
    exact upper.mono (fun _ ht ↦ ht.trans h)
  · exact essSup_le_of_ae_le U

theorem sector_esssup_eq_sInf (A σ : ℝ) :
    sectorEssSup A σ = sInf {U : EReal | ∀ᵐ t : ℝ ∂volume,
      t ∈ strictSector A σ → ((σ * resetPickup A t : ℝ) : EReal) ≤ U} := by
  unfold sectorEssSup
  rw [essSup_eq_sInf]
  congr 1
  ext U
  simp only [← not_le, ← ae_iff]
  exact gated_reading_ae_le_iff A σ U

theorem null_sector_esssup (A σ : ℝ) (hnull : volume (strictSector A σ) = 0) :
    sectorEssSup A σ = ⊥ := by
  have outside : ∀ᵐ t : ℝ ∂volume, t ∉ strictSector A σ := by
    rw [ae_iff]
    simpa only [not_not, ofPred_mem_eq] using hnull
  have gated : gatedReading A σ =ᵐ[volume] fun _ ↦ (⊥ : EReal) := by
    filter_upwards [outside] with t ht
    simp [gatedReading, ht]
  exact (essSup_congr_ae gated).trans essSup_const_bot

theorem empty_sector_esssup (A σ : ℝ) (hempty : strictSector A σ = ∅) :
    sectorEssSup A σ = ⊥ :=
  null_sector_esssup A σ (by rw [hempty]; exact measure_empty)

theorem zero_sector_silent (A t : ℝ) (zeroKernel : polarityKernel A t = 0) (σ : ℝ) :
    gatedReading A σ t = ⊥ := by
  have excluded : t ∉ strictSector A σ := by
    simp [strictSector, zeroKernel]
  simp [gatedReading, excluded]

/-- Exact equivalence with both original real signed sector inequalities. -/
theorem extended_meter_le_real_iff (A U : ℝ) :
    extendedMeter A ≤ (U : EReal) ↔ 0 ≤ U ∧
      (∀ᵐ t : ℝ ∂volume, (t ∈ readingWindow A ∧ 0 < polarityKernel A t) →
        resetPickup A t ≤ U) ∧
      (∀ᵐ t : ℝ ∂volume, (t ∈ readingWindow A ∧ polarityKernel A t < 0) →
        -resetPickup A t ≤ U) := by
  simp only [extendedMeter, max_le_iff, sector_esssup_le_iff, strictSector,
    one_mul, neg_one_mul, EReal.coe_le_coe_iff, EReal.coe_nonneg, neg_pos, mem_ofPred_eq]

def finiteMeterBound (A : ℝ) : ℝ := 2 * finiteWindowBound (2 * A)

theorem finite_meter_bound_nonnegative (A : ℝ) : 0 ≤ finiteMeterBound A := by
  unfold finiteMeterBound finiteWindowBound
  apply mul_nonneg zero_le_two
  apply Finset.sum_nonneg
  intro n _
  exact mul_nonneg (abs_nonneg _) (mul_nonneg zero_le_two
    (add_nonneg (abs_nonneg _) zero_le_one))

theorem reset_pickup_window_bound {A t : ℝ} (hA : 1 ≤ A)
    (reading : t ∈ readingWindow A) : |resetPickup A t| ≤ finiteMeterBound A := by
  have resetNonnegative : 0 ≤ reset A := by
    unfold reset
    exact mul_nonneg zero_le_two (Real.log_nonneg hA)
  have resetUpper : reset A ≤ 2 * A := by
    unfold reset
    exact mul_le_mul_of_nonneg_left (Real.log_le_self (by linarith : 0 ≤ A)) zero_le_two
  have current := pickup_window_bound (resetNonnegative.trans reading.1) reading.2
  have previous := pickup_window_bound resetNonnegative resetUpper
  unfold resetPickup finiteMeterBound
  have triangle : |pickup t - pickup (reset A)| ≤ |pickup t| + |pickup (reset A)| := by
    simpa only [sub_zero, zero_sub, abs_neg] using
      abs_sub_le (pickup t) 0 (pickup (reset A))
  linarith

theorem extended_meter_le_finite_bound {A : ℝ} (hA : 1 ≤ A) :
    extendedMeter A ≤ (finiteMeterBound A : EReal) := by
  rw [extended_meter_le_real_iff]
  refine ⟨finite_meter_bound_nonnegative A, ?_, ?_⟩
  · apply Filter.Eventually.of_forall
    intro t incident
    exact (le_abs_self _).trans (reset_pickup_window_bound hA incident.1)
  · apply Filter.Eventually.of_forall
    intro t incident
    exact (neg_le_abs _).trans (reset_pickup_window_bound hA incident.1)

theorem extended_meter_nonnegative (A : ℝ) : 0 ≤ extendedMeter A := le_max_left _ _

theorem extended_meter_ne_bot (A : ℝ) : extendedMeter A ≠ ⊥ :=
  ne_bot_of_le_ne_bot EReal.zero_ne_bot (extended_meter_nonnegative A)

theorem extended_meter_ne_top {A : ℝ} (hA : 1 ≤ A) : extendedMeter A ≠ ⊤ :=
  ne_top_of_le_ne_top (EReal.coe_ne_top _) (extended_meter_le_finite_bound hA)

/-- `toReal` is used only after proving this exact finite re-embedding identity. -/
def realMeter (A : ℝ) : ℝ := (extendedMeter A).toReal

theorem real_meter_embedding {A : ℝ} (hA : 1 ≤ A) :
    (realMeter A : EReal) = extendedMeter A :=
  EReal.coe_toReal (extended_meter_ne_top hA) (extended_meter_ne_bot A)

theorem real_meter_le_iff {A : ℝ} (hA : 1 ≤ A) (U : ℝ) :
    realMeter A ≤ U ↔ 0 ≤ U ∧
      (∀ᵐ t : ℝ ∂volume, (t ∈ readingWindow A ∧ 0 < polarityKernel A t) →
        resetPickup A t ≤ U) ∧
      (∀ᵐ t : ℝ ∂volume, (t ∈ readingWindow A ∧ polarityKernel A t < 0) →
        -resetPickup A t ≤ U) := by
  rw [← EReal.coe_le_coe_iff, real_meter_embedding hA, extended_meter_le_real_iff]

theorem supplier_allowance_nonnegative {A K₀ D p : ℝ} (hA : 1 ≤ A)
    (hK : 0 ≤ K₀) (hD : 0 ≤ D) :
    0 ≤ ((1 + K₀ / A) / Real.sqrt 2) * positiveEnvelope (2 * A) + D * A ^ p := by
  have hA0 : 0 ≤ A := zero_le_one.trans hA
  exact add_nonneg
    (mul_nonneg
      (div_nonneg (add_nonneg zero_le_one (div_nonneg hK hA0)) (Real.sqrt_nonneg 2))
      (positive_envelope_nonneg (2 * A)))
    (mul_nonneg hD (Real.rpow_nonneg hA0 p))

/-- OPEN: the same original witnesses and allowance, expressed by the exact finite meter. -/
def OriginalSupplierMeterEstimate : Prop :=
  ∃ K₀ D p R : ℝ, 0 ≤ K₀ ∧ 0 ≤ D ∧ 0 ≤ p ∧ max 1 (4 * K₀) ≤ R ∧
    ∀ A : ℝ, R ≤ A →
      realMeter A ≤
        ((1 + K₀ / A) / Real.sqrt 2) * positiveEnvelope (2 * A) + D * A ^ p

/-- This changes only the representation of the open original supplier proposition.
Both directions keep the exact same witnesses; no arithmetic budget is proved. -/
theorem original_supplier_estimate_iff_real_meter :
    OriginalSupplierEstimate ↔ OriginalSupplierMeterEstimate := by
  constructor
  · rintro ⟨K₀, D, p, R, hK, hD, hp, hR, bound⟩
    refine ⟨K₀, D, p, R, hK, hD, hp, hR, ?_⟩
    intro A threshold
    have hA : 1 ≤ A := (le_max_left 1 (4 * K₀)).trans (hR.trans threshold)
    rw [real_meter_le_iff hA]
    refine ⟨supplier_allowance_nonnegative hA hK hD, ?_, ?_⟩
    · simpa only [one_mul] using bound A threshold 1 (Or.inr rfl)
    · simpa only [neg_one_mul, neg_pos] using bound A threshold (-1) (Or.inl rfl)
  · rintro ⟨K₀, D, p, R, hK, hD, hp, hR, bound⟩
    refine ⟨K₀, D, p, R, hK, hD, hp, hR, ?_⟩
    intro A threshold σ polarity
    have hA : 1 ≤ A := (le_max_left 1 (4 * K₀)).trans (hR.trans threshold)
    rcases (real_meter_le_iff hA _).mp (bound A threshold) with ⟨_, positive, negative⟩
    rcases polarity with rfl | rfl
    · simpa only [neg_one_mul, neg_pos] using negative
    · simpa only [one_mul] using positive

/-- A genuine absolute-growth proof returns to the original essential-supremum meter. -/
theorem whole_pickup_poly_supplies_meter (growth : WholePickupPoly) :
    OriginalSupplierMeterEstimate :=
  original_supplier_estimate_iff_real_meter.mp (whole_pickup_poly_supplies_original growth)

/-- Both open budgets, together with the proved diagonal adapter, return to the
original all-real two-polarity meter. Neither budget is proved by this consumer. -/
theorem pickup_budgets_supply_meter (budgets : ArithmeticPickupEnergy.PickupEnergyBudgets) :
    OriginalSupplierMeterEstimate :=
  whole_pickup_poly_supplies_meter (ArithmeticPickupBudget.budgets_imply_whole_pickup_poly budgets)

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticSupplierMeter
