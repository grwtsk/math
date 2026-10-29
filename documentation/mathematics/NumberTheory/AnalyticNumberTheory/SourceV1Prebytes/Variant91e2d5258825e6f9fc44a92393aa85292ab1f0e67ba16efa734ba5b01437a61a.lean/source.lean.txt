-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.SymmetricPhaseMultiplier.Variant88099321f093acadac7686d014bf150c1ad3e88fb35296c434e8b05f3dc675ee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"88099321f093acadac7686d014bf150c1ad3e88fb35296c434e8b05f3dc675ee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.SymmetricPhaseMultiplier.Variant88099321f093acadac7686d014bf150c1ad3e88fb35296c434e8b05f3dc675ee","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"88099321f093acadac7686d014bf150c1ad3e88fb35296c434e8b05f3dc675ee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle8/interaction-fourier/source-v1-prebytes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtInteraction
import FormalResearch.RiemannHypothesis.SourceL2FourierCompatibility
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel

/-!
# Fourier multiplier of the literal Mangoldt interaction

The actual finite translation interaction is transported to its real cosine
symbol under Mathlib's standard Fourier convention. No uniform arithmetic
bound, reflected-row identification or RH witness follows.

AI attribution: developed with OpenAI Codex; checked by Lean.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.SymmetricPhaseMultiplier.Variant88099321f093acadac7686d014bf150c1ad3e88fb35296c434e8b05f3dc675ee

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceMangoldtInteractionFourier
open MeasureTheory Filter
open scoped FourierTransform InnerProductSpace
open SourceReflectionDuality SourceMangoldtInteraction SourceScaleL2Continuity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open PrimePowerDescent EstimateMertensResidual EstimatePrimeSmoothDefect SourcePairing
open Realization CorrelationRegularity SourceDualFourierJump SourcePlancherel BridgeFourier

/-- Frequency-side average of the two existing standard right-shift phases. -/
def symmetricPhaseMultiplier (s : ℝ) : ComplexL2 →L[ℂ] ComplexL2 :=
  (1 / 2 : ℂ) • ((translationPhaseMultiplier s).toContinuousLinearMap +
    (translationPhaseMultiplier (-s)).toContinuousLinearMap)

/-- The frequency average retains the literal coefficient one half. -/
theorem symmetricPhaseMultiplier_apply (s : ℝ) (f : ComplexL2) :
    symmetricPhaseMultiplier s f =
      (1 / 2 : ℂ) • (translationPhaseMultiplier s f + translationPhaseMultiplier (-s) f) := rfl

/-- Exact Fourier transport of the existing spatial shift average. -/
theorem fourier_symmetricTranslation (s : ℝ) (f : ComplexL2) :
    𝓕 (symmetricTranslation s f) = symmetricPhaseMultiplier s (𝓕 f) := by
  rw [symmetricTranslation_apply, FourierTransform.fourier_smul,
    FourierTransform.fourier_add, fourier_translation, fourier_translation]
  rfl

/-- The opposite standard phases average to a real cosine with standard frequency. -/
theorem translationPhase_half_sum (s ξ : ℝ) :
    (1 / 2 : ℂ) * (translationPhase s ξ + translationPhase (-s) ξ) =
      (Real.cos (2 * Real.pi * ξ * s) : ℂ) := by
  have hn : 2 * Real.pi * (-s * ξ) = -(2 * Real.pi * ξ * s) := by ring
  have hp : 2 * Real.pi * (-(-s) * ξ) = 2 * Real.pi * ξ * s := by ring
  simp only [translationPhase, Real.fourierChar_apply, hn, hp, Complex.ofReal_neg]
  rw [add_comm, ← Complex.two_cos, ← Complex.ofReal_cos]
  ring

