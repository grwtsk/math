-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndexClassRepresentsFormalIndex.Variant25f075e24c268631fbca84f9b40cf36774cb97503b521535bb58d654c6524e30","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"25f075e24c268631fbca84f9b40cf36774cb97503b521535bb58d654c6524e30","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.IndexClassRepresentsFormalIndex.Variant25f075e24c268631fbca84f9b40cf36774cb97503b521535bb58d654c6524e30","mathematical_subject":"Foundations.Unclassified","original_sha256":"25f075e24c268631fbca84f9b40cf36774cb97503b521535bb58d654c6524e30","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CrystallineIndex/IndexClass.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineIndex.IndexClass

/-!
# Folder.Theorem.CrystallineIndex.IndexClass

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports index-class contract exposure facts.
Ontology: proof.crystalline_index.index_class
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndexClassRepresentsFormalIndex.Variant25f075e24c268631fbca84f9b40cf36774cb97503b521535bb58d654c6524e30

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace IndexClass

theorem index_class_represents_formal_index
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    {H : Folder.CrystallineIndex.CohomologyTheory}
    (I : Folder.CrystallineIndex.CrystallineIndexClass D H) :
    I.representsFormalIndex :=
  Folder.CrystallineIndex.index_class_represents_formal_index I

theorem crystalline_index_class_in_witt_is_index
    {C : Folder.ResearchTopos.SiteCategory}
    {J : Folder.ResearchTopos.GrothendieckTopology C}
    {F : Folder.AdelicInfinityTopos.SheafOfSpectra J}
    {D : Folder.CrystallineIndex.SheafSpectrumOperator F}
    {W : Folder.CrystallineIndex.WittComplex}
    (I : Folder.CrystallineIndex.CrystallineIndexClassInWitt D W) :
    I.isCrystallineIndex :=
  Folder.CrystallineIndex.crystalline_index_class_in_witt_is_index I

end IndexClass
end CrystallineIndex
end Theorem
end Folder
