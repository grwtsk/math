-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tg02GraphQuotientRealization.Variantf581c32deca05bac684fc05395803eeddd2dbcf8908df37531d839530e8533c2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f581c32deca05bac684fc05395803eeddd2dbcf8908df37531d839530e8533c2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Tg02GraphQuotientRealization.Variantf581c32deca05bac684fc05395803eeddd2dbcf8908df37531d839530e8533c2","mathematical_subject":"Foundations.Unclassified","original_sha256":"f581c32deca05bac684fc05395803eeddd2dbcf8908df37531d839530e8533c2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/TopologicalTheorems/TG02_GraphQuotientRealization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.TopologicalClaims


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tg02GraphQuotientRealization.Variantf581c32deca05bac684fc05395803eeddd2dbcf8908df37531d839530e8533c2

universe uVertex uEdge uInterval

namespace FCRS.ControlledSpherical.TopologicalTheorems

open FCRS.ControlledPlane
open FCRS.ControlledSpherical
open FCRS.Topology

theorem tg02_graphQuotientRealization
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval}) : TG02Claim G I where
  quotientExact := by
    intro x y
    constructor
    · exact Quotient.exact
    · intro h
      change Quotient.mk (graphEndpointSetoid G I) x =
        Quotient.mk (graphEndpointSetoid G I) y
      exact Quotient.sound h
  verticesRemainDistinct := vertexPoint_injective

end FCRS.ControlledSpherical.TopologicalTheorems
