-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen05HsgCriterion.Variantfeea90707c3976e900ce9c55c5463eb0da0baa164f934b3fa2fdc8f06a590bdd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"feea90707c3976e900ce9c55c5463eb0da0baa164f934b3fa2fdc8f06a590bdd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Hen05HsgCriterion.Variantfeea90707c3976e900ce9c55c5463eb0da0baa164f934b3fa2fdc8f06a590bdd","mathematical_subject":"Foundations.Unclassified","original_sha256":"feea90707c3976e900ce9c55c5463eb0da0baa164f934b3fa2fdc8f06a590bdd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Theorems/HEN05_HSGCriterion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Algebraization.Theorems.HEN03_EssentialImageCharacterization


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen05HsgCriterion.Variantfeea90707c3976e900ce9c55c5463eb0da0baa164f934b3fa2fdc8f06a590bdd

namespace FCRS.Algebraization.Theorems

/--
Unrestricted essential surjectivity is equivalent to Henselian Serre
generation, after the scoped essential-image characterization is available.
-/
theorem hen05_hsgCriterion
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.henselianProfile)
    (hSource : SourceGenerated S.generators S.cohAlgEpi) :
    EssentiallySurjective S.functors.HenPullback ↔
    HenselianSerreGeneration S.generators S.cohHenEpi := by
  have hCharacterization :=
    hen03_essentialImageCharacterization
      S registry hProfile hSource
  constructor
  · intro hEssential Y
    exact (hCharacterization Y).mpr (hEssential Y)
  · intro hHSG Y
    exact (hCharacterization Y).mp (hHSG Y)

end FCRS.Algebraization.Theorems
