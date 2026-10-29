/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Real.ReciprocalSquareTail
import Mathlib.NumberTheory.LSeries.RiemannZeta

set_option autoImplicit false

/-!
# A uniform rational modulus floor in the absolutely convergent half-plane

The actual zeta series is split at n=1 and n=2. Absolute tail domination and
finite telescoping give |zeta(s)-1| <= 3/4 for Re(s)>=2, hence a uniform 1/4
floor. There is no numerical zero list, functional-equation assumption, or
caller-supplied nonvanishing/modulus premise. This is not a circle-growth or
critical-strip estimate. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.RightHalfPlaneModulus

open Filter
open scoped Topology BigOperators
open GRWTSK.Analysis.Real.ReciprocalSquareTail

noncomputable section

/-- Positive real bases keep the full complex exponent, with its exact real part. -/
theorem norm_reciprocal_cpow_le_square (t : ℝ) (ht : 1 ≤ t)
    (s : ℂ) (hs : 2 ≤ s.re) : ‖1 / (t : ℂ) ^ s‖ ≤ 1 / t ^ 2 := by
  have ht0 : 0 < t := lt_of_lt_of_le zero_lt_one ht
  rw [norm_div, norm_one, Complex.norm_cpow_eq_rpow_re_of_pos ht0]
  apply div_le_div_of_nonneg_left (by norm_num) (sq_pos_of_pos ht0)
  simpa only [Real.rpow_two] using Real.rpow_le_rpow_of_exponent_le ht hs

/-- Absolute convergence justifies every finite-index shift used below. -/
theorem summable_shifted_reciprocal_cpow (s : ℂ) (hs : 1 < s.re) (q : ℕ) :
    Summable (fun k : ℕ => 1 / ((k : ℂ) + (q : ℂ)) ^ s) := by
  have hbase := Complex.summable_one_div_nat_cpow.mpr hs
  simpa only [Nat.cast_add] using (summable_nat_add_iff q).mpr hbase

/-- The whole shifted tail is bounded, not only one inspected truncation. -/
theorem norm_tsum_reciprocal_cpow_tail_le (s : ℂ) (hs : 2 ≤ s.re)
    (q : ℕ) (hq : 2 ≤ q) :
    ‖∑' k : ℕ, 1 / ((k : ℂ) + (q : ℂ)) ^ s‖ ≤ 1 / ((q : ℝ) - 1) := by
  have hsum := summable_shifted_reciprocal_cpow s (by linarith) q
  have hqR : (2 : ℝ) ≤ q := by exact_mod_cast hq
  apply le_of_tendsto hsum.hasSum.tendsto_sum_nat.norm
  apply Eventually.of_forall
  intro N
  calc
    _ ≤ ∑ k ∈ Finset.range N, ‖1 / ((k : ℂ) + (q : ℂ)) ^ s‖ := norm_sum_le _ _
    _ ≤ ∑ k ∈ Finset.range N, 1 / ((q : ℝ) + (k : ℝ)) ^ 2 := by
      apply Finset.sum_le_sum
      intro k hk
      have ht : (1 : ℝ) ≤ (q : ℝ) + (k : ℝ) := by
        linarith [Nat.cast_nonneg (α := ℝ) k]
      simpa only [Complex.ofReal_add, Complex.ofReal_natCast, add_comm] using
        norm_reciprocal_cpow_le_square ((q : ℝ) + (k : ℝ)) ht s hs
    _ ≤ _ := finite_square_tail_le_reciprocal (q : ℝ) (by linarith) N

/-- The leading term one and the n=2 term are both retained before estimating. -/
theorem zeta_eq_one_add_two_add_tail (s : ℂ) (hs : 1 < s.re) :
    riemannZeta s = 1 + 1 / (2 : ℂ) ^ s +
      ∑' k : ℕ, 1 / ((k : ℂ) + 3) ^ s := by
  have h1 := (summable_shifted_reciprocal_cpow s hs 1).tsum_eq_zero_add
  have h2 := (summable_shifted_reciprocal_cpow s hs 2).tsum_eq_zero_add
  norm_num only [Nat.cast_one, Nat.cast_zero, Nat.cast_add, Nat.cast_ofNat,
    zero_add, Complex.one_cpow, div_one, add_assoc] at h1 h2
  rw [zeta_eq_tsum_one_div_nat_add_one_cpow hs, h1, h2]
  ring

/-- A uniform disk around one, derived solely from the actual Dirichlet series. -/
theorem norm_zeta_sub_one_le_three_quarters (s : ℂ) (hs : 2 ≤ s.re) :
    ‖riemannZeta s - 1‖ ≤ (3 / 4 : ℝ) := by
  have hfirst : ‖1 / (2 : ℂ) ^ s‖ ≤ (1 / 4 : ℝ) := by
    convert norm_reciprocal_cpow_le_square 2 (by norm_num) s hs using 1 <;> norm_num
  have htail : ‖∑' k : ℕ, 1 / ((k : ℂ) + 3) ^ s‖ ≤ (1 / 2 : ℝ) := by
    convert norm_tsum_reciprocal_cpow_tail_le s hs 3 (by norm_num) using 1 <;> norm_num
  have he : riemannZeta s - 1 = 1 / (2 : ℂ) ^ s +
      ∑' k : ℕ, 1 / ((k : ℂ) + 3) ^ s := by
    rw [zeta_eq_one_add_two_add_tail s (by linarith)]
    ring
  rw [he]
  exact (norm_add_le _ _).trans (by linarith)

/-- The same rational floor works for every imaginary height in Re(s)>=2. -/
theorem one_quarter_le_norm_zeta (s : ℂ) (hs : 2 ≤ s.re) :
    (1 / 4 : ℝ) ≤ ‖riemannZeta s‖ := by
  have ht := norm_le_norm_sub_add (1 : ℂ) (riemannZeta s)
  rw [norm_one, norm_sub_rev] at ht
  linarith [norm_zeta_sub_one_le_three_quarters s hs]

/-- The matching coarse upper bound uses the identical complete-tail estimate. -/
theorem norm_zeta_le_seven_quarters (s : ℂ) (hs : 2 ≤ s.re) :
    ‖riemannZeta s‖ ≤ (7 / 4 : ℝ) := by
  have ht := norm_le_norm_sub_add (riemannZeta s) (1 : ℂ)
  rw [norm_one] at ht
  linarith [norm_zeta_sub_one_le_three_quarters s hs]

/-- Nonvanishing follows from the quantitative floor, not conversely. -/
theorem zeta_ne_zero_of_two_le_re (s : ℂ) (hs : 2 ≤ s.re) : riemannZeta s ≠ 0 := by
  intro he
  have hf := one_quarter_le_norm_zeta s hs
  rw [he, norm_zero] at hf
  norm_num at hf

/-- Totalized inversion is used only after a strictly positive modulus floor. -/
theorem norm_inv_zeta_le_four (s : ℂ) (hs : 2 ≤ s.re) :
    ‖(riemannZeta s)⁻¹‖ ≤ (4 : ℝ) := by
  rw [norm_inv, inv_eq_one_div]
  have hb := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 1)
    (by norm_num : (0 : ℝ) < 1 / 4) (one_quarter_le_norm_zeta s hs)
  norm_num at hb
  simpa only [one_div] using hb

end
end GRWTSK.RiemannHypothesis.RightHalfPlaneModulus