/-- The actual frequency CLM acts almost everywhere by its real cosine. -/
theorem symmetricPhaseMultiplier_coe_ae (s : ℝ) (f : ComplexL2) :
    symmetricPhaseMultiplier s f =ᵐ[volume]
      fun ξ => (Real.cos (2 * Real.pi * ξ * s) : ℂ) * f ξ := by
  filter_upwards [Lp.coeFn_smul (1 / 2 : ℂ)
      (translationPhaseMultiplier s f + translationPhaseMultiplier (-s) f),
    Lp.coeFn_add (translationPhaseMultiplier s f) (translationPhaseMultiplier (-s) f),
    translationPhaseMultiplier_coe_ae s f, translationPhaseMultiplier_coe_ae (-s) f]
    with ξ hsm ha hp hn
  change ((1 / 2 : ℂ) •
    (translationPhaseMultiplier s f + translationPhaseMultiplier (-s) f)) ξ = _
  simp only [Pi.smul_apply, Pi.add_apply, smul_eq_mul] at hsm ha
  rw [hsm, ha, hp, hn]
  rw [← add_mul, ← mul_assoc, translationPhase_half_sum]

/-- Independently defined finite real symbol, with the literal closed arithmetic inventory. -/
def mangoldtFourierSymbol (A ξ : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A),
    mangoldtCoefficient n * Real.cos (2 * Real.pi * ξ * Real.log n)

/-- The actual frequency operator is a finite sum of existing phase-average CLMs. -/
def mangoldtFourierMultiplier (A : ℝ) : ComplexL2 →L[ℂ] ComplexL2 :=
  ∑ n ∈ primePowerInventory (2 * A), (mangoldtCoefficient n : ℂ) •
    symmetricPhaseMultiplier (Real.log n)

/-- Frequency application retains every arithmetic coefficient and index. -/
theorem mangoldtFourierMultiplier_apply (A : ℝ) (f : ComplexL2) :
    mangoldtFourierMultiplier A f = ∑ n ∈ primePowerInventory (2 * A),
      (mangoldtCoefficient n : ℂ) • symmetricPhaseMultiplier (Real.log n) f := by
  simp only [mangoldtFourierMultiplier, sum_apply, _root_.smul_apply]

/-- The unchanged spatial Mangoldt operator is exactly Fourier-intertwined. -/
theorem fourier_mangoldtInteraction (A : ℝ) (f : ComplexL2) :
    𝓕 (mangoldtInteraction A f) = mangoldtFourierMultiplier A (𝓕 f) := by
  simp only [mangoldtInteraction_apply, FourierTransform.fourier_sum,
    FourierTransform.fourier_smul, fourier_symmetricTranslation,
    mangoldtFourierMultiplier_apply]

/-- The complete frequency CLM acts almost everywhere by the independently defined symbol. -/
theorem mangoldtFourierMultiplier_coe_ae (A : ℝ) (f : ComplexL2) :
    mangoldtFourierMultiplier A f =ᵐ[volume]
      fun ξ => (mangoldtFourierSymbol A ξ : ℂ) * f ξ := by
  let S := primePowerInventory (2 * A)
  have hterms : ∀ᵐ ξ ∂volume, ∀ n ∈ S,
      ((mangoldtCoefficient n : ℂ) • symmetricPhaseMultiplier (Real.log n) f) ξ =
        (mangoldtCoefficient n : ℂ) *
          (Real.cos (2 * Real.pi * ξ * Real.log n) : ℂ) * f ξ := by
    apply (Filter.eventually_all_finset S).mpr
    intro n _
    filter_upwards [Lp.coeFn_smul (mangoldtCoefficient n : ℂ)
      (symmetricPhaseMultiplier (Real.log n) f),
      symmetricPhaseMultiplier_coe_ae (Real.log n) f] with ξ hs hc
    simp only [Pi.smul_apply, smul_eq_mul] at hs
    rw [hs, hc]
    ring
  filter_upwards [Lp.coeFn_fun_finsetSum S (fun n =>
    (mangoldtCoefficient n : ℂ) • symmetricPhaseMultiplier (Real.log n) f), hterms]
    with ξ hs ht
  rw [mangoldtFourierMultiplier_apply]
  change (∑ n ∈ S, (mangoldtCoefficient n : ℂ) •
    symmetricPhaseMultiplier (Real.log n) f) ξ = _
  rw [hs]
  simp only [mangoldtFourierSymbol, Complex.ofReal_sum, Complex.ofReal_mul, Finset.sum_mul]
  exact Finset.sum_congr rfl ht

