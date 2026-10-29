-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ComplexTest.Variante523e92c94a9351e46eaa31fbaed648ff12fc2f8c3b5698a7330cc5c17d91557","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e523e92c94a9351e46eaa31fbaed648ff12fc2f8c3b5698a7330cc5c17d91557","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ComplexTest.Variante523e92c94a9351e46eaa31fbaed648ff12fc2f8c3b5698a7330cc5c17d91557","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"e523e92c94a9351e46eaa31fbaed648ff12fc2f8c3b5698a7330cc5c17d91557","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/weil-lineage-d360/FormalResearch/RiemannHypothesis/WeilSource/Transforms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.WeilSource.Autocorrelation
import FormalResearch.RiemannHypothesis.WeilSource.Occurrences

/-!
# Exact transform and arithmetic transports

The additive Weil test is the original unnormalized autocorrelation. Its
complex transform is an ordinary square at zero arguments and a norm square
only on the real Fourier axis. Both pole moments and both prime shifts are
retained until the exact identities below justify their simplification.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ComplexTest.Variante523e92c94a9351e46eaa31fbaed648ff12fc2f8c3b5698a7330cc5c17d91557

namespace FormalResearch.RiemannHypothesis.WeilSource

open MeasureTheory Complex
open scoped Convolution ComplexConjugate
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroSideTargets ZeroTestRegularity BridgeAdmissibility
open FormalResearch.RiemannHypothesis.SourcePairing
open SourceComparison.Cutoff

noncomputable section

/-- The complex representative of the unchanged unnormalized source test. -/
def complexTest (A : ℝ) (x : ℝ) : ℂ := actualTest A x

/-- Complexification preserves the source's genuine continuity. -/
theorem complexTest_continuous (A : ℝ) (hA : 1 ≤ A) : Continuous (complexTest A) :=
  Complex.continuous_ofReal.comp (actualTest_contDiff A hA).continuous

/-- The external convolution theorem uses the actual compact support. -/
theorem complexTest_hasCompactSupport (A : ℝ) (hA : 1 ≤ A) :
    HasCompactSupport (complexTest A) :=
  (actualTest_hasCompactSupport A hA).comp_left (g := fun x : ℝ ↦ (x : ℂ)) (by simp)

/-- The external Weil convolution is exactly the complexified real autocorrelation. -/
theorem complexCorrelation_eq_weilTest (A : ℝ) :
    complexCorrelation A = Zeta23.EF.weilTest (complexTest A) (complexTest A) := by
  funext t
  change ((∫ x, actualTest A x * actualTest A (x - t) : ℝ) : ℂ) =
    ∫ x, (actualTest A x : ℂ) * conj (actualTest A (-(t - x)) : ℂ)
  rw [← integral_complex_ofReal]
  apply integral_congr_ae
  filter_upwards [] with x
  simp only [Complex.ofReal_mul, Complex.conj_ofReal, show -(t - x) = x - t by ring]

/-- Real evenness makes the involuted factor the same source test. -/
theorem tilde_complexTest (A : ℝ) (hA : 1 ≤ A) :
    Zeta23.EF.tilde (complexTest A) = complexTest A := by
  funext x
  simp only [Zeta23.EF.tilde, complexTest, Complex.conj_ofReal]
  exact congrArg (fun r : ℝ ↦ (r : ℂ)) (actualTest_even A hA x)

/-- The two angular-frequency Fourier conventions agree definitionally. -/
theorem paperFT_complexTest_fourier (A ξ : ℝ) :
    Zeta23.paperFT (complexTest A) ξ = sourceFourier (actualTest A) ξ := rfl

/-- All complex arguments transport to the original bilateral transform. -/
theorem paperFT_complexTest_bilateral (A : ℝ) (z : ℂ) :
    Zeta23.paperFT (complexTest A) z = bilateralTransform A (I * z) := rfl

/-- Ordinary complex squares, not squared norms, occur at general complex arguments. -/
theorem paperFT_complexCorrelation (A : ℝ) (hA : 1 ≤ A) (z : ℂ) :
    Zeta23.paperFT (complexCorrelation A) z = bilateralTransform A (I * z) ^ 2 := by
  rw [complexCorrelation_eq_weilTest,
    Zeta23.EF.paperFT_weilTest (complexTest_continuous A hA) (complexTest_continuous A hA)
      (complexTest_hasCompactSupport A hA) (complexTest_hasCompactSupport A hA),
    ← Zeta23.EF.paperFT_tilde, tilde_complexTest A hA]
  simp only [paperFT_complexTest_bilateral, pow_two]

