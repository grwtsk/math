-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.BridgeFourier.Variantee034d5fb911484a1a682aafba890c3d0dd56f754215a4242618b47b385a2904","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ee034d5fb911484a1a682aafba890c3d0dd56f754215a4242618b47b385a2904","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.BridgeFourier.Variantee034d5fb911484a1a682aafba890c3d0dd56f754215a4242618b47b385a2904","mathematical_subject":"Analysis.Integration","original_sha256":"ee034d5fb911484a1a682aafba890c3d0dd56f754215a4242618b47b385a2904","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/ee/ee034d5fb911484a1a682aafba890c3d0dd56f754215a4242618b47b385a2904--LensCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier
import Mathlib.Analysis.Fourier.Convolution
import Mathlib.Analysis.Fourier.Inversion

namespace GRWTSK.Analysis.RealAnalysis.Integration.BridgeFourier.Variantee034d5fb911484a1a682aafba890c3d0dd56f754215a4242618b47b385a2904

open MeasureTheory Complex
open scoped FourierTransform Convolution
#check integral_comp_neg
#check integral_re
#check integral_conj
#check Complex.exp_conj
#check Complex.normSq_eq_conj_mul_self
#check Complex.mul_conj
#check Complex.conj_mul
#check Real.integrable_comp_div
#check Measure.integral_comp_mul_left
#check ContinuousLinearMap.integral_comp_comm
#check MeasureTheory.Integrable.bdd_mul
#check MeasureTheory.Integrable.mul_continuous_of_bounded
#check Real.fourierIntegral_convergent_iff
#check Real.fourierInv_eq'
#check integral_div
#check Integrable.div_const
