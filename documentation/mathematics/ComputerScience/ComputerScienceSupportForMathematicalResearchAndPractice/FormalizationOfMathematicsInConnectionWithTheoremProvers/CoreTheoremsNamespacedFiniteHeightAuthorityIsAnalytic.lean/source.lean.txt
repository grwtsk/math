-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteHeightAuthorityIsAnalytic.Variantc356d608d17f6b540c38962ba56bd4f5fcca0a62fbaf4f2b83f63322aeb8925a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c356d608d17f6b540c38962ba56bd4f5fcca0a62fbaf4f2b83f63322aeb8925a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FiniteHeightAuthorityIsAnalytic.Variantc356d608d17f6b540c38962ba56bd4f5fcca0a62fbaf4f2b83f63322aeb8925a","mathematical_subject":"Foundations.Unclassified","original_sha256":"c356d608d17f6b540c38962ba56bd4f5fcca0a62fbaf4f2b83f63322aeb8925a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/RHIsolation/CoreTheorems.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.RHIsolation.Foundation

/-!
# Public RH-isolation theorem surface

This module records the final authority split without introducing a shortcut
from spectral proposals to analytic zeros.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteHeightAuthorityIsAnalytic.Variantc356d608d17f6b540c38962ba56bd4f5fcca0a62fbaf4f2b83f63322aeb8925a

namespace Mathematics.RHIsolation

theorem finite_height_authority_is_analytic
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cut : CriticalStripCut}
    (certificate :
      FiniteHeightRHCertificate authority cut)
    {z : ℂ}
    (owned : cut.owns z)
    (zero : xi z = 0) :
    z.re = (1 : ℝ) / 2 :=
  finiteHeightRH_sound certificate z owned zero

theorem spectral_proposal_cannot_close_analytic_zero
    (candidate : SpectralCandidate) :
    ¬ CarriesAnalyticZeroAuthority candidate :=
  spectralCandidate_has_no_analyticAuthority candidate

end Mathematics.RHIsolation
