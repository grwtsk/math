-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LoopIntegralCoboundaryZero.Variant20cfe4e710ef26d142f81f35ed5f1385395788c706816cdd616833a2b7ea678d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20cfe4e710ef26d142f81f35ed5f1385395788c706816cdd616833a2b7ea678d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LoopIntegralCoboundaryZero.Variant20cfe4e710ef26d142f81f35ed5f1385395788c706816cdd616833a2b7ea678d","mathematical_subject":"Foundations.Unclassified","original_sha256":"20cfe4e710ef26d142f81f35ed5f1385395788c706816cdd616833a2b7ea678d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Cellular/PhaseConnection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Cellular.PhaseConnection

/-!
# Folder.Theorem.Cellular.PhaseConnection

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.cellular.phase_connection
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LoopIntegralCoboundaryZero.Variant20cfe4e710ef26d142f81f35ed5f1385395788c706816cdd616833a2b7ea678d

namespace Folder
namespace Theorem
namespace Cellular
namespace PhaseConnection

theorem loopIntegral_coboundary_zero
    (f : Folder.Cellular.Cochain0 d k m)
    (p : Folder.Cellular.EdgePath d k x x) :
    Folder.Cellular.pathIntegral (Folder.Cellular.coboundary f) p = 0 :=
  Folder.Cellular.loopIntegral_coboundary_zero f p

theorem phaseConnection_loopIntegral_eq_scan
    (q : Folder.Cellular.Cochain0 d k m)
    (ω : Folder.Cellular.ScanTwist d k m)
    (p : Folder.Cellular.EdgePath d k x x) :
    Folder.Cellular.pathIntegral (Folder.Cellular.phaseConnection q ω) p =
      Folder.Cellular.pathIntegral ω.value p :=
  Folder.Cellular.phaseConnection_loopIntegral_eq_scan q ω p

end PhaseConnection
end Cellular
end Theorem
end Folder