/-- The external complex ordinate maps to the full shifted zero, not its imaginary part. -/
theorem paperFT_at_zero (A : ℝ) (hA : 1 ≤ A) (ρ : ℂ) :
    Zeta23.paperFT (complexCorrelation A) (Zeta23.gammaOf ρ) =
      bilateralTransform A (ρ - 1 / 2) ^ 2 := by
  rw [paperFT_complexCorrelation A hA, Zeta23.gammaOf]
  have h : I * ((ρ - 1 / 2) / I) = ρ - 1 / 2 := by field_simp
  rw [h]

/-- On the real Fourier axis the conjugated factor is a true norm square. -/
theorem paperFT_on_real (A ξ : ℝ) (hA : 1 ≤ A) :
    Zeta23.paperFT (complexCorrelation A) ξ =
      (Complex.normSq (sourceFourier (actualTest A) ξ) : ℂ) := by
  rw [complexCorrelation_eq_weilTest,
    Zeta23.EF.paperFT_weilTest (complexTest_continuous A hA) (complexTest_continuous A hA)
      (complexTest_hasCompactSupport A hA) (complexTest_hasCompactSupport A hA)]
  simp only [Complex.conj_ofReal, paperFT_complexTest_fourier]
  rw [Complex.normSq_eq_conj_mul_self]
  ring

/-- Real bilateral arguments give the two genuine source exponential moments. -/
theorem bilateral_real_moment (A σ : ℝ) :
    bilateralTransform A (σ : ℂ) =
      ((∫ x, Real.exp (σ * x) * actualTest A x : ℝ) : ℂ) := by
  unfold bilateralTransform
  rw [← integral_complex_ofReal]
  apply integral_congr_ae
  filter_upwards [] with x
  simp only [Complex.ofReal_mul, Complex.ofReal_exp]
  ring

/-- The imaginary Fourier arguments carry real, not modulus-squared, pole moments. -/
theorem paperFT_moment (A σ : ℝ) :
    Zeta23.paperFT (complexTest A) (-I * (σ : ℂ)) =
      ((∫ x, Real.exp (σ * x) * actualTest A x : ℝ) : ℂ) := by
  rw [paperFT_complexTest_bilateral]
  have h : I * (-I * (σ : ℂ)) = (σ : ℂ) := by
    calc
      _ = -(I * I) * (σ : ℂ) := by ring
      _ = _ := by rw [Complex.I_mul_I]; ring
  rw [h, bilateral_real_moment]

/-- Both pole terms equal exactly the signed pole product in the source form. -/
theorem pole_transport (A : ℝ) (hA : 1 ≤ A) :
    Zeta23.paperFT (complexCorrelation A) (I / 2) +
      Zeta23.paperFT (complexCorrelation A) (-I / 2) =
        (realPoleContribution (actualTest A) : ℂ) := by
  have hp := paperFT_moment A (1 / 2)
  have hn := paperFT_moment A (-1 / 2)
  have hpa : -I * ((1 / 2 : ℝ) : ℂ) = -I / 2 := by push_cast; ring
  have hna : -I * ((-1 / 2 : ℝ) : ℂ) = I / 2 := by push_cast; ring
  have hpf : (fun x : ℝ ↦ Real.exp ((1 / 2) * x) * actualTest A x) =
      (fun x : ℝ ↦ Real.exp (x / 2) * actualTest A x) := by
    funext x
    congr 2
    ring
  have hnf : (fun x : ℝ ↦ Real.exp ((-1 / 2) * x) * actualTest A x) =
      (fun x : ℝ ↦ Real.exp (-x / 2) * actualTest A x) := by
    funext x
    congr 2
    ring
  rw [hpa, hpf] at hp
  rw [hna, hnf] at hn
  have hc2 : conj (2 : ℂ) = 2 := by
    change conj ((2 : ℝ) : ℂ) = ((2 : ℝ) : ℂ)
    exact Complex.conj_ofReal 2
  have hcpos : conj (I / 2 : ℂ) = -I / 2 := by
    rw [map_div₀, Complex.conj_I, hc2]
  have hcneg : conj (-I / 2 : ℂ) = I / 2 := by
    rw [map_div₀, map_neg, Complex.conj_I, hc2, neg_neg]
  rw [complexCorrelation_eq_weilTest,
    Zeta23.EF.paperFT_weilTest (complexTest_continuous A hA) (complexTest_continuous A hA)
      (complexTest_hasCompactSupport A hA) (complexTest_hasCompactSupport A hA) (I / 2),
    Zeta23.EF.paperFT_weilTest (complexTest_continuous A hA) (complexTest_continuous A hA)
      (complexTest_hasCompactSupport A hA) (complexTest_hasCompactSupport A hA) (-I / 2),
    hcpos, hcneg, hp, hn]
  simp only [Complex.conj_ofReal]
  unfold realPoleContribution
  push_cast
  ring

