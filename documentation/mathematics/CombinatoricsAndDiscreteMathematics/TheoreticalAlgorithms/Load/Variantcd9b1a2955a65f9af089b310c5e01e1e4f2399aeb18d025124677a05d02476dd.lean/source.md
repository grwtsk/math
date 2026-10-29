# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Load.Variantcd9b1a2955a65f9af089b310c5e01e1e4f2399aeb18d025124677a05d02476dd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5593d020e8d666e68d24ed8e109622c9d065855` · SHA-256 `cd9b1a2955a65f9af089b310c5e01e1e4f2399aeb18d025124677a05d02476dd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Architect.Output


namespace Architect

/-!
Loading the analysis result of a module.
-/

open Lean

/-- This is copied from `DocGen4.envOfImports`. -/
def envOfImports (imports : Array Name) : IO Environment := do
  -- needed for modules which use syntax registered with `initialize add_parser_alias ..`
  unsafe Lean.enableInitializersExecution
  importModules (imports.map (Import.mk · false true false)) Options.empty (leakEnv := true) (loadExts := true)

/-- This is copied from `DocGen4.load`, except for separate handling of `options`. -/
def runEnvOfImports (imports : Array Name) (options : Options) (x : CoreM α) : IO α := do
  initSearchPath (← findSysroot)
  let env ← envOfImports imports
  let config := {
    maxHeartbeats := 100000000,
    options := options
      |>.set `debug.skipKernelTC true
      |>.set `Elab.async false,
    fileName := default,
    fileMap := default,
  }

  Prod.fst <$> x.toIO config { env }

/-- Outputs the blueprint of a module. -/
def latexOutputOfImportModule (module : Name) (options : Options) : IO LatexOutput :=
  runEnvOfImports #[module] options (moduleToLatexOutput module)

/-- Outputs the JSON data for the blueprint of a module. -/
def jsonOfImportModule (module : Name) (options : Options) : IO Json :=
  runEnvOfImports #[module] options (moduleToJson module)

end Architect
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dbf1b24a9d146dcf2ce9bdd974c8b60499f4e51da5dd1f6f740ab7d7362e66eb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Load/Variantcd9b1a2955a65f9af089b310c5e01e1e4f2399aeb18d025124677a05d02476dd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
