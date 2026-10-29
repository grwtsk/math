-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variant5784fcd5ea9a410f5a27d58b81fd5e3073be8a153db0e9148f8a724e4d1115af","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5784fcd5ea9a410f5a27d58b81fd5e3073be8a153db0e9148f8a724e4d1115af","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Main.Variant5784fcd5ea9a410f5a27d58b81fd5e3073be8a153db0e9148f8a724e4d1115af","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5784fcd5ea9a410f5a27d58b81fd5e3073be8a153db0e9148f8a724e4d1115af","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/.quarentine/formal/Formal/ManifestCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean

/-!
Lake executable wrapper for the Rust Matriciant Formal regrowth checker.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variant5784fcd5ea9a410f5a27d58b81fd5e3073be8a153db0e9148f8a724e4d1115af

def main : IO UInt32 := do
  let output <- IO.Process.output {
    cmd := "cargo"
    args := #[
      "run", "-q",
      "--manifest-path", "../../Cargo.toml",
      "--bin", "formal_manifest_check",
      "--",
      "--root", ".",
      "--check"
    ]
  }
  if !output.stdout.isEmpty then
    IO.print output.stdout
  if !output.stderr.isEmpty then
    IO.eprint output.stderr
  return output.exitCode
