import FormalResearch.RiemannHypothesis.Conversation.NativeOffGridCountermodel
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics

/-!+# All-real growth barrier for the literal native off-grid density

The fixed positive density has negative integer readouts but exponentially
large half-integer readouts. The latter defeat every eventual all-real cap
of the form D*A^m*exp(η*A), with fixed η<1/2. All source, radius and counting
quantifiers remain unchanged. Human unchanged-source and next-consumer
direction: grwtsk contributors. Local asymptotic consumer: OpenAI Codex.
Mathlib exponential growth keeps its pinned upstream identity. This smooth
comparison source neither proves nor refutes an arithmetic RH implication.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.NativeOffGridGrowthBarrier
open NativeOffGridCountermodel NativeOffGridDensityReadout Filter
noncomputable section

theorem literal_half_integer_exceeds_fixed_exponential_cap
    (m : ℕ) (D η R : ℝ) (hη : η < 1 / 2) :
    ∃ n : ℕ, 100 ≤ n ∧ R ≤ (n : ℝ) + 1 / 2 ∧
      D * ((n : ℝ) + 1 / 2) ^ m * Real.exp (η * ((n : ℝ) + 1 / 2)) <
        densityReadout ((n : ℝ) + 1 / 2) := by
  have hevent : ∀ᶠ A : ℝ in atTop,
      (8 / 9) * D + 1 < Real.exp ((1 / 2 - η) * A) / A ^ (m + 9) := by
    simpa only [Real.rpow_natCast] using
      (tendsto_exp_mul_div_rpow_atTop (m + 9 : ℕ) (1 / 2 - η) (by linarith)).eventually
        (eventually_gt_atTop ((8 / 9) * D + 1))
  obtain ⟨S, hS⟩ := eventually_atTop.mp hevent
  obtain ⟨n, hn⟩ := exists_nat_ge (max S (max R 100))
  have hnS : S ≤ (n : ℝ) := (le_max_left S _).trans hn
  have hnR : R ≤ (n : ℝ) := (le_max_left R 100).trans ((le_max_right S _).trans hn)
  have hn100R : (100 : ℝ) ≤ (n : ℝ) :=
    (le_max_right R 100).trans ((le_max_right S _).trans hn)
  have hn100 : 100 ≤ n := by exact_mod_cast hn100R
  let A : ℝ := (n : ℝ) + 1 / 2
  have hApos : 0 < A := by dsimp [A]; linarith
  have hAS : S ≤ A := by dsimp [A]; linarith
  have hAR : R ≤ A := by dsimp [A]; linarith
  have hbig := (lt_div_iff₀ (pow_pos hApos (m + 9))).mp (hS A hAS)
  have hmult := mul_lt_mul_of_pos_right hbig (Real.exp_pos (η * A))
  have heq : Real.exp ((1 / 2 - η) * A) * Real.exp (η * A) = Real.exp (A / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [heq, pow_add] at hmult
  have hstrict : D * A ^ m * Real.exp (η * A) <
      (9 / 8) * (Real.exp (A / 2) / A ^ 9) := by
    rw [← mul_div_assoc]
    apply (lt_div_iff₀ (pow_pos hApos 9)).mpr
    have hp := mul_pos (mul_pos (pow_pos hApos m) (pow_pos hApos 9))
      (Real.exp_pos (η * A))
    nlinarith
  exact ⟨n, hn100, hAR, hstrict.trans_le (literal_half_integer_native_readout_lower n hn100)⟩

theorem literal_native_has_no_all_real_fixed_exponential_cap
    (m : ℕ) (D η R : ℝ) (hη : η < 1 / 2) :
    ¬ ∀ A : ℝ, R ≤ A → densityReadout A ≤ D * A ^ m * Real.exp (η * A) := by
  intro hcap
  obtain ⟨n, _hn, hR, hgt⟩ := literal_half_integer_exceeds_fixed_exponential_cap m D η R hη
  exact (not_lt_of_ge (hcap _ hR)) hgt

theorem literal_native_has_no_all_real_polynomial_cap (m : ℕ) (D R : ℝ) :
    ¬ ∀ A : ℝ, R ≤ A → densityReadout A ≤ D * A ^ m := by
  simpa only [zero_mul, Real.exp_zero, mul_one] using
    literal_native_has_no_all_real_fixed_exponential_cap m D 0 R (by norm_num)

end
end GRWTSK.RiemannHypothesis.Conversation.NativeOffGridGrowthBarrier
