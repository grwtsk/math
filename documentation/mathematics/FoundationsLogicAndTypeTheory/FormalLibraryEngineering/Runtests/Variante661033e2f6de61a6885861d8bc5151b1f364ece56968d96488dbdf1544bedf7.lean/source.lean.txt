-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestConfig.Variant8540bee573b302716dc3db78845229e3f6df20e3df962b342dd42d780848177c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8540bee573b302716dc3db78845229e3f6df20e3df962b342dd42d780848177c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.TestConfig.Variant8540bee573b302716dc3db78845229e3f6df20e3df962b342dd42d780848177c","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"8540bee573b302716dc3db78845229e3f6df20e3df962b342dd42d780848177c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/artifacts/comparator-206/runtests.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean

/-!
# Comparator Test Runner

Runs integration tests for the comparator from `tests/projects/`.
Each test project is a directory containing:
- `Challenge.lean` / `Solution.lean`: the Lean source files
- `config.json`: the comparator configuration
- `test.json`: expected exit code, e.g. `{"exit_code": 0}` for a passing test
- (optional) `lakefile.toml`: custom lake configuration; a default is generated if absent

## Usage

```bash
# Run all tests
lean --run runtests.lean

# Run only tests whose name contains "simple" or "def_hole"
lean --run runtests.lean simple def_hole
```
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestConfig.Variant8540bee573b302716dc3db78845229e3f6df20e3df962b342dd42d780848177c

open Lean System.FilePath IO.FS IO.Process System

structure TestConfig where
  exit_code : Nat
  deriving FromJson, ToJson

inductive TestResult
  | success (projectName : String)
  | failure (projectName : String) (expected : Nat) (actual : Nat)
  | error (projectName : String) (message : String)

def copyFile (src : FilePath) (dst : FilePath) : IO Unit := do
  let contents ← IO.FS.readBinFile src
  IO.FS.writeBinFile dst contents

partial def copyDirContents (src : FilePath) (dst : FilePath) : IO Unit := do
  let entries ← System.FilePath.readDir src
  for entry in entries do
    let srcPath := entry.path
    let relativeName := entry.fileName
    let dstPath := dst / relativeName

    if (← srcPath.isDir) then
      IO.FS.createDirAll dstPath
      copyDirContents srcPath dstPath
    else
      copyFile srcPath dstPath

def createAdditionalFiles (dir : FilePath) : IO Unit := do
  -- Only generate a default lakefile if the test project doesn't provide its own
  if !(← (dir / "lakefile.toml").pathExists) then
    let lakefileContent :=
"
name = \"comparatortest\"
version = \"0.1.0\"

[[lean_lib]]
name = \"Solution\"

[[lean_lib]]
name = \"Challenge\"
"
    IO.FS.writeFile (dir / "lakefile.toml") lakefileContent

def runCommandInDir (dir : FilePath) (cmd : String) (args : Array String) : IO Nat := do
  let output ← IO.Process.spawn {
    cmd := cmd
    args := args
    cwd := some dir
  }
  let exitCode ← output.wait
  pure exitCode.toNat

def readTestConfig (configPath : FilePath) : IO TestConfig := do
  let content ← IO.FS.readFile configPath
  match Lean.Json.parse content with
  | .error e => throw <| IO.userError s!"Failed to parse JSON: {e}"
  | .ok json =>
    match Lean.fromJson? json with
    | .error e => throw <| IO.userError s!"Failed to decode config: {e}"
    | .ok cfg => pure cfg

def getTempDir : IO FilePath := do
  return "/tmp" / s!"lean_test_{← IO.rand 0 999999}"

def runTestProject (projectPath : FilePath) (projectName : String) (testsDir : FilePath)
    (comparatorPath : FilePath) : IO TestResult := do
  try
    let configPath := projectPath / "test.json"
    let config ← readTestConfig configPath

    let tempDir ← getTempDir
    IO.FS.createDirAll tempDir

    copyDirContents projectPath tempDir

    copyFile "lean-toolchain" (tempDir / "lean-toolchain")

    createAdditionalFiles tempDir

    let exitCode ← runCommandInDir tempDir "lake" #["env", comparatorPath.toString, "config.json"]

    IO.FS.removeDirAll tempDir

    if exitCode == config.exit_code then
      return TestResult.success projectName
    else
      return TestResult.failure projectName config.exit_code exitCode

  catch e =>
    try
      let tempDir ← getTempDir
      if (← tempDir.pathExists) then
        IO.FS.removeDirAll tempDir
    catch _ =>
      pure ()
    return TestResult.error projectName e.toString

def findProjects (testsDir : FilePath) : IO (Array FilePath) := do
  let projectsDir := testsDir / "projects"
  if !(← projectsDir.pathExists) then
    throw <| IO.userError s!"Projects directory not found: {projectsDir}"

  let entries ← System.FilePath.readDir projectsDir
  let mut projects := #[]
  for entry in entries do
    if (← entry.path.isDir) then
      projects := projects.push entry.path
  pure projects

def printTestResult (result : TestResult) : IO Unit := do
  match result with
  | .success name =>
    IO.println s!"✓ {name}: PASSED"
  | .failure name expected actual =>
    IO.println s!"✗ {name}: FAILED (expected exit code {expected}, got {actual})"
  | .error name msg =>
    IO.println s!"✗ {name}: ERROR - {msg}"

/-- Run comparator integration tests. When `args` is non-empty, only tests whose
project name contains one of the given strings (as a substring) are executed. -/
def main (args : List String) : IO UInt32 := do
  let testsDir : FilePath := "tests"
  let filters := args

  IO.println "# Running tests\n"

  let allProjects ← findProjects testsDir

  let projects := if filters.isEmpty then
    allProjects
  else
    allProjects.filter fun p => filters.any (p.fileName.get!.contains ·)

  if projects.isEmpty then
    if filters.isEmpty then
      IO.println "No projects found!"
    else
      IO.println s!"No projects matching {filters} found!"
    return 1

  let comparatorPath ← IO.FS.realPath <| ".lake" / "build" / "bin" / "comparator"

  let mut allPassed := true
  let mut results := #[]
  for projectPath in projects do
    let projectName := projectPath.fileName.get!
    IO.println s!"\n## Running test: {projectName}\n"
    let result ← runTestProject projectPath projectName testsDir comparatorPath
    results := results.push result
    match result with
    | .success _ => pure ()
    | _ => allPassed := false

  IO.println "\n# Summary\n"

  for result in results do
    printTestResult result

  IO.println ""
  if allPassed then
    IO.println "All tests passed!"
    return 0
  else
    IO.println "Some tests failed."
    return 1
