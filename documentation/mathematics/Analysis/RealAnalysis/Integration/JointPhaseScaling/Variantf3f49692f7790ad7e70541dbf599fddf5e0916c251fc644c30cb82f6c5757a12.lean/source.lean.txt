-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ChiScaled.Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ChiScaled.Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb","mathematical_subject":"Analysis.Integration","original_sha256":"1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.DilationFourierFactorization
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationSpectralLens
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimeSquareEstimate

/-!
# Exact joint scaling of the actual spectral density and arithmetic phases

The substitution `u = A * ξ` puts every source phase at `u * (log n / A)`.
The rescaled density retains the exact differential multiplier and `Z_A`, so
its kernel depends on `A`. No fixed density or uniform arithmetic cancellation
is inferred from the change of variables.

AI attribution: Codex authored this module and its proofs.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ChiScaled.Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb

namespace FormalResearch.RiemannHypothesis.JointPhaseScaling

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open MultiplicativePhase
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open DilationFourierFactorization CorrelationSpectralLens Realization
open EstimateTailReduction EstimateHigherPrimePowers PrimeSquareEstimate PrimePowerPhaseDefect

noncomputable section

/-- Joint frequency/inventory scaling is exact, rather than a fixed-index limit. -/
theorem chi_scaled (A u x : ℝ) :
    chi (u / A) x = Complex.exp (Complex.I * (u * (Real.log x / A) : ℝ)) := by
  unfold chi
  congr 1
  push_cast
  ring

/-- Exact Fourier scaling of the immutable polynomial bump. -/
theorem source_fourier_scaled_bump (A ξ : ℝ) (hA : 0 < A) :
    sourceFourier (scaledBump A) ξ =
      (Real.sqrt A : ℂ) * sourceFourier sourceBump (A * ξ) := by
  have hne : A ≠ 0 := ne_of_gt hA
  have hAc : (A : ℂ) ≠ 0 := by exact_mod_cast hne
  have hphase (x : ℝ) :
      Complex.I * (ξ : ℂ) * (x : ℂ) =
        Complex.I * ((A * ξ : ℝ) : ℂ) * ((x / A : ℝ) : ℂ) := by
    push_cast
    field_simp [hAc]
  unfold sourceFourier scaledBump
  simp_rw [Complex.ofReal_div, div_mul_eq_mul_div, hphase]
  rw [integral_div,
    Measure.integral_comp_div (fun x : ℝ ↦ (sourceBump x : ℂ) *
      Complex.exp (Complex.I * ((A * ξ : ℝ) : ℂ) * (x : ℂ))) A,
    abs_of_pos hA, Complex.real_smul]
  rw [mul_div_right_comm, ← Complex.ofReal_div, Real.div_sqrt]

/-- The rescaled actual source density, including its change-of-variable Jacobian. -/
def rescaledDensity (A u : ℝ) : ℝ := spectralDensity A (u / A) / A

/-- The actual cosine kernel in joint-scaled coordinates. -/
def scaledKernel (A s : ℝ) : ℝ :=
  ∫ u, Real.cos (u * s) * rescaledDensity A u

/-- Fixed bump density; unlike the normalized dilation density, this profile has no radius. -/
def bumpDensity (u : ℝ) : ℝ :=
  Complex.normSq (sourceFourier sourceBump u) / (2 * Real.pi)

/-- The fixed even moment densities used in the exact three-component law. -/
def bumpMomentDensity (k : ℕ) (u : ℝ) : ℝ := u ^ (2 * k) * bumpDensity u

/-- Fixed cosine transforms of the three integrable even moment densities. -/
def fixedKernel (k : ℕ) (s : ℝ) : ℝ :=
  ∫ u, Real.cos (u * s) * bumpMomentDensity k u