/-- The exact transport is an identity between composed bounded continuous linear maps. -/
theorem mangoldtInteraction_fourier_intertwining (A : ℝ) :
    (Lp.fourierTransformₗᵢ ℝ ℂ).toLinearIsometry.toContinuousLinearMap.comp
      (mangoldtInteraction A) =
    (mangoldtFourierMultiplier A).comp
      (Lp.fourierTransformₗᵢ ℝ ℂ).toLinearIsometry.toContinuousLinearMap := by
  apply ContinuousLinearMap.ext
  intro f
  exact fourier_mangoldtInteraction A f

/-- At each fixed scale the literal finite real symbol is continuous. -/
theorem mangoldtFourierSymbol_continuous (A : ℝ) :
    Continuous (mangoldtFourierSymbol A) := by
  unfold mangoldtFourierSymbol
  fun_prop

/-- The elementary bound is finite at each scale; it is not uniform in scale. -/
theorem mangoldtFourierSymbol_abs_le (A ξ : ℝ) :
    |mangoldtFourierSymbol A ξ| ≤
      ∑ n ∈ primePowerInventory (2 * A), |mangoldtCoefficient n| := by
  unfold mangoldtFourierSymbol
  refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
  apply Finset.sum_le_sum
  intro n _
  rw [abs_mul]
  exact mul_le_of_le_one_right (abs_nonneg _) (Real.abs_cos_le_one _)

