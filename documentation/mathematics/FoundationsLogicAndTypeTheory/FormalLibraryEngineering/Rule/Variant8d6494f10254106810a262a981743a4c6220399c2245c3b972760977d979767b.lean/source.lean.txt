-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PresentationRule.Variantee2a70846f7f3084426eac27867fb0d7c4adb7f6febef08867cffac7e36475a8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ee2a70846f7f3084426eac27867fb0d7c4adb7f6febef08867cffac7e36475a8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PresentationRule.Variantee2a70846f7f3084426eac27867fb0d7c4adb7f6febef08867cffac7e36475a8","mathematical_subject":"Foundations.Unclassified","original_sha256":"ee2a70846f7f3084426eac27867fb0d7c4adb7f6febef08867cffac7e36475a8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rule.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.Presentation.Rule

Radiation role: presentation-rule
BinaryMatrix spine: This module defines presentation rules as views over carriers, distinct from archive reconstruction rules.
Ontology: presentation.rule
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: presentation
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PresentationRule.Variantee2a70846f7f3084426eac27867fb0d7c4adb7f6febef08867cffac7e36475a8

namespace Folder
namespace Presentation

structure PresentationRule (α β : Type _) where
  name : String
  apply : α → β

def copyRule (α : Type _) : PresentationRule α α where
  name := "copy"
  apply := id

def IsFixedBy
    (R : PresentationRule α α)
    (x : α) : Prop :=
  R.apply x = x

theorem copyRule_fixed
    (x : α) :
    IsFixedBy (copyRule α) x :=
  rfl

end Presentation
end Folder
