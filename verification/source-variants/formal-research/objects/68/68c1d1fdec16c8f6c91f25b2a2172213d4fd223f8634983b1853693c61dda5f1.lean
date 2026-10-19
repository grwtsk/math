module

import all Lean
import all Lean.Elab.Extra
import all Lean.Elab.BuiltinTerm

public section

/-!
# Sequential Lean kernel certificate checker

The ordinary Lean command-line frontend retains an editor-oriented snapshot
tree for every top-level command before it writes an `.olean`.  Generated
finite certificates contain tens of thousands of independent commands, so
retaining that tree adds substantial time and memory without adding theorem
authority.  This executable uses the same parser, elaborator, environment, and
kernel checker, but processes commands sequentially and writes the resulting
module directly.
-/

open Lean System

namespace MathematicsLeanKernelCheck

structure CliConfig where
  input : FilePath := ""
  output : FilePath := ""
  moduleName : Name := .anonymous
  manifest : FilePath := ""
  auditDeclaration : Name := .anonymous
  auditOutput : FilePath := ""
  deriving Inhabited

private def parseModuleName (value : String) : Name :=
  value.splitOn "." |>.foldl (init := Name.anonymous) fun result part =>
    Name.str result part

private partial def parseArgs
    (args : List String) (config : CliConfig := {}) : IO CliConfig := do
  match args with
  | [] => return config
  | "--input" :: value :: tail =>
      parseArgs tail { config with input := ⟨value⟩ }
  | "--output" :: value :: tail =>
      parseArgs tail { config with output := ⟨value⟩ }
  | "--module" :: value :: tail =>
      parseArgs tail { config with moduleName := parseModuleName value }
  | "--manifest" :: value :: tail =>
      parseArgs tail { config with manifest := ⟨value⟩ }
  | "--audit-declaration" :: value :: tail =>
      parseArgs tail {
        config with auditDeclaration := parseModuleName value
      }
  | "--audit-output" :: value :: tail =>
      parseArgs tail { config with auditOutput := ⟨value⟩ }
  | "--help" :: _ =>
      IO.println
        "usage: surface_lean_kernel_check (--input FILE --output FILE --module NAME [--audit-declaration NAME --audit-output FILE] | --manifest TSV)"
      IO.Process.exit 0
  | option :: _ =>
      throw <| IO.userError s!"unknown argument: {option}"

private def messageText (messages : MessageLog) : IO String := do
  let mut details := #[]
  for message in messages.toArray do
    details := details.push (← message.toString)
  return String.intercalate "\n" details.toList

private partial def elaborateCommands :
    Elab.Frontend.FrontendM Nat := do
  let mut commandCount := 0
  while true do
    Elab.Frontend.updateCmdPos
    let before ← Elab.Frontend.getCommandState
    let inputContext ← Elab.Frontend.getInputContext
    let parserBefore ← Elab.Frontend.getParserState
    let scope := before.scopes.head!
    let parserContext := {
      env := before.env
      options := scope.opts
      currNamespace := scope.currNamespace
      openDecls := scope.openDecls
    }
    let (commandSyntax, parserAfter, messages) :=
      Parser.parseCommand inputContext parserContext parserBefore before.messages
    Elab.Frontend.setParserState parserAfter
    Elab.Frontend.setMessages messages
    if Parser.isTerminalCommand commandSyntax then
      return commandCount
    Elab.Frontend.elabCommandAtFrontend commandSyntax
    let after ← Elab.Frontend.getCommandState
    if after.messages.hasErrors then
      throw <| IO.Error.userError s!"certificate command {commandCount} failed:\n{← messageText after.messages}"
    commandCount := commandCount + 1
  return commandCount

private def constantKind : ConstantInfo → String
  | .axiomInfo _ => "axiom"
  | .defnInfo _ => "definition"
  | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque"
  | .quotInfo _ => "quotient"
  | .inductInfo _ => "inductive"
  | .ctorInfo _ => "constructor"
  | .recInfo _ => "recursor"

private def nameSetArray (names : NameSet) : Array Name := Id.run do
  let mut result := #[]
  for name in names do
    result := result.push name
  return result

private partial def dependencyClosure
    (environment : Environment)
    (pending : List Name)
    (visited : NameSet := {}) : NameSet :=
  match pending with
  | [] => visited
  | name :: remaining =>
      if visited.contains name then
        dependencyClosure environment remaining visited
      else
        let visited := visited.insert name
        match environment.find? name with
        | none =>
            dependencyClosure environment remaining visited
        | some information =>
            dependencyClosure environment
              ((nameSetArray information.getUsedConstantsAsSet).toList ++
                remaining)
              visited

private structure DeclarationAudit where
  schema : String
  checker : String
  declarationName : String
  declarationKind : String
  declarationTypeRepr : String
  declarationValueRepr : String
  directDependencies : Array String
  dependencyClosure : Array String
  axioms : Array String
  deriving ToJson

