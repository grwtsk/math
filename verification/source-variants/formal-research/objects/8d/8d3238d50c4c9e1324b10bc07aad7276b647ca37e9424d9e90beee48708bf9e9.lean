import FormalResearch.RiemannHypothesis.Conversation.TriangularRecordIdentity
import FormalResearch.RiemannHypothesis.Conversation.TriangularAllFixedP

/-!
# Full native pulse prices are exact causal record-interval prices

Every full literal pulse debt is the increase of the unchanged counting
primitive across all its native cells. Nonnegative storage makes that entire
increase record growth. Its native record price is therefore exactly D^p/U^(p-1),
not a replacement quantity. The one positive linear-radius counting bank
has nonsummable record-interval prices for every fixed real p>=1 and after
every starting pulse. The coefficients are changed positive weights, not
actual prime or von Mangoldt coefficients. Human complete source and causal
record direction: grwtsk contributors. Local exact record-price transport:
OpenAI Codex. Local primitive and Mathlib p-series identities retain their names.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.TriangularPulseRecordPrice
open ArithmeticPrimitive TriangularDisjointBank TriangularLinearBank TriangularPulseDebt
open TriangularRecordIdentity TriangularAllFixedP TriangularPulseRealP
open scoped BigOperators
noncomputable section

theorem full_adjacent_inventory_telescope (f : ℕ → ℝ) (N K : ℕ) :
    (∑ n ∈ Finset.Icc N (N + K), (f (n + 1) - f n)) = f (N + K + 1) - f N := by
  induction K with
  | zero => simp
  | succ K ih =>
    rw [show N + K.succ = N + K + 1 by omega,
      Finset.sum_Icc_succ_top (by omega : N ≤ N + K + 1), ih]
    ring

theorem full_linear_pulse_is_exact_record_growth (j : ℕ) {a : ℝ} (ha : 0 ≤ a) :
    recordLevel linearSize a ((linearSize j) ^ 2) (2 * linearSize j + 1) =
      debt (linearSize j) a := by
  rw [every_endpoint_is_its_bank_record linearSize linear_size_sufficient ha]
  have ht := full_adjacent_inventory_telescope (path linearSize a)
    ((linearSize j) ^ 2) (2 * linearSize j)
  rw [show (linearSize j) ^ 2 + (2 * linearSize j + 1) =
    (linearSize j) ^ 2 + 2 * linearSize j + 1 by omega]
  rw [← ht]
  unfold debt inventory
  apply Finset.sum_congr rfl
  intro n hn
  obtain ⟨hlo, hhi⟩ := Finset.mem_Icc.mp hn
  have hsize : 2 ≤ linearSize j := by unfold linearSize; omega
  have hn1 : 1 ≤ n := by nlinarith
  rw [unchanged_bank_primitive_increment linearSize linear_size_sufficient hn1,
    linear_bank_retains_every_full_pulse j n hlo hhi a]

/-- The record price in this module, with the following exact parameterization.

def recordPrice (j : ℕ) (a p : ℝ) : ℝ := (recordLevel linearSize a ((linearSize j) ^ 2) (2 *
linearSize j + 1)) ^ p / (width (linearSize j)) ^ (p - 1)
-/
def recordPrice (j : ℕ) (a p : ℝ) : ℝ :=
  (recordLevel linearSize a ((linearSize j) ^ 2) (2 * linearSize j + 1)) ^ p /
    (width (linearSize j)) ^ (p - 1)

theorem exact_full_native_record_price (j : ℕ) {a : ℝ} (ha : 0 ≤ a) (p : ℝ) :
    recordPrice j a p = price (linearSize j) a p := by
  rw [recordPrice, full_linear_pulse_is_exact_record_growth j ha]
  rfl

theorem full_native_record_prices_not_summable {a p : ℝ} (ha : 0 < a) (hp : 1 ≤ p)
    (J : ℕ) : ¬ Summable (fun j ↦ recordPrice (j + J) a p) := by
  simp_rw [exact_full_native_record_price _ ha.le]
  exact every_starting_pulse_has_infinite_fixed_p_price ha hp J

theorem positive_square_root_counting_does_not_imply_finite_fixed_p_record_price :
    (∀ n : ℕ, 0 < bankWeight linearSize (1 / 2) n) ∧
      (∀ x : ℝ, 1 ≤ x → |count linearSize (1 / 2) x - x| ≤ (3 / 2) * Real.sqrt x) ∧
      ∀ p : ℝ, 1 < p → ∀ J : ℕ, ¬ Summable
        (fun j ↦ recordPrice (j + J) (1 / 2) p) := by
  refine ⟨linear_positive_counting_square_root_error.1,
    linear_positive_counting_square_root_error.2, ?_⟩
  intro p hp J
  exact full_native_record_prices_not_summable (by norm_num) hp.le J


private theorem record_level_nonnegative (M : ℕ → ℕ) (a : ℝ) (N K : ℕ) :
    0 ≤ recordLevel M a N K := by
  induction K with
  | zero => rfl
  | succ K ih => exact ih.trans (le_max_left _ _)

theorem full_native_record_price_nonnegative (j : ℕ) (a p : ℝ) :
    0 ≤ recordPrice j a p := by
  unfold recordPrice
  exact div_nonneg (Real.rpow_nonneg (record_level_nonnegative _ _ _ _) p)
    (Real.rpow_nonneg (complete_pulse_width_positive
      (by unfold linearSize; omega)).le (p - 1))

theorem every_fixed_p_record_price_exceeds_every_finite_budget {a p : ℝ}
    (ha : 0 < a) (hp : 1 ≤ p) (J : ℕ) :
    ¬ ∃ E : ℝ, ∀ K : ℕ, (∑ j ∈ Finset.range K, recordPrice (j + J) a p) ≤ E := by
  rintro ⟨E, hE⟩
  apply full_native_record_prices_not_summable ha hp J
  exact summable_of_sum_range_le (fun j ↦ full_native_record_price_nonnegative _ a p) hE


end
end GRWTSK.RiemannHypothesis.Conversation.TriangularPulseRecordPrice
