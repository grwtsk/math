-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SumEvenOdd.Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SumEvenOdd.Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e","mathematical_subject":"Analysis.Integration","original_sha256":"d60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/d60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.XiSectionObstruction
import FormalResearch.RiemannHypothesis.XiJensenReconstruction
import Mathlib.Data.Nat.Choose.Sum

/-!
# Exact theta-phase representation of the source Jensen closure

Finite binomial expansion retains the actual theta moments and the factorial
weights. This identity alone asserts no positivity of the spectral square trace.
The supporting algebraic lemmas also hold at zero under Lean's totalized field
operations; the source phase formula is stated only for positive degree index.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.SumEvenOdd.Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e

namespace FormalResearch.RiemannHypothesis.XiJensenPhase
open XiToeplitz ThetaPositiveLift XiSectionObstruction XiJensenWeights XiJensenReconstruction
open Finset MeasureTheory Set
noncomputable section

private lemma sum_even_odd (f : ℕ → ℂ) (n : ℕ) :
    ∑ j ∈ range (2 * n + 1), f j =
      (∑ k ∈ range (n + 1), f (2 * k)) + ∑ k ∈ range n, f (2 * k + 1) := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [show 2 * (n + 1) + 1 = (2 * n + 1) + 1 + 1 by omega,
      sum_range_succ, sum_range_succ, ih]
    simp only [sum_range_succ, Nat.mul_add, Nat.mul_one]
    ring

/-- The two phase branches cancel exactly the odd binomial terms. -/
theorem phase_binomial (n : ℕ) (x : ℂ) :
    (1 + x) ^ (2 * n) + (1 - x) ^ (2 * n) =
      2 * ∑ k ∈ range (n + 1), ((2 * n).choose (2 * k) : ℂ) * x ^ (2 * k) := by
  rw [show 1 + x = x + 1 by ring, show 1 - x = -x + 1 by ring,
    add_pow, add_pow, ← sum_add_distrib]
  simp only [one_pow, mul_one]
  rw [sum_even_odd]
  have he (k : ℕ) : x ^ (2 * k) * ((2 * n).choose (2 * k) : ℂ) +
      (-x) ^ (2 * k) * ((2 * n).choose (2 * k) : ℂ) =
      2 * (((2 * n).choose (2 * k) : ℂ) * x ^ (2 * k)) := by
    simp only [pow_mul, neg_sq]
    ring
  have ho (k : ℕ) : x ^ (2 * k + 1) * ((2 * n).choose (2 * k + 1) : ℂ) +
      (-x) ^ (2 * k + 1) * ((2 * n).choose (2 * k + 1) : ℂ) = 0 := by
    simp only [pow_add, pow_mul, neg_sq, pow_one]
    ring
  simp_rw [he, ho]
  simp only [sum_const_zero, add_zero, mul_sum]

private lemma phase_argument (n : ℕ) (t : ℝ) (z : ℂ) :
    Complex.I * (t : ℂ) * z / n =
      (2 * (t : ℂ)) * (Complex.I * z / (2 * (n : ℂ))) := by
  ring

/-- The literal theta factor times each even phase monomial is integrable. -/
theorem phase_monomial_integrable (n k : ℕ) (z : ℂ) :
    IntegrableOn (fun t : ℝ => (thetaPhi t : ℂ) *
      (Complex.I * (t : ℂ) * z / n) ^ (2 * k)) (Ioi (0 : ℝ)) := by
  have hm : IntegrableOn (fun t : ℝ => (thetaPhi t : ℂ) *
      (2 * (t : ℂ)) ^ (2 * k)) (Ioi (0 : ℝ)) := by
    have h := thetaPhiExpMomentIntegrand_integrableOn (2 * k) 0
    change Integrable (fun t : ℝ => (thetaPhi t : ℂ) * (2 * (t : ℂ)) ^ (2 * k) *
      Complex.exp (2 * 0 * (t : ℂ))) _ at h
    simpa only [mul_zero, zero_mul, Complex.exp_zero, mul_one, IntegrableOn] using h
  simpa only [IntegrableOn, phase_argument, mul_pow, ← mul_assoc] using
    hm.mul_const ((Complex.I * z / (2 * (n : ℂ))) ^ (2 * k))

