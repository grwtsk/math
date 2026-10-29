-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuthorityLevel.Variant748ccb7987e6c0b49c75a462b9e53bb192493630b2615db3f1bf1a251e894bcc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"748ccb7987e6c0b49c75a462b9e53bb192493630b2615db3f1bf1a251e894bcc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AuthorityLevel.Variant748ccb7987e6c0b49c75a462b9e53bb192493630b2615db3f1bf1a251e894bcc","mathematical_subject":"Foundations.Unclassified","original_sha256":"748ccb7987e6c0b49c75a462b9e53bb192493630b2615db3f1bf1a251e894bcc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit0/Bit1/Bit1/Bit0/Bit1/Bit0/Bit1/M496d706f7274732f417574686f726974794c6576656c2e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

/- source-tree-label: STL1|L|addr=10110101|role=proof_code_atom|slug=imports-authoritylevel|owner=canonical_owner|core=Imports/AuthorityLevel.lean|leaf=M496d706f7274732f417574686f726974794c6576656c2e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuthorityLevel.Variant748ccb7987e6c0b49c75a462b9e53bb192493630b2615db3f1bf1a251e894bcc

set_option autoImplicit false

namespace Think.Imports

inductive AuthorityLevel where
  | metadata
  | statementSurface
  | sourceReference
  | importedTheorem
  | adaptedTheorem
  | transferTheorem
  | internalProof
deriving DecidableEq, Repr

end Think.Imports
