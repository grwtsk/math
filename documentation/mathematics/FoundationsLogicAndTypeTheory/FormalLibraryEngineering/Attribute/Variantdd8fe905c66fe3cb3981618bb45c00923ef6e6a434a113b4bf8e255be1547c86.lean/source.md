# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attribute.Variantdd8fe905c66fe3cb3981618bb45c00923ef6e6a434a113b4bf8e255be1547c86

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c556b54c8d7e47f470f4e379ec4cafbd7ed3aea2` · SHA-256 `dd8fe905c66fe3cb3981618bb45c00923ef6e6a434a113b4bf8e255be1547c86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Sebastian Ullrich. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Sebastian Ullrich
-/
module

prelude
public import Lean.Compiler.InitAttr
import Lean.ExtraModUses

public section

namespace Lean
namespace ParserCompiler

structure CombinatorAttribute where
  impl : AttributeImpl
  ext  : SimplePersistentEnvExtension (Name × Name) (NameMap Name)
  deriving Inhabited
-- TODO(Sebastian): We'll probably want priority support here at some point

def registerCombinatorAttribute (name : Name) (descr : String) (ref : Name := by exact decl_name%)
    : IO CombinatorAttribute := do
  let ext : SimplePersistentEnvExtension (Name × Name) (NameMap Name) ← registerSimplePersistentEnvExtension {
    name            := ref,
    addImportedFn   := mkStateFromImportedEntries (fun s p => s.insert p.1 p.2) {},
    addEntryFn      := fun (s : NameMap Name) (p : Name × Name) => s.insert p.1 p.2,
  }
  let attrImpl : AttributeImpl := {
    ref   := ref,
    name  := name,
    descr := descr,
    add   := fun decl stx _ => do
      let env ← getEnv
      let parserDeclName ← Elab.realizeGlobalConstNoOverloadWithInfo (← Attribute.Builtin.getIdent stx)
      recordExtraModUseFromDecl (isMeta := false) parserDeclName
      setEnv <| ext.addEntry env (parserDeclName, decl)
  }
  registerBuiltinAttribute attrImpl
  pure { impl := attrImpl, ext := ext }

namespace CombinatorAttribute

def getDeclFor? (attr : CombinatorAttribute) (env : Environment) (parserDecl : Name) : Option Name :=
  (attr.ext.getState env).find? parserDecl

def setDeclFor (attr : CombinatorAttribute) (env : Environment) (parserDecl : Name) (decl : Name) : Environment :=
  attr.ext.addEntry env (parserDecl, decl)

unsafe def runDeclFor {α} (attr : CombinatorAttribute) (parserDecl : Name) : CoreM α := do
  match attr.getDeclFor? (← getEnv) parserDecl with
  | some d => evalConst α d
  | _      => throwError "no declaration of attribute [{attr.impl.name}] found for `{parserDecl}`"

end CombinatorAttribute

end ParserCompiler
end Lean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=62eb5eec9a3fe2c635f6af72ce1b4d603863d4a364d8695479fa4f42b8c45a12 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variantdd8fe905c66fe3cb3981618bb45c00923ef6e6a434a113b4bf8e255be1547c86.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
