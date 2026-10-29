-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant0b65510482b8e4eefb1250b0a495f1f4a75b46d061d481b339b6b2feb0011059","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b65510482b8e4eefb1250b0a495f1f4a75b46d061d481b339b6b2feb0011059","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Foo.Variant0b65510482b8e4eefb1250b0a495f1f4a75b46d061d481b339b6b2feb0011059","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0b65510482b8e4eefb1250b0a495f1f4a75b46d061d481b339b6b2feb0011059","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/126.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant0b65510482b8e4eefb1250b0a495f1f4a75b46d061d481b339b6b2feb0011059

set_option aesop.check.all true

-- TODO simp_all introduces spurious metavariables in this example
set_option aesop.check.rules false
set_option aesop.check.tree false

theorem foo {a : Nat → Nat} (ha : a 0 = 37) :
    (match h : a 0 with | 42 => by simp_all | n => n) = 37 := by
  aesop
