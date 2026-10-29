-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tg03VertexEndpointEquations.Variant9d378552cb638e1c336cf78e2dcb25f24e490ea45dd58694321df8ca41cc13d1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9d378552cb638e1c336cf78e2dcb25f24e490ea45dd58694321df8ca41cc13d1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Tg03VertexEndpointEquations.Variant9d378552cb638e1c336cf78e2dcb25f24e490ea45dd58694321df8ca41cc13d1","mathematical_subject":"Foundations.Unclassified","original_sha256":"9d378552cb638e1c336cf78e2dcb25f24e490ea45dd58694321df8ca41cc13d1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/TopologicalTheorems/TG03_VertexEndpointEquations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.TopologicalClaims


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tg03VertexEndpointEquations.Variant9d378552cb638e1c336cf78e2dcb25f24e490ea45dd58694321df8ca41cc13d1

universe uVertex uEdge uInterval

namespace FCRS.ControlledSpherical.TopologicalTheorems

open FCRS.ControlledPlane
open FCRS.ControlledSpherical
open FCRS.Topology

theorem tg03_vertexEndpointEquations
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval}) : TG03Claim G I where
  zeroEndpoint := edgePath_zero G I
  oneEndpoint := edgePath_one G I

end FCRS.ControlledSpherical.TopologicalTheorems
