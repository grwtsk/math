-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaExpTwoGtFour.Variant8dc525b574bfd650687fdef982c1443dbabb1d992217ceee2418ac2a9a0fdd01","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8dc525b574bfd650687fdef982c1443dbabb1d992217ceee2418ac2a9a0fdd01","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaExpTwoGtFour.Variant8dc525b574bfd650687fdef982c1443dbabb1d992217ceee2418ac2a9a0fdd01","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"8dc525b574bfd650687fdef982c1443dbabb1d992217ceee2418ac2a9a0fdd01","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/8dc525b574bfd650687fdef982c1443dbabb1d992217ceee2418ac2a9a0fdd01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiWronskianFourDeterminantBound

/-!
# Asymptotic rank-four theta Wronskian positivity

The finite determinant perturbation bound is reduced to a scalar exponential
inequality.  This module proves that inequality for A >= 12 and transfers it
back to the literal theta source.  Since thetaModeA(t) >= 12 for t >= 1/2,
rank-four Wronskian positivity is closed on the full asymptotic half-line
t >= 1/2.

The compact interval 0 <= t <= 1/2 remains the only rank-four source-sign
obligation after this module.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaExpTwoGtFour.Variant8dc525b574bfd650687fdef982c1443dbabb1d992217ceee2418ac2a9a0fdd01

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section

/-- A small rational lower bound used to convert t >= 1/2 into A(t) >= 12. -/
theorem thetaExpTwo_gt_four : (4 : ℝ) < Real.exp 2 := by
  have h := Real.sum_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 2) 3
  norm_num [Finset.sum_range_succ, Nat.factorial] at h
  linarith

/-- Above A = 12 the basic rank-four exponential factor is bounded by a fixed
rational power of twenty. -/
theorem thetaRankFour_exp_neg_three_le
    {A : ℝ} (hA : 12 ≤ A) :
    Real.exp (-3 * A) ≤ 1 / 20 ^ 12 := by
  have hpow := pow_le_pow_left₀
    (by norm_num : (0 : ℝ) ≤ 20) thetaExpThree_gt_twenty.le 12
  have h36 : Real.exp (36 : ℝ) = Real.exp 3 ^ 12 := by
    convert! Real.exp_nat_mul (3 : ℝ) 12 using 1
    norm_num
  calc
    Real.exp (-3 * A) ≤ Real.exp (-36) :=
      Real.exp_le_exp.mpr (by linarith)
    _ = 1 / Real.exp 36 := by
      rw [Real.exp_neg, one_div]
    _ ≤ 1 / 20 ^ 12 :=
      one_div_le_one_div_of_le (by positivity) (by rwa [h36])

/-- Polynomial growth of degree ten is dominated by the first exponential
factor uniformly for A >= 12. -/
theorem thetaRankFour_tenth_power_exp_bound
    {A : ℝ} (hA : 12 ≤ A) :
    A ^ 10 * Real.exp (-3 * A) ≤ 12 ^ 10 / 20 ^ 12 := by
  have hA0 : 0 ≤ A := by linarith
  have he : A ≤ 12 * Real.exp ((A - 12) / 12) := by
    have h := Real.add_one_le_exp ((A - 12) / 12)
    nlinarith
  have hp := pow_le_pow_left₀ hA0 he 10
  have hexp :
      (12 * Real.exp ((A - 12) / 12)) ^ 10 =
        12 ^ 10 * Real.exp (10 * ((A - 12) / 12)) := by
    rw [mul_pow, ← Real.exp_nat_mul]
    norm_num
  rw [hexp] at hp
  have hprod :=
    mul_le_mul_of_nonneg_right hp (Real.exp_nonneg (-3 * A))
  have heq :
      (12 ^ 10 * Real.exp (10 * ((A - 12) / 12))) *
          Real.exp (-3 * A) =
        12 ^ 10 *
          Real.exp (10 * ((A - 12) / 12) + (-3 * A)) := by
    rw [mul_assoc, ← Real.exp_add]
  rw [heq] at hprod
  have harg :
      10 * ((A - 12) / 12) + (-3 * A) ≤ -36 := by
    linarith
  have ht :
      Real.exp (10 * ((A - 12) / 12) + (-3 * A)) ≤ Real.exp (-36) :=
    Real.exp_le_exp.mpr harg
  have hpow := pow_le_pow_left₀
    (by norm_num : (0 : ℝ) ≤ 20) thetaExpThree_gt_twenty.le 12
  have h36 : Real.exp (36 : ℝ) = Real.exp 3 ^ 12 := by
    convert! Real.exp_nat_mul (3 : ℝ) 12 using 1
    norm_num
  have hlast : Real.exp (-36 : ℝ) ≤ 1 / 20 ^ 12 := by
    rw [Real.exp_neg, ← one_div]
    apply one_div_le_one_div_of_le (by positivity)
    rwa [h36]
  calc
    A ^ 10 * Real.exp (-3 * A) ≤
        12 ^ 10 *
          Real.exp (10 * ((A - 12) / 12) + (-3 * A)) := hprod
    _ ≤ 12 ^ 10 * Real.exp (-36) :=
      mul_le_mul_of_nonneg_left ht (by positivity)
    _ ≤ 12 ^ 10 * (1 / 20 ^ 12) :=
      mul_le_mul_of_nonneg_left hlast (by positivity)
    _ = 12 ^ 10 / 20 ^ 12 := by ring

