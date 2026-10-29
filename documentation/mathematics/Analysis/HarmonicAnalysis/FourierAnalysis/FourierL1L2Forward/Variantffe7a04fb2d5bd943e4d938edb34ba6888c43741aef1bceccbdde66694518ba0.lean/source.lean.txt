-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.HarmonicAnalysis.FourierAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.IntegralFourierMulEq.Variant647d94f114880368d729657b6852aabf47309a10abe7751c8e7fc2b1251a7b1e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"647d94f114880368d729657b6852aabf47309a10abe7751c8e7fc2b1251a7b1e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FourierAnalysis.SourceCorpus.IntegralFourierMulEq.Variant647d94f114880368d729657b6852aabf47309a10abe7751c8e7fc2b1251a7b1e","mathematical_subject":"Analysis.FourierAnalysis","original_sha256":"647d94f114880368d729657b6852aabf47309a10abe7751c8e7fc2b1251a7b1e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/controller-realization/FourierL1L2Forward.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Fourier.LpSpace

/-! Genuine agreement of forward Fourier integrals and the complex full-line L2 quotient. -/


namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.IntegralFourierMulEq.Variant647d94f114880368d729657b6852aabf47309a10abe7751c8e7fc2b1251a7b1e

set_option autoImplicit false
namespace FourierL1L2ForwardScratch
open MeasureTheory FourierTransform SchwartzMap
open scoped Real Topology ContDiff
noncomputable section

/-- The forward Fourier pairing uses genuine product integrability for both inputs. -/
theorem integral_fourier_mul_eq (f g : ℝ → ℂ)
    (hf : Integrable f) (hg : Integrable g) :
    (∫ x : ℝ, (𝓕 f) x * g x) = ∫ x : ℝ, f x * (𝓕 g) x := by
  have hflip : (innerₗ ℝ).flip = innerₗ ℝ := by
    ext
    simp
  have he := VectorFourier.integral_bilin_fourierIntegral_eq_flip
    (ContinuousLinearMap.mul ℂ ℂ) (L := innerₗ ℝ)
    Real.continuous_fourierChar continuous_inner hf hg
  simp only [hflip, ContinuousLinearMap.mul_apply', VectorFourier.fourierIntegral] at he
  simpa only [Real.fourier_eq, innerₗ_apply_apply] using he

/-- Subtraction of genuinely integrable inputs commutes with the actual Fourier integral. -/
theorem fourier_sub (f g : ℝ → ℂ) (hf : Integrable f) (hg : Integrable g) (ξ : ℝ) :
    𝓕 (fun x => f x - g x) ξ = 𝓕 f ξ - 𝓕 g ξ := by
  have hi (u : ℝ → ℂ) (hu : Integrable u) :
      Integrable (fun x : ℝ => Complex.exp ((-2 * Real.pi * x * ξ : ℝ) * Complex.I) •
        u x) := by
    apply hu.norm.mono' ?_ ?_
    · exact ((by fun_prop : Continuous (fun x : ℝ =>
          Complex.exp ((-2 * Real.pi * x * ξ : ℝ) * Complex.I))).aestronglyMeasurable.smul
        hu.aestronglyMeasurable)
    · filter_upwards [] with x
      simp [Complex.norm_exp]
  simp only [Real.fourier_real_eq_integral_exp_smul]
  simp_rw [smul_sub]
  exact integral_sub (hi f hf) (hi g hg)

/-- An integrable input has a continuous genuine forward Fourier integral. -/
theorem continuous_fourier (f : ℝ → ℂ) (hf : Integrable f) :
    Continuous (𝓕 f) := by
  exact VectorFourier.fourierIntegral_continuous Real.continuous_fourierChar
    continuous_inner hf

/-- For an L1 and L2 input, the L2 forward transform is its actual forward integral
almost everywhere. -/
theorem fourier_toLp_ae (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    ((𝓕 (hf2.toLp f) : Lp ℂ 2 (volume : Measure ℝ)) : ℝ → ℂ) =ᵐ[volume] 𝓕 f := by
  apply ae_eq_of_integral_contDiff_smul_eq
    ((Lp.memLp _).locallyIntegrable (by norm_num))
    (continuous_fourier f hf).locallyIntegrable
  intro g hg hgc
  have hgc' : HasCompactSupport (Complex.ofRealCLM ∘ g) := hgc.comp_left rfl
  have hg' : ContDiff ℝ ∞ (Complex.ofRealCLM ∘ g) := by fun_prop
  let s : SchwartzMap ℝ ℂ := hgc'.toSchwartzMap hg'
  have he := congrArg (fun d : TemperedDistribution ℝ ℂ => d s)
    (Lp.fourier_toTemperedDistribution_eq (hf2.toLp f))
  simp only [TemperedDistribution.fourier_apply, Lp.toTemperedDistribution_apply,
    smul_eq_mul] at he
  have he' : (∫ x : ℝ, s x * (𝓕 (hf2.toLp f) : Lp ℂ 2 (volume : Measure ℝ)) x) =
      ∫ x : ℝ, (𝓕 s) x * f x := by
    rw [← he]
    apply integral_congr_ae
    filter_upwards [hf2.coeFn_toLp] with x hx
    simp only [hx]
  calc
    (∫ x : ℝ, g x • (𝓕 (hf2.toLp f) : Lp ℂ 2 (volume : Measure ℝ)) x) =
        ∫ x : ℝ, s x * (𝓕 (hf2.toLp f) : Lp ℂ 2 (volume : Measure ℝ)) x := by
      congr 1
    _ = ∫ x : ℝ, (𝓕 s) x * f x := he'
    _ = ∫ x : ℝ, s x * (𝓕 f) x := by
      simpa only [SchwartzMap.fourier_coe] using
        integral_fourier_mul_eq s f s.integrable hf
    _ = ∫ x : ℝ, g x • (𝓕 f) x := by congr 1
  rfl

/-- The genuine forward integral of an L1 and L2 function itself belongs to L2. -/
theorem fourier_memLp (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    MemLp (𝓕 f) 2 :=
  MemLp.ae_eq (fourier_toLp_ae f hf hf2) (Lp.memLp _)

/-- Admission of the forward integral gives exactly the forward Fourier quotient vector. -/
theorem fourier_toLp_eq (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    (fourier_memLp f hf hf2).toLp (𝓕 f) = 𝓕 (hf2.toLp f) := by
  apply Lp.ext
  exact (fourier_memLp f hf hf2).coeFn_toLp.trans (fourier_toLp_ae f hf hf2).symm

/-- The admitted genuine forward integral preserves the complete full-line L2 norm. -/
theorem norm_fourier_toLp (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    ‖(fourier_memLp f hf hf2).toLp (𝓕 f)‖ = ‖hf2.toLp f‖ := by
  rw [fourier_toLp_eq f hf hf2]
  exact (Lp.fourierTransformₗᵢ ℝ ℂ).norm_map (hf2.toLp f)

end
end FourierL1L2ForwardScratch
