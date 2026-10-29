-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.IntegralFourierInvMulEq.Variantb0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.IntegralFourierInvMulEq.Variantb0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745","mathematical_subject":"Analysis.Integration","original_sha256":"b0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-controller-admission/fourier-bridge-full-audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Fourier.LpSpace

/-! Genuine agreement of inverse Fourier integrals and the complex full-line L2 quotient. -/


namespace GRWTSK.Analysis.RealAnalysis.Integration.IntegralFourierInvMulEq.Variantb0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745

set_option autoImplicit false
namespace FourierL1L2BridgeScratch
open MeasureTheory FourierTransform SchwartzMap
open scoped Real Topology ContDiff
noncomputable section

/-- The inverse Fourier pairing uses genuine product integrability for both inputs. -/
theorem integral_fourierInv_mul_eq (f g : ℝ → ℂ)
    (hf : Integrable f) (hg : Integrable g) :
    (∫ x : ℝ, (𝓕⁻ f) x * g x) = ∫ x : ℝ, f x * (𝓕⁻ g) x := by
  have hflip : (-(innerₗ ℝ)).flip = -(innerₗ ℝ) := by
    ext
    simp
  have he := VectorFourier.integral_bilin_fourierIntegral_eq_flip
    (ContinuousLinearMap.mul ℂ ℂ) (L := -(innerₗ ℝ))
    Real.continuous_fourierChar continuous_inner.neg hf hg
  simp only [hflip, ContinuousLinearMap.mul_apply', VectorFourier.fourierIntegral,
    LinearMap.neg_apply, neg_neg] at he
  simpa only [Real.fourierInv_eq, innerₗ_apply_apply] using he

/-- An integrable input has a continuous genuine inverse Fourier integral. -/
theorem continuous_fourierInv (f : ℝ → ℂ) (hf : Integrable f) :
    Continuous (𝓕⁻ f) := by
  exact VectorFourier.fourierIntegral_continuous Real.continuous_fourierChar
    continuous_inner.neg hf

/-- For an L1 and L2 input, the L2 inverse transform is its actual inverse integral
almost everywhere. -/
theorem fourierInv_toLp_ae (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    ((𝓕⁻ (hf2.toLp f) : Lp ℂ 2 (volume : Measure ℝ)) : ℝ → ℂ) =ᵐ[volume] 𝓕⁻ f := by
  apply ae_eq_of_integral_contDiff_smul_eq
    ((Lp.memLp _).locallyIntegrable (by norm_num))
    (continuous_fourierInv f hf).locallyIntegrable
  intro g hg hgc
  have hgc' : HasCompactSupport (Complex.ofRealCLM ∘ g) := hgc.comp_left rfl
  have hg' : ContDiff ℝ ∞ (Complex.ofRealCLM ∘ g) := by fun_prop
  let s : SchwartzMap ℝ ℂ := hgc'.toSchwartzMap hg'
  have he := congrArg (fun d : TemperedDistribution ℝ ℂ => d s)
    (Lp.fourierInv_toTemperedDistribution_eq (hf2.toLp f))
  simp only [TemperedDistribution.fourierInv_apply, Lp.toTemperedDistribution_apply,
    smul_eq_mul] at he
  have he' : (∫ x : ℝ, s x * (𝓕⁻ (hf2.toLp f) : Lp ℂ 2 (volume : Measure ℝ)) x) =
      ∫ x : ℝ, (𝓕⁻ s) x * f x := by
    rw [← he]
    apply integral_congr_ae
    filter_upwards [hf2.coeFn_toLp] with x hx
    simp only [hx]
  calc
    (∫ x : ℝ, g x • (𝓕⁻ (hf2.toLp f) : Lp ℂ 2 (volume : Measure ℝ)) x) =
        ∫ x : ℝ, s x * (𝓕⁻ (hf2.toLp f) : Lp ℂ 2 (volume : Measure ℝ)) x := by
      congr 1
    _ = ∫ x : ℝ, (𝓕⁻ s) x * f x := he'
    _ = ∫ x : ℝ, s x * (𝓕⁻ f) x := by
      simpa only [SchwartzMap.fourierInv_coe] using
        integral_fourierInv_mul_eq s f s.integrable hf
    _ = ∫ x : ℝ, g x • (𝓕⁻ f) x := by congr 1
  rfl

/-- The genuine inverse integral of an L1 and L2 function itself belongs to L2. -/
theorem fourierInv_memLp (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    MemLp (𝓕⁻ f) 2 :=
  MemLp.ae_eq (fourierInv_toLp_ae f hf hf2) (Lp.memLp _)

/-- Admission of the inverse integral gives exactly the inverse Fourier quotient vector. -/
theorem fourierInv_toLp_eq (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    (fourierInv_memLp f hf hf2).toLp (𝓕⁻ f) = 𝓕⁻ (hf2.toLp f) := by
  apply Lp.ext
  exact (fourierInv_memLp f hf hf2).coeFn_toLp.trans (fourierInv_toLp_ae f hf hf2).symm

/-- The admitted genuine inverse integral preserves the complete full-line L2 norm. -/
theorem norm_fourierInv_toLp (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    ‖(fourierInv_memLp f hf hf2).toLp (𝓕⁻ f)‖ = ‖hf2.toLp f‖ := by
  rw [fourierInv_toLp_eq f hf hf2]
  exact (Lp.fourierTransformₗᵢ ℝ ℂ).symm.norm_map (hf2.toLp f)

end
end FourierL1L2BridgeScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @FourierL1L2BridgeScratch.integral_fourierInv_mul_eq
#print FourierL1L2BridgeScratch.integral_fourierInv_mul_eq
#print axioms FourierL1L2BridgeScratch.integral_fourierInv_mul_eq
#check @FourierL1L2BridgeScratch.continuous_fourierInv
#print FourierL1L2BridgeScratch.continuous_fourierInv
#print axioms FourierL1L2BridgeScratch.continuous_fourierInv
#check @FourierL1L2BridgeScratch.fourierInv_toLp_ae
#print FourierL1L2BridgeScratch.fourierInv_toLp_ae
#print axioms FourierL1L2BridgeScratch.fourierInv_toLp_ae
#check @FourierL1L2BridgeScratch.fourierInv_memLp
#print FourierL1L2BridgeScratch.fourierInv_memLp
#print axioms FourierL1L2BridgeScratch.fourierInv_memLp
#check @FourierL1L2BridgeScratch.fourierInv_toLp_eq
#print FourierL1L2BridgeScratch.fourierInv_toLp_eq
#print axioms FourierL1L2BridgeScratch.fourierInv_toLp_eq
#check @FourierL1L2BridgeScratch.norm_fourierInv_toLp
#print FourierL1L2BridgeScratch.norm_fourierInv_toLp
#print axioms FourierL1L2BridgeScratch.norm_fourierInv_toLp
