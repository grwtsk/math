# Require Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94892ef786254defa9849c68f3899f57a746b9a1` · SHA-256 `b086246bf6f1fc3e8c0c5325dcd41e3211d5336434e8bedeaa84c47c63b2f983`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.DSL.Syntax
import Lake.Config.Dependency

open Lean Parser Command

namespace Lake.DSL

/-! # The `require` syntax

This module contains the expansion of the `require` DSL syntax used to specify package dependencies.
-/

@[inline] private def quoteOptTerm [Monad m] [MonadQuotation m] (term? : Option Term) : m Term :=
  if let some term := term? then withRef term ``(some $term) else ``(none)

def expandDepSpec (stx : TSyntax ``depSpec) (doc? : Option DocComment) : MacroM Command := do
  let `(depSpec| $fullNameStx $[@ $ver?]? $[from $src?]? $[with $opts?]?) := stx
    | Macro.throwErrorAt stx "ill-formed require syntax"
  let src? ← src?.mapM fun src =>
    match src with
    | `(fromSource|git%$tk $url $[@ $rev?]? $[/ $subDir?]?) => withRef tk do
      let rev ← quoteOptTerm rev?
      let subDir ← quoteOptTerm subDir?
      ``(DependencySrc.git $url $rev $subDir)
    | `(fromSource|$path:term) => withRef src do
      ``(DependencySrc.path $path)
    | _ => Macro.throwErrorAt src "ill-formed from syntax"
  let `(depName|$[$scope? /]? $nameStx) := fullNameStx
    | Macro.throwErrorAt fullNameStx "ill-formed name syntax"
  let scope :=
    match scope? with
    | some scope => scope
    | none => Syntax.mkStrLit "" (.fromRef fullNameStx)
  let ver ←
    if let some ver := ver? then withRef ver do
      match ver with
      | `(verSpec|git $rev) => ``(InputVer.git $rev)
      | `(verSpec|$ver:term) => ``((eval_ver% $ver : InputVer))
      | _ => Macro.throwErrorAt ver "ill-formed version syntax"
    else if let some src := src? then
      match src with
      | `(fromSource|git $_ @ $rev $[/ $_]?) => withRef rev ``(InputVer.git $rev)
      | _ => ``(InputVer.none)
    else
       ``(InputVer.none)
  let name := expandIdentOrStrAsIdent nameStx
  `($[$doc?:docComment]? @[package_dep] def $name : $(mkCIdent ``Dependency) := {
    name :=  $(quote name.getId),
    scope := $scope,
    version := $ver,
    src? := $(← quoteOptTerm src?),
    opts := $(opts?.getD <| ← `({})),
  })

@[builtin_macro requireDecl]
def expandRequireDecl : Macro := fun stx => do
  let `(requireDecl|$(doc?)? require%$kw $spec) := stx
    | Macro.throwErrorAt stx "ill-formed require declaration"
  withRef kw do expandDepSpec spec doc?
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8cad95bf28ae2b194f8bbd4c9926ed9cffd66639260d9db8ea3d3c05c0f05b63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Require/Variantb086246bf6f1fc3e8c0c5325dcd41e3211d5336434e8bedeaa84c47c63b2f983.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
