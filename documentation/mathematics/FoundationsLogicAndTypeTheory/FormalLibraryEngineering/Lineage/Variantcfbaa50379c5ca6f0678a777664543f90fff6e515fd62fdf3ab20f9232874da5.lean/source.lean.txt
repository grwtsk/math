-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SameZeroCertificate.Variant0725ecb1b3cc36beb4fcf296354142b3907172becf05f789e6528cf373953277","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0725ecb1b3cc36beb4fcf296354142b3907172becf05f789e6528cf373953277","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SameZeroCertificate.Variant0725ecb1b3cc36beb4fcf296354142b3907172becf05f789e6528cf373953277","mathematical_subject":"Foundations.Unclassified","original_sha256":"0725ecb1b3cc36beb4fcf296354142b3907172becf05f789e6528cf373953277","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/RHIsolation/Lineage.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.RHIsolation.UniqueZero

/-!
# Persistent analytic zero lineage

Lineage is minted from equality of accepted analytic representatives, never
from numerical proximity.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SameZeroCertificate.Variant0725ecb1b3cc36beb4fcf296354142b3907172becf05f789e6528cf373953277

namespace Mathematics.RHIsolation

structure SameZeroCertificate
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    (authority :
      ArgumentPrincipleAuthority model xi xiPrime)
    (left right : AnalyticCell) where
  leftUnique :
    UniqueZeroCertificate authority left
  rightUnique :
    UniqueZeroCertificate authority right
  same :
    leftUnique.zero = rightUnique.zero

theorem sameZero_of_nested_unique_cells
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {left right : AnalyticCell}
    (leftCert :
      UniqueZeroCertificate authority left)
    (rightCert :
      UniqueZeroCertificate authority right)
    (subset :
      right.interior ⊆ left.interior) :
    leftCert.zero = rightCert.zero := by
  symm
  exact leftCert.unique
    rightCert.zero
    (subset rightCert.zero_mem)
    rightCert.xi_zero

theorem nested_unique_cells_same_zero
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {left right : AnalyticCell}
    (leftCert :
      UniqueZeroCertificate authority left)
    (rightCert :
      UniqueZeroCertificate authority right)
    (subset :
      right.interior ⊆ left.interior) :
    leftCert.zero = rightCert.zero :=
  sameZero_of_nested_unique_cells
    leftCert rightCert subset

structure ZeroLineage where
  id : ZeroLineageId
  representative : ℂ
  analyticCertificate : CertificateDigest

noncomputable def SameZeroCertificate.mintLineage
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {left right : AnalyticCell}
    (certificate :
      SameZeroCertificate authority left right)
    (id : ZeroLineageId)
    (digest : CertificateDigest) :
    ZeroLineage where
  id := id
  representative := certificate.leftUnique.zero
  analyticCertificate := digest

end Mathematics.RHIsolation
