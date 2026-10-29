# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Term.Variant0d3047f9e1e3160a52eba27400b12eeab0ca9a08092e5bcd530f8ea2b87fa8fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bde7a71b234a7d0e787614834662468bd68f3d06` · SHA-256 `0d3047f9e1e3160a52eba27400b12eeab0ca9a08092e5bcd530f8ea2b87fa8fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Sebastian Ullrich
-/
module

prelude
public import Lean.Elab.DeclModifiers
public import Lean.Elab.Term.TermElabM

public section

namespace Lean.Elab

open Meta

def Term.expandDeclId (currNamespace : Name) (currLevelNames : List Name) (declId : Syntax) (modifiers : Modifiers) : TermElabM ExpandDeclIdResult := do
  let r ← Elab.expandDeclId currNamespace currLevelNames declId modifiers
  if (← read).sectionVars.contains r.shortName then
    throwError "invalid declaration name `{r.shortName}`, there is a section variable with the same name"
  return r

builtin_initialize
  registerTraceClass `Elab.postpone
  registerTraceClass `Elab.coe
  registerTraceClass `Elab.debug
  registerTraceClass `Elab.reuse

/--
Marks an elaborator (tactic or command, currently) as supporting incremental elaboration.

For unmarked elaborators, the corresponding snapshot bundle field in the elaboration context is
unset so as to prevent accidental, incorrect reuse.
-/
@[builtin_doc]
builtin_initialize incrementalAttr : TagAttribute ←
  registerTagAttribute `incremental "Marks an elaborator (tactic or command, currently) as \
supporting incremental elaboration. For unmarked elaborators, the corresponding snapshot bundle \
field in the elaboration context is unset so as to prevent accidental, incorrect reuse."

builtin_initialize builtinIncrementalElabs : IO.Ref NameSet ← IO.mkRef {}

def addBuiltinIncrementalElab (decl : Name) : IO Unit := do
  builtinIncrementalElabs.modify fun s => s.insert decl

@[inherit_doc incrementalAttr, builtin_doc]
builtin_initialize
  registerBuiltinAttribute {
    name            := `builtin_incremental
    descr           := s!"(builtin) {incrementalAttr.attr.descr}"
    applicationTime := .afterCompilation
    add             := fun decl stx kind => do
      Attribute.Builtin.ensureNoArgs stx
      unless kind == AttributeKind.global do throwAttrMustBeGlobal `builtin_incremental kind
      declareBuiltin decl <| mkApp (mkConst ``addBuiltinIncrementalElab) (toExpr decl)
  }

/-- Checks whether a declaration is annotated with `[builtin_incremental]` or `[incremental]`. -/
def isIncrementalElab [Monad m] [MonadEnv m] [MonadLiftT IO m] (decl : Name) : m Bool :=
  (return (← builtinIncrementalElabs.get (m := IO)).contains decl) <||>
  (return incrementalAttr.hasTag (← getEnv) decl)

export Term (TermElabM)

builtin_initialize
  registerTraceClass `Elab.implicitForall

end Lean.Elab
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6927982589a5d04ab906ff7c577fd6b1b5981aec0f9fb7878634ded1624f1934 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Term/Variant0d3047f9e1e3160a52eba27400b12eeab0ca9a08092e5bcd530f8ea2b87fa8fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
