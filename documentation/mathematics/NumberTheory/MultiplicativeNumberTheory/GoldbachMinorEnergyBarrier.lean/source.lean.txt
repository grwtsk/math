/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachMinorAbsoluteEnergy
import Mathlib.Tactic

set_option autoImplicit false

/-!
# A quantitative obstruction to linear absolute minor budgets

The coarse inherited theta estimates imply a logarithmically growing lower
bound for the absolute minor integral at Q=2. This does not lower-bound the
norm or the negative real part of the signed minor integral.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachMinorEnergyBarrier

open scoped BigOperators Real
open Set MeasureTheory
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachCircleIntegral
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer
open GRWTSK.NumberTheory.Primes.GoldbachThetaExplicitCutoff
open GRWTSK.NumberTheory.Primes.GoldbachMinorAbsoluteEnergy

noncomputable section

theorem goldbachRationalArcIndices_two :
    goldbachRationalArcIndices 2 = {(0, 1), (1, 2)} := by
  decide

theorem goldbachMajorArcSet_two_eq_union (N : ℕ) :
    goldbachRationalMajorArcSet 2 N =
      goldbachClippedRationalArc 2 N (0, 1) ∪
        goldbachClippedRationalArc 2 N (1, 2) := by
  rw [goldbachRationalMajorArcSet_eq_biUnion_clipped, goldbachRationalArcIndices_two]
  simp

/-- A deliberately coarse measure bound, reusing the existing three-lift
six-radius estimates. No new exact-window geometry is assumed. -/
theorem measureReal_goldbachMajorArcSet_two_le (N : ℕ) :
    volume.real (goldbachRationalMajorArcSet 2 N) ≤ 18 / (N + 1 : ℝ) := by
  rw [goldbachMajorArcSet_two_eq_union]
  calc
    volume.real (goldbachClippedRationalArc 2 N (0, 1) ∪
        goldbachClippedRationalArc 2 N (1, 2)) ≤
        volume.real (goldbachClippedRationalArc 2 N (0, 1)) +
          volume.real (goldbachClippedRationalArc 2 N (1, 2)) := measureReal_union_le _ _
    _ ≤ 6 * goldbachRationalArcRadius 2 N 1 +
        6 * goldbachRationalArcRadius 2 N 2 :=
      add_le_add (measureReal_goldbachClippedRationalArc_le 2 N (0, 1))
        (measureReal_goldbachClippedRationalArc_le 2 N (1, 2))
    _ = 18 / (N + 1 : ℝ) := by
      unfold goldbachRationalArcRadius
      push_cast
      have hX : (N + 1 : ℝ) ≠ 0 := by positivity
      field_simp [hX]
      ring

/-- The absolute energy in the two major arcs has an elementary upper
bound. This is not the signed model-major comparison from the terminal
criterion. -/
theorem goldbachMajorEnergy_two_le_theta_square (N : ℕ) :
    goldbachMajorEnergy 2 N ≤ 18 * goldbachPrimeLogTotal N ^ 2 / (N + 1 : ℝ) := by
  have hfinite : volume (goldbachRationalMajorArcSet 2 N) < ⊤ :=
    (measure_mono (goldbachRationalMajorArcSet_subset_unit 2 N)).trans_lt (by simp)
  have hcap : ∀ x ∈ goldbachRationalMajorArcSet 2 N,
      ‖goldbachExponentialEnergy N x‖ ≤ goldbachPrimeLogTotal N ^ 2 := by
    intro x hx
    rw [Real.norm_eq_abs, abs_of_nonneg (goldbachExponentialEnergy_nonneg N x)]
    have hb := norm_goldbachExponentialSum_le_primeLogTotal N x
    have hθ := goldbachPrimeLogTotal_nonneg N
    unfold goldbachExponentialEnergy
    nlinarith [mul_nonneg (sub_nonneg.mpr hb)
      (show 0 ≤ goldbachPrimeLogTotal N + ‖goldbachExponentialSum N x‖ by positivity)]
  have hi := norm_setIntegral_le_of_norm_le_const hfinite hcap
  change ‖goldbachMajorEnergy 2 N‖ ≤
    goldbachPrimeLogTotal N ^ 2 * volume.real (goldbachRationalMajorArcSet 2 N) at hi
  rw [Real.norm_eq_abs, abs_of_nonneg (goldbachMajorEnergy_nonneg 2 N)] at hi
  calc
    goldbachMajorEnergy 2 N ≤
        goldbachPrimeLogTotal N ^ 2 * volume.real (goldbachRationalMajorArcSet 2 N) := hi
    _ ≤ goldbachPrimeLogTotal N ^ 2 * (18 / (N + 1 : ℝ)) :=
      mul_le_mul_of_nonneg_left (measureReal_goldbachMajorArcSet_two_le N) (sq_nonneg _)
    _ = 18 * goldbachPrimeLogTotal N ^ 2 / (N + 1 : ℝ) := by ring

