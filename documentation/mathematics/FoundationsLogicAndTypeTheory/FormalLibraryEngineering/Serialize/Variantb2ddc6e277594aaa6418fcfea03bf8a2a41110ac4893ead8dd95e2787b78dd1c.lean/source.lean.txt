-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WriteTrace.Variantb88fa8b5cfc03935e2e6e27b5ca58521eff48ec904f8f3e5e253d75aab0a33d2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b88fa8b5cfc03935e2e6e27b5ca58521eff48ec904f8f3e5e253d75aab0a33d2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.WriteTrace.Variantb88fa8b5cfc03935e2e6e27b5ca58521eff48ec904f8f3e5e253d75aab0a33d2","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"b88fa8b5cfc03935e2e6e27b5ca58521eff48ec904f8f3e5e253d75aab0a33d2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/tools/LeanSource/Serialize.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import tools.LeanSource.Frontend


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WriteTrace.Variantb88fa8b5cfc03935e2e6e27b5ca58521eff48ec904f8f3e5e253d75aab0a33d2

public section

/-! # Canonical raw trace serialization -/

open Lean

namespace MathematicsLeanSource

def writeTrace (path : System.FilePath) (trace : RawTrace) : IO Unit := do
  if let some parent := path.parent then
    IO.FS.createDirAll parent
  IO.FS.writeFile path ((toJson trace).compress ++ "\n")

end MathematicsLeanSource