private theorem inner_real_multiplier (a : ℝ) (z : ℂ) :
    (⟪z, (a : ℂ) * z⟫_ℂ).re = a * Complex.normSq z := by
  rw [RCLike.inner_apply']
  have he : starRingEnd ℂ z * ((a : ℂ) * z) =
      (a : ℂ) * (Complex.normSq z : ℂ) := by
    rw [Complex.normSq_eq_conj_mul_self]
    ring
  rw [he, ← Complex.ofReal_mul, Complex.ofReal_re]

/-- The finite symbol times any actual L² square density is integrable. -/
theorem mangoldtFourierDensity_integrable (A : ℝ) (f : ComplexL2) :
    Integrable (fun ξ => mangoldtFourierSymbol A ξ * Complex.normSq (f ξ)) := by
  apply ((L2.integrable_inner (𝕜 := ℂ) f (mangoldtFourierMultiplier A f)).re).congr
  filter_upwards [mangoldtFourierMultiplier_coe_ae A f] with ξ hξ
  rw [hξ, inner_real_multiplier]

/-- The frequency-side quadratic coefficient is its genuinely integrable density. -/
theorem mangoldtFourierMultiplier_quadratic_integral (A : ℝ) (f : ComplexL2) :
    (⟪f, mangoldtFourierMultiplier A f⟫_ℂ).re =
      ∫ ξ : ℝ, mangoldtFourierSymbol A ξ * Complex.normSq (f ξ) := by
  rw [L2.inner_def, ← integral_re
    (L2.integrable_inner (𝕜 := ℂ) f (mangoldtFourierMultiplier A f))]
  apply integral_congr_ae
  filter_upwards [mangoldtFourierMultiplier_coe_ae A f] with ξ hξ
  rw [hξ, inner_real_multiplier]

/-- Pointed Parseval for the actual arithmetic operator has no standard-frequency prefactor. -/
theorem mangoldtInteraction_pointed_parseval (A : ℝ) (f : ComplexL2) :
    (⟪f, mangoldtInteraction A f⟫_ℂ).re =
      ∫ ξ : ℝ, mangoldtFourierSymbol A ξ * Complex.normSq ((𝓕 f : ComplexL2) ξ) := by
  rw [← Lp.inner_fourier_eq, fourier_mangoldtInteraction]
  exact mangoldtFourierMultiplier_quadratic_integral A (𝓕 f)

/-- The literal closed prime moment is the standard-frequency pointed density. -/
theorem closedPrimeMoment_eq_fourier_integral {A : ℝ} (hA : 0 < A) :
    closedPrimeMoment A = ∫ ξ : ℝ,
      mangoldtFourierSymbol A ξ *
        Complex.normSq ((𝓕 (originalSourceState A) : ComplexL2) ξ) := by
  rw [closedPrimeMoment_eq_quadratic hA, mangoldtInteraction_pointed_parseval]

/-- The unchanged residual is this density only under its existing scale hypothesis. -/
theorem mertensResidual_eq_fourier_integral {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = ∫ ξ : ℝ,
      mangoldtFourierSymbol A ξ *
        Complex.normSq ((𝓕 (originalSourceState A) : ComplexL2) ξ) := by
  rw [mertensResidual_eq_quadratic hA, mangoldtInteraction_pointed_parseval]

/-- Compatibility with the Bochner transform requires the actual representative to be integrable. -/
theorem mangoldtInteraction_pointed_bochner (A : ℝ) (f : ComplexL2)
    (hf : Integrable (f : ℝ → ℂ)) :
    (⟪f, mangoldtInteraction A f⟫_ℂ).re =
      ∫ ξ : ℝ, mangoldtFourierSymbol A ξ * Complex.normSq (𝓕 (f : ℝ → ℂ) ξ) := by
  rw [mangoldtInteraction_pointed_parseval]
  apply integral_congr_ae
  filter_upwards [SourceL2FourierCompatibility.fourier_coe_ae f hf] with ξ hξ
  rw [hξ]

/-- The actual original source representative is integrable at every positive scale. -/
theorem originalSourceState_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (originalSourceState A : ℝ → ℂ) :=
  (Complex.ofRealCLM.integrable_comp (normalizedTest_integrable A hA)).congr
    (originalSourceState_coe_ae hA).symm

/-- The actual L² source spectrum is the literal standard Bochner spectrum almost everywhere. -/
theorem originalSourceState_fourier_coe_ae {A : ℝ} (hA : 0 < A) :
    (𝓕 (originalSourceState A) : ComplexL2) =ᵐ[volume] standardSourceTransform A := by
  apply (SourceL2FourierCompatibility.fourier_coe_ae _
    (originalSourceState_integrable hA)).trans
  exact Eventually.of_forall (fun ξ => Real.fourier_congr_ae (originalSourceState_coe_ae hA) ξ)

/-- The actual standard source density, including all Mangoldt coefficients, is integrable. -/
theorem mangoldtStandardSourceDensity_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (fun ξ => mangoldtFourierSymbol A ξ *
      Complex.normSq (standardSourceTransform A ξ)) := by
  apply (mangoldtFourierDensity_integrable A (𝓕 (originalSourceState A))).congr
  filter_upwards [originalSourceState_fourier_coe_ae hA] with ξ hξ
  rw [hξ]

/-- Literal source-function Parseval, with no representative ambiguity or prefactor. -/
theorem closedPrimeMoment_eq_standardSourceIntegral {A : ℝ} (hA : 0 < A) :
    closedPrimeMoment A = ∫ ξ : ℝ,
      mangoldtFourierSymbol A ξ * Complex.normSq (standardSourceTransform A ξ) := by
  rw [closedPrimeMoment_eq_fourier_integral hA]
  apply integral_congr_ae
  filter_upwards [originalSourceState_fourier_coe_ae hA] with ξ hξ
  rw [hξ]

/-- The source residual uses the same literal standard integral in its unchanged scale scope. -/
theorem mertensResidual_eq_standardSourceIntegral {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = ∫ ξ : ℝ,
      mangoldtFourierSymbol A ξ * Complex.normSq (standardSourceTransform A ξ) := by
  rw [mertensResidual_eq_closedPrimeMoment A hA,
    closedPrimeMoment_eq_standardSourceIntegral (by linarith)]

/-- Separately named cosine symbol in the repository's positive angular frequency coordinate. -/
def mangoldtAngularSymbol (A ω : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A), mangoldtCoefficient n * Real.cos (ω * Real.log n)

/-- The standard-to-positive-angular frequency substitution is explicit, despite cosine evenness. -/
theorem mangoldtFourierSymbol_eq_angular (A ξ : ℝ) :
    mangoldtFourierSymbol A ξ = mangoldtAngularSymbol A (-(2 * Real.pi) * ξ) := by
  unfold mangoldtFourierSymbol mangoldtAngularSymbol
  apply Finset.sum_congr rfl
  intro n _
  have he : -(2 * Real.pi) * ξ * Real.log n = -(2 * Real.pi * ξ * Real.log n) := by ring
  rw [he, Real.cos_neg]

/-- Exact angular source density is integrable; no scale-uniform arithmetic bound is used. -/
theorem mangoldtAngularSourceDensity_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (fun ω => mangoldtAngularSymbol A ω *
      Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ω)) := by
  have hint := mangoldtStandardSourceDensity_integrable hA
  simp only [standardSourceTransform, standardFourier_eq_sourceFourier,
    mangoldtFourierSymbol_eq_angular] at hint
  exact (integrable_comp_mul_left_iff _
    (neg_ne_zero.mpr (mul_ne_zero two_ne_zero Real.pi_ne_zero))).mp hint

/-- Positive-angular Parseval has the distinct measure conversion factor `1/(2π)`. -/
theorem closedPrimeMoment_eq_angularSourceIntegral {A : ℝ} (hA : 0 < A) :
    closedPrimeMoment A = (1 / (2 * Real.pi)) * ∫ ω : ℝ,
      mangoldtAngularSymbol A ω *
        Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ω) := by
  rw [closedPrimeMoment_eq_standardSourceIntegral hA]
  simp only [standardSourceTransform, standardFourier_eq_sourceFourier,
    mangoldtFourierSymbol_eq_angular]
  rw [Measure.integral_comp_mul_left
    (fun ω => mangoldtAngularSymbol A ω *
      Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ω))
    (-(2 * Real.pi)), smul_eq_mul, abs_inv, abs_neg,
    abs_of_pos (by positivity : 0 < 2 * Real.pi)]
  simp only [one_div]

