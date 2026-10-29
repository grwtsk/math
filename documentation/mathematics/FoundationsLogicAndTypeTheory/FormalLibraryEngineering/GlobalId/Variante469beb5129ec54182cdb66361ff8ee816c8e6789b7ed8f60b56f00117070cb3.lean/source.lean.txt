-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GlobalDeclarationId.Variant89d6bf1173109b9db91f087dcf473ba41ea97f4a556707c723ec6667d782219d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"89d6bf1173109b9db91f087dcf473ba41ea97f4a556707c723ec6667d782219d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.GlobalDeclarationId.Variant89d6bf1173109b9db91f087dcf473ba41ea97f4a556707c723ec6667d782219d","mathematical_subject":"Foundations.Unclassified","original_sha256":"89d6bf1173109b9db91f087dcf473ba41ea97f4a556707c723ec6667d782219d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Federation/GlobalId.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ingestion.Declaration

/-! # Project-qualified global declaration identity -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GlobalDeclarationId.Variant89d6bf1173109b9db91f087dcf473ba41ea97f4a556707c723ec6667d782219d

namespace Mathematics.Federation

/--
Global identity includes source sovereignty and revision.  Equal Lean names
from different projects remain distinct.
-/
structure GlobalDeclarationId where
  snapshot : Ecosystem.ProjectSnapshotKey
  localId : Extractor.DeclarationId
  deriving DecidableEq, Repr

def GlobalDeclarationId.ofProjectDeclaration
    (id : Ingestion.ProjectDeclarationId) : GlobalDeclarationId :=
  ⟨id.snapshot, id.localId⟩

theorem GlobalDeclarationId.project_qualification
    {left right : GlobalDeclarationId}
    (projectsDiffer :
      left.snapshot.project ≠ right.snapshot.project) :
    left ≠ right := by
  intro equal
  exact projectsDiffer
    (congrArg
      (fun declaration ↦ declaration.snapshot.project)
      equal)

/-- Equal printed names cannot erase distinct transparent occurrence keys. -/
theorem GlobalDeclarationId.same_name_does_not_collapse
    {left right : GlobalDeclarationId}
    (snapshotsDiffer : left.snapshot ≠ right.snapshot) :
    left ≠ right := by
  intro equal
  exact snapshotsDiffer
    (congrArg GlobalDeclarationId.snapshot equal)

end Mathematics.Federation
