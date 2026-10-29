-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Expr.Variant037a3f9b49ebff9110298672b5fdc78a02ed5371afa22db9dc752dff77464ed1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"037a3f9b49ebff9110298672b5fdc78a02ed5371afa22db9dc752dff77464ed1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Expr.Variant037a3f9b49ebff9110298672b5fdc78a02ed5371afa22db9dc752dff77464ed1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"037a3f9b49ebff9110298672b5fdc78a02ed5371afa22db9dc752dff77464ed1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Util/AliasIn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Expr.Variant037a3f9b49ebff9110298672b5fdc78a02ed5371afa22db9dc752dff77464ed1

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
