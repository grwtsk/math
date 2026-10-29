-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Path.Variant3086222c5f42667559ac9df2e8f0cc13d7b4dc69959c1553e60e9c8cf998a6c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3086222c5f42667559ac9df2e8f0cc13d7b4dc69959c1553e60e9c8cf998a6c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Path.Variant3086222c5f42667559ac9df2e8f0cc13d7b4dc69959c1553e60e9c8cf998a6c6","mathematical_subject":"Foundations.Unclassified","original_sha256":"3086222c5f42667559ac9df2e8f0cc13d7b4dc69959c1553e60e9c8cf998a6c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Monodromy/Path.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.Monodromy.Path

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: monodromy.path
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: torsion
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Path.Variant3086222c5f42667559ac9df2e8f0cc13d7b4dc69959c1553e60e9c8cf998a6c6

namespace Folder
namespace Monodromy

universe u

inductive Path {Base : Type u}
    (Step : Base → Base → Prop) :
    Base → Base → Type u where
  | nil : Path Step b b
  | cons : Step a b → Path Step b c → Path Step a c

namespace Path

def append {Base : Type u}
    {Step : Base → Base → Prop}
    {a b c : Base}
    (p : Path Step a b)
    (q : Path Step b c) :
    Path Step a c :=
  match p with
  | nil => q
  | cons e rest => cons e (append rest q)

@[simp]
theorem append_nil {Base : Type u}
    {Step : Base → Base → Prop}
    {a b : Base}
    (p : Path Step a b) :
    p.append Path.nil = p := by
  induction p with
  | nil => rfl
  | cons e rest ih =>
      simp [append, ih]

@[simp]
theorem nil_append {Base : Type u}
    {Step : Base → Base → Prop}
    {a b : Base}
    (p : Path Step a b) :
    (Path.nil : Path Step a a).append p = p :=
  rfl

end Path
end Monodromy
end Folder
