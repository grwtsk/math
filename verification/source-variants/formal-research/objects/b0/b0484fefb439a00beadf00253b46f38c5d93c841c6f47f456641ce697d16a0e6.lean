import Lean

/-!
# Compiled Lean environment export

This executable reads the pinned Lean frontend's compiled module metadata.  It
exports constants (including elaborator-generated constants), compiler-only
extra constant names, effective direct imports with their defining module,
pinned-frontend normalized declaration types, and the frontend-observed
transitive axiom closure of each declaration.  The checker version is recorded
both globally and on every declaration record so records remain self-describing
after downstream partitioning.

The export is executable evidence.  It is not a kernel theorem about ownership,
semantic re-exports, normalization equivalence, source identity, or the
correctness of the surrounding Rust checker.  Source spans, source digests, and
owners are intentionally supplied by later external enrichment.
-/

open Lean System

namespace CompiledEnvironmentExport

structure ImportRecord where
  module : String
  importAll : Bool
  isExported : Bool
  isMeta : Bool
  deriving ToJson

structure DeclarationRecord where
  name : String
  kind : String
  isPrivate : Bool
  isInternalDetail : Bool
  normalizedType : String
  observedAxioms : Array String
  checkerVersion : String
  deriving ToJson

structure ModuleRecord where
  module : String
  imports : Array ImportRecord
  declarations : Array DeclarationRecord
  extraConstants : Array String
  deriving ToJson

structure Export where
  schemaVersion : Nat
  producer : String
  checkerVersion : String
  scope : String
  modules : Array ModuleRecord
  deriving ToJson

private def constantKind : ConstantInfo → String
  | .axiomInfo _ => "axiomatic_constant"
  | .defnInfo _ => "definition"
  | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque"
  | .quotInfo _ => "quotient"
  | .inductInfo _ => "inductive"
  | .ctorInfo _ => "constructor"
  | .recInfo _ => "recursor"

private def normalizationOptions : Options :=
  ({} : Options)
    |>.setBool `pp.universes true
    |>.setBool `pp.explicit true
    |>.setBool `pp.fullNames true
    |>.setBool `pp.proofs true

/--
Pretty-print a closed declaration type with explicit universes, arguments, and
fully qualified names.  This is pinned-frontend normalization, not a semantic
equivalence or source-level pretty-printing theorem.
-/
private def normalizedType (env : Environment) (info : ConstantInfo) : IO String := do
  let format ← PrettyPrinter.ppExprLegacy env {} {} normalizationOptions info.type
  return format.pretty

/-- Sorted transitive axiom closure reported by the pinned Lean frontend. -/
private def observedAxioms (env : Environment) (name : Name) : IO (Array String) := do
  let context : Core.Context :=
    { fileName := "<compiled-environment-export>"
      fileMap := default
      maxHeartbeats := 0 }
  let state : Core.State := { env := env }
  let action : CoreM (Array Name) := collectAxioms name
  let (axioms, _) ← Core.CoreM.toIO action context state
  return axioms.qsort Name.lt |>.map Name.toString

private def declarationRecord
    (env : Environment) (info : ConstantInfo) : IO DeclarationRecord := do
  let name := info.name
  return {
    name := name.toString
    kind := constantKind info
    isPrivate := isPrivateName name
    isInternalDetail := name.isInternalDetail
    normalizedType := ← normalizedType env info
    observedAxioms := ← observedAxioms env name
    checkerVersion := Lean.versionString
  }

private def moduleRecord (env : Environment) (moduleName : Name) : IO ModuleRecord := do
  let some index := env.getModuleIdx? moduleName
    | throw <| IO.userError s!"compiled environment omitted requested module {moduleName}"
  let some data := env.header.moduleData[index]?
    | throw <| IO.userError s!"compiled environment has no module data for {moduleName}"
  return {
    module := moduleName.toString
    imports := data.imports.map fun entry => {
      module := entry.module.toString
      importAll := entry.importAll
      isExported := entry.isExported
      isMeta := entry.isMeta
    }
    declarations := ← data.constants.mapM (declarationRecord env)
    extraConstants := data.extraConstNames.map (toString ·)
  }

private partial def collectLeanModules (root directory : FilePath) : IO (Array Name) := do
  let mut modules := #[]
  for entry in ← directory.readDir do
    if entry.fileName == ".lake" then
      continue
    if ← entry.path.isDir then
      modules := modules ++ (← collectLeanModules root entry.path)
    else if entry.path.extension == some "lean" then
      modules := modules.push (← moduleNameOfFileName entry.path (some root))
  return modules

private def importBatch (modules : Array Name) : IO (Array ModuleRecord) := do
  if modules.isEmpty then
    return #[]
  let imports := modules.map fun moduleName => ({ module := moduleName } : Import)
  let env ← importModules imports {}
  modules.mapM (moduleRecord env)

private def recordLt (left right : ModuleRecord) : Bool :=
  left.module < right.module

private def distinctSortedModules (modules : Array Name) : Array Name :=
  modules.qsort Name.quickLt |>.foldl (init := #[]) fun result moduleName =>
    if result.back? == some moduleName then result else result.push moduleName

private def exportCompiledEnvironment : IO Export := do
  let root ← IO.currentDir
  let modules := distinctSortedModules (← collectLeanModules root root)
  let conflictModules : Array Name := #[`Main, `Tests, `Tools.CompiledEnvironmentExport]
  let ordinary := modules.filter fun moduleName => !conflictModules.contains moduleName
  let mut records ← importBatch ordinary
  for moduleName in conflictModules do
    if modules.contains moduleName then
      records := records ++ (← importBatch #[moduleName])
  let sortedRecords := records.qsort recordLt
  return {
    schemaVersion := 2
    producer := "pinned Lean Environment.header.moduleData + PrettyPrinter.ppExprLegacy + collectAxioms"
    checkerVersion := Lean.versionString
    scope := "all compiled modules corresponding to repository Lean source files; records are identified by defining-module plus declaration-name, declarations include private/internal flags, pinned-frontend normalized types, sorted observed axiom closures, and checker version; extra compiler constant names are separate; owner, source digest, and source span are intentionally left to external enrichment"
    modules := sortedRecords
  }

end CompiledEnvironmentExport

def main : IO Unit := do
  Lean.initSearchPath (← Lean.findSysroot)
  let output ← CompiledEnvironmentExport.exportCompiledEnvironment
  IO.println (toJson output).pretty
