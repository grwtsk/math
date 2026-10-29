-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineIndexClass.Variant992bc97ea45b6f8dbce827200d3818b2714d8c3bfbe595a6cbdf8ce97d7a0020","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"992bc97ea45b6f8dbce827200d3818b2714d8c3bfbe595a6cbdf8ce97d7a0020","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CrystallineIndexClass.Variant992bc97ea45b6f8dbce827200d3818b2714d8c3bfbe595a6cbdf8ce97d7a0020","mathematical_subject":"Foundations.Unclassified","original_sha256":"992bc97ea45b6f8dbce827200d3818b2714d8c3bfbe595a6cbdf8ce97d7a0020","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineIndex/IndexClass.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineIndex.KernelCokernel
import Folder.CrystallineIndex.CohomologyClass
import Folder.CrystallineIndex.WittValuedIndex

/-!
# Folder.CrystallineIndex.IndexClass

Radiation role: research-boundary
BinaryMatrix spine: This module records cohomology-valued index classes, not integer BinaryMatrix invariants.
Ontology: crystalline_index.index_class
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineIndexClass.Variant992bc97ea45b6f8dbce827200d3818b2714d8c3bfbe595a6cbdf8ce97d7a0020

namespace Folder
namespace CrystallineIndex

/--
Cohomology-class-valued formal index for a supplied Dirac-type operator.

The index is not assumed to be an integer; it lives in the supplied cohomology
theory.
-/
structure CrystallineIndexClass
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    (D : CrystallineDiracOperator nabla)
    (H : CohomologyTheory) where
  indexCohomologyClass : CohomologyClass H
  kernelCokernel : KernelCokernelData D
  representsFormalIndex : Prop
  representsFormalIndex_certified : representsFormalIndex
  label : String

theorem index_class_represents_formal_index
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    (I : CrystallineIndexClass D H) :
    I.representsFormalIndex :=
  I.representsFormalIndex_certified

/--
Compatibility layer for the preferred Witt-complex-valued index object.
-/
structure CrystallineIndexClassInWitt
    {C : ResearchTopos.SiteCategory}
    {J : ResearchTopos.GrothendieckTopology C}
    {F : AdelicInfinityTopos.SheafOfSpectra J}
    (D : SheafSpectrumOperator F)
    (W : WittComplex) where
  wittIndex : WittValuedCrystallineIndex D W
  isCrystallineIndex : Prop
  isCrystallineIndex_certified : isCrystallineIndex

theorem crystalline_index_class_in_witt_is_index
    {C : ResearchTopos.SiteCategory}
    {J : ResearchTopos.GrothendieckTopology C}
    {F : AdelicInfinityTopos.SheafOfSpectra J}
    {D : SheafSpectrumOperator F}
    {W : WittComplex}
    (I : CrystallineIndexClassInWitt D W) :
    I.isCrystallineIndex :=
  I.isCrystallineIndex_certified

end CrystallineIndex
end Folder
