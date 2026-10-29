# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AliasIn.Variant037a3f9b49ebff9110298672b5fdc78a02ed5371afa22db9dc752dff77464ed1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67b36b60f9648dcfb1190c306048a538d4b41c4a` · SHA-256 `037a3f9b49ebff9110298672b5fdc78a02ed5371afa22db9dc752dff77464ed1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2025 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
module

public meta import Mathlib.Lean.Expr.Basic
public import Batteries.Tactic.Alias
public import Lean.Exception
public import Mathlib.Tactic.Core

/-! # The `@[alias_in]` attribute -/

public meta section

/-- Adds an alias of this declaration in a different namespace.
Example:
```
@[alias_in Foo.Bar] def A.B.C.d := ...
```
behaves like
```
alias A.Foo.Bar.d := A.B.C.d
```
You can see the name of the alias by mousing over the name argument of `alias_in`.

We replace the rightmost/innermost namespaces, but always leave the final part of the name intact.
By default, `alias_in` assumes that we want to replace the same number of namespaces from the
original name as given in the new namespace. You can override this by adding a number at the end
```
@[alias_in Foo.Bar 3] def A.B.C.d := ...
```
behaves like
```
alias Foo.Bar.d := A.B.C.d
```
-/
syntax (name := aliasIn) "alias_in " ident (ppSpace num)? : attr

open Lean Meta Elab Command
@[inherit_doc aliasIn]
initialize registerBuiltinAttribute {
    name := `aliasIn
    descr := "create alias in another namespace"
    applicationTime := .afterCompilation
    add := fun
    | src, `(attr| alias_in%$tk $nm $[$num]?), kind => do
      unless kind == .global do
        throwError "The `alias_in` attribute cannot be {kind}."
      let newNamespace := nm.getId.components
      let num := num.map (·.getNat) |>.getD newNamespace.length
      let components := src.components
      if (← toModifiers src).visibility.isPrivate then
        throwError "The `alias_in` attribute cannot be used for private declarations."
      if components.length ≤ num then
        throwError m!"{src} has only {components.length - 1} namespaces, cannot remove {num}.\n\
        Use `@[alias_in {nm} {components.length - 1}]` instead."
      let tgtName := .fromComponents <|
        components.take (components.length - 1 - num) ++ newNamespace ++ [components.getLast!]
      liftCommandElabM <| elabCommand <|
        ← `(command| public alias $(mkIdent tgtName) := $(mkIdent src))
      -- add mouse-over text
      Term.addTermInfo' nm (← mkConstWithLevelParams tgtName) (isBinder := true) |>.run' |>.run'
    | _, _, _ => throwUnsupportedSyntax }
````

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7cace219ac12ca92fc85748e6bf7e4c605914eac435df7a82d5b6bc2c5f57d62 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AliasIn/Variant037a3f9b49ebff9110298672b5fdc78a02ed5371afa22db9dc752dff77464ed1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
