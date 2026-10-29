-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NonvanishingIndex.Variant1d4a731b4f1a31c02d8f48b70f4baa11e50e171f9533f4d1234ed6b2c0b64bd0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1d4a731b4f1a31c02d8f48b70f4baa11e50e171f9533f4d1234ed6b2c0b64bd0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.NonvanishingIndex.Variant1d4a731b4f1a31c02d8f48b70f4baa11e50e171f9533f4d1234ed6b2c0b64bd0","mathematical_subject":"Foundations.Unclassified","original_sha256":"1d4a731b4f1a31c02d8f48b70f4baa11e50e171f9533f4d1234ed6b2c0b64bd0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineIndex/NonvanishingIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineIndex.IndexTheoremContract
import Folder.CrystallineIndex.WittValuedIndex

/-!
# Folder.CrystallineIndex.NonvanishingIndex

Radiation role: research-boundary
BinaryMatrix spine: This module records nonvanishing index contracts, not BinaryMatrix zero detection.
Ontology: crystalline_index.nonvanishing_index
Pivot role: spectral
Zero typology: l-function
Contract boundary: contract
Composite stack role: crystalline-index
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NonvanishingIndex.Variant1d4a731b4f1a31c02d8f48b70f4baa11e50e171f9533f4d1234ed6b2c0b64bd0

namespace Folder
namespace CrystallineIndex

/--
Supplied nonvanishing data for an index theorem contract.

Nonzero index alone does not prove critical-line behavior.
-/
structure NonvanishingIndex
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    (T : @CrystallineIndexTheoremContract C F nabla D H) where
  nonzeroIndex : Prop
  nonzeroIndex_certified : nonzeroIndex
  nonzeroCharacteristicClass : Prop
  nonzeroCharacteristicClass_certified : nonzeroCharacteristicClass
  nonzeroForcesKernel? : Prop
  nonzeroForcesKernel_certified? : nonzeroForcesKernel?

namespace NonvanishingIndex

theorem nonvanishing_index_nonzero
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    {T : @CrystallineIndexTheoremContract C F nabla D H}
    (N : @NonvanishingIndex C F nabla D H T) :
    N.nonzeroIndex :=
  N.nonzeroIndex_certified

theorem nonvanishing_index_forces_kernel_if_supplied
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    {T : @CrystallineIndexTheoremContract C F nabla D H}
    (N : @NonvanishingIndex C F nabla D H T) :
    N.nonzeroForcesKernel? :=
  N.nonzeroForcesKernel_certified?

end NonvanishingIndex

structure NonvanishingWittIndex
    {C : ResearchTopos.SiteCategory}
    {J : ResearchTopos.GrothendieckTopology C}
    {F : AdelicInfinityTopos.SheafOfSpectra J}
    {D : SheafSpectrumOperator F}
    {W : WittComplex}
    (I : WittValuedCrystallineIndex D W) where
  nonzero : I.Nonzero
  nonzeroForcesKernel? : Prop
  nonzeroForcesFixedTensor? : Prop

theorem nonvanishing_witt_index_nonzero
    {C : ResearchTopos.SiteCategory}
    {J : ResearchTopos.GrothendieckTopology C}
    {F : AdelicInfinityTopos.SheafOfSpectra J}
    {D : SheafSpectrumOperator F}
    {W : WittComplex}
    {I : WittValuedCrystallineIndex D W}
    (N : NonvanishingWittIndex I) :
    I.Nonzero :=
  N.nonzero

end CrystallineIndex
end Folder