/-- The inherited scalar input makes the major absolute energy at most 19N.
The constant is conservative and uses no signed-major approximation. -/
theorem goldbachMajorEnergy_two_le_nineteen
    (hθ : GoldbachThetaCoarseEstimates) {N : ℕ} (hN : 4000000 ≤ N) :
    goldbachMajorEnergy 2 N ≤ 19 * (N : ℝ) := by
  have hupper := (abs_le.mp (hθ.2 N hN)).2
  have hnonneg := goldbachPrimeLogTotal_nonneg N
  have hN0 : (0 : ℝ) ≤ N := by positivity
  have ht : goldbachPrimeLogTotal N ≤ 501 * (N : ℝ) / 500 := by linarith
  have hs : goldbachPrimeLogTotal N ^ 2 ≤ (501 * (N : ℝ) / 500) ^ 2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr ht)
      (show 0 ≤ 501 * (N : ℝ) / 500 + goldbachPrimeLogTotal N by positivity)]
  have hXp : (0 : ℝ) < (N + 1 : ℝ) := by positivity
  apply (goldbachMajorEnergy_two_le_theta_square N).trans
  apply (div_le_iff₀ hXp).2
  nlinarith [sq_nonneg (N : ℝ)]

/-- Primes above n each contribute an additional factor at least log n to
the square total. Lower primes and both endpoints remain in the sum. -/
theorem goldbachSquareTotal_double_ge_log_theta_difference
    {n : ℕ} (hn : 2 ≤ n) :
    Real.log (n : ℝ) * (goldbachPrimeLogTotal (2 * n) - goldbachPrimeLogTotal n) ≤
      goldbachPrimeLogSquareTotal (2 * n) := by
  have hsmall : (∑ k ∈ Finset.range (2 * n + 1),
      if k ≤ n then primeLogWeight k else 0) = goldbachPrimeLogTotal n := by
    rw [← Finset.sum_filter]
    have hfilter : (Finset.range (2 * n + 1)).filter (fun k => k ≤ n) =
        Finset.range (n + 1) := by
      ext k
      simp only [Finset.mem_filter, Finset.mem_range]
      omega
    rw [hfilter]
    rfl
  have hpoint : ∀ k ∈ Finset.range (2 * n + 1),
      Real.log (n : ℝ) * primeLogWeight k ≤
        primeLogWeight k ^ 2 +
          Real.log (n : ℝ) * (if k ≤ n then primeLogWeight k else 0) := by
    intro k hk
    by_cases hkn : k ≤ n
    · simp only [if_pos hkn]
      nlinarith [sq_nonneg (primeLogWeight k)]
    · by_cases hp : Nat.Prime k
      · have hnp : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
        have hnk : (n : ℝ) ≤ k := by exact_mod_cast (show n ≤ k by omega)
        have hl : Real.log (n : ℝ) ≤ Real.log (k : ℝ) := Real.log_le_log hnp hnk
        have hw := primeLogWeight_nonneg k
        simp only [primeLogWeight, if_pos hp] at hw ⊢
        simp only [if_neg hkn, mul_zero, add_zero]
        nlinarith [mul_nonneg hw (sub_nonneg.mpr hl)]
      · simp [primeLogWeight, hp]
  have hsum := Finset.sum_le_sum hpoint
  simp only [Finset.sum_add_distrib, ← Finset.mul_sum] at hsum
  rw [hsmall] at hsum
  change Real.log (n : ℝ) * goldbachPrimeLogTotal (2 * n) ≤
    goldbachPrimeLogSquareTotal (2 * n) + Real.log (n : ℝ) * goldbachPrimeLogTotal n at hsum
  linarith