/-- The positive quartic polynomial from the determinant perturbation bound. -/
def thetaPhiRankFourPerturbationPolynomial (z : ℝ) : ℝ :=
  372373664563200 * z +
  2242106519174774784 * z ^ 2 +
  1561848350772088012800 * z ^ 3 +
  113336795588871485128704 * z ^ 4

/-- The scalar determinant error is strictly below the dominant constant once
A >= 12. -/
theorem thetaPhiRankFour_scalar_error_lt
    {A : ℝ} (hA : 12 ≤ A) :
    A ^ 10 *
        thetaPhiRankFourPerturbationPolynomial (Real.exp (-3 * A)) <
      201326592 * 369 := by
  have hz := thetaRankFour_exp_neg_three_le hA
  have hz0 : 0 ≤ Real.exp (-3 * A) := Real.exp_nonneg _
  have hz2 :
      Real.exp (-3 * A) ^ 2 ≤ (1 / 20 ^ 12 : ℝ) ^ 2 :=
    pow_le_pow_left₀ hz0 hz 2
  have hz3 :
      Real.exp (-3 * A) ^ 3 ≤ (1 / 20 ^ 12 : ℝ) ^ 3 :=
    pow_le_pow_left₀ hz0 hz 3
  have hterm2 :
      2242106519174774784 * Real.exp (-3 * A) < 1000 := by
    calc
      _ ≤ 2242106519174774784 * (1 / 20 ^ 12 : ℝ) :=
        mul_le_mul_of_nonneg_left hz (by norm_num)
      _ < 1000 := by norm_num
  have hterm3 :
      1561848350772088012800 * Real.exp (-3 * A) ^ 2 < 1 := by
    calc
      _ ≤ 1561848350772088012800 * (1 / 20 ^ 12 : ℝ) ^ 2 :=
        mul_le_mul_of_nonneg_left hz2 (by norm_num)
      _ < 1 := by norm_num
  have hterm4 :
      113336795588871485128704 * Real.exp (-3 * A) ^ 3 < 1 := by
    calc
      _ ≤ 113336795588871485128704 * (1 / 20 ^ 12 : ℝ) ^ 3 :=
        mul_le_mul_of_nonneg_left hz3 (by norm_num)
      _ < 1 := by norm_num
  have hbracket :
      372373664563200 +
        2242106519174774784 * Real.exp (-3 * A) +
        1561848350772088012800 * Real.exp (-3 * A) ^ 2 +
        113336795588871485128704 * Real.exp (-3 * A) ^ 3 <
      400000000000000 := by
    nlinarith
  have hfirst :
      A ^ 10 * Real.exp (-3 * A) < 1 / 10000 := by
    calc
      _ ≤ 12 ^ 10 / 20 ^ 12 :=
        thetaRankFour_tenth_power_exp_bound hA
      _ < 1 / 10000 := by norm_num
  have hbracket0 :
      0 <
        372373664563200 +
          2242106519174774784 * Real.exp (-3 * A) +
          1561848350772088012800 * Real.exp (-3 * A) ^ 2 +
          113336795588871485128704 * Real.exp (-3 * A) ^ 3 := by
    positivity
  calc
    A ^ 10 *
        thetaPhiRankFourPerturbationPolynomial (Real.exp (-3 * A)) =
      (A ^ 10 * Real.exp (-3 * A)) *
        (372373664563200 +
          2242106519174774784 * Real.exp (-3 * A) +
          1561848350772088012800 * Real.exp (-3 * A) ^ 2 +
          113336795588871485128704 * Real.exp (-3 * A) ^ 3) := by
        unfold thetaPhiRankFourPerturbationPolynomial
        ring
    _ < (1 / 10000 : ℝ) * 400000000000000 := by
      exact mul_lt_mul hfirst hbracket.le hbracket0 (by norm_num)
    _ < 201326592 * 369 := by norm_num

