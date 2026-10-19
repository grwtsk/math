import FormalResearch.RiemannHypothesis.Conversation.RadicalMasks
import Mathlib.NumberTheory.ArithmeticFunction.Moebius

/-!
# The two-column coprimality expansion keeps every signed subset coefficient

Batch 20 B20-L2–L3 uses a two-column zero mask after radical factorization.
For a finite set of genuine integer primes, this adapter expands both unit
masks over all subsets with the actual Mobius coefficients of their prime
products. Its complete coefficient l1 mass is exactly 4^(number of primes).
The next absolute-value consumer retains that entire factor and the common
profile bound. This integer identity does not prove an Eisenstein/ray-class
profile adapter, a subpower estimate, or any signed dispersion saving.

Human two-column and signed-source direction: grwtsk contributors. Local exact
expansion and consumer: OpenAI Codex. Mathlib Mobius, finite product expansion
and primality declarations retain upstream source identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.TwoColumnMobiusExpansion

open RadicalMasks
open scoped ArithmeticFunction.Moebius BigOperators
noncomputable section

def divisorMask (p m : ℕ) : ℤ := if p ∣ m then 1 else 0

theorem unit_mask_prime {p : ℕ} (hp : p.Prime) (m : ℕ) :
    unitMask p m = 1 - divisorMask p m := by
  simp only [unitMask, divisorMask, hp.coprime_iff_not_dvd]
  by_cases hd : p ∣ m <;> simp [hd]

theorem unit_mask_finite_product (s : Finset ℕ) (m : ℕ) :
    unitMask (∏ p ∈ s, p) m = ∏ p ∈ s, unitMask p m := by
  induction s using Finset.induction_on with
  | empty => simp [unitMask]
  | @insert p s hp ih =>
      rw [Finset.prod_insert hp, unit_mask_tensorizes, Finset.prod_insert hp, ih]

theorem subset_mobius_sign (s : Finset ℕ) (hs : ∀ p ∈ s, p.Prime) :
    μ (∏ p ∈ s, p) = (-1 : ℤ) ^ s.card := by
  calc
    _ = ∏ p ∈ s, μ p := ArithmeticFunction.IsMultiplicative.map_prod_of_prime
      ArithmeticFunction.isMultiplicative_moebius s hs
    _ = ∏ _p ∈ s, (-1 : ℤ) :=
      Finset.prod_congr rfl (fun p hp => ArithmeticFunction.moebius_apply_prime (hs p hp))
    _ = _ := Finset.prod_const _

theorem one_column_signed_expansion (s : Finset ℕ) (hs : ∀ p ∈ s, p.Prime) (m : ℕ) :
    unitMask (∏ p ∈ s, p) m =
      ∑ t ∈ s.powerset, μ (∏ p ∈ t, p) * ∏ p ∈ t, divisorMask p m := by
  rw [unit_mask_finite_product]
  have hp : (∏ p ∈ s, unitMask p m) = ∏ p ∈ s, (1 - divisorMask p m) :=
    Finset.prod_congr rfl (fun p hp => unit_mask_prime (hs p hp) m)
  rw [hp]
  have hexp := Finset.prod_sub (fun _p : ℕ => (1 : ℤ)) (fun p => divisorMask p m) s
  simp only [Finset.prod_const_one, mul_one] at hexp
  rw [hexp]
  apply Finset.sum_congr rfl
  intro t ht
  rw [subset_mobius_sign t (fun p hp => hs p (Finset.mem_powerset.mp ht hp))]

theorem two_column_signed_expansion (s : Finset ℕ) (hs : ∀ p ∈ s, p.Prime) (m₁ m₂ : ℕ) :
    twoColumnMask (∏ p ∈ s, p) m₁ m₂ =
      ∑ u ∈ s.powerset, ∑ v ∈ s.powerset,
        (μ (∏ p ∈ u, p) * μ (∏ p ∈ v, p)) *
          (∏ p ∈ u, divisorMask p m₁) * (∏ p ∈ v, divisorMask p m₂) := by
  rw [twoColumnMask, one_column_signed_expansion s hs m₁,
    one_column_signed_expansion s hs m₂, Finset.sum_mul_sum]
  apply Finset.sum_congr rfl
  intro u _
  apply Finset.sum_congr rfl
  intro v _
  ring

theorem exact_two_column_coefficient_mass (s : Finset ℕ) (hs : ∀ p ∈ s, p.Prime) :
    (∑ u ∈ s.powerset, ∑ v ∈ s.powerset,
      |μ (∏ p ∈ u, p) * μ (∏ p ∈ v, p)|) = (4 : ℤ) ^ s.card := by
  have hc : (∑ u ∈ s.powerset, ∑ v ∈ s.powerset,
      |μ (∏ p ∈ u, p) * μ (∏ p ∈ v, p)|) =
      ∑ _u ∈ s.powerset, ∑ _v ∈ s.powerset, (1 : ℤ) := by
    apply Finset.sum_congr rfl
    intro u hu
    apply Finset.sum_congr rfl
    intro v hv
    rw [subset_mobius_sign u (fun p hp => hs p (Finset.mem_powerset.mp hu hp)),
      subset_mobius_sign v (fun p hp => hs p (Finset.mem_powerset.mp hv hp)), abs_mul]
    simp
  rw [hc]
  simp only [Finset.sum_const, nsmul_eq_mul, mul_one, Finset.card_powerset,
    Nat.cast_pow, Nat.cast_ofNat]
  rw [← mul_pow]
  norm_num

/-- Absolute expansion pays every pair of subsets and retains its common row cap. -/
theorem absolute_expansion_retains_complete_mass (s : Finset ℕ) (F : Finset ℕ → Finset ℕ → ℝ)
    {B : ℝ} (hF : ∀ u ∈ s.powerset, ∀ v ∈ s.powerset, |F u v| ≤ B) :
    |∑ u ∈ s.powerset, ∑ v ∈ s.powerset,
      (-1 : ℝ) ^ (u.card + v.card) * F u v| ≤ (4 : ℝ) ^ s.card * B := by
  calc
    _ ≤ ∑ u ∈ s.powerset,
        |∑ v ∈ s.powerset, (-1 : ℝ) ^ (u.card + v.card) * F u v| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ u ∈ s.powerset, ∑ v ∈ s.powerset,
        |(-1 : ℝ) ^ (u.card + v.card) * F u v| :=
      Finset.sum_le_sum (fun _u _ => Finset.abs_sum_le_sum_abs _ _)
    _ ≤ ∑ _u ∈ s.powerset, ∑ _v ∈ s.powerset, B := by
      apply Finset.sum_le_sum
      intro u hu
      apply Finset.sum_le_sum
      intro v hv
      simpa only [abs_mul, abs_pow, abs_neg, abs_one, one_pow, one_mul] using hF u hu v hv
    _ = _ := by
      simp only [Finset.sum_const, nsmul_eq_mul, Finset.card_powerset,
        Nat.cast_pow, Nat.cast_ofNat]
      rw [← mul_assoc, ← mul_pow]
      norm_num

end
end GRWTSK.RiemannHypothesis.Conversation.TwoColumnMobiusExpansion
