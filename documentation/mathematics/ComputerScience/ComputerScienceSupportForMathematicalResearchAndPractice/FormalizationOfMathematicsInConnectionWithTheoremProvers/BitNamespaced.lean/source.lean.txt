-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bit.Variantaf45a827a95c67ba200b7e4ca5e73717296069050970fd073f9740369e475ae7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"af45a827a95c67ba200b7e4ca5e73717296069050970fd073f9740369e475ae7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Bit.Variantaf45a827a95c67ba200b7e4ca5e73717296069050970fd073f9740369e475ae7","mathematical_subject":"Foundations.Unclassified","original_sha256":"af45a827a95c67ba200b7e4ca5e73717296069050970fd073f9740369e475ae7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Carrier/Bit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.Carrier.Bit

Radiation role: core-carrier
BinaryMatrix spine: This module sits on or immediately beside Folder.Carrier.BinaryMatrix as finite carrier infrastructure for the radiation program.
Ontology: carrier.bit
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: carrier
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bit.Variantaf45a827a95c67ba200b7e4ca5e73717296069050970fd073f9740369e475ae7

namespace Folder
namespace Carrier

abbrev Bit := ZMod 2

namespace Bit

def zero : Bit := 0
def one : Bit := 1
def flip (b : Bit) : Bit := b + 1

@[simp]
theorem flip_ne_self (b : Bit) : flip b ≠ b := by
  intro h
  have h1 : (1 : Bit) = 0 := by
    have hc := congrArg (fun x : Bit => x - b) h
    simp [flip] at hc
  norm_num at h1

@[simp]
theorem flip_flip (b : Bit) : flip (flip b) = b := by
  unfold flip
  have htwo : (1 : Bit) + 1 = 0 := by
    change ((2 : Nat) : Bit) = 0
    exact ZMod.natCast_self 2
  rw [add_assoc, htwo, add_zero]

end Bit
end Carrier
end Folder