/-- The explicit scalar bound beats the dominant determinant budget for every
A >= 12. -/
theorem thetaPhiRankFour_determinant_error_lt_budget_of_modeA_ge_twelve
    {t : ℝ} (ht : 0 ≤ t) (hA : 12 ≤ thetaModeA t) :
    |thetaPhiJetDet4Perturbation t| <
      thetaPhiRankFourDominantBudget t := by
  have herror := thetaPhiJetDet4Perturbation_abs_le_scalar ht
  have hscalar := thetaPhiRankFour_scalar_error_lt hA
  calc
    |thetaPhiJetDet4Perturbation t| ≤
        thetaModeA t ^ 16 *
          thetaPhiRankFourPerturbationPolynomial
            (Real.exp (-3 * thetaModeA t)) := by
      simpa only [thetaPhiRankFourPerturbationPolynomial] using herror
    _ = thetaModeA t ^ 6 *
        (thetaModeA t ^ 10 *
          thetaPhiRankFourPerturbationPolynomial
            (Real.exp (-3 * thetaModeA t))) := by ring
    _ < thetaModeA t ^ 6 * (201326592 * 369) :=
      mul_lt_mul_of_pos_left hscalar (by positivity)
    _ = thetaPhiRankFourDominantBudget t := by
      unfold thetaPhiRankFourDominantBudget
      ring

/-- The theta source mode coordinate is at least twelve from t = 1/2 onward. -/
theorem thetaModeA_ge_twelve_of_half_le
    {t : ℝ} (ht : (1 / 2 : ℝ) ≤ t) :
    12 ≤ thetaModeA t := by
  have he2 : Real.exp 2 ≤ Real.exp (4 * t) :=
    Real.exp_le_exp.mpr (by linarith)
  have he4 : (4 : ℝ) < Real.exp (4 * t) :=
    thetaExpTwo_gt_four.trans_le he2
  unfold thetaModeA
  apply le_of_lt
  calc
    (12 : ℝ) = 3 * 4 := by norm_num
    _ < Real.pi * 4 :=
      mul_lt_mul_of_pos_right Real.pi_gt_three (by norm_num)
    _ < Real.pi * Real.exp (4 * t) :=
      mul_lt_mul_of_pos_left he4 Real.pi_pos

/-- The rank-four determinant perturbation criterion is uniformly satisfied
from t = 1/2 onward. -/
theorem thetaPhiRankFourPerturbationControlledFrom_half :
    ThetaPhiRankFourPerturbationControlledFrom (1 / 2 : ℝ) := by
  intro t ht
  have ht0 : 0 ≤ t := by linarith
  exact thetaPhiRankFour_determinant_error_lt_budget_of_modeA_ge_twelve
    ht0 (thetaModeA_ge_twelve_of_half_le ht)

/-- Strict rank-four source Wronskian positivity on the asymptotic half-line. -/
theorem thetaPhiWronskianFour_pos_of_half_le
    {t : ℝ} (ht : (1 / 2 : ℝ) ≤ t) :
    0 < thetaPhiWronskianFour t := by
  have ht0 : 0 ≤ t := by linarith
  exact thetaPhiWronskianFour_pos_of_perturbation_lt_budget
    ht0 (thetaPhiRankFourPerturbationControlledFrom_half t ht)

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
