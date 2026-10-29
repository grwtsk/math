-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExpectedMathlibRev.Variantc901eb734b279f7f6219868bed83b41b17d5a5342fe54f5de0a0dec47a878be7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c901eb734b279f7f6219868bed83b41b17d5a5342fe54f5de0a0dec47a878be7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.ExpectedMathlibRev.Variantc901eb734b279f7f6219868bed83b41b17d5a5342fe54f5de0a0dec47a878be7","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"c901eb734b279f7f6219868bed83b41b17d5a5342fe54f5de0a0dec47a878be7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/CheckCompat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import Lean.Data.Json

/-!
# Mathlib Compatibility Checker

A simple tool to check if the current project's Mathlib version matches LeanCert's expected version.
Run with: `lake exe check-compat`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExpectedMathlibRev.Variantc901eb734b279f7f6219868bed83b41b17d5a5342fe54f5de0a0dec47a878be7

open System

/-- LeanCert's expected Mathlib version -/
def expectedMathlibRev : String := "v4.27.0-rc1"
def expectedMathlibCommit : String := "32d24245c7a12ded17325299fd41d412022cd3fe"

/-- Extract mathlib rev from lake-manifest.json content -/
def extractMathlibRev (content : String) : Option (String × String) := do
  let json ← Lean.Json.parse content |>.toOption
  let packages ← json.getObjVal? "packages" |>.toOption
  let arr ← packages.getArr? |>.toOption
  for pkg in arr do
    let name ← pkg.getObjValAs? String "name" |>.toOption
    if name == "mathlib" then
      let rev ← pkg.getObjValAs? String "rev" |>.toOption
      let inputRev := pkg.getObjValAs? String "inputRev" |>.toOption |>.getD rev
      return (rev, inputRev)
  none

def main (args : List String) : IO UInt32 := do
  -- Find lake-manifest.json - check current dir and parent dirs
  let mut manifestPath : Option FilePath := none
  let mut searchDir := (← IO.currentDir)

  for _ in [0:10] do  -- Search up to 10 levels
    let candidate := searchDir / "lake-manifest.json"
    if ← candidate.pathExists then
      manifestPath := some candidate
      break
    let parent := searchDir / ".."
    if parent == searchDir then break
    searchDir := parent

  match manifestPath with
  | none =>
    IO.eprintln "Error: Could not find lake-manifest.json"
    IO.eprintln "Make sure you're in a Lake project directory and have run 'lake update'"
    return 1
  | some path =>
    let content ← IO.FS.readFile path
    match extractMathlibRev content with
    | none =>
      IO.eprintln "Error: Could not find mathlib in lake-manifest.json"
      IO.eprintln "Make sure your project depends on mathlib"
      return 1
    | some (commit, inputRev) =>
      let isCompatible := commit == expectedMathlibCommit || inputRev == expectedMathlibRev

      if args.contains "--json" then
        -- JSON output for programmatic use
        let result := Lean.Json.mkObj [
          ("compatible", Lean.Json.bool isCompatible),
          ("expected_rev", Lean.Json.str expectedMathlibRev),
          ("expected_commit", Lean.Json.str expectedMathlibCommit),
          ("found_rev", Lean.Json.str inputRev),
          ("found_commit", Lean.Json.str commit)
        ]
        IO.println result.compress
      else
        -- Human-readable output
        IO.println "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        IO.println "  LeanCert Mathlib Compatibility Check"
        IO.println "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        IO.println s!"  LeanCert expects: {expectedMathlibRev}"
        IO.println s!"  Your project has: {inputRev}"
        if commit != inputRev then
          IO.println s!"  (commit: {commit.take 12}...)"
        IO.println ""

        if isCompatible then
          IO.println "  ✓ Versions match! You're good to go."
        else
          IO.println "  ✗ Version mismatch detected!"
          IO.println ""
          IO.println "  To fix, either:"
          IO.println s!"  1. Set mathlib rev to '{expectedMathlibRev}' in your lakefile.toml"
          IO.println "  2. Or update lake-manifest.json mathlib entry to match"
          IO.println ""
          IO.println "  Then run: rm -rf .lake && lake update && lake build"

        IO.println "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

      return if isCompatible then 0 else 1
