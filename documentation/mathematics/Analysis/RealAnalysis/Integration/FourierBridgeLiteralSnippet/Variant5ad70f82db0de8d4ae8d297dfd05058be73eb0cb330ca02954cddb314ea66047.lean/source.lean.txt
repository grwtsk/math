-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SourceUnit.Variantd96d030aec19b82266d2ccfe9518952b14675536baf56cd4bd0df5e65b586e33","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d96d030aec19b82266d2ccfe9518952b14675536baf56cd4bd0df5e65b586e33","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SourceUnit.Variantd96d030aec19b82266d2ccfe9518952b14675536baf56cd4bd0df5e65b586e33","mathematical_subject":"Analysis.Integration","original_sha256":"d96d030aec19b82266d2ccfe9518952b14675536baf56cd4bd0df5e65b586e33","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-controller-admission/fourier-bridge-literal-snippet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.Analysis.RealAnalysis.Integration.SourceUnit.Variantd96d030aec19b82266d2ccfe9518952b14675536baf56cd4bd0df5e65b586e33

open MeasureTheory FourierTransform
open FourierL1L2BridgeScratch
open scoped Topology

example (f g : ℝ → ℂ) (hf : Integrable f) (hg : Integrable g) :
    (∫ x : ℝ, (𝓕⁻ f) x * g x) = ∫ x : ℝ, f x * (𝓕⁻ g) x :=
  integral_fourierInv_mul_eq f g hf hg

example (f : ℝ → ℂ) (hf : Integrable f) : Continuous (𝓕⁻ f) :=
  continuous_fourierInv f hf

example (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    ((𝓕⁻ (hf2.toLp f) : Lp ℂ 2 (volume : Measure ℝ)) : ℝ → ℂ) =ᵐ[volume] 𝓕⁻ f :=
  fourierInv_toLp_ae f hf hf2

example (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    MemLp (𝓕⁻ f) 2 := fourierInv_memLp f hf hf2

example (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    (fourierInv_memLp f hf hf2).toLp (𝓕⁻ f) = 𝓕⁻ (hf2.toLp f) :=
  fourierInv_toLp_eq f hf hf2

example (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    ‖(fourierInv_memLp f hf hf2).toLp (𝓕⁻ f)‖ = ‖hf2.toLp f‖ :=
  norm_fourierInv_toLp f hf hf2