/-- A genuine lower estimate derived from the explicitly supplied theta
rate, not from the unknown Goldbach convolution. -/
theorem goldbachSquareTotal_double_ge_of_coarse
    (hθ : GoldbachThetaCoarseEstimates) {n : ℕ} (hn : 4000000 ≤ n) :
    497 * (n : ℝ) * Real.log (n : ℝ) / 500 ≤ goldbachPrimeLogSquareTotal (2 * n) := by
  have htwo : 4000000 ≤ 2 * n := by omega
  have hlow := (abs_le.mp (hθ.2 (2 * n) htwo)).1
  have hupp := (abs_le.mp (hθ.2 n hn)).2
  push_cast at hlow
  have hdiff : 497 * (n : ℝ) / 500 ≤
      goldbachPrimeLogTotal (2 * n) - goldbachPrimeLogTotal n := by linarith
  have hlog : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg (by exact_mod_cast (show 1 ≤ n by omega))
  have hbase := goldbachSquareTotal_double_ge_log_theta_difference (show 2 ≤ n by omega)
  nlinarith [mul_nonneg hlog (sub_nonneg.mpr hdiff)]

/-- The absolute minor integral grows at least like N log N at fixed Q=2.
All hypotheses are the inherited coarse scalar estimates. -/
theorem goldbachMinorAbsoluteIntegral_double_lower
    (hθ : GoldbachThetaCoarseEstimates) {n : ℕ} (hn : 4000000 ≤ n) :
    497 * (n : ℝ) * Real.log (n : ℝ) / 500 - 38 * (n : ℝ) ≤
      goldbachMinorAbsoluteIntegral 2 (2 * n) := by
  have he := goldbachSquareTotal_double_ge_of_coarse hθ hn
  have hm := goldbachMajorEnergy_two_le_nineteen hθ (show 4000000 ≤ 2 * n by omega)
  have hsplit := goldbachMajorEnergy_add_minorAbsolute 2 (2 * n)
  push_cast at hm
  linarith

/-- No fixed linear absolute-integral allowance survives once this explicit
logarithmic threshold is crossed. This does not obstruct signed cancellation. -/
theorem goldbachMinorAbsoluteIntegral_gt_linear
    (hθ : GoldbachThetaCoarseEstimates) {n : ℕ} (hn : 4000000 ≤ n)
    {C : ℝ} (hC : 0 ≤ C) (hlog : 20 + 2 * C < 497 * Real.log (n : ℝ) / 1000) :
    C * (2 * (n : ℝ) + 1) < goldbachMinorAbsoluteIntegral 2 (2 * n) := by
  have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast (show 1 ≤ n by omega)
  have hnp : (0 : ℝ) < n := by linarith
  have hg : 2 + 4 * C < 497 * Real.log (n : ℝ) / 500 - 38 := by linarith
  have hp := mul_pos (sub_pos.mpr hg) hnp
  have hb := goldbachMinorAbsoluteIntegral_double_lower hθ hn
  nlinarith [mul_nonneg hC (show 0 ≤ 2 * (n : ℝ) - 1 by linarith)]

end
end GRWTSK.NumberTheory.Primes.GoldbachMinorEnergyBarrier
