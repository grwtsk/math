-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant97f8ca2f5402fa5ba2568a8d893eacf63b4504e01220044e92f2bc8751278fbd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"97f8ca2f5402fa5ba2568a8d893eacf63b4504e01220044e92f2bc8751278fbd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceUnit.Variant97f8ca2f5402fa5ba2568a8d893eacf63b4504e01220044e92f2bc8751278fbd","mathematical_subject":"Foundations.Unclassified","original_sha256":"97f8ca2f5402fa5ba2568a8d893eacf63b4504e01220044e92f2bc8751278fbd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/except.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
-- Test: core does not currently provide DecidableEq for Except.
-- If this test fails, it means core now provides DecidableEq for Except
-- and the Batteries instance in Batteries.Lean.Except should be removed.


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant97f8ca2f5402fa5ba2568a8d893eacf63b4504e01220044e92f2bc8751278fbd

/--
error: failed to synthesize instance of type class
  DecidableEq (Except ?m.1 ?m.2)

Hint: Type class instance resolution failures can be inspected with the `set_option trace.Meta.synthInstance true` command.
-/
#guard_msgs in
#check (inferInstance : DecidableEq (Except _ _))
