-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cs03InjectiveS1VertexPlacement.Variant04a72a502c9a233bc574d744efdc5709728cd66a4bd69ecab5b23478da639917","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"04a72a502c9a233bc574d744efdc5709728cd66a4bd69ecab5b23478da639917","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Cs03InjectiveS1VertexPlacement.Variant04a72a502c9a233bc574d744efdc5709728cd66a4bd69ecab5b23478da639917","mathematical_subject":"Foundations.Unclassified","original_sha256":"04a72a502c9a233bc574d744efdc5709728cd66a4bd69ecab5b23478da639917","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/Theorems/CS03_InjectiveS1VertexPlacement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.Registry


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cs03InjectiveS1VertexPlacement.Variant04a72a502c9a233bc574d744efdc5709728cd66a4bd69ecab5b23478da639917

namespace FCRS.ControlledSpherical.Theorems

/-- CS-03 projects the compact `S¹` claim from one shared witness package. -/
theorem cs03_injectiveS1VertexPlacement
    (S : RealizationSystem)
    (M : ControlledPlane.ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (registry : ControlledSphericalResearchRegistry S M SM) :
    ∃ W : ControlledSphericalWitnessPackage S M SM, CS03Claim W := by
  rcases registry.witnesses with ⟨W⟩
  exact ⟨W, W.cs03Claim⟩

end FCRS.ControlledSpherical.Theorems
