-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BadContainsSorry.Variante787eb57f674aaf3e837c4723b89798e4ce6b1f933f1ebd409eb29fbf3fb6669","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e787eb57f674aaf3e837c4723b89798e4ce6b1f933f1ebd409eb29fbf3fb6669","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BadContainsSorry.Variante787eb57f674aaf3e837c4723b89798e4ce6b1f933f1ebd409eb29fbf3fb6669","mathematical_subject":"Foundations.Unclassified","original_sha256":"e787eb57f674aaf3e837c4723b89798e4ce6b1f933f1ebd409eb29fbf3fb6669","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/importGraph/ImportGraphTest/WithSorry/Thm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BadContainsSorry.Variante787eb57f674aaf3e837c4723b89798e4ce6b1f933f1ebd409eb29fbf3fb6669

/-- warning: declaration uses `sorry` -/
#guard_msgs in
theorem bad_contains_sorry : True := by
  have x : True := sorry
  exact True.intro
