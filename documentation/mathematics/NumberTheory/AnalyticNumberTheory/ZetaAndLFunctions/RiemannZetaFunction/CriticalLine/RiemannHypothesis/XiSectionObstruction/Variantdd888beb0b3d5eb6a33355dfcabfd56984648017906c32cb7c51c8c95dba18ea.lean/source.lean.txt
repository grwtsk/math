-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaMoment.Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaMoment.Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"b025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/b025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula
import FormalResearch.RiemannHypothesis.XiReconstruction
import Mathlib.Algebra.QuadraticDiscriminant
import Mathlib.RingTheory.Polynomial.Vieta

/-!
# An all-rank obstruction for raw xi Taylor sections

Literal theta moments obey log-convexity. Their factorial normalization implies
`a_(n+1)^2 < 2 a_n a_(n+2)` for every `n ≥ 2`. This obstructs real-rootedness
of raw finite Taylor sections; it does not assert anything against real zeros
of their locally uniform entire limit.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaMoment.Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b

namespace FormalResearch.RiemannHypothesis.XiSectionObstruction
open XiToeplitz ThetaPositiveLift XiReconstruction Polynomial
open Filter MeasureTheory Set
open scoped Topology
noncomputable section

/-- The literal unnormalized even theta moment, on the open positive half-line. -/
def thetaMoment (n : ℕ) : ℝ :=
  ∫ t in Ioi (0 : ℝ), thetaPhi t * (2 * t) ^ (2 * n)

/-- Every moment used in the quadratic identity is integrable. -/
theorem thetaMoment_integrable (n : ℕ) :
    IntegrableOn (fun t => thetaPhi t * (2 * t) ^ (2 * n)) (Ioi (0 : ℝ)) := by
  have h := (thetaPhi_poly_exp_integrableOn (2 * n) 0).const_mul ((2 : ℝ) ^ (2 * n))
  simpa [IntegrableOn, mul_pow, mul_assoc, mul_left_comm, mul_comm] using h

/-- The actual derivative-defined xi coefficient has this exact factorial normalization. -/
theorem coefficient_eq_moment (n : ℕ) :
    coefficient n = 8 * thetaMoment n / ((2 * n).factorial : ℝ) := by
  rw [coefficient_eq_thetaPhi_Ioi]
  simp only [evenBasis, ← mul_div_assoc, integral_div, thetaMoment]

/-- All actual theta moments are strictly positive. -/
theorem thetaMoment_pos (n : ℕ) : 0 < thetaMoment n := by
  have h := coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula n
  rw [coefficient_eq_moment] at h
  have hfac : (0 : ℝ) < (2 * n).factorial := by positivity
  have := (div_pos_iff_of_pos_right hfac).mp h
  linarith

/-- Integrating a nonnegative square yields the moment quadratic inequality. -/
theorem thetaMoment_quadratic_nonneg (n : ℕ) (x : ℝ) :
    0 ≤ thetaMoment n * (x * x) - 2 * thetaMoment (n + 1) * x + thetaMoment (n + 2) := by
  have hi : 0 ≤ ∫ t in Ioi (0 : ℝ),
      thetaPhi t * (2 * t) ^ (2 * n) * ((2 * t) ^ 2 - x) ^ 2 := by
    apply integral_nonneg_of_ae
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    have ht0 : 0 ≤ t := ht.le
    exact mul_nonneg (mul_nonneg (thetaPhi_positive t ht0).le
      (pow_nonneg (by positivity : 0 ≤ 2 * t) _))
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

/-- Log-convexity of the literal moments follows from the quadratic discriminant. -/
theorem thetaMoment_logConvex (n : ℕ) :
    thetaMoment (n + 1) ^ 2 ≤ thetaMoment n * thetaMoment (n + 2) := by
  have h := discrim_le_zero (a := thetaMoment n) (b := -2 * thetaMoment (n + 1))
    (c := thetaMoment (n + 2)) (fun x => by
      simpa only [sub_eq_add_neg, neg_mul, mul_assoc] using thetaMoment_quadratic_nonneg n x)
  unfold discrim at h
  nlinarith

