-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LakeSetupFileOutput.Variant4920060f44a5fa54ff536d82ef58a3b6f9063d4a7881d08c25cc26b1bc57a10d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4920060f44a5fa54ff536d82ef58a3b6f9063d4a7881d08c25cc26b1bc57a10d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LakeSetupFileOutput.Variant4920060f44a5fa54ff536d82ef58a3b6f9063d4a7881d08c25cc26b1bc57a10d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4920060f44a5fa54ff536d82ef58a3b6f9063d4a7881d08c25cc26b1bc57a10d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Server/FileWorker/SetupFile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich, Marc Huisinga
-/
module

prelude
public import Lean.Server.Utils
public import Lean.Util.LakePath
public import Lean.Server.ServerTask


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LakeSetupFileOutput.Variant4920060f44a5fa54ff536d82ef58a3b6f9063d4a7881d08c25cc26b1bc57a10d

public section

open IO

namespace Lean.Server.FileWorker


structure LakeSetupFileOutput where
    spawnArgs : Process.SpawnArgs
    exitCode  : UInt32
    stdout    : String
    stderr    : String

partial def runLakeSetupFile
    (m                 : DocumentMeta)
    (lakePath filePath : System.FilePath)
    (header            : ModuleHeader)
    (handleStderr      : String → IO Unit)
    : IO LakeSetupFileOutput := do
  let mut args := #["setup-file", filePath.toString, "-"]
  if m.dependencyBuildMode matches .never then
    args := args.push "--no-build" |>.push "--no-cache"
  let spawnArgs : Process.SpawnArgs := {
    stdin  := Process.Stdio.piped
    stdout := Process.Stdio.piped
    stderr := Process.Stdio.piped
    cmd    := lakePath.toString
    args
  }
  let lakeProc ← Process.spawn spawnArgs
  let (stdin, lakeProc) ← lakeProc.takeStdin
  stdin.putStrLn (toJson header).compress

  let rec processStderr (acc : String) : IO String := do
    let line ← lakeProc.stderr.getLine
    if line == "" then
      return acc
    else
      handleStderr line
      processStderr (acc ++ line)
  let stderr ← ServerTask.IO.asTask (processStderr "")

  let stdout := String.trimAscii (← lakeProc.stdout.readToEnd) |>.copy
  let stderr ← IO.ofExcept stderr.get
  let exitCode ← lakeProc.wait
  return ⟨spawnArgs, exitCode, stdout, stderr⟩

/-- Result of running `lake setup-file`. -/
inductive FileSetupResult where
  /-- File configuration loaded and dependencies updated successfully. -/
  | success (setup : ModuleSetup)
  /-- No Lake project found, no setup was done. -/
  | noLakefile
  /-- Imports must be rebuilt but `--no-build` was specified. -/
  | importsOutOfDate
  /-- Other error during Lake invocation. -/
  | error (msg : String)

/-- Uses `lake setup-file` to compile dependencies on the fly and add them to `LEAN_PATH`.
Compilation progress is reported to `handleStderr`. Returns the search path for
source files and the options for the file. -/
partial def setupFile (m : DocumentMeta) (header : ModuleHeader) (handleStderr : String → IO Unit) : IO FileSetupResult := do
  let some filePath := System.Uri.fileUriToPath? m.uri
    | return FileSetupResult.noLakefile -- untitled files have no lakefile

  let lakePath ← determineLakePath
  if !(← System.FilePath.pathExists lakePath) then
    return FileSetupResult.noLakefile

  let result ← runLakeSetupFile m lakePath filePath header handleStderr

  let cmdStr := " ".intercalate (toString result.spawnArgs.cmd :: result.spawnArgs.args.toList)

  match result.exitCode with
  | 0 =>
    let Except.ok (setup : ModuleSetup) := Json.parse result.stdout >>= fromJson?
      | return FileSetupResult.error s!"Invalid output from `{cmdStr}`:\n{result.stdout}\nstderr:\n{result.stderr}"
    setup.dynlibs.forM loadDynlib
    return FileSetupResult.success setup
  | 2 => -- exit code for lake reporting that there is no lakefile
    return FileSetupResult.noLakefile
  | 3 => -- exit code for `--no-build`
    return FileSetupResult.importsOutOfDate
  | _ =>
    return FileSetupResult.error s!"`{cmdStr}` failed:\n{result.stdout}\nstderr:\n{result.stderr}"
