import FormalResearch.RiemannHypothesis.Conversation.CenteredVaughan

/-!
# A complete visible Mobius cutoff is the source operator, with the gauge paid

Batch 18 B18-L5 keeps the natural support quantifier. At every integer n<=U,
the Mobius cutoff includes every source-visible divisor. The uncorrected low
Vaughan operator is exactly the original source, and the uncorrected high
operator vanishes there. A balancing correction leaves its exact convolution
residual in both ports. A finite weighted consumer pays that residual rather
than describing the complete cutoff as an independent Type-I saving.

Human cutoff and source-fidelity direction: grwtsk contributors. Local exact
arithmetic locality and consumer: OpenAI Codex. Mathlib divisor convolution
and Mobius inversion are imported under their upstream identities.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.OversizedCutoff

open CenteredVaughan
open scoped ArithmeticFunction.Moebius ArithmeticFunction.zeta BigOperators
noncomputable section

theorem convolution_cutoff_locality {U n : ℕ} (hn : n ≤ U)
    (f g : ArithmeticFunction ℝ) : (lowPart U f * g) n = (f * g) n := by
  rw [ArithmeticFunction.mul_apply, ArithmeticFunction.mul_apply]
  apply Finset.sum_congr rfl
  intro x hx
  have hp := (Nat.mem_divisorsAntidiagonal.mp hx).1
  have he : 1 ≤ x.2 := Nat.one_le_iff_ne_zero.mpr
    (Nat.right_ne_zero_of_mem_divisorsAntidiagonal hx)
  have hxU : x.1 ≤ U := (show x.1 ≤ n by nlinarith).trans hn
  simp [lowPart, hxU]

theorem high_convolution_vanishes_on_visible_support {U n : ℕ} (hn : n ≤ U)
    (f g : ArithmeticFunction ℝ) : (highPart U f * g) n = 0 := by
  rw [highPart, sub_mul]
  change (f * g) n - (lowPart U f * g) n = 0
  rw [convolution_cutoff_locality hn, sub_self]

theorem complete_low_mobius_operator_is_source {U n : ℕ} (hn : n ≤ U)
    (f : ArithmeticFunction ℝ) : (lowPart U μ * (ζ * f)) n = f n := by
  rw [convolution_cutoff_locality hn, ← mul_assoc,
    ArithmeticFunction.coe_moebius_mul_coe_zeta, one_mul]

theorem complete_high_mobius_operator_vanishes {U n : ℕ} (hn : n ≤ U)
    (f : ArithmeticFunction ℝ) : ((highPart U μ * ζ) * f) n = 0 := by
  rw [mul_assoc]
  exact high_convolution_vanishes_on_visible_support hn _ _

theorem balanced_low_operator_retains_residual {U n : ℕ} (hn : n ≤ U)
    (f r : ArithmeticFunction ℝ) :
    ((lowPart U μ - r) * (ζ * f)) n = f n - (r * (ζ * f)) n := by
  rw [sub_mul]
  change (lowPart U μ * (ζ * f)) n - (r * (ζ * f)) n = _
  rw [complete_low_mobius_operator_is_source hn]

theorem balanced_high_operator_is_correction {U V n : ℕ} (hn : n ≤ U)
    (f r : ArithmeticFunction ℝ) :
    ((highPart U μ + r) * ζ * highPart V f) n = (r * (ζ * highPart V f)) n := by
  rw [mul_assoc, add_mul]
  change (highPart U μ * (ζ * highPart V f)) n + (r * (ζ * highPart V f)) n = _
  rw [high_convolution_vanishes_on_visible_support hn, zero_add]

theorem weighted_complete_low_identity (s : Finset ℕ) (w : ℕ → ℝ)
    (f : ArithmeticFunction ℝ) {U : ℕ} (hs : ∀ n ∈ s, n ≤ U) :
    (∑ n ∈ s, w n * (lowPart U μ * (ζ * f)) n) = ∑ n ∈ s, w n * f n := by
  exact Finset.sum_congr rfl (fun n hn =>
    congrArg (w n * ·) (complete_low_mobius_operator_is_source (hs n hn) f))

theorem weighted_balanced_low_residual (s : Finset ℕ) (w : ℕ → ℝ)
    (f r : ArithmeticFunction ℝ) {U : ℕ} (hs : ∀ n ∈ s, n ≤ U) :
    (∑ n ∈ s, w n * ((lowPart U μ - r) * (ζ * f)) n) -
      (∑ n ∈ s, w n * f n) = -(∑ n ∈ s, w n * (r * (ζ * f)) n) := by
  have he : (∑ n ∈ s, w n * ((lowPart U μ - r) * (ζ * f)) n) =
      ∑ n ∈ s, w n * (f n - (r * (ζ * f)) n) :=
    Finset.sum_congr rfl (fun n hn =>
      congrArg (w n * ·) (balanced_low_operator_retains_residual (hs n hn) f r))
  rw [he]
  simp only [mul_sub, Finset.sum_sub_distrib]
  ring

theorem weighted_balanced_low_error_paid (s : Finset ℕ) (w : ℕ → ℝ)
    (f r : ArithmeticFunction ℝ) {U : ℕ} (hs : ∀ n ∈ s, n ≤ U) :
    |(∑ n ∈ s, w n * ((lowPart U μ - r) * (ζ * f)) n) -
      (∑ n ∈ s, w n * f n)| ≤ ∑ n ∈ s, |w n| * |(r * (ζ * f)) n| := by
  rw [weighted_balanced_low_residual s w f r hs, abs_neg]
  simpa only [abs_mul] using Finset.abs_sum_le_sum_abs (fun n => w n * (r * (ζ * f)) n) s

end
end GRWTSK.RiemannHypothesis.Conversation.OversizedCutoff
