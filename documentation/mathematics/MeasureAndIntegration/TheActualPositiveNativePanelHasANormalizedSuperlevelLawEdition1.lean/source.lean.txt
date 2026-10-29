import FormalResearch.RiemannHypothesis.Conversation.AtomicSuperlevels

/-!
# The actual positive native panel has a normalized superlevel law

The selected finite integers, literal ordinary-prime storage and inverse-root
cell widths are retained. With a positive height H that bounds the storage on
this very panel, normalized widths form a probability vector. Its exact
p-moment is H^p times the normalized superlevel integral from zero to one.
The hypotheses choose no favorable surrogate or random prime phase. No bound
on that superlevel curve, height or source-selected panel is supplied.

Source: audited RH conversation Batches 05–07. Human normalized-profile
direction: grwtsk contributors. Local actual-source measure adapter and Lean
consumer: OpenAI Codex. Mathlib layer-cake and probability normalization laws
retain their upstream mathematical and formal-artifact identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.NativeSuperlevelConsumer

open AtomicSuperlevels NativeRecordConsumer OpenArithmeticSuppliers ArithmeticPrimitive
open scoped BigOperators ENNReal
noncomputable section

/-- The storage in this module, with the following exact parameterization.

def storage (N j : ℕ) : ℝ := cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j)
-/
def storage (N j : ℕ) : ℝ := cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j)
/-- The weight in this module, with the following exact parameterization.

def weight (N j : ℕ) : ℝ≥0∞ := ENNReal.ofReal (cellClock (N + j) (N + j + 1 : ℕ))
-/
def weight (N j : ℕ) : ℝ≥0∞ := ENNReal.ofReal (cellClock (N + j) (N + j + 1 : ℕ))
/-- The total weight in this module, with the following exact parameterization.

def totalWeight (N : ℕ) (s : Finset ℕ) : ℝ≥0∞ := ∑ j ∈ s, weight N j
-/
def totalWeight (N : ℕ) (s : Finset ℕ) : ℝ≥0∞ := ∑ j ∈ s, weight N j
/-- The probability in this module, with the following exact parameterization.

def probability (N : ℕ) (s : Finset ℕ) (j : ℕ) : ℝ≥0∞ := weight N j / totalWeight N s
-/
def probability (N : ℕ) (s : Finset ℕ) (j : ℕ) : ℝ≥0∞ := weight N j / totalWeight N s
/-- The profile in this module, with the following exact parameterization.

def profile (N : ℕ) (s : Finset ℕ) (H : ℝ) (j : ℕ) : ℝ := if j ∈ s then storage N j / H else 0
-/
def profile (N : ℕ) (s : Finset ℕ) (H : ℝ) (j : ℕ) : ℝ :=
  if j ∈ s then storage N j / H else 0
/-- The q in this module, with the following exact parameterization.

def Q (N : ℕ) (s : Finset ℕ) (H t : ℝ) : ℝ≥0∞ := superlevelMass s (probability N s) (profile N
s H) t
-/
def Q (N : ℕ) (s : Finset ℕ) (H t : ℝ) : ℝ≥0∞ :=
  superlevelMass s (probability N s) (profile N s H) t

theorem weight_pos {N : ℕ} (hN : 1 ≤ N) (j : ℕ) : 0 < weight N j :=
  ENNReal.ofReal_pos.mpr (cellClock_pos (by omega : 1 ≤ N + j))

theorem total_weight_pos {N : ℕ} (hN : 1 ≤ N) {s : Finset ℕ} (hs : s.Nonempty) :
    0 < totalWeight N s := by
  obtain ⟨j, hj⟩ := hs
  exact (weight_pos hN j).trans_le (Finset.single_le_sum (fun _ _ => by positivity) hj)

theorem total_weight_finite (N : ℕ) (s : Finset ℕ) : totalWeight N s ≠ ∞ :=
  ENNReal.sum_ne_top.mpr (fun _ _ => ENNReal.ofReal_ne_top)

theorem normalized_widths_sum_one {N : ℕ} (hN : 1 ≤ N) {s : Finset ℕ} (hs : s.Nonempty) :
    (∑ j ∈ s, probability N s j) = 1 := by
  unfold probability
  simp only [div_eq_mul_inv, ← Finset.sum_mul]
  change totalWeight N s * (totalWeight N s)⁻¹ = 1
  exact ENNReal.mul_inv_cancel (total_weight_pos hN hs).ne' (total_weight_finite N s)

theorem actual_panel_normalized_moment {N : ℕ} {s : Finset ℕ} {H p : ℝ}
    (hN : 1 ≤ N) (hs : s.Nonempty) (hH : 0 < H) (hp : 0 < p)
    (hpanel : ∀ j ∈ s, 0 ≤ storage N j ∧ storage N j ≤ H) :
    (∑ j ∈ s, probability N s j) = 1 ∧
      (∑ j ∈ s, weight N j * ENNReal.ofReal ((storage N j) ^ p)) / totalWeight N s =
        ENNReal.ofReal (H ^ p) * (ENNReal.ofReal p *
          ∫⁻ t in Set.Ioc (0 : ℝ) 1, Q N s H t * ENNReal.ofReal (t ^ (p - 1))) := by
  have hf0 : ∀ j, 0 ≤ profile N s H j := by
    intro j
    unfold profile
    split_ifs with hj
    · exact div_nonneg (hpanel j hj).1 hH.le
    · rfl
  have hf1 : ∀ j ∈ s, profile N s H j ≤ 1 := by
    intro j hj
    rw [profile, if_pos hj]
    exact (div_le_one hH).mpr (hpanel j hj).2
  have h := scaled_panel_moment s (probability N s) (measurable_of_countable _)
    hf0 hf1 hp hH.le
  refine ⟨normalized_widths_sum_one hN hs, ?_⟩
  change _ = _ * (_ * ∫⁻ t in Set.Ioc (0 : ℝ) 1,
    superlevelMass s (probability N s) (profile N s H) t * ENNReal.ofReal (t ^ (p - 1)))
  rw [← h, div_eq_mul_inv, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro j hj
  rw [profile, if_pos hj]
  have hscale : H * (storage N j / H) = storage N j := by field_simp
  rw [hscale]
  unfold probability
  rw [div_eq_mul_inv]
  ac_rfl

theorem actual_panel_first_moment {N : ℕ} {s : Finset ℕ} {H : ℝ}
    (hN : 1 ≤ N) (hs : s.Nonempty) (hH : 0 < H)
    (hpanel : ∀ j ∈ s, 0 ≤ storage N j ∧ storage N j ≤ H) :
    (∑ j ∈ s, weight N j * ENNReal.ofReal (storage N j)) / totalWeight N s =
      ENNReal.ofReal H * ∫⁻ t in Set.Ioc (0 : ℝ) 1, Q N s H t := by
  have h := (actual_panel_normalized_moment hN hs hH (by norm_num : (0 : ℝ) < 1) hpanel).2
  simpa only [Real.rpow_one, sub_self, Real.rpow_zero, ENNReal.ofReal_one, one_mul, mul_one] using h

end
end GRWTSK.RiemannHypothesis.Conversation.NativeSuperlevelConsumer
