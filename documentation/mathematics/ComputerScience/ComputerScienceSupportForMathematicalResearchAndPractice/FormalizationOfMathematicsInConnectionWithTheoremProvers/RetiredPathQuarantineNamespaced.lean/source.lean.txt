-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RetiredPathQuarantine.Variant2dbb0cbf7df9fa0ec68645477d6d318b130ad00cb897f68c7d8d59206bb05d07","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2dbb0cbf7df9fa0ec68645477d6d318b130ad00cb897f68c7d8d59206bb05d07","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RetiredPathQuarantine.Variant2dbb0cbf7df9fa0ec68645477d6d318b130ad00cb897f68c7d8d59206bb05d07","mathematical_subject":"Foundations.Unclassified","original_sha256":"2dbb0cbf7df9fa0ec68645477d6d318b130ad00cb897f68c7d8d59206bb05d07","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit1/Bit1/Bit1/Bit1/Bit0/Bit1/Bit0/M56616c69646174696f6e2f526574697265645061746851756172616e74696e652e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

/- source-tree-label: STL1|L|addr=01111010|role=proof_code_atom|slug=validation-retiredpathquarantine|owner=canonical_owner|core=Validation/RetiredPathQuarantine.lean|leaf=M56616c69646174696f6e2f526574697265645061746851756172616e74696e652e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RetiredPathQuarantine.Variant2dbb0cbf7df9fa0ec68645477d6d318b130ad00cb897f68c7d8d59206bb05d07

set_option autoImplicit false

namespace Think.Compact

structure RetiredPathQuarantine where
  historicalVocabularyOnly : Bool
  noExternalAuthority : Bool
  compactFacadeRequired : Bool
deriving Repr

def defaultRetiredPathQuarantine : RetiredPathQuarantine :=
  { historicalVocabularyOnly := true
    noExternalAuthority := true
    compactFacadeRequired := true }

theorem retiredPathQuarantine_noExternalAuthority :
    defaultRetiredPathQuarantine.noExternalAuthority = true := by
  rfl

theorem retiredPathQuarantine_facadeRequired :
    defaultRetiredPathQuarantine.compactFacadeRequired = true := by
  rfl

end Think.Compact
