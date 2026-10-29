-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AccessStatus.Variant97678cdd55830438091f5fe6d1dafdc7f9e5cbcf1f8e92da9fd804f2b7bb1c83","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"97678cdd55830438091f5fe6d1dafdc7f9e5cbcf1f8e92da9fd804f2b7bb1c83","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AccessStatus.Variant97678cdd55830438091f5fe6d1dafdc7f9e5cbcf1f8e92da9fd804f2b7bb1c83","mathematical_subject":"Foundations.Unclassified","original_sha256":"97678cdd55830438091f5fe6d1dafdc7f9e5cbcf1f8e92da9fd804f2b7bb1c83","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CanonicalPath/Literature/Paper.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Folder.CanonicalPath.Literature.Paper

Radiation role: research-boundary
BinaryMatrix spine: This module records literature references, not BinaryMatrix data.
Ontology: canonical.literature_compendium
Pivot role: none
Zero typology: none
Contract boundary: external-witness
Composite stack role: canonical-path
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AccessStatus.Variant97678cdd55830438091f5fe6d1dafdc7f9e5cbcf1f8e92da9fd804f2b7bb1c83

namespace Folder
namespace CanonicalPath
namespace Literature

inductive AccessStatus where
  | open
  | paywalled
  | mixed
  | external
  | unknown
deriving DecidableEq, Repr

inductive AdaptationGap where
  | small
  | smallMedium
  | medium
  | mediumHigh
  | high
  | veryHigh
  | extreme
deriving DecidableEq, Repr

inductive PaperRole where
  | familyIndex
  | determinantOfCohomology
  | moduliStack
  | baseChange
  | deformationInvariance
  | analyticHeatFlow
  | continuationMap
  | superconnection
  | apsBoundary
  | categoricalTrace
  | crystallineComparison
  | prismaticComparison
  | spectralRealization
  | explicitFormula
  | survey
deriving DecidableEq, Repr

structure PaperReference where
  key : String
  title : String
  authors : String
  role : PaperRole
  access : AccessStatus
  gap : AdaptationGap
  phase : String
  whyRelevant : String
  remainingGap : String

theorem paper_has_title
    (P : PaperReference) :
    ∃ t, P.title = t :=
  ⟨P.title, rfl⟩

theorem paper_has_remaining_gap
    (P : PaperReference) :
    ∃ g, P.remainingGap = g :=
  ⟨P.remainingGap, rfl⟩

end Literature
end CanonicalPath
end Folder
