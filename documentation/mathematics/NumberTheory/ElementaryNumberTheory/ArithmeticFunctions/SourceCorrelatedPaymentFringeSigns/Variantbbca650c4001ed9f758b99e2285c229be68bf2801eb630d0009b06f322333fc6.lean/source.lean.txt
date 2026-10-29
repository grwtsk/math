-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.RealMoebiusSix.Variantb1569d3ff392216febb5f0e79ede38eac7c3961cd98a7acd2a6df60dfe7d9942","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b1569d3ff392216febb5f0e79ede38eac7c3961cd98a7acd2a6df60dfe7d9942","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.RealMoebiusSix.Variantb1569d3ff392216febb5f0e79ede38eac7c3961cd98a7acd2a6df60dfe7d9942","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"b1569d3ff392216febb5f0e79ede38eac7c3961cd98a7acd2a6df60dfe7d9942","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle32/regent-signed-payment-v1/SourceCorrelatedPaymentFringeSigns.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCorrelatedShortSamplingPayment

/-!
# Two arithmetic signs in the retained short-product fringe

UNCOMPILED source preparation. This module evaluates only the literal truncated
Moebius-Mangoldt Dirichlet-convolution coefficient. It reuses the existing U=2,
n=4 negative guard and adds U=6,n=18, where the truncated coefficient is log 3
and the full coefficient is zero. Both products lie in U < n <= U*U.

These arithmetic coefficients are not the actual normalized sampling weights.
Their two signs obstruct coefficientwise positivity or negativity only. They
supply no weighted inequality, correlated upper estimate, monotonicity, source
counterexample, new baseline, main-term definition or RH witness. The entire
signed baseline, closed lower carrier, product fringe and physicalOff remain.

AI attribution: developed with OpenAI Codex. No Lean elaboration, type/axiom
print, proof view, native linter or complete verifier has run for these bytes.
The original payment module and U=2 guard are preserved unchanged.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.RealMoebiusSix.Variantb1569d3ff392216febb5f0e79ede38eac7c3961cd98a7acd2a6df60dfe7d9942

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCorrelatedPaymentFringeSigns

open ArithmeticFunction SourceCorrelatedShortSamplingPayment
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanIdentity

noncomputable section

private theorem real_moebius_six : (moebius : ArithmeticFunction ℝ) 6 = 1 := by
  have h : moebius (2 * 3) = moebius 2 * moebius 3 :=
    isMultiplicative_moebius.map_mul_of_coprime (by decide)
  rw [moebius_apply_prime Nat.prime_two, moebius_apply_prime Nat.prime_three] at h
  norm_num at h
  rw [intCoe_apply, h]
  norm_num

private theorem mangoldt_six_zero : vonMangoldt 6 = 0 :=
  vonMangoldt_eq_zero_iff.mpr (by decide)

/-- At U=6, both retained factors of 18 are short, and their coefficient is positive. -/
theorem truncated_coefficient_six_eighteen :
    (shortPart 6 (moebius : ArithmeticFunction ℝ) * shortPart 6 vonMangoldt) 18 =
      Real.log 3 := by
  have hd : Nat.divisorsAntidiagonal 18 =
      {(1, 18), (2, 9), (3, 6), (6, 3), (9, 2), (18, 1)} := by decide
  have hl : vonMangoldt 3 = Real.log 3 := vonMangoldt_apply_prime Nat.prime_three
  norm_num [ArithmeticFunction.mul_apply, hd, shortPart_apply, real_moebius_six,
    mangoldt_six_zero, hl]

/-- The omitted (2,9) factor cancels the positive term in the full coefficient at 18. -/
theorem full_coefficient_eighteen_zero :
    ((moebius : ArithmeticFunction ℝ) * vonMangoldt) 18 = 0 := by
  have hd : Nat.divisorsAntidiagonal 18 =
      {(1, 18), (2, 9), (3, 6), (6, 3), (9, 2), (18, 1)} := by decide
  have hm2 : (moebius : ArithmeticFunction ℝ) 2 = -1 := by
    rw [intCoe_apply, moebius_apply_prime Nat.prime_two]
    norm_num
  have hm9 : (moebius : ArithmeticFunction ℝ) 9 = 0 := by
    have h : moebius (3 ^ 2) = 0 := by
      rw [moebius_apply_prime_pow Nat.prime_three (by decide)]
      norm_num
    norm_num at h
    rw [intCoe_apply, h]
    norm_num
  have hl3 : vonMangoldt 3 = Real.log 3 := vonMangoldt_apply_prime Nat.prime_three
  have hl9 : vonMangoldt 9 = Real.log 3 := by
    have h := vonMangoldt_apply_pow (n := 3) (k := 2) (by decide)
    norm_num at h
    exact h.trans hl3
  have hl18 : vonMangoldt 18 = 0 := vonMangoldt_eq_zero_iff.mpr (by decide)
  norm_num [ArithmeticFunction.mul_apply, hd, hm2, hm9, real_moebius_six,
    mangoldt_six_zero, hl3, hl9, hl18, intCoe_apply]

/-- The retained fringe has both coefficient signs; no weighted sign is asserted. -/
theorem retained_fringe_coefficients_have_two_signs :
    (shortPart 2 (moebius : ArithmeticFunction ℝ) * shortPart 2 vonMangoldt) 4 < 0 ∧
      0 < (shortPart 6 (moebius : ArithmeticFunction ℝ) * shortPart 6 vonMangoldt) 18 := by
  rw [truncated_coefficient_two_four, truncated_coefficient_six_eighteen]
  constructor
  · linarith [Real.log_pos (by norm_num : (1 : ℝ) < 2)]
  · exact Real.log_pos (by norm_num : (1 : ℝ) < 3)

end
end FormalResearch.RiemannHypothesis.SourceCorrelatedPaymentFringeSigns
