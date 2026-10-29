module

import all Lean
import all Lean.Elab.Extra
import all Lean.Elab.BuiltinTerm
import all tools.LeanSource.Cli

public section

/-! # Pinned Lean source-command tracer -/

private def mainAction (args : List String) : IO Unit := do
  Lean.initSearchPath (← Lean.findSysroot)
  MathematicsLeanSource.run args

def main (args : List String) : IO Unit := mainAction args