/-- The normalized transform in joint coordinates retains the actual differential factor. -/
theorem source_fourier_normalized_test_scaled (A u : ℝ) (hA : 1 ≤ A) :
    sourceFourier (normalizedTest explicitSecondDerivative A) (u / A) =
      -(((u / A) ^ 2 + 1 / 4 : ℝ) : ℂ) * (Real.sqrt A : ℂ) *
        sourceFourier sourceBump u / (Real.sqrt (sourceNormalization A) : ℂ) := by
  have hpos : 0 < A := by linarith
  have hne : A ≠ 0 := ne_of_gt hpos
  rw [sourceFourier_normalizedTest A (u / A) hA,
    source_fourier_scaled_bump A (u / A) hpos,
    show A * (u / A) = u by field_simp]
  push_cast
  ring

/-- Exact rescaled density. Its factor and normalization both still depend on the radius. -/
theorem rescaled_density_eq_bump_fourier (A u : ℝ) (hA : 1 ≤ A) :
    rescaledDensity A u =
      ((u / A) ^ 2 + 1 / 4) ^ 2 * Complex.normSq (sourceFourier sourceBump u) /
        (2 * Real.pi * sourceNormalization A) := by
  have hpos : 0 < A := by linarith
  have hne : A ≠ 0 := ne_of_gt hpos
  have hZ := source_normalization_pos A hA
  unfold rescaledDensity spectralDensity
  rw [source_fourier_normalized_test_scaled A u hA]
  simp only [Complex.normSq_div, Complex.normSq_mul, Complex.normSq_neg,
    Complex.normSq_ofReal, Real.mul_self_sqrt hpos.le, Real.mul_self_sqrt hZ.le]
  field_simp

/-- The exact radius dependence is a positive combination of three fixed even densities. -/
theorem rescaled_density_eq_three_moments (A u : ℝ) (hA : 1 ≤ A) :
    rescaledDensity A u =
      (bumpMomentDensity 0 u / 16 + bumpMomentDensity 1 u / (2 * A ^ 2) +
        bumpMomentDensity 2 u / A ^ 4) / sourceNormalization A := by
  rw [rescaled_density_eq_bump_fourier A u hA]
  unfold bumpMomentDensity bumpDensity
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

/-- The actual rescaled density is nonnegative. -/
theorem rescaled_density_nonneg (A u : ℝ) (hA : 1 ≤ A) :
    0 ≤ rescaledDensity A u :=
  div_nonneg (spectralDensity_nonneg A (u / A)) (by linarith)

/-- The change of variables preserves genuine integrability. -/
theorem rescaled_density_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (rescaledDensity A) := by
  have hne : A ≠ 0 := by linarith
  exact ((spectralDensity_integrable A hA).comp_div hne).div_const A

/-- The actual rescaled density retains exactly unit mass. -/
theorem rescaled_density_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ u, rescaledDensity A u) = 1 := by
  have hpos : 0 < A := by linarith
  unfold rescaledDensity
  rw [integral_div, Measure.integral_comp_div, abs_of_pos hpos,
    spectralDensity_integral A hA, smul_eq_mul, mul_one, div_self (ne_of_gt hpos)]

/-- The fixed bump has genuine absolute integrability. -/
theorem source_bump_integrable : Integrable sourceBump := by
  have heq : scaledBump 1 = sourceBump := by
    funext x
    simp [scaledBump]
  rw [← heq]
  exact scaledBump_integrable 1 (by norm_num)

/-- Every even bump moment density is pointwise nonnegative. -/
theorem bump_moment_density_nonneg (k : ℕ) (u : ℝ) : 0 ≤ bumpMomentDensity k u := by
  have hp : 0 ≤ u ^ (2 * k) := by simpa [pow_mul] using pow_nonneg (sq_nonneg u) k
  exact mul_nonneg hp (div_nonneg (Complex.normSq_nonneg _)
    (mul_pos (by norm_num) Real.pi_pos).le)