/-- The residual's angular formula retains the existing `A≥1` contract. -/
theorem mertensResidual_eq_angularSourceIntegral {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = (1 / (2 * Real.pi)) * ∫ ω : ℝ,
      mangoldtAngularSymbol A ω *
        Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) ω) := by
  rw [mertensResidual_eq_closedPrimeMoment A hA,
    closedPrimeMoment_eq_angularSourceIntegral (by linarith)]

/-- Hostile normalization fixture: inserting the angular factor into standard mass changes it. -/
theorem standardSourceMass_not_angular_prefactor {A : ℝ} (hA : 1 ≤ A) :
    (∫ ξ : ℝ, Complex.normSq (standardSourceTransform A ξ)) ≠
      (1 / (2 * Real.pi)) * ∫ ξ : ℝ, Complex.normSq (standardSourceTransform A ξ) := by
  have hm : (∫ ξ : ℝ, Complex.normSq (standardSourceTransform A ξ)) = 1 :=
    actual_standard_fourier_mass A hA
  rw [hm, mul_one]
  intro he
  have hp : 0 < 2 * Real.pi := by positivity
  have hx := (eq_div_iff hp.ne').mp he
  have hpi := Real.pi_gt_three
  nlinarith

end FormalResearch.RiemannHypothesis.SourceMangoldtInteractionFourier
