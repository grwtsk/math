-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedTensorFromNonzeroIndex.Varianta175f80385852ad236e22b363833f2ae4340dfb6d3e3a0a73883dead96887b53","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a175f80385852ad236e22b363833f2ae4340dfb6d3e3a0a73883dead96887b53","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FixedTensorFromNonzeroIndex.Varianta175f80385852ad236e22b363833f2ae4340dfb6d3e3a0a73883dead96887b53","mathematical_subject":"Foundations.Unclassified","original_sha256":"a175f80385852ad236e22b363833f2ae4340dfb6d3e3a0a73883dead96887b53","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CrystallineIndex/IndexFixedTensorBridge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineIndex.IndexFixedTensorBridge

/-!
# Folder.Theorem.CrystallineIndex.IndexFixedTensorBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports index-to-fixed-tensor bridge facts.
Ontology: proof.crystalline_index.index_fixed_tensor_bridge
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedTensorFromNonzeroIndex.Varianta175f80385852ad236e22b363833f2ae4340dfb6d3e3a0a73883dead96887b53

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace IndexFixedTensorBridge

theorem fixed_tensor_from_nonzero_index
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {Hflow : Folder.CrystallineTensor.HeatFlowAction F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    {H : Folder.CrystallineIndex.CohomologyTheory}
    {T : @Folder.CrystallineIndex.CrystallineIndexTheoremContract C F nabla D H}
    {N : @Folder.CrystallineIndex.NonvanishingIndex C F nabla D H T}
    (B : @Folder.CrystallineIndex.IndexToFixedTensorBridge C F nabla Hflow e D H T N)
    (hN : N.nonzeroIndex) :
    ∃ _ :
      Folder.CrystallineTensor.FixedTensor nabla e B.fixedPointContract.object,
      True :=
  Folder.CrystallineIndex.IndexFixedTensorBridge.fixed_tensor_from_nonzero_index B hN

end IndexFixedTensorBridge
end CrystallineIndex
end Theorem
end Folder
