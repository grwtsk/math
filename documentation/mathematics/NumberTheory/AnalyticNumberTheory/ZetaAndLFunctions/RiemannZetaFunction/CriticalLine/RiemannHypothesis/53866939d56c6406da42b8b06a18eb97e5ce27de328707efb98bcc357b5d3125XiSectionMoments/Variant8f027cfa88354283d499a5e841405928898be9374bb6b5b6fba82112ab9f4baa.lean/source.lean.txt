-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaMoment.Variant53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaMoment.Variant53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/53/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125--XiSectionMoments.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula
import Mathlib.Algebra.QuadraticDiscriminant


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaMoment.Variant53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125

namespace FormalResearch.RiemannHypothesis.XiSectionMoments
open XiToeplitz ThetaPositiveLift
open Filter MeasureTheory Set
open scoped Topology
noncomputable section

def thetaMoment (n : ℕ) : ℝ :=
  ∫ t in Ioi (0 : ℝ), thetaPhi t * (2 * t) ^ (2 * n)

theorem thetaMoment_integrable (n : ℕ) :
    IntegrableOn (fun t => thetaPhi t * (2 * t) ^ (2 * n)) (Ioi (0 : ℝ)) := by
  have h := (thetaPhi_poly_exp_integrableOn (2 * n) 0).const_mul ((2 : ℝ) ^ (2 * n))
  simpa [IntegrableOn, mul_pow, mul_assoc, mul_left_comm, mul_comm] using h

theorem coefficient_eq_moment (n : ℕ) :
    coefficient n = 8 * thetaMoment n / ((2 * n).factorial : ℝ) := by
  rw [coefficient_eq_thetaPhi_Ioi]
  simp only [evenBasis, ← mul_div_assoc, integral_div, thetaMoment]

theorem thetaMoment_pos (n : ℕ) : 0 < thetaMoment n := by
  have h := coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula n
  rw [coefficient_eq_moment] at h
  have hfac : (0 : ℝ) < (2 * n).factorial := by positivity
  have := (div_pos_iff_of_pos_right hfac).mp h
  linarith

theorem thetaMoment_quadratic_nonneg (n : ℕ) (x : ℝ) :
    0 ≤ thetaMoment n * (x * x) - 2 * thetaMoment (n + 1) * x + thetaMoment (n + 2) := by
  have hi : 0 ≤ ∫ t in Ioi (0 : ℝ),
      thetaPhi t * (2 * t) ^ (2 * n) * ((2 * t) ^ 2 - x) ^ 2 := by
    apply integral_nonneg_of_ae
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    have ht0 : 0 ≤ t := ht.le
    exact mul_nonneg (mul_nonneg (thetaPhi_positive t ht0).le (pow_nonneg (by positivity : 0 ≤ 2 * t) _))
      (sq_nonneg _)
  have hf : (fun t : ℝ => thetaPhi t * (2 * t) ^ (2 * n) * ((2 * t) ^ 2 - x) ^ 2) =
      fun t => (x * x) * (thetaPhi t * (2 * t) ^ (2 * n)) -
        (2 * x) * (thetaPhi t * (2 * t) ^ (2 * (n + 1))) +
        thetaPhi t * (2 * t) ^ (2 * (n + 2)) := by
    funext t
    simp only [Nat.mul_add, pow_add]
    ring
  have hsub : IntegrableOn (fun t : ℝ =>
      (x * x) * (thetaPhi t * (2 * t) ^ (2 * n)) -
        (2 * x) * (thetaPhi t * (2 * t) ^ (2 * (n + 1)))) (Ioi 0) :=
    ((thetaMoment_integrable n).const_mul (x * x)).sub
      ((thetaMoment_integrable (n + 1)).const_mul (2 * x))
  rw [hf, integral_add hsub (thetaMoment_integrable (n + 2)),
    integral_sub ((thetaMoment_integrable n).const_mul (x * x))
      ((thetaMoment_integrable (n + 1)).const_mul (2 * x)), integral_const_mul,
    integral_const_mul] at hi
  simpa only [thetaMoment, mul_assoc, mul_comm, mul_left_comm] using hi

