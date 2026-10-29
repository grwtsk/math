-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualEvenProductMoment.Variant2bd780987be76c89b8c133cda9984d7e4a4597fe037ef6956d6e0818105ae26f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2bd780987be76c89b8c133cda9984d7e4a4597fe037ef6956d6e0818105ae26f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualEvenProductMoment.Variant2bd780987be76c89b8c133cda9984d7e4a4597fe037ef6956d6e0818105ae26f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"2bd780987be76c89b8c133cda9984d7e4a4597fe037ef6956d6e0818105ae26f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/critical-complement/proof-map-bindings-20261007T155220Z/actual-source-complete-even-product-Mobius-compensation-and-moving-upper-payment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePrimePowerPartition
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedMobiusPairing

/-!
# Complete compensated even products of the original source

Research direction: grwtsk contributors. Proof construction: OpenAI Codex.
The parity filter is on the complete product n, not on an outer divisor.
Every original divisor/log contact is retained before the exact Moebius
convolution. The remaining odd sector and every physical terminal translate
remain explicit. No whole-source signed cap or physical contraction is asserted.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualEvenProductMoment.Variant2bd780987be76c89b8c133cda9984d7e4a4597fe037ef6956d6e0818105ae26f

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualEvenProductSector

open scoped BigOperators
open ArithmeticFunction
open SourcePairing SourcePrimePowerPartition
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization PrimePowerDescent EstimateMobiusSplit EstimateMertensResidual
open EstimatePrimeSmoothDefect

noncomputable section

/-- The original closed inventory filtered by the parity of its complete product. -/
def actualEvenProductMoment (A : ℝ) : ℝ :=
  ∑ n ∈ (primePowerInventory (2 * A)).filter (fun n : ℕ => 2 ∣ n),
    vonMangoldt n * closedPrimeWeight A n

/-- All odd complete products, with the same closed upper floor and actual weight. -/
def actualOddProductMoment (A : ℝ) : ℝ :=
  ∑ n ∈ (primePowerInventory (2 * A)).filter (fun n : ℕ => ¬2 ∣ n),
    vonMangoldt n * closedPrimeWeight A n

/-- Every original Moebius/log divisor contact of each even product. -/
def actualEvenMobiusProductMoment (A : ℝ) : ℝ :=
  ∑ n ∈ (primePowerInventory (2 * A)).filter (fun n : ℕ => 2 ∣ n),
    ∑ dk ∈ n.divisorsAntidiagonal, mobiusLogTerm A n dk

