import FormalResearch.RiemannHypothesis.Conversation.RecordSummability

/-!
# Every real native cell preserves its two endpoint upper bounds

The exact ordinary-prime primitive has no interior overshoot within an integer
cell. Its coefficient may have either sign; the literal inverse-root clock
chooses the appropriate endpoint. Consequently summable actual record height
is equivalent to a common upper bound on every real point of the unchanged
prime path, not merely its integer samples. No such bound is supplied.

Source: audited RH conversation Batches 07–12. Human causal-record and endpoint
direction: grwtsk contributors. Local continuous-cell adapter and Lean proof:
OpenAI Codex. The primitive and Mathlib limits retain their existing identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.NativeCellBound

open OpenArithmeticSuppliers ArithmeticPrimitive NativeRecordConsumer RecordSummability
open scoped BigOperators
noncomputable section

theorem finite_cell_upper {b : ℕ → ℝ} {n : ℕ} {x C : ℝ} (hn : 1 ≤ n)
    (hx : (n : ℝ) ≤ x) (hx1 : x ≤ (n + 1 : ℕ))
    (hleft : finitePrimitive b n n ≤ C)
    (hright : finitePrimitive b (n + 1 : ℕ) (n + 1) ≤ C) :
    finitePrimitive b x n ≤ C := by
  rw [fixed_inventory_interpolation]
  by_cases hB : cumulativeDiscrepancy b n ≤ 0
  · have hp := mul_nonpos_of_nonpos_of_nonneg hB (cellClock_nonneg hn hx)
    linarith
  · have hBp : 0 ≤ cumulativeDiscrepancy b n := (lt_of_not_ge hB).le
    have hp := mul_le_mul_of_nonneg_left (cellClock_le_full hn hx hx1) hBp
    have hstep := adjacent_integer_increment b n hn
    linarith

theorem actual_integer_upper_implies_all_real {N : ℕ} {E : ℝ} (hN : 1 ≤ N)
    (hint : ∀ K : ℕ,
      ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N ≤ E) :
    ∀ x : ℝ, (N : ℝ) ≤ x → ordinaryPrimePrimitive x - ordinaryPrimePrimitive N ≤ E := by
  have hbound (n : ℕ) (hn : N ≤ n) :
      ordinaryPrimePrimitive n ≤ ordinaryPrimePrimitive N + E := by
    obtain ⟨K, rfl⟩ := Nat.exists_eq_add_of_le hn
    linarith [hint K]
  intro x hx
  have hNx : N ≤ ⌊x⌋₊ := Nat.le_floor hx
  have hx0 : 0 ≤ x := (Nat.cast_nonneg N).trans hx
  have hl := hbound ⌊x⌋₊ hNx
  have hr := hbound (⌊x⌋₊ + 1) (by omega)
  have hcell : finitePrimitive ordinaryPrimeCoefficient x ⌊x⌋₊ ≤
      ordinaryPrimePrimitive N + E := by
    apply finite_cell_upper (by omega) (Nat.floor_le hx0)
      (by simpa only [Nat.cast_add, Nat.cast_one] using (Nat.lt_floor_add_one x).le)
    · simpa only [ordinaryPrimePrimitive, closedPrimitive, Nat.floor_natCast] using hl
    · simpa only [ordinaryPrimePrimitive, closedPrimitive, Nat.floor_natCast] using hr
  change finitePrimitive ordinaryPrimeCoefficient x ⌊x⌋₊ - ordinaryPrimePrimitive N ≤ E
  linarith

theorem record_summable_iff_all_real_prefixes_bounded {N : ℕ} (hN : 1 ≤ N) :
    Summable (primeRecordIncrement N) ↔
      ∃ E : ℝ, 0 ≤ E ∧ ∀ x : ℝ, (N : ℝ) ≤ x →
        ordinaryPrimePrimitive x - ordinaryPrimePrimitive N ≤ E := by
  rw [record_summable_iff_signed_prefixes_bounded]
  constructor
  · rintro ⟨E, hE, hint⟩
    exact ⟨E, hE, actual_integer_upper_implies_all_real hN hint⟩
  · rintro ⟨E, hE, hreal⟩
    refine ⟨E, hE, fun K => hreal (N + K : ℕ) ?_⟩
    exact_mod_cast Nat.le_add_right N K

theorem actual_real_prefix_le_total_record_height {N : ℕ} (hN : 1 ≤ N)
    (hsum : Summable (primeRecordIncrement N)) {x : ℝ} (hx : (N : ℝ) ≤ x) :
    ordinaryPrimePrimitive x - ordinaryPrimePrimitive N ≤ ∑' j, primeRecordIncrement N j := by
  apply actual_integer_upper_implies_all_real hN _ x hx
  intro K
  apply (actual_prefix_le_record N K).trans
  rw [← record_sum_eq_level]
  exact hsum.sum_le_tsum (Finset.range K)
    (fun _ _ => CausalRecords.recordIncrement_nonneg _ _)

theorem total_height_is_least_real_prefix_bound {N : ℕ} {E : ℝ} (hE : 0 ≤ E)
    (hsum : Summable (primeRecordIncrement N))
    (hreal : ∀ x : ℝ, (N : ℝ) ≤ x →
      ordinaryPrimePrimitive x - ordinaryPrimePrimitive N ≤ E) :
    (∑' j, primeRecordIncrement N j) ≤ E := by
  apply total_record_height_is_least_bound hsum
  apply RecordEndpoint.level_le_of_all_prefixes hE
  intro K
  exact hreal (N + K : ℕ) (by exact_mod_cast Nat.le_add_right N K)

end
end GRWTSK.RiemannHypothesis.Conversation.NativeCellBound
