# Run Linter — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94130855123da642527c2929094c5edc8afbd507` · SHA-256 `6d1189e0ee98b30a03a7bfedb80e303677dd9486da8c25706aceca179c530dc7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.Lint
import Std.Lean.Util.Path
import Mathlib.Lean.CoreM

open Lean Core Elab Command Std.Tactic.Lint

abbrev NoLints := Array (Name × Name)

def readJsonFile (α) [FromJson α] (path : System.FilePath) : IO α := do
  let _ : MonadExceptOf String IO := ⟨throw ∘ IO.userError, fun x _ => x⟩
  liftExcept <| fromJson? <|← liftExcept <| Json.parse <|← IO.FS.readFile path

def writeJsonFile (α) [ToJson α] (path : System.FilePath) (a : α) : IO Unit :=
  IO.FS.writeFile path <| toJson a |>.pretty

unsafe def main (args : List String) : IO Unit := do
  let (update, args) :=
    match args with
    | "--update" :: args => (true, args)
    | _ => (false, args)
  let some module :=
      match args with
      | [] => some `Mathlib
      | [mod] => Syntax.decodeNameLit s!"`{mod}"
      | _ => none
    | IO.eprintln "Usage: runLinter [--update] [Mathlib.Data.Nat]" *> IO.Process.exit 1
  let nolintsFile := "scripts/nolints.json"
  let nolints ← readJsonFile NoLints nolintsFile
  CoreM.withImportModules #[module]
      (searchPath := compile_time_search_path%) (trustLevel := 1024) do
    let decls ← getDeclsInPackage `Mathlib
    let linters ← getChecks (slow := true) (useOnly := false)
    let results ← lintCore decls linters
    if update then
      writeJsonFile NoLints nolintsFile <|
        .qsort (lt := fun (a,b) (c,d) => a.lt c || (a == c && b.lt d)) <|
        .flatten <| results.map fun (linter, decls) =>
        decls.fold (fun res decl _ => res.push (linter.name, decl)) #[]
    let results := results.map fun (linter, decls) =>
      .mk linter <| nolints.foldl (init := decls) fun decls (linter', decl') =>
        if linter.name == linter' then decls.erase decl' else decls
    let failed := results.any (!·.2.isEmpty)
    if failed then
      let fmtResults ←
        formatLinterResults results decls (groupByFilename := true)
          "in mathlib" (runSlowLinters := true) (useErrorFormat := true) .medium linters.size
      IO.print (← fmtResults.toString)
      IO.Process.exit 1
    else
      IO.print "-- Linting passed."
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d38d832378b05134c266e449ac57b9a0b990e21654ab2f741bb2fa1e0d4343cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RunLinter/Variant6d1189e0ee98b30a03a7bfedb80e303677dd9486da8c25706aceca179c530dc7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
