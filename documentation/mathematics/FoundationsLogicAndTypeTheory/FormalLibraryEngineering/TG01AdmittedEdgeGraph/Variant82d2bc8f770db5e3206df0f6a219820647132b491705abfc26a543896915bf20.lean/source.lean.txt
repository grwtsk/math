-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tg01AdmittedEdgeGraph.Variant00e3ff31be2a7586a88d6256aca8f5870b702d1fe8bdd3e241d41abd22a18a01","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"00e3ff31be2a7586a88d6256aca8f5870b702d1fe8bdd3e241d41abd22a18a01","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Tg01AdmittedEdgeGraph.Variant00e3ff31be2a7586a88d6256aca8f5870b702d1fe8bdd3e241d41abd22a18a01","mathematical_subject":"Foundations.Unclassified","original_sha256":"00e3ff31be2a7586a88d6256aca8f5870b702d1fe8bdd3e241d41abd22a18a01","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/TopologicalTheorems/TG01_AdmittedEdgeGraph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.TopologicalClaims


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tg01AdmittedEdgeGraph.Variant00e3ff31be2a7586a88d6256aca8f5870b702d1fe8bdd3e241d41abd22a18a01

universe uVertex uEdge uMorph uFactor

namespace FCRS.ControlledSpherical.TopologicalTheorems

open FCRS.ControlledPlane
open FCRS.ControlledSpherical

theorem tg01_admittedEdgeGraph
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {Morph : Type uMorph} {Factorization : Type uFactor}
    (G : DirectedGraph Vertex Edge)
    (sieve : FactoringSieve Morph Factorization)
    (occurs : Edge → Factorization → Prop) :
    TG01Claim G sieve occurs where
  everyEdgeAdmissible := admittedEdgeType_isAdmissible
  sourceInherited := admittedGraph_source G sieve occurs
  targetInherited := admittedGraph_target G sieve occurs
  sourceEdgeNotDuplicated := admittedEdgeType_val_injective

end FCRS.ControlledSpherical.TopologicalTheorems