/-- The first three fixed densities are dominated by the admitted radius-one density. -/
theorem bump_moment_density_le_radius_one (k : ℕ) (hk : k ≤ 2) (u : ℝ) :
    bumpMomentDensity k u ≤ (16 * sourceNormalization 1) * rescaledDensity 1 u := by
  have hcoef : u ^ (2 * k) ≤ 16 * (u ^ 2 + 1 / 4) ^ 2 := by
    interval_cases k <;> norm_num <;> nlinarith [sq_nonneg u, sq_nonneg (u ^ 2)]
  have hnonneg : 0 ≤ bumpDensity u := by
    exact div_nonneg (Complex.normSq_nonneg _) (mul_pos (by norm_num) Real.pi_pos).le
  have heq : rescaledDensity 1 u = (u ^ 2 + 1 / 4) ^ 2 * bumpDensity u /
      sourceNormalization 1 := by
    rw [rescaled_density_eq_bump_fourier 1 u (by norm_num)]
    unfold bumpDensity
    simp only [div_eq_mul_inv, mul_inv_rev]
    ring
  have hZ := source_normalization_pos 1 (by norm_num)
  have hmass := (eq_div_iff (ne_of_gt hZ)).mp heq
  have hb := mul_le_mul_of_nonneg_right hcoef hnonneg
  unfold bumpMomentDensity
  calc
    _ ≤ (16 * (u ^ 2 + 1 / 4) ^ 2) * bumpDensity u := hb
    _ = _ := by
      rw [mul_assoc, ← hmass]
      ring

/-- Genuine integrability of all three fixed densities follows from actual source admission. -/
theorem bump_moment_density_integrable (k : ℕ) (hk : k ≤ 2) :
    Integrable (bumpMomentDensity k) := by
  have hc : Continuous (bumpMomentDensity k) :=
    (continuous_id.pow (2 * k)).mul
      ((Complex.continuous_normSq.comp
        (BridgeFourier.sourceFourier_continuous source_bump_integrable)).div_const _)
  apply ((rescaled_density_integrable 1 (by norm_num)).const_mul
    (16 * sourceNormalization 1)).mono' hc.aestronglyMeasurable
  filter_upwards [] with u
  rw [Real.norm_eq_abs, abs_of_nonneg (bump_moment_density_nonneg k u)]
  exact bump_moment_density_le_radius_one k hk u

/-- Fixed moment cosine observations are integrable, without a Taylor-series interchange. -/
theorem fixed_kernel_integrable (k : ℕ) (hk : k ≤ 2) (s : ℝ) :
    Integrable (fun u ↦ Real.cos (u * s) * bumpMomentDensity k u) := by
  apply (bump_moment_density_integrable k hk).bdd_mul (c := 1)
  · exact (by fun_prop : Continuous (fun u : ℝ ↦ Real.cos (u * s))).aestronglyMeasurable
  · filter_upwards [] with u
    exact Real.abs_cos_le_one _

/-- Every cosine observation of the rescaled source density is genuinely integrable. -/
theorem scaled_kernel_integrable (A s : ℝ) (hA : 1 ≤ A) :
    Integrable (fun u ↦ Real.cos (u * s) * rescaledDensity A u) := by
  apply (rescaled_density_integrable A hA).bdd_mul (c := 1)
  · exact (by fun_prop : Continuous (fun u : ℝ ↦ Real.cos (u * s))).aestronglyMeasurable
  · filter_upwards [] with u
    exact Real.abs_cos_le_one _

/-- The kernel is the unchanged source correlation at the jointly scaled displacement. -/
theorem scaled_kernel_eq_source_correlation (A s : ℝ) (hA : 1 ≤ A) :
    scaledKernel A s = sourceCorrelation explicitSecondDerivative A (A * s) := by
  have hpos : 0 < A := by linarith
  have hne : A ≠ 0 := ne_of_gt hpos
  have heq : (fun u : ℝ ↦ Real.cos (u * s) * rescaledDensity A u) =
      fun u ↦ (Real.cos ((u / A) * (A * s)) * spectralDensity A (u / A)) / A := by
    funext u
    rw [show (u / A) * (A * s) = u * s by field_simp]
    unfold rescaledDensity
    ring
  unfold scaledKernel
  rw [heq, integral_div,
    Measure.integral_comp_div (fun ξ : ℝ ↦ Real.cos (ξ * (A * s)) * spectralDensity A ξ) A,
    abs_of_pos hpos, smul_eq_mul,
    ← sourceCorrelation_eq_integral_cos A (A * s) hA]
  field_simp

