import tools.LeanEnvironmentExtractElements.Module

open Lean System

namespace MathematicsLeanEnvironmentExtractElements

private def moduleName (value : String) : Name :=
  value.splitOn "." |>.foldl (init := Name.anonymous) fun result part =>
    Name.str result part

private def parseArguments : List String → IO (Name × Name)
  | ["--module", value, "--scope", scope] =>
      return (moduleName value, moduleName scope)
  | ["--help"] =>
      IO.println
        "usage: mathematics_lean_element_extract --module Module.Name --scope Scope.Root" *>
        IO.Process.exit 0
  | _ =>
      throw <| IO.userError
        "usage: mathematics_lean_element_extract --module Module.Name --scope Scope.Root"

end MathematicsLeanEnvironmentExtractElements

def main (arguments : List String) : IO Unit := do
  Lean.initSearchPath (← Lean.findSysroot)
  let (moduleName, scopeName) ←
    MathematicsLeanEnvironmentExtractElements.parseArguments arguments
  let emitter ← MathematicsLeanEnvironmentExtractElements.EventEmitter.create
  MathematicsLeanEnvironmentExtractElements.emitModule emitter moduleName scopeName
