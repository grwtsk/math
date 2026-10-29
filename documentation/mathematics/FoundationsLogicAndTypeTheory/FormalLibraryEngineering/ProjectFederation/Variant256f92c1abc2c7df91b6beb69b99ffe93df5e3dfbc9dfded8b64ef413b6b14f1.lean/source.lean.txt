-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PreservesSourceSnapshots.Variant4709e10ebbadf10462be6f8348569c45d404fa739b2a935a8223f528323bb3e8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4709e10ebbadf10462be6f8348569c45d404fa739b2a935a8223f528323bb3e8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PreservesSourceSnapshots.Variant4709e10ebbadf10462be6f8348569c45d404fa739b2a935a8223f528323bb3e8","mathematical_subject":"Foundations.Unclassified","original_sha256":"4709e10ebbadf10462be6f8348569c45d404fa739b2a935a8223f528323bb3e8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Relaxation/ProjectFederation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Relaxation.Operator

/-!
# Project-federated relaxation invariants

Relaxation may change the overlay, but it cannot rewrite, reorder, merge, or
drop the immutable project snapshots that define its work package.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PreservesSourceSnapshots.Variant4709e10ebbadf10462be6f8348569c45d404fa739b2a935a8223f528323bb3e8

namespace Mathematics.Relaxation

namespace Operator

theorem preserves_source_snapshots
    (operator : Operator)
    (state : State) :
    (operator.step state).workPackage.sourceSnapshots =
      state.workPackage.sourceSnapshots := by
  exact congrArg WorkPackage.sourceSnapshots
    (operator.source_preserved state).2

theorem preserves_project_snapshot_keys
    (operator : Operator)
    (state : State) :
    (operator.step state).workPackage.projectSnapshots =
      state.workPackage.projectSnapshots := by
  exact congrArg WorkPackage.projectSnapshots
    (operator.source_preserved state).2

theorem preserves_source_object_scope
    (operator : Operator)
    (state : State) :
    (operator.step state).workPackage.sourceObjectIds =
      state.workPackage.sourceObjectIds := by
  exact congrArg WorkPackage.sourceObjectIds
    (operator.source_preserved state).2

end Operator

end Mathematics.Relaxation
