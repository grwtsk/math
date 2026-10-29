-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.CylinderAccessCertificate.Variantd75d68241fb8a095c270cdb5922a7a162fb6d89c12d0ab8c1e9d01dd2471806f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d75d68241fb8a095c270cdb5922a7a162fb6d89c12d0ab8c1e9d01dd2471806f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Independence.SourceCorpus.CylinderAccessCertificate.Variantd75d68241fb8a095c270cdb5922a7a162fb6d89c12d0ab8c1e9d01dd2471806f","mathematical_subject":"Probability.Independence","original_sha256":"d75d68241fb8a095c270cdb5922a7a162fb6d89c12d0ab8c1e9d01dd2471806f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/GraphAccess/Integration/CylinderAccess.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Finite-stage cylinder access

Stage independence is supplied as a compatibility certificate.  No completed
infinite state is materialized.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.CylinderAccessCertificate.Variantd75d68241fb8a095c270cdb5922a7a162fb6d89c12d0ab8c1e9d01dd2471806f

namespace Mathematics.GraphAccess

structure CylinderAccessCertificate (Stage Value : Type u) where
  limitRef : String
  observableRef : String
  finiteStages : List Stage
  evaluate : Stage → Value
  compatible :
    ∀ first second,
      first ∈ finiteStages →
      second ∈ finiteStages →
      evaluate first = evaluate second

theorem cylinder_access_stage_independent
    {Stage Value : Type u}
    (certificate : CylinderAccessCertificate Stage Value)
    (first second : Stage)
    (firstRegistered : first ∈ certificate.finiteStages)
    (secondRegistered : second ∈ certificate.finiteStages) :
    certificate.evaluate first = certificate.evaluate second :=
  certificate.compatible
    first
    second
    firstRegistered
    secondRegistered

end Mathematics.GraphAccess
