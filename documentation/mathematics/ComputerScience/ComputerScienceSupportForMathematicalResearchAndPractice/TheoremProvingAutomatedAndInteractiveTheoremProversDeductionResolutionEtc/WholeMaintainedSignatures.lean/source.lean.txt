import FormalResearch
import Lean.Elab.Print

open Lean Elab Command

elab "audit_maintained_signatures" : command => do
  let env := (← getEnv).setExporting false
  let modules := env.allImportedModuleNames
  let candidates := (env.constants.toList.filter fun entry =>
    match env.getModuleIdxFor? entry.1 with
    | some index =>
        let owner := modules[index]!.toString
        owner == "FormalResearch" || owner.startsWith "FormalResearch."
    | none => false).toArray.qsort (fun a b => Name.quickLt a.1 b.1)
  for (name, _) in candidates do
    logInfo m!"STRUCTURE_DECLARATION_BEGIN {name.toString}"
    let ident := mkIdent name
    elabCommand (← `(command| #print sig $ident:ident))
    logInfo m!"STRUCTURE_DECLARATION_END {name.toString}"
  logInfo m!"Whole maintained signature count: {candidates.size}."

audit_maintained_signatures
