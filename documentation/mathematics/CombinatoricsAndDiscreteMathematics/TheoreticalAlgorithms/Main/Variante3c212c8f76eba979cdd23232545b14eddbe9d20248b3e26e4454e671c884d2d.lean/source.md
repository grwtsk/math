# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Main.Variante3c212c8f76eba979cdd23232545b14eddbe9d20248b3e26e4454e671c884d2d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2608b1c930ffbbb28c582de94d946b511fe8b0da` · SHA-256 `e3c212c8f76eba979cdd23232545b14eddbe9d20248b3e26e4454e671c884d2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50fd4d85fefa7dcd76f89e9d333b743f965b887ade3317934010bba50466c844 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variante3c212c8f76eba979cdd23232545b14eddbe9d20248b3e26e4454e671c884d2d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
