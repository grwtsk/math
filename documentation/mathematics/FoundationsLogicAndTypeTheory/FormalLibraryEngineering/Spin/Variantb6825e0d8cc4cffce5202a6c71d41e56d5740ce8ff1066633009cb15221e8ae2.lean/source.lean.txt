-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RectSpin.Variant4da98d91020f06faa960642ef3e0bf3f7ac4dcb8ffa83abd5d029491af75dbbf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4da98d91020f06faa960642ef3e0bf3f7ac4dcb8ffa83abd5d029491af75dbbf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RectSpin.Variant4da98d91020f06faa960642ef3e0bf3f7ac4dcb8ffa83abd5d029491af75dbbf","mathematical_subject":"Foundations.Unclassified","original_sha256":"4da98d91020f06faa960642ef3e0bf3f7ac4dcb8ffa83abd5d029491af75dbbf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Archive/Spin.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.Archive.Spin

Radiation role: archive-symmetry
BinaryMatrix spine: This module names finite matrix spins used by symbolic BinaryMatrix archive references.
Ontology: archive.spin
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: carrier
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RectSpin.Variant4da98d91020f06faa960642ef3e0bf3f7ac4dcb8ffa83abd5d029491af75dbbf

namespace Folder
namespace Archive

inductive RectSpin where
  | id
  | flipRows
  | flipCols
  | rotate180
deriving DecidableEq, Repr

namespace RectSpin

def render : RectSpin → String
  | id => "id"
  | flipRows => "flipRows"
  | flipCols => "flipCols"
  | rotate180 => "rotate180"

def parse? : String → Option RectSpin
  | "id" => some id
  | "flipRows" => some flipRows
  | "flipCols" => some flipCols
  | "rotate180" => some rotate180
  | _ => none

theorem parse?_render
    (s : RectSpin) :
    parse? (render s) = some s := by
  cases s <;> rfl

theorem render_injective
    {a b : RectSpin}
    (h : render a = render b) :
    a = b := by
  cases a <;> cases b <;> simp [render] at h ⊢

def inverse : RectSpin → RectSpin
  | id => id
  | flipRows => flipRows
  | flipCols => flipCols
  | rotate180 => rotate180

end RectSpin
end Archive
end Folder
