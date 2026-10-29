-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OntologyStatus.Variant7331af0662eaf96cabf1fd1f94399ef3e1b58be5c113768d75426d1a63131830","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7331af0662eaf96cabf1fd1f94399ef3e1b58be5c113768d75426d1a63131830","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.OntologyStatus.Variant7331af0662eaf96cabf1fd1f94399ef3e1b58be5c113768d75426d1a63131830","mathematical_subject":"Foundations.Unclassified","original_sha256":"7331af0662eaf96cabf1fd1f94399ef3e1b58be5c113768d75426d1a63131830","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Ontology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.Core.Ontology

Radiation role: core
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: concept.ontology
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OntologyStatus.Variant7331af0662eaf96cabf1fd1f94399ef3e1b58be5c113768d75426d1a63131830

namespace Folder
namespace Core

inductive OntologyStatus where
  | proved
  | definition
  | contract
  | theoremTarget
  | external
  | runtime
  | deprecated
deriving DecidableEq, Repr

inductive OntologyKind where
  | concept
  | leanModule
  | theorem
  | definition
  | grammar
  | representation
  | carrier
  | relation
  | contract
  | externalWitness
  | runtimeMirror
deriving DecidableEq, Repr

structure OntologyEntity where
  id : String
  label : String
  kind : OntologyKind
  status : OntologyStatus
  leanModule : String
  description : String
deriving Repr

structure OntologyRelation where
  id : String
  source : String
  target : String
  relation : String
  status : OntologyStatus
  theorem? : Option String
  description : String
deriving Repr

end Core
end Folder
