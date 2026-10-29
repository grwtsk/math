-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSorry.Variant15a137bf7821eecfdfb7171b6af602735aabbf61ddae864ee284d0590d88b4e9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"15a137bf7821eecfdfb7171b6af602735aabbf61ddae864ee284d0590d88b4e9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.TestSorry.Variant15a137bf7821eecfdfb7171b6af602735aabbf61ddae864ee284d0590d88b4e9","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"15a137bf7821eecfdfb7171b6af602735aabbf61ddae864ee284d0590d88b4e9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/exfalso.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Tactic.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSorry.Variant15a137bf7821eecfdfb7171b6af602735aabbf61ddae864ee284d0590d88b4e9

private axiom test_sorry : ∀ {α}, α

example {A} (h : False) : A := by
  exfalso
  exact h

example {A} : False → A := by
  exfalso
  show False -- exfalso is not supposed to close the goal yet
  exact test_sorry
