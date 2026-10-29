# Imports Import Test — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `007da542b1de6befac87344e977ea3d24fd12dd7` · SHA-256 `98c7803eca0a7ef9e9cff54623610e3eb3ca53fe7fc34c1ad1be2176e28708b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ImportGraph.Imports.RequiredModules
import ImportGraphTest.Used
import ImportGraph.Tools
import ImportGraph.Imports.Unused

open Lean

def importTest : CoreM Unit := do
  let x ← redundantImports
  logInfo s!"{x.toArray}"

/--
info: Found the following transitively redundant imports:
ImportGraph.Imports.RequiredModules
-/
#guard_msgs in
#redundant_imports

/-- info: public import ImportGraph.Imports.Redundant -/
#guard_msgs in
#min_imports

/-- info: [ImportGraph.Imports.Redundant] -/
#guard_msgs in
#find_home importTest

open Elab Command


/--
Reports unused transitive imports amongst the specified modules.
-/
elab "#unused_transitive_imports" names:ident* : command => do
  let imports := (names.map Syntax.getId).toList
  let unused ← Elab.Command.liftCoreM (unusedTransitiveImports imports)
  for (n, u) in unused do
    if !u.isEmpty then
    logInfo <| s!"Transitively unused imports of {n}:\n{"\n".intercalate (u.map (fun i => s!"  {i}"))}"

/--
info: Transitively unused imports of Init.System.IO:
  Init.Control.StateRef
  Init.Control.Reader
-/
#guard_msgs in
#unused_transitive_imports Init.Control.StateRef Init.System.IO Init.Control.Reader Init.Control.Basic

/--
info: Transitively unused imports of ImportGraphTest.Used:
  ImportGraphTest.Unused
-/
#guard_msgs in
#unused_transitive_imports ImportGraphTest.Used ImportGraphTest.Unused Init.Control.Reader

elab "#transitivelyRequiredModules_test" : command => do
  let env ← getEnv
  let unused ← liftCoreM <| env.transitivelyRequiredModules `ImportGraph.Imports.RequiredModules
  logInfo s!"{unused.contains `Init.Data.Option.Lemmas}"

/-- info: true -/
#guard_msgs in
#transitivelyRequiredModules_test

elab "#my_test" : command => do
  -- functionality of `#redundant_imports`
  let expected := #[`ImportGraph.Imports.RequiredModules]
  let ri ← liftCoreM redundantImports
  if (ri.toArray != expected) then
    logError s!"Failed: `redundantImports` returned {ri.toArray} instead of {expected}"

  -- functionality of `#find_home`
  let expected := #[`ImportGraph.Imports.Redundant]
  let mi ← liftCoreM <| Lean.Name.findHome `importTest none
  if (mi.toArray != expected) then
      logError s!"Failed: `findHome` returned {mi.toArray} instead of {expected}"

  -- functionality of `#find_home!`
  let expected := #[`ImportGraph.Imports.Redundant]
  let mi! ← liftCoreM <| Lean.Name.findHome `importTest (← getEnv)
  if (mi!.toArray != expected) then
      logError s!"Failed: `findHome (!)` returned {mi!.toArray} instead of {expected}"

  logInfo s!"{mi.toArray}"
  pure ()

/-- info: #[ImportGraph.Imports.Redundant] -/
#guard_msgs in
#my_test
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f57b1eca906bbb0905a06277926a451c60b1fee7a9606b199059ac56c03da386 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imports/Variant98c7803eca0a7ef9e9cff54623610e3eb3ca53fe7fc34c1ad1be2176e28708b0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
