-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant6eb876cad4e20086875a4b49f8976f5af5dd76181ff79acd0916ba45e3b85a21","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6eb876cad4e20086875a4b49f8976f5af5dd76181ff79acd0916ba45e3b85a21","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceUnit.Variant6eb876cad4e20086875a4b49f8976f5af5dd76181ff79acd0916ba45e3b85a21","mathematical_subject":"Foundations.Unclassified","original_sha256":"6eb876cad4e20086875a4b49f8976f5af5dd76181ff79acd0916ba45e3b85a21","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/LibrarySearch/mathlib.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib

-- We verify that `exact?` copes with all of Mathlib.
-- On `v4.7.0-rc1` this revealed a cache corruption problem.


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant6eb876cad4e20086875a4b49f8976f5af5dd76181ff79acd0916ba45e3b85a21

/-- info: Try this: exact Nat.one_pos -/
#guard_msgs in
example : 0 < 1 := by exact?
