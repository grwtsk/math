# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantc84db9a856a3b4b72812ebcc2afa8180a3b9c94ea54de051215cd252b02be281

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf79d552b008eb28e224dccd9461aa8c8ed4e39f` · SHA-256 `c84db9a856a3b4b72812ebcc2afa8180a3b9c94ea54de051215cd252b02be281`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean


open Lean Parser Elab Command

namespace Architect

/-! We define the `blueprint_comment /-- ... -/` command that adds a piece of text to the blueprint. -/

-- The moduleBlueprintDocExt is exactly the same as the moduleDocExt, except it stores module docstrings
-- that are preceded by "blueprint ".

initialize moduleBlueprintDocExt :
    SimplePersistentEnvExtension ModuleDoc (PersistentArray ModuleDoc) ← registerSimplePersistentEnvExtension {
  addImportedFn := fun _ => {}
  addEntryFn    := fun s e => s.push e
  exportEntriesFnEx? := some fun _ _ es level =>
    if level < .server then
      #[]
    else
      es.toArray
}

def addMainModuleBlueprintDoc (env : Environment) (doc : ModuleDoc) : Environment :=
  moduleBlueprintDocExt.addEntry env doc

def getMainModuleBlueprintDoc (env : Environment) : PersistentArray ModuleDoc :=
  moduleBlueprintDocExt.getState env

def getModuleBlueprintDoc? (env : Environment) (moduleName : Name) : Option (Array ModuleDoc) :=
  env.getModuleIdx? moduleName |>.map fun modIdx =>
    moduleBlueprintDocExt.getModuleEntries (level := .server) env modIdx

/--
`blueprint_comment /-- ... -/` adds a piece of text to the blueprint of the current module,
which is available as `\inputleanmodule{Module}` in LaTeX.
-/
elab (name := blueprintComment) "blueprint_comment " stx:plainDocComment : command => do
  let some range ← Elab.getDeclarationRange? stx
    | return  -- must be from partial syntax, ignore

  let doc ← getDocStringText ⟨stx⟩
  modifyEnv fun env => addMainModuleBlueprintDoc env ⟨doc, range⟩

end Architect
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=82349231fd9a019ca92988d962a0c79dfa57091ff5bd46e7d5d6b8ce446cd1ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variantc84db9a856a3b4b72812ebcc2afa8180a3b9c94ea54de051215cd252b02be281.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