/-- Full divisor compensation is performed before the even-sector estimate. -/
theorem actualEvenMobiusProductMoment_eq (A : ℝ) :
    actualEvenMobiusProductMoment A = actualEvenProductMoment A := by
  unfold actualEvenMobiusProductMoment actualEvenProductMoment
  apply Finset.sum_congr rfl
  intro n hn
  rw [vonMangoldt_eq_mobius_log_convolution n, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro dk hdk
  rfl

/-- The original residual retains the complete odd complement exactly. -/
theorem mertensResidual_eq_even_add_odd (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = actualEvenProductMoment A + actualOddProductMoment A := by
  rw [mertensResidual_eq_closedPrimeMoment A hA]
  unfold actualEvenProductMoment actualOddProductMoment closedPrimeMoment
  symm
  exact Finset.sum_filter_add_sum_filter_not _ _ _

private theorem even_primePow {n : ℕ} (hn : IsPrimePow n) (he : 2 ∣ n) :
    ∃ j : ℕ, 0 < j ∧ j ≤ n ∧ 2 ^ j = n := by
  obtain ⟨p, hpn, j, hjn, hp, hj, hpow⟩ := (isPrimePow_nat_iff_bounded n).mp hn
  have hdpow : 2 ∣ p ^ j := by rw [hpow]; exact he
  have hd : 2 ∣ p := Nat.prime_two.dvd_of_dvd_pow hdpow
  have hp2 : p = 2 := ((Nat.prime_dvd_prime_iff_eq Nat.prime_two hp).mp hd).symm
  subst p
  exact ⟨j, hj, hjn, hpow⟩

/-- Exact positive exponents of two; the unit exponent is absent and the upper floor is closed. -/
def actualEvenPowerInventory (A : ℝ) : Finset ℕ :=
  (Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊).filter
    (fun j : ℕ => 2 ^ j ≤ ⌊Real.exp (2 * A)⌋₊)

/-- Only powers of two survive the complete even-product Moebius compensation. -/
theorem actualEvenProductMoment_eq_two_power_sum (A : ℝ) :
    actualEvenProductMoment A = ∑ j ∈ actualEvenPowerInventory A,
      vonMangoldt (2 ^ j) * closedPrimeWeight A (2 ^ j) := by
  let S := ((primePowerInventory (2 * A)).filter (fun n : ℕ => 2 ∣ n)).filter IsPrimePow
  have hz : actualEvenProductMoment A = ∑ n ∈ S,
      vonMangoldt n * closedPrimeWeight A n := by
    unfold actualEvenProductMoment
    symm
    apply Finset.sum_subset (Finset.filter_subset _ _)
    intro n hn hnot
    have hnnot : ¬IsPrimePow n := by
      intro hp
      exact hnot (Finset.mem_filter.mpr ⟨hn, hp⟩)
    exact source_coefficient_zero_of_not_isPrimePow A hnnot
  rw [hz]
  symm
  apply Finset.sum_bij (fun j _ => 2 ^ j)
  · intro j hj
    obtain ⟨hjI, hjN⟩ := Finset.mem_filter.mp hj
    have hj0 : j ≠ 0 := by have := (Finset.mem_Icc.mp hjI).1; omega
    have hp := Nat.prime_two.isPrimePow.pow hj0
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨hp.two_le, hjN⟩, ?_⟩, hp⟩
    exact dvd_pow_self 2 hj0
  · intro j hj k hk heq
    exact Nat.pow_right_injective (by norm_num : 2 ≤ 2) heq
  · intro n hn
    obtain ⟨hnE, hnP⟩ := Finset.mem_filter.mp hn
    obtain ⟨hnI, hn2⟩ := Finset.mem_filter.mp hnE
    obtain ⟨j, hj0, hjn, hjpow⟩ := even_primePow hnP hn2
    have hnN := (Finset.mem_Icc.mp hnI).2
    refine ⟨j, Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨hj0, hjn.trans hnN⟩, ?_⟩, hjpow⟩
    simpa [hjpow] using hnN
  · intro j hj
    rfl

private theorem sum_geometric_Icc_one (N : ℕ) (r : ℝ) (hr0 : 0 ≤ r) (hr1 : r < 1) :
    (∑ j ∈ Finset.Icc 1 N, r ^ j) ≤ r * (1 - r)⁻¹ := by
  have hs : (∑ j ∈ Finset.Icc 1 N, r ^ j) =
      ∑ k ∈ Finset.range N, r ^ (k + 1) := by
    apply Finset.sum_bij (fun j _ => j - 1)
    · intro j hj
      simp only [Finset.mem_Icc] at hj
      simp only [Finset.mem_range]
      omega
    · intro j hj k hk heq
      simp only [Finset.mem_Icc] at hj hk
      omega
    · intro k hk
      refine ⟨k + 1, ?_, by omega⟩
      simp only [Finset.mem_range] at hk
      exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
    · intro j hj
      have := (Finset.mem_Icc.mp hj).1
      congr 1
      omega
  have ht := (summable_geometric_of_lt_one hr0 hr1).sum_le_tsum
    (Finset.range N) (fun k _ => pow_nonneg hr0 k)
  rw [tsum_geometric_of_lt_one hr0 hr1] at ht
  rw [hs]
  calc
    (∑ k ∈ Finset.range N, r ^ (k + 1)) = r * ∑ k ∈ Finset.range N, r ^ k := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro k hk
      rw [pow_succ]
      ring
    _ ≤ r * (1 - r)⁻¹ := mul_le_mul_of_nonneg_left ht hr0

private theorem two_ratio : (2 : ℝ) ^ (-(1 : ℝ) / 2) = (Real.sqrt 2)⁻¹ := by
  rw [show -(1 : ℝ) / 2 = -((1 : ℝ) / 2) by ring,
    Real.rpow_neg (by norm_num : (0 : ℝ) ≤ 2), ← Real.sqrt_eq_rpow]

/-- Uniform absolute payment for the entire compensated even sector, not an outer-divisor row. -/
theorem actualEvenProductMoment_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |actualEvenProductMoment A| ≤ Real.log 2 / (Real.sqrt 2 - 1) := by
  have hs0 : 0 < Real.sqrt (2 : ℝ) := Real.sqrt_pos.2 (by norm_num)
  have hs1 : 1 < Real.sqrt (2 : ℝ) := by
    have hs := Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2)
    nlinarith [Real.sqrt_nonneg (2 : ℝ)]
  have hr0 : 0 ≤ (2 : ℝ) ^ (-(1 : ℝ) / 2) := Real.rpow_nonneg (by norm_num) _
  have hr1 : (2 : ℝ) ^ (-(1 : ℝ) / 2) < 1 := by
    rw [two_ratio]
    exact (inv_lt_one₀ hs0).2 hs1
  have hl0 : 0 ≤ Real.log (2 : ℝ) := (Real.log_pos (by norm_num)).le
  rw [actualEvenProductMoment_eq_two_power_sum]
  calc
    |∑ j ∈ actualEvenPowerInventory A, vonMangoldt (2 ^ j) * closedPrimeWeight A (2 ^ j)|
        ≤ ∑ j ∈ actualEvenPowerInventory A,
          |vonMangoldt (2 ^ j) * closedPrimeWeight A (2 ^ j)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ j ∈ actualEvenPowerInventory A,
        Real.log 2 * ((2 : ℝ) ^ (-(1 : ℝ) / 2)) ^ j := by
      apply Finset.sum_le_sum
      intro j hj
      have hj0 : j ≠ 0 := by
        have := (Finset.mem_Icc.mp (Finset.mem_filter.mp hj).1).1
        omega
      exact prime_power_source_coefficient_abs_le A hA Nat.prime_two hj0
    _ ≤ ∑ j ∈ Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊,
        Real.log 2 * ((2 : ℝ) ^ (-(1 : ℝ) / 2)) ^ j := by
      apply Finset.sum_le_sum_of_subset_of_nonneg (Finset.filter_subset _ _)
      intro j hj hjnot
      positivity
    _ = Real.log 2 * ∑ j ∈ Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊,
        ((2 : ℝ) ^ (-(1 : ℝ) / 2)) ^ j := (Finset.mul_sum _ _ _).symm
    _ ≤ Real.log 2 * ((2 : ℝ) ^ (-(1 : ℝ) / 2) *
        (1 - (2 : ℝ) ^ (-(1 : ℝ) / 2))⁻¹) :=
      mul_le_mul_of_nonneg_left (sum_geometric_Icc_one _ _ hr0 hr1) hl0
    _ = Real.log 2 / (Real.sqrt 2 - 1) := by
      rw [two_ratio]
      field_simp

/-- The actual open lower band and closed upper floor of all even products. -/
def actualUpperEvenProductMoment (A : ℝ) : ℝ :=
  ∑ n ∈ ((primePowerInventory (2 * A)).filter (fun n : ℕ => 2 ∣ n)).filter
    (fun n : ℕ => 2 * Real.exp (2 * A) / 3 < (n : ℝ)),
    vonMangoldt n * closedPrimeWeight A n

/-- The moving band retains every divisor contact before complete Moebius compensation. -/
theorem actualUpperEvenProductMoment_eq_full_mobius_sum (A : ℝ) :
    actualUpperEvenProductMoment A =
      ∑ n ∈ ((primePowerInventory (2 * A)).filter (fun n : ℕ => 2 ∣ n)).filter
        (fun n : ℕ => 2 * Real.exp (2 * A) / 3 < (n : ℝ)),
        ∑ dk ∈ n.divisorsAntidiagonal, mobiusLogTerm A n dk := by
  unfold actualUpperEvenProductMoment
  apply Finset.sum_congr rfl
  intro n hn
  rw [vonMangoldt_eq_mobius_log_convolution n, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro dk hdk
  rfl

/-- The touching lower-band atom remains in the exact closed complementary sector. -/
theorem actualEvenProductMoment_eq_upper_add_closed_low (A : ℝ) :
    actualEvenProductMoment A = actualUpperEvenProductMoment A +
      ∑ n ∈ ((primePowerInventory (2 * A)).filter (fun n : ℕ => 2 ∣ n)).filter
        (fun n : ℕ => (n : ℝ) ≤ 2 * Real.exp (2 * A) / 3),
        vonMangoldt n * closedPrimeWeight A n := by
  unfold actualEvenProductMoment actualUpperEvenProductMoment
  have h := Finset.sum_filter_add_sum_filter_not
    ((primePowerInventory (2 * A)).filter (fun n : ℕ => 2 ∣ n))
    (fun n : ℕ => 2 * Real.exp (2 * A) / 3 < (n : ℝ))
    (fun n => vonMangoldt n * closedPrimeWeight A n)
  simpa only [not_lt] using h.symm

private theorem upper_even_primePow_unique {A : ℝ} {n m : ℕ}
    (hn : n ∈ ((primePowerInventory (2 * A)).filter (fun n : ℕ => 2 ∣ n)).filter
      (fun n : ℕ => 2 * Real.exp (2 * A) / 3 < (n : ℝ)))
    (hm : m ∈ ((primePowerInventory (2 * A)).filter (fun n : ℕ => 2 ∣ n)).filter
      (fun n : ℕ => 2 * Real.exp (2 * A) / 3 < (n : ℝ)))
    (hnP : IsPrimePow n) (hmP : IsPrimePow m) : n = m := by
  obtain ⟨hnE, hnlo⟩ := Finset.mem_filter.mp hn
  obtain ⟨hmE, hmlo⟩ := Finset.mem_filter.mp hm
  obtain ⟨hnI, hn2⟩ := Finset.mem_filter.mp hnE
  obtain ⟨hmI, hm2⟩ := Finset.mem_filter.mp hmE
  obtain ⟨j, hj0, hjn, hjpow⟩ := even_primePow hnP hn2
  obtain ⟨k, hk0, hkm, hkpow⟩ := even_primePow hmP hm2
  have hnu : (n : ℝ) ≤ Real.exp (2 * A) :=
    (Nat.cast_le.mpr (Finset.mem_Icc.mp hnI).2).trans (Nat.floor_le (Real.exp_pos _).le)
  have hmu : (m : ℝ) ≤ Real.exp (2 * A) :=
    (Nat.cast_le.mpr (Finset.mem_Icc.mp hmI).2).trans (Nat.floor_le (Real.exp_pos _).le)
  have hnotlt : ¬j < k := by
    intro hlt
    have hpow : 2 * n ≤ m := by
      rw [← hjpow, ← hkpow]
      have hp := Nat.pow_le_pow_right (by norm_num : 0 < 2) (by omega : j + 1 ≤ k)
      simpa only [pow_succ, Nat.mul_comm] using hp
    have hreal : (2 : ℝ) * n ≤ m := by exact_mod_cast hpow
    nlinarith [Real.exp_pos (2 * A)]
  have hnotgt : ¬k < j := by
    intro hlt
    have hpow : 2 * m ≤ n := by
      rw [← hjpow, ← hkpow]
      have hp := Nat.pow_le_pow_right (by norm_num : 0 < 2) (by omega : k + 1 ≤ j)
      simpa only [pow_succ, Nat.mul_comm] using hp
    have hreal : (2 : ℝ) * m ≤ n := by exact_mod_cast hpow
    nlinarith [Real.exp_pos (2 * A)]
  have hjk : j = k := by omega
  rw [← hjpow, ← hkpow, hjk]

/-- The upper band has at most one nonzero atom after complete even-product compensation. -/
theorem actualUpperEvenProductMoment_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |actualUpperEvenProductMoment A| ≤
      Real.sqrt (3 / 2 : ℝ) * Real.log 2 * Real.exp (-A) := by
  let S := ((primePowerInventory (2 * A)).filter (fun n : ℕ => 2 ∣ n)).filter
    (fun n : ℕ => 2 * Real.exp (2 * A) / 3 < (n : ℝ))
  have hcoeff : ∀ n ∈ S, IsPrimePow n →
      |vonMangoldt n * closedPrimeWeight A n| ≤
        Real.sqrt (3 / 2 : ℝ) * Real.log 2 * Real.exp (-A) := by
    intro n hn hnP
    obtain ⟨hnE, hnlo⟩ := Finset.mem_filter.mp hn
    obtain ⟨hnI, hn2⟩ := Finset.mem_filter.mp hnE
    obtain ⟨j, hj0, hjn, hjpow⟩ := even_primePow hnP hn2
    have hn0 : 0 < (n : ℝ) := by exact_mod_cast hnP.pos
    have hlambda : vonMangoldt n = Real.log 2 := by
      rw [← hjpow, vonMangoldt_apply_pow (by omega : j ≠ 0),
        vonMangoldt_apply_prime Nat.prime_two]
      norm_num
    have he : (Real.exp A) ^ 2 = Real.exp (2 * A) := by
      rw [← Real.exp_nat_mul]
      norm_num
    have hs : (Real.sqrt (n : ℝ)) ^ 2 = (n : ℝ) := Real.sq_sqrt hn0.le
    have hq : (Real.sqrt (3 / 2 : ℝ)) ^ 2 = (3 / 2 : ℝ) := Real.sq_sqrt (by norm_num)
    have hmul : Real.exp A ≤ Real.sqrt (3 / 2 : ℝ) * Real.sqrt (n : ℝ) := by
      apply (sq_le_sq₀ (Real.exp_pos A).le
        (mul_nonneg (Real.sqrt_nonneg _) (Real.sqrt_nonneg _))).mp
      rw [mul_pow, hq, hs, he]
      linarith
    have hweight : |closedPrimeWeight A n| ≤ (Real.sqrt (n : ℝ))⁻¹ := by
      unfold closedPrimeWeight exponentialTest
      rw [abs_mul, abs_of_pos (Real.exp_pos _)]
      have heq : Real.exp (-Real.log (n : ℝ) / 2) = (Real.sqrt (n : ℝ))⁻¹ := by
        rw [show -Real.log (n : ℝ) / 2 = Real.log (n : ℝ) * (-(1 : ℝ) / 2) by ring,
          ← Real.rpow_def_of_pos hn0, show -(1 : ℝ) / 2 = -((1 : ℝ) / 2) by ring,
          Real.rpow_neg hn0.le, ← Real.sqrt_eq_rpow]
      rw [heq]
      simpa only [mul_one] using mul_le_mul_of_nonneg_left
        (EstimateCorrelation.actual_correlation_abs_le_one A (Real.log (n : ℝ)) hA)
        (inv_nonneg.mpr (Real.sqrt_nonneg _))
    calc
      |vonMangoldt n * closedPrimeWeight A n| = Real.log 2 * |closedPrimeWeight A n| := by
        rw [abs_mul, hlambda, abs_of_nonneg (Real.log_pos (by norm_num)).le]
      _ ≤ Real.log 2 * (Real.sqrt (n : ℝ))⁻¹ :=
        mul_le_mul_of_nonneg_left hweight (Real.log_pos (by norm_num)).le
      _ ≤ Real.sqrt (3 / 2 : ℝ) * Real.log 2 * Real.exp (-A) := by
        have hsn : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.2 hn0
        have hexp : 0 < Real.exp A := Real.exp_pos A
        have hinv : (Real.sqrt (n : ℝ))⁻¹ ≤ Real.sqrt (3 / 2 : ℝ) * Real.exp (-A) := by
          rw [Real.exp_neg, ← div_eq_mul_inv, inv_eq_one_div]
          exact (div_le_div_iff₀ hsn hexp).2 (by simpa using hmul)
        calc
          Real.log 2 * (Real.sqrt (n : ℝ))⁻¹ ≤
              Real.log 2 * (Real.sqrt (3 / 2 : ℝ) * Real.exp (-A)) :=
            mul_le_mul_of_nonneg_left hinv (Real.log_pos (by norm_num)).le
          _ = _ := by ring
  by_cases hex : ∃ n ∈ S, IsPrimePow n
  · obtain ⟨n, hn, hnP⟩ := hex
    have heq : actualUpperEvenProductMoment A = vonMangoldt n * closedPrimeWeight A n := by
      unfold actualUpperEvenProductMoment
      apply Finset.sum_eq_single n
      · intro m hm hmne
        have hmnot : ¬IsPrimePow m := by
          intro hmP
          exact hmne (upper_even_primePow_unique hm hn hmP hnP)
        exact source_coefficient_zero_of_not_isPrimePow A hmnot
      · intro hnnot
        exact (hnnot hn).elim
    rw [heq]
    exact hcoeff n hn hnP
  · have hz : actualUpperEvenProductMoment A = 0 := by
      unfold actualUpperEvenProductMoment
      apply Finset.sum_eq_zero
      intro n hn
      have hnnot : ¬IsPrimePow n := by intro hnP; exact hex ⟨n, hn, hnP⟩
      exact source_coefficient_zero_of_not_isPrimePow A hnnot
    rw [hz, abs_zero]
    positivity

/-- The genuine moving upper even-sector payment tends to zero on every real scale. -/
theorem actualUpperEvenProductMoment_tendsto_zero :
    Filter.Tendsto actualUpperEvenProductMoment Filter.atTop (nhds (0 : ℝ)) := by
  have hlim : Filter.Tendsto
      (fun A : ℝ => Real.sqrt (3 / 2 : ℝ) * Real.log 2 * Real.exp (-A))
      Filter.atTop (nhds (0 : ℝ)) := by
    simpa only [mul_zero, Function.comp_def] using
      ((Real.tendsto_exp_atBot.comp Filter.tendsto_neg_atTop_atBot).const_mul
        (Real.sqrt (3 / 2 : ℝ) * Real.log 2))
  apply squeeze_zero_norm' (Filter.eventually_atTop.2 ⟨1, fun A hA => ?_⟩) hlim
  simpa only [Real.norm_eq_abs] using actualUpperEvenProductMoment_abs_le hA

end
end FormalResearch.RiemannHypothesis.SourceActualEvenProductSector