/-- Exact finite fixed-kernel decomposition; the coefficients still depend on the radius. -/
theorem scaled_kernel_eq_three_fixed_kernels (A s : ℝ) (hA : 1 ≤ A) :
    scaledKernel A s =
      (fixedKernel 0 s / 16 + fixedKernel 1 s / (2 * A ^ 2) +
        fixedKernel 2 s / A ^ 4) / sourceNormalization A := by
  unfold scaledKernel
  simp_rw [rescaled_density_eq_three_moments A _ hA, mul_div, mul_add]
  simp_rw [mul_div]
  have h0 := fixed_kernel_integrable 0 (by norm_num) s
  have h1 := fixed_kernel_integrable 1 (by norm_num) s
  have h2 := fixed_kernel_integrable 2 (by norm_num) s
  rw [integral_div,
    integral_add (f := fun u ↦ Real.cos (u * s) * bumpMomentDensity 0 u / 16 +
      Real.cos (u * s) * bumpMomentDensity 1 u / (2 * A ^ 2))
      ((h0.div_const 16).add (h1.div_const (2 * A ^ 2))) (h2.div_const (A ^ 4)),
    integral_add (h0.div_const 16) (h1.div_const (2 * A ^ 2)),
    integral_div, integral_div, integral_div]
  rfl

/-- The scaled kernel's constant observation is exactly one, not an annihilated budget. -/
theorem scaled_kernel_at_zero (A : ℝ) (hA : 1 ≤ A) : scaledKernel A 0 = 1 := by
  unfold scaledKernel
  simpa using rescaled_density_integral A hA

/-- Three admitted radii determine the exact masses of the fixed spectral components. -/
theorem fixed_kernel_mass_values :
    fixedKernel 0 0 = (65536 / 109395 : ℝ) ∧
      fixedKernel 1 0 = (131072 / 45045 : ℝ) ∧
      fixedKernel 2 0 = (196608 / 5005 : ℝ) := by
  have h1 := scaled_kernel_eq_three_fixed_kernels 1 0 (by norm_num)
  have h2 := scaled_kernel_eq_three_fixed_kernels 2 0 (by norm_num)
  have h3 := scaled_kernel_eq_three_fixed_kernels 3 0 (by norm_num)
  rw [scaled_kernel_at_zero 1 (by norm_num)] at h1
  rw [scaled_kernel_at_zero 2 (by norm_num)] at h2
  rw [scaled_kernel_at_zero 3 (by norm_num)] at h3
  norm_num [sourceNormalization] at h1 h2 h3
  constructor
  · linarith
  constructor <;> linarith

/-- The fixed density masses are the same three exact normalization coefficients. -/
theorem bump_moment_mass_values :
    (∫ u, bumpMomentDensity 0 u) = (65536 / 109395 : ℝ) ∧
      (∫ u, bumpMomentDensity 1 u) = (131072 / 45045 : ℝ) ∧
      (∫ u, bumpMomentDensity 2 u) = (196608 / 5005 : ℝ) := by
  simpa [fixedKernel] using fixed_kernel_mass_values

/-- The joint kernel is continuous in displacement for every admitted radius. -/
theorem scaled_kernel_continuous (A : ℝ) (hA : 1 ≤ A) : Continuous (scaledKernel A) := by
  have heq : scaledKernel A = fun s ↦ sourceCorrelation explicitSecondDerivative A (A * s) := by
    funext s
    exact scaled_kernel_eq_source_correlation A s hA
  rw [heq]
  exact (CorrelationRegularity.sourceCorrelation_contDiff A (by linarith)).continuous.comp
    (continuous_const.mul continuous_id)

/-- The unchanged compact source support becomes the fixed displacement interval `[-2,2]`. -/
theorem scaled_kernel_eq_zero_of_two_le_abs (A s : ℝ) (hA : 1 ≤ A) (hs : 2 ≤ |s|) :
    scaledKernel A s = 0 := by
  have hpos : 0 < A := by linarith
  rw [scaled_kernel_eq_source_correlation A s hA]
  apply CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs A (A * s) hpos
  rw [abs_mul, abs_of_pos hpos]
  nlinarith