/-- Clearing the nonzero factorial retains the actual coefficient normalization. -/
theorem coefficient_mul_factorial (n : ℕ) :
    coefficient n * ((2 * n).factorial : ℝ) = 8 * thetaMoment n := by
  rw [coefficient_eq_moment, div_mul_cancel₀ _ (by positivity)]

/-- The moment inequality transferred to adjacent source coefficients,
with every factorial factor. -/
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

/-- At every section degree at least four, the top three coefficients force
a negative root-square sum in the squared variable. -/
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

/-- The actual Taylor section in the squared variable, with all coefficients retained. -/
def sectionPolynomial (n : ℕ) : ℂ[X] :=
  ∑ k ∈ Finset.range (n + 1), C (coefficient k : ℂ) * X ^ k

/-- Substitution of minus the square is exactly the spectral Taylor section. -/
theorem sectionPolynomial_eval (n : ℕ) (z : ℂ) :
    (sectionPolynomial n).eval (-z ^ 2) = spectralSection n z := by
  simp [sectionPolynomial, spectralSection, Polynomial.eval_finsetSum]

/-- Every coefficient within the section is the unchanged source coefficient. -/
theorem sectionPolynomial_coeff (n k : ℕ) (hk : k ≤ n) :
    (sectionPolynomial n).coeff k = (coefficient k : ℂ) := by
  simp [sectionPolynomial, Polynomial.finsetSum_coeff, Finset.mem_range.mpr (by omega : k < n + 1)]

/-- Strict source coefficient positivity prevents any degree collapse. -/
theorem sectionPolynomial_natDegree (n : ℕ) : (sectionPolynomial n).natDegree = n := by
  apply Polynomial.natDegree_eq_of_le_of_coeff_ne_zero
  · apply Polynomial.natDegree_sum_le_of_forall_le
    intro k hk
    exact (Polynomial.natDegree_C_mul_X_pow_le _ _).trans (by simpa using hk)
  · rw [sectionPolynomial_coeff n n le_rfl]
    exact Complex.ofReal_ne_zero.mpr
      (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula n).ne'

/-- The nonzero leading coefficient is retained explicitly. -/
theorem sectionPolynomial_leadingCoeff (n : ℕ) :
    (sectionPolynomial n).leadingCoeff = (coefficient n : ℂ) := by
  rw [Polynomial.leadingCoeff, sectionPolynomial_natDegree, sectionPolynomial_coeff n n le_rfl]

private lemma esymm_cons_succ (s : Multiset ℂ) (x : ℂ) (n : ℕ) :
    (x ::ₘ s).esymm (n + 1) = x * s.esymm n + s.esymm (n + 1) := by
  simp [Multiset.esymm, Multiset.powersetCard_cons, Multiset.sum_map_mul_left, add_comm]

private lemma roots_square_sum (s : Multiset ℂ) :
    (s.map (· ^ 2)).sum = s.esymm 1 ^ 2 - 2 * s.esymm 2 := by
  induction s using Multiset.induction_on with
  | empty => norm_num [Multiset.esymm, Multiset.powersetCard_zero_right]
  | cons x s ih =>
    rw [Multiset.map_cons, Multiset.sum_cons, ih,
      esymm_cons_succ s x 0, esymm_cons_succ s x 1]
    have h0 : s.esymm 0 = 1 := by simp [Multiset.esymm]
    rw [h0]
    ring

