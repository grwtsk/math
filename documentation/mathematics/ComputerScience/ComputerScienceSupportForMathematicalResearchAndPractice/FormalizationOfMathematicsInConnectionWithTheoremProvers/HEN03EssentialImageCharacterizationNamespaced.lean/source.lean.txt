-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen03EssentialImageCharacterization.Varianted802ad61934afa381726cd58f835959da9642e1ad6844016e33fafad6dd326c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ed802ad61934afa381726cd58f835959da9642e1ad6844016e33fafad6dd326c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Hen03EssentialImageCharacterization.Varianted802ad61934afa381726cd58f835959da9642e1ad6844016e33fafad6dd326c","mathematical_subject":"Foundations.Unclassified","original_sha256":"ed802ad61934afa381726cd58f835959da9642e1ad6844016e33fafad6dd326c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Theorems/HEN03_EssentialImageCharacterization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Algebraization.Theorems.HEN01_ExactFullyFaithful
import FCRS.Algebraization.Theorems.HEN02_SubquotientClosure


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen03EssentialImageCharacterization.Varianted802ad61934afa381726cd58f835959da9642e1ad6844016e33fafad6dd326c

namespace FCRS.Algebraization.Theorems

/--
The independently defined algebraic-generation predicate equals membership
in the Henselian pullback essential image.
-/
theorem hen03_essentialImageCharacterization
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.henselianProfile)
    (hSource : SourceGenerated S.generators S.cohAlgEpi) :
    ∀ Y : S.categories.CohHen.Obj,
      AlgebraicallyGenerated
        S.generators
        S.cohHenEpi
        Y ↔
      EssentialImage S.functors.HenPullback Y := by
  have hExact :=
    (hen01_exactFullyFaithful S registry) hProfile
  have hClosed :=
    (hen02_subquotientClosure S registry) hProfile
  exact generatedIffEssentialImage
    S.functors.HenPullback
    S.cohAlgEpi
    S.cohHenEpi
    S.generators
    hSource
    hExact.preservesEpis
    hClosed.quotientClosed

end FCRS.Algebraization.Theorems