/-- Absolute integrability of the complete finite phase expression. -/
theorem phase_integrable (n : ℕ) (z : ℂ) :
    IntegrableOn (fun t : ℝ => (thetaPhi t : ℂ) *
      ((1 + Complex.I * (t : ℂ) * z / n) ^ (2 * n) +
        (1 - Complex.I * (t : ℂ) * z / n) ^ (2 * n))) (Ioi (0 : ℝ)) := by
  simp_rw [phase_binomial, mul_assoc, mul_sum, ← mul_assoc]
  exact (integrable_finsetSum _ fun k _ =>
    (phase_monomial_integrable n k z).const_mul
      (2 * ((2 * n).choose (2 * k) : ℂ))).congr (by
        filter_upwards [] with t
        apply Finset.sum_congr rfl
        intro k _
        ring)

/-- Integration of one phase monomial preserves the literal source moment. -/
theorem integral_phase_monomial (n k : ℕ) (z : ℂ) :
    (∫ t in Ioi (0 : ℝ), (thetaPhi t : ℂ) *
      (Complex.I * (t : ℂ) * z / n) ^ (2 * k)) =
      (thetaMoment k : ℂ) * (Complex.I * z / (2 * (n : ℂ))) ^ (2 * k) := by
  have hf : (fun t : ℝ => (thetaPhi t : ℂ) *
      (Complex.I * (t : ℂ) * z / n) ^ (2 * k)) =
      fun t => ((thetaPhi t : ℂ) * (2 * (t : ℂ)) ^ (2 * k)) *
        (Complex.I * z / (2 * (n : ℂ))) ^ (2 * k) := by
    funext t
    rw [phase_argument, mul_pow]
    ring
  rw [hf, integral_mul_const, thetaPhi_complex_even_moment_eq]
  rfl

/-- Binomial coefficients express the exact falling-factorial source normalization. -/
theorem weighted_coefficient_eq_moment (n k : ℕ) :
    weight n k * coefficient k =
      8 * ((2 * n).choose (2 * k) : ℝ) * thetaMoment k /
        (2 * (n : ℝ)) ^ (2 * k) := by
  rw [weight, Nat.descFactorial_eq_factorial_mul_choose, coefficient_eq_moment]
  push_cast
  have hf : ((2 * k).factorial : ℝ) ≠ 0 := by positivity
  field_simp

private lemma phase_even_power (n k : ℕ) (z : ℂ) :
    (Complex.I * z / (2 * (n : ℂ))) ^ (2 * k) =
      (-z ^ 2) ^ k / (2 * (n : ℂ)) ^ (2 * k) := by
  rw [div_pow, pow_mul,
    show (Complex.I * z) ^ 2 = -z ^ 2 by rw [mul_pow, Complex.I_sq]; ring]

/-- One integrated even phase coefficient is precisely the actual Jensen coefficient. -/
theorem weighted_coefficient_phase (n k : ℕ) (z : ℂ) :
    ((weight n k * coefficient k : ℝ) : ℂ) * (-z ^ 2) ^ k =
      8 * ((2 * n).choose (2 * k) : ℂ) * (thetaMoment k : ℂ) *
        (Complex.I * z / (2 * (n : ℂ))) ^ (2 * k) := by
  rw [weighted_coefficient_eq_moment, phase_even_power]
  push_cast
  ring

/-- The new finite closure is the exact theta mixture of its two phase branches. -/
theorem jensenSection_eq_phase_integral {n : ℕ} (_hn : 1 ≤ n) (z : ℂ) :
    jensenSection n z =
      4 * ∫ t in Ioi (0 : ℝ), (thetaPhi t : ℂ) *
        ((1 + Complex.I * (t : ℂ) * z / n) ^ (2 * n) +
          (1 - Complex.I * (t : ℂ) * z / n) ^ (2 * n)) := by
  have hf : (fun t : ℝ => (thetaPhi t : ℂ) *
      ((1 + Complex.I * (t : ℂ) * z / n) ^ (2 * n) +
        (1 - Complex.I * (t : ℂ) * z / n) ^ (2 * n))) =
      fun t => ∑ k ∈ range (n + 1),
        (2 * ((2 * n).choose (2 * k) : ℂ)) *
          ((thetaPhi t : ℂ) * (Complex.I * (t : ℂ) * z / n) ^ (2 * k)) := by
    funext t
    rw [phase_binomial]
    simp only [mul_sum]
    apply Finset.sum_congr rfl
    intro k _
    ring
  rw [hf, integral_finsetSum]
  · simp only [integral_const_mul, integral_phase_monomial, mul_sum, jensenSection]
    apply Finset.sum_congr rfl
    intro k _
    rw [weighted_coefficient_phase]
    ring
  · intro k _
    exact (phase_monomial_integrable n k z).const_mul _

end
end FormalResearch.RiemannHypothesis.XiJensenPhase