/-- The multiplier and its sign agree with the original quarter-line source convention. -/
theorem gammaBracket_eq_source (ξ : ℝ) :
    Zeta23.EF.gammaBracket ξ = archimedeanMultiplier ξ := rfl

/-- Exact archimedean transport, including the factor 1/(2 pi). -/
theorem archimedean_transport (A : ℝ) (hA : 1 ≤ A) :
    (1 / (2 * Real.pi) : ℂ) *
      (∫ ξ : ℝ, Zeta23.paperFT (complexCorrelation A) ξ * (Zeta23.EF.gammaBracket ξ : ℂ)) =
      (((∫ ξ, archimedeanMultiplier ξ * Complex.normSq
        (sourceFourier (actualTest A) ξ)) / (2 * Real.pi) : ℝ) : ℂ) := by
  have heq : (fun ξ : ℝ ↦ Zeta23.paperFT (complexCorrelation A) ξ *
      (Zeta23.EF.gammaBracket ξ : ℂ)) =
      (fun ξ : ℝ ↦ ((archimedeanMultiplier ξ *
        Complex.normSq (sourceFourier (actualTest A) ξ) : ℝ) : ℂ)) := by
    funext ξ
    rw [paperFT_on_real A ξ hA, gammaBracket_eq_source]
    push_cast
    ring
  rw [heq, integral_complex_ofReal]
  push_cast
  ring

/-- The full natural-number prime family is finite at the original strict cutoff. -/
theorem prime_term_zero_outside (A : ℝ) (hA : 1 ≤ A) (n : ℕ)
    (hn : n ∉ primeIndices A) :
    ((ArithmeticFunction.vonMangoldt n / Real.sqrt n : ℝ) : ℂ) *
      (complexCorrelation A (Real.log n) + complexCorrelation A (-Real.log n)) = 0 := by
  by_cases h2 : 2 ≤ n
  · have hc : correlation A (Real.log n) = 0 :=
      additional_prime_correlation_zero A hA n h2 hn
    simp only [complexCorrelation, correlation_even A hA (Real.log n), hc, Complex.ofReal_zero,
      add_zero, mul_zero]
  · have h01 : n = 0 ∨ n = 1 := by omega
    rcases h01 with rfl | rfl <;> simp

/-- Both signed prime shifts become the unchanged finite sum; prime two is retained. -/
theorem prime_transport (A : ℝ) (hA : 1 ≤ A) :
    (∑' n : ℕ, ((ArithmeticFunction.vonMangoldt n / Real.sqrt n : ℝ) : ℂ) *
      (complexCorrelation A (Real.log n) + complexCorrelation A (-Real.log n))) =
      2 * ((∑ n ∈ primeIndices A, ArithmeticFunction.vonMangoldt n / Real.sqrt n *
        correlation A (Real.log n) : ℝ) : ℂ) := by
  classical
  rw [tsum_eq_sum (prime_term_zero_outside A hA)]
  push_cast
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _hn
  simp only [complexCorrelation]
  rw [correlation_even A hA (Real.log n)]
  ring

/-- Every arithmetic term of the external formula equals the independently defined source form. -/
theorem literatureRHS_eq_source_form (A : ℝ) (hA : 1 ≤ A) :
    Zeta23.EF.literatureRHS (complexCorrelation A) =
      (realArithmeticForm A (actualTest A) : ℂ) := by
  unfold Zeta23.EF.literatureRHS
  rw [pole_transport A hA, prime_transport A hA, archimedean_transport A hA]
  unfold realArithmeticForm
  simp only [primeIndices, correlation]
  push_cast
  ring

end
end FormalResearch.RiemannHypothesis.WeilSource