/-- Vieta and Newton identities give the exact root-square sum, counting multiplicities. -/
theorem sectionPolynomial_roots_square_sum (n : ℕ) :
    (((sectionPolynomial (n + 2)).roots.map (· ^ 2)).sum) =
      (((coefficient (n + 1) ^ 2 - 2 * coefficient n * coefficient (n + 2)) /
        coefficient (n + 2) ^ 2 : ℝ) : ℂ) := by
  have h1 := Polynomial.coeff_eq_esymm_roots_of_splits
    (IsAlgClosed.splits (sectionPolynomial (n + 2)))
    (k := n + 1) (by rw [sectionPolynomial_natDegree]; omega)
  have h2 := Polynomial.coeff_eq_esymm_roots_of_splits
    (IsAlgClosed.splits (sectionPolynomial (n + 2)))
    (k := n) (by rw [sectionPolynomial_natDegree]; omega)
  rw [sectionPolynomial_coeff _ _ (by omega), sectionPolynomial_natDegree,
    sectionPolynomial_leadingCoeff] at h1 h2
  simp only [show n + 2 - (n + 1) = 1 by omega, show n + 2 - n = 2 by omega,
    pow_one, neg_sq, one_pow, mul_neg_one, mul_one] at h1 h2
  have ha : (coefficient (n + 2) : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula (n + 2)).ne'
  rw [roots_square_sum]
  push_cast
  field_simp
  linear_combination h1 * ((sectionPolynomial (n + 2)).roots.esymm 1 *
    (coefficient (n + 2) : ℂ) - (coefficient (n + 1) : ℂ)) +
    2 * h2 * (coefficient (n + 2) : ℂ)

/-- For every section degree at least four the root-square sum has negative real part. -/
theorem sectionPolynomial_roots_square_sum_re_neg (n : ℕ) (hn : 2 ≤ n) :
    (((sectionPolynomial (n + 2)).roots.map (· ^ 2)).sum).re < 0 := by
  rw [sectionPolynomial_roots_square_sum, Complex.ofReal_re]
  apply div_neg_of_neg_of_pos
  · exact sub_neg.mpr (coefficient_fourth_obstruction n hn)
  · exact sq_pos_of_pos
      (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula (n + 2))

private lemma roots_square_sum_re_nonneg (s : Multiset ℂ)
    (h : ∀ z ∈ s, z.im = 0) : 0 ≤ ((s.map (· ^ 2)).sum).re := by
  induction s using Multiset.induction_on with
  | empty => simp
  | cons x s ih =>
    have hx := h x (Multiset.mem_cons_self _ _)
    have hs := ih (fun z hz => h z (Multiset.mem_cons_of_mem hz))
    simp only [Multiset.map_cons, Multiset.sum_cons, Complex.add_re, pow_two,
      Complex.mul_re, hx, mul_zero, sub_zero]
    exact add_nonneg (mul_self_nonneg _) (by simpa only [pow_two] using hs)

/-- Every squared-variable section of degree at least four has a nonreal root. -/
theorem sectionPolynomial_has_nonreal_root (n : ℕ) (hn : 2 ≤ n) :
    ∃ w ∈ (sectionPolynomial (n + 2)).roots, w.im ≠ 0 := by
  by_contra! h
  exact (sectionPolynomial_roots_square_sum_re_neg n hn).not_ge
    (roots_square_sum_re_nonneg _ h)

/-- Every raw spectral section of degree at least eight has a nonreal zero.
This does not refute RH. -/
theorem spectralSection_has_nonreal_zero (n : ℕ) (hn : 4 ≤ n) :
    ∃ z : ℂ, spectralSection n z = 0 ∧ z.im ≠ 0 := by
  obtain ⟨w, hw, hwi⟩ := sectionPolynomial_has_nonreal_root (n - 2) (by omega)
  rw [show n - 2 + 2 = n by omega] at hw
  obtain ⟨z, hz⟩ := IsAlgClosed.exists_pow_nat_eq (-w) (by norm_num : 0 < (2 : ℕ))
  have hzw : -z ^ 2 = w := by rw [hz, neg_neg]
  refine ⟨z, ?_, ?_⟩
  · rw [← sectionPolynomial_eval, hzw]
    exact (Polynomial.isRoot_of_mem_roots hw)
  · intro hzi
    apply hwi
    have him := congrArg Complex.im hzw
    simpa [pow_two, Complex.mul_im, hzi] using him.symm

end
end FormalResearch.RiemannHypothesis.XiSectionObstruction
