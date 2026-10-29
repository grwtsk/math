-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabPackageCommand.Variantb5e6fbc6bea391c86bfd49e2dc33177aca38a896c1069f34e46363cb387fb736","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b5e6fbc6bea391c86bfd49e2dc33177aca38a896c1069f34e46363cb387fb736","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.ElabPackageCommand.Variantb5e6fbc6bea391c86bfd49e2dc33177aca38a896c1069f34e46363cb387fb736","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"b5e6fbc6bea391c86bfd49e2dc33177aca38a896c1069f34e46363cb387fb736","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/DSL/Package.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.DSL.Syntax
import Lake.Config.Package  -- shake: keep (builtin macro output dependency)
import Lake.DSL.Extensions


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabPackageCommand.Variantb5e6fbc6bea391c86bfd49e2dc33177aca38a896c1069f34e46363cb387fb736

open Lean Parser Elab Command

namespace Lake.DSL

/-! # Package Declarations
DSL definitions for packages and hooks.
-/

@[builtin_command_elab packageCommand]
def elabPackageCommand : CommandElab := fun stx => do
  let `(packageCommand|$(doc?)? $(attrs?)? package%$kw $[$nameStx?]? $cfg) := stx
    | throwErrorAt stx "ill-formed package declaration"
  withRef kw do
  let configId : Ident ← `(pkgConfig)
  let id ← mkConfigDeclIdent nameStx?
  let origName := Name.quoteFrom id id.getId
  let ⟨wsIdx, name⟩ := nameExt.getState (← getEnv)
  let baseName := match name with
    | .anonymous => origName
    | name => Name.quoteFrom id name
  let wsIdx := quote wsIdx
  let keyName := Syntax.mkCApp ``Name.num #[baseName, wsIdx]
  let ty := Syntax.mkCApp ``PackageConfig #[keyName, origName]
  elabConfig ``PackageConfig configId ty cfg
  let attr ← `(Term.attrInstance| «package»)
  let attrs := #[attr] ++ expandAttrs attrs?
  let id := mkIdentFrom id packageDeclName
  let decl ← `({baseName := $baseName, origName := $origName, keyName := $keyName, config := $configId})
  let cmd ← `($[$doc?]? @[$attrs,*] abbrev $id : PackageDecl := $decl)
  withMacroExpansion stx cmd <| elabCommand cmd
  let nameId := mkIdentFrom id <| packageDeclName.str "name"
  elabCommand <| ← `(
    @[deprecated "Use `__name__` instead." (since := "2025-09-18")]
    abbrev $nameId := __name__
  )

@[builtin_macro postUpdateDecl]
def expandPostUpdateDecl : Macro := fun stx => do
  match stx with
  | `($[$doc?]? $[$attrs?]? post_update%$kw $[$pkg?]? do $seq $[$wds?:whereDecls]?) =>
    `($[$doc?]? $[$attrs?]? post_update%$kw $[$pkg?]? := do $seq $[$wds?:whereDecls]?)
  | `($[$doc?]? $[$attrs?]? post_update%$kw $[$pkg?]? := $defn $[$wds?:whereDecls]?) => withRef kw do
    let pkg ← expandOptSimpleBinder pkg?
    let attr ← `(Term.attrInstance| «post_update»)
    let attrs := #[attr] ++ expandAttrs attrs?
    `($[$doc?]? @[$attrs,*] def postUpdateHook : PostUpdateHookDecl :=
      {pkg := __name__, fn := fun $pkg => $defn} $[$wds?:whereDecls]?)
  | stx => Macro.throwErrorAt stx "ill-formed post_update declaration"