private def writeDeclarationAudit
    (environment : Environment)
    (input : FilePath)
    (fileMap : FileMap)
    (declarationName : Name)
    (output : FilePath) : IO Unit := do
  let information ←
    environment.find? declarationName |>.getDM <|
      throw <| IO.userError s!"audit declaration is absent: {declarationName}"
  let directNames :=
    nameSetArray information.getUsedConstantsAsSet
  let closureNames :=
    nameSetArray <|
      dependencyClosure environment directNames.toList
  let coreContext : Core.Context := {
    fileName := input.toString
    fileMap := fileMap
  }
  let axiomResult ←
    Lean.Core.CoreM.toIO
      (collectAxioms declarationName)
      coreContext
      { env := environment }
  let axioms : Array Name := axiomResult.1
  let audit : DeclarationAudit := {
    schema := "mathematics/lean-declaration-audit/1"
    checker := "surface_lean_kernel_check"
    declarationName := declarationName.toString
    declarationKind := constantKind information
    declarationTypeRepr := reprStr information.type
    declarationValueRepr :=
      information.value? (allowOpaque := true)
        |>.map reprStr
        |>.getD ""
    directDependencies :=
      directNames.map Name.toString |>.qsort (· < ·)
    dependencyClosure :=
      closureNames.map Name.toString |>.qsort (· < ·)
    axioms :=
      axioms.map Name.toString |>.qsort (· < ·)
  }
  IO.FS.writeFile output ((toJson audit).compress ++ "\n")

private def checkFile
    (input output : FilePath) (moduleName : Name)
    (auditDeclaration : Name := .anonymous)
    (auditOutput : FilePath := "") : IO Nat := do
  let source ← IO.FS.readFile input
  let inputContext := Parser.mkInputContext source input.toString
  let (header, parserState, headerMessages) ← Parser.parseHeader inputContext
  if headerMessages.hasErrors then
    throw <| IO.userError s!"certificate header failed:\n{← messageText headerMessages}"
  unsafe enableInitializersExecution
  let imports := Elab.headerToImports header
  let importedEnvironment ← importModules (loadExts := true) imports {}
  let environment := importedEnvironment.setMainModule moduleName
  let options := ({} : Options).set `Elab.async false
  let commandState := Elab.Command.mkState environment headerMessages options
  let initialState : Elab.Frontend.State := {
    commandState := commandState
    parserState := parserState
    cmdPos := parserState.pos
  }
  let context : Elab.Frontend.Context := { inputCtx := inputContext }
  let (commandCount, finalState) ←
    (elaborateCommands.run context).run initialState
  if finalState.commandState.messages.hasErrors then
    throw <| IO.userError s!"certificate elaboration failed:\n{← messageText finalState.commandState.messages}"
  writeModule finalState.commandState.env output (writeIR := false)
  if !auditDeclaration.isAnonymous then
    if auditOutput.toString.isEmpty then
      throw <| IO.userError "--audit-output is required with --audit-declaration"
    writeDeclarationAudit finalState.commandState.env input
      inputContext.fileMap auditDeclaration auditOutput
  return commandCount

private structure BatchEntry where
  moduleName : Name
  input : FilePath
  output : FilePath

private def parseBatchEntry
    (line : String) (lineNumber : Nat) : IO BatchEntry := do
  match line.splitOn "\t" with
  | [moduleName, input, output] =>
      if moduleName.isEmpty || input.isEmpty || output.isEmpty then
        throw <| IO.userError s!"manifest line {lineNumber} has an empty field"
      return {
        moduleName := parseModuleName moduleName
        input := ⟨input⟩
        output := ⟨output⟩
      }
  | _ =>
      throw <| IO.userError s!"manifest line {lineNumber} must contain three tab-separated fields"

private def checkManifest (manifest : FilePath) : IO Unit := do
  let source ← IO.FS.readFile manifest
  let mut moduleCount := 0
  let mut commandCount := 0
  for line in source.splitOn "\n" do
    if line.trimAscii.isEmpty then
      continue
    let entry ← parseBatchEntry line (moduleCount + 1)
    let entryCommands ←
      checkFile entry.input entry.output entry.moduleName
    moduleCount := moduleCount + 1
    commandCount := commandCount + entryCommands
    IO.println s!"kernel-accepted {entry.moduleName}: {entryCommands} commands"
  IO.println s!"kernel-accepted batch: {moduleCount} modules, {commandCount} commands"

def run (args : List String) : IO Unit := do
  let config ← parseArgs args
  if !config.manifest.toString.isEmpty then
    if !config.input.toString.isEmpty ||
        !config.output.toString.isEmpty ||
        !config.moduleName.isAnonymous ||
        !config.auditDeclaration.isAnonymous ||
        !config.auditOutput.toString.isEmpty then
      throw <| IO.userError "--manifest cannot be combined with single-module arguments"
    checkManifest config.manifest
    return
  if config.input.toString.isEmpty then
    throw <| IO.userError "--input is required"
  if config.output.toString.isEmpty then
    throw <| IO.userError "--output is required"
  if config.moduleName.isAnonymous then
    throw <| IO.userError "--module is required"
  if config.auditDeclaration.isAnonymous !=
      config.auditOutput.toString.isEmpty then
    throw <| IO.userError
      "--audit-declaration and --audit-output must be supplied together"
  let commandCount ←
    checkFile config.input config.output config.moduleName
      config.auditDeclaration config.auditOutput
  IO.println s!"kernel-accepted {commandCount} commands"

end MathematicsLeanKernelCheck

private def mainAction (args : List String) : IO Unit := do
  Lean.initSearchPath (← Lean.findSysroot)
  MathematicsLeanKernelCheck.run args

def main (args : List String) : IO Unit := mainAction args