/-- The exact normalized correlation supplies the usual absolute kernel bound. -/
theorem scaled_kernel_abs_le_one (A s : ℝ) (hA : 1 ≤ A) : |scaledKernel A s| ≤ 1 := by
  rw [scaled_kernel_eq_source_correlation A s hA]
  exact EstimateCorrelation.actual_correlation_abs_le_one A (A * s) hA

/-- The scaled exponential moment has genuine integrability before its cancellation. -/
theorem scaled_kernel_exponential_moment_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun s ↦ Real.exp (A * s / 2) * scaledKernel A s) := by
  have hpos : 0 < A := by linarith
  have hi := CorrelationMoment.weighted_correlation_integrable
    (normalizedTest explicitSecondDerivative A) (1 / 2)
    (CorrelationMoment.weighted_normalizedTest_integrable A (1 / 2) hA)
    (CorrelationMoment.weighted_normalizedTest_integrable A (-(1 / 2)) hA)
  change Integrable (fun t ↦ Real.exp ((1 / 2 : ℝ) * t) *
    sourceCorrelation explicitSecondDerivative A t) at hi
  apply (hi.comp_mul_left' (ne_of_gt hpos)).congr
  filter_upwards [] with s
  rw [scaled_kernel_eq_source_correlation A s hA]
  congr 2
  ring

/-- Pole cancellation scales to an exponential kernel moment; it does not kill its constant mass. -/
theorem scaled_kernel_exponential_moment_zero (A : ℝ) (hA : 1 ≤ A) :
    (∫ s, Real.exp (A * s / 2) * scaledKernel A s) = 0 := by
  have hpos : 0 < A := by linarith
  have heq : (fun s : ℝ ↦ Real.exp (A * s / 2) * scaledKernel A s) =
      (fun t ↦ Real.exp ((1 / 2 : ℝ) * t) *
        sourceCorrelation explicitSecondDerivative A t) ∘ (fun s ↦ A * s) := by
    funext s
    rw [scaled_kernel_eq_source_correlation A s hA]
    simp only [Function.comp_apply]
    congr 2
    ring
  rw [heq]
  change (∫ s, (fun t ↦ Real.exp ((1 / 2 : ℝ) * t) *
    sourceCorrelation explicitSecondDerivative A t) (A * s)) = _
  rw [Measure.integral_comp_mul_left (fun t ↦ Real.exp ((1 / 2 : ℝ) * t) *
    sourceCorrelation explicitSecondDerivative A t) A,
    CorrelationMoment.full_correlation_moment_zero A hA,
    smul_zero]

/-- The strict growing inventory lies in the fixed scaled range `0 ≤ s < 2`. -/
theorem scaled_log_mem_range (A : ℝ) (hA : 1 ≤ A) (n : ℕ) (hn : n ∈ primeIndices A) :
    0 ≤ Real.log n / A ∧ Real.log n / A < 2 := by
  have hpos : 0 < A := by linarith
  obtain ⟨hn2, hcut⟩ := (mem_primeIndices_iff A n).mp hn
  have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast (by omega : 1 ≤ n)
  have hnpos : (0 : ℝ) < n := lt_of_lt_of_le zero_lt_one hn1
  refine ⟨div_nonneg (Real.log_nonneg hn1) hpos.le, ?_⟩
  apply (div_lt_iff₀ hpos).2
  exact (Real.log_lt_iff_lt_exp hnpos).2 hcut

/-- Exact scaled-kernel representation of the remaining strict prime-and-square sum. -/
theorem lower_power_contribution_eq_scaled_kernel_sum (A : ℝ) (hA : 1 ≤ A) :
    lowerPowerContribution A =
      ∑ n ∈ lowerPowerInventory A, primeWeight n * scaledKernel A (Real.log n / A) := by
  have hne : A ≠ 0 := by linarith
  unfold lowerPowerContribution
  apply Finset.sum_congr rfl
  intro n _
  rw [scaled_kernel_eq_source_correlation A (Real.log n / A) hA,
    show A * (Real.log n / A) = Real.log n by field_simp]

end
end FormalResearch.RiemannHypothesis.JointPhaseScaling
