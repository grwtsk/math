-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TotalSpace.Variant007e3a9a340c568885b45fd86106fb9323d2bf515fda2c277ad0c72de16d65ac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"007e3a9a340c568885b45fd86106fb9323d2bf515fda2c277ad0c72de16d65ac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TotalSpace.Variant007e3a9a340c568885b45fd86106fb9323d2bf515fda2c277ad0c72de16d65ac","mathematical_subject":"Foundations.Unclassified","original_sha256":"007e3a9a340c568885b45fd86106fb9323d2bf515fda2c277ad0c72de16d65ac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Fiber/TotalSpace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Fiber.Bundle

/-!
# Folder.Fiber.TotalSpace

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: fiber.total_space
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TotalSpace.Variant007e3a9a340c568885b45fd86106fb9323d2bf515fda2c277ad0c72de16d65ac

namespace Folder
namespace Fiber

universe u v

def TotalSpace {Base : Type u} (B : Bundle.{u, v} Base) :
    Type (max u v) :=
  Σ b : Base, B.Fiber b

def projection {Base : Type u} (B : Bundle.{u, v} Base) :
    TotalSpace B → Base :=
  Sigma.fst

@[simp]
theorem projection_mk {Base : Type u}
    (B : Bundle.{u, v} Base)
    (b : Base)
    (x : B.Fiber b) :
    projection B ⟨b, x⟩ = b :=
  rfl

end Fiber
end Folder