theorem thetaMoment_logConvex (n : ℕ) :
    thetaMoment (n + 1) ^ 2 ≤ thetaMoment n * thetaMoment (n + 2) := by
  have h := discrim_le_zero (a := thetaMoment n) (b := -2 * thetaMoment (n + 1))
    (c := thetaMoment (n + 2)) (fun x => by
      simpa only [sub_eq_add_neg, neg_mul, mul_assoc] using thetaMoment_quadratic_nonneg n x)
  unfold discrim at h
  nlinarith

theorem coefficient_mul_factorial (n : ℕ) :
    coefficient n * ((2 * n).factorial : ℝ) = 8 * thetaMoment n := by
  rw [coefficient_eq_moment, div_mul_cancel₀ _ (by positivity)]

theorem coefficient_logConvex_factorial (n : ℕ) :
    coefficient (n + 1) ^ 2 * ((2 * (n : ℝ) + 2) * (2 * n + 1)) ≤
      coefficient n * coefficient (n + 2) * ((2 * n + 4) * (2 * n + 3)) := by
  have hm := thetaMoment_logConvex n
  have h0 := coefficient_mul_factorial n
  have h1 := coefficient_mul_factorial (n + 1)
  have h2 := coefficient_mul_factorial (n + 2)
  have hfac1 : ((2 * (n + 1)).factorial : ℝ) =
      (2 * (n : ℝ) + 2) * (2 * n + 1) * ((2 * n).factorial : ℝ) := by
    rw [show 2 * (n + 1) = 2 * n + 1 + 1 by omega,
      Nat.factorial_succ, Nat.factorial_succ]
    push_cast
    ring
  have hfac2 : ((2 * (n + 2)).factorial : ℝ) =
      (2 * (n : ℝ) + 4) * (2 * n + 3) * ((2 * (n + 1)).factorial : ℝ) := by
    rw [show 2 * (n + 2) = 2 * (n + 1) + 1 + 1 by omega,
      Nat.factorial_succ, Nat.factorial_succ]
    push_cast
    ring
  have hi : (coefficient (n + 1) * ((2 * (n + 1)).factorial : ℝ)) ^ 2 ≤
      (coefficient n * ((2 * n).factorial : ℝ)) *
        (coefficient (n + 2) * ((2 * (n + 2)).factorial : ℝ)) := by
    rw [h0, h1, h2]
    nlinarith
  rw [hfac2, hfac1] at hi
  let B : ℝ := ((2 * (n : ℝ) + 2) * (2 * n + 1)) * ((2 * n).factorial : ℝ) ^ 2
  have hB : 0 < B := by dsimp [B]; positivity
  apply (mul_le_mul_iff_right₀ hB).mp
  calc
    B * (coefficient (n + 1) ^ 2 * ((2 * (n : ℝ) + 2) * (2 * n + 1))) =
        (coefficient (n + 1) * ((2 * (n : ℝ) + 2) * (2 * n + 1) *
          ((2 * n).factorial : ℝ))) ^ 2 := by dsimp [B]; ring
    _ ≤ (coefficient n * ((2 * n).factorial : ℝ)) *
        (coefficient (n + 2) * ((2 * (n : ℝ) + 4) * (2 * n + 3) *
          ((2 * n + 2) * (2 * n + 1) * ((2 * n).factorial : ℝ)))) := hi
    _ = _ := by dsimp [B]; ring

theorem coefficient_fourth_obstruction (n : ℕ) (hn : 2 ≤ n) :
    coefficient (n + 1) ^ 2 < 2 * coefficient n * coefficient (n + 2) := by
  have h := coefficient_logConvex_factorial n
  have hnR : (2 : ℝ) ≤ n := by exact_mod_cast hn
  have hrat : (2 * (n : ℝ) + 4) * (2 * n + 3) <
      2 * ((2 * n + 2) * (2 * n + 1)) := by
    nlinarith [sq_nonneg ((n : ℝ) - 2)]
  have hp : 0 < coefficient n * coefficient (n + 2) := mul_pos
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula n)
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula (n + 2))
  have h' := h.trans_lt (mul_lt_mul_of_pos_left hrat hp)
  have hA : 0 < (2 * (n : ℝ) + 2) * (2 * n + 1) := by positivity
  apply (mul_lt_mul_iff_left₀ hA).mp
  convert h' using 1
  ring

end
end FormalResearch.RiemannHypothesis.XiSectionMoments
