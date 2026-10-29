-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DocScope.Variant9e1441c1ea241cf68c3426124b705f0ab73b9c6ebddbac8db1cb74fe3d95bd33","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9e1441c1ea241cf68c3426124b705f0ab73b9c6ebddbac8db1cb74fe3d95bd33","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DocScope.Variant9e1441c1ea241cf68c3426124b705f0ab73b9c6ebddbac8db1cb74fe3d95bd33","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9e1441c1ea241cf68c3426124b705f0ab73b9c6ebddbac8db1cb74fe3d95bd33","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/DocString/Builtin/Scopes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: David Thrane Christiansen
-/
module
prelude

public import Lean.Elab.DocString
public import Lean.Elab.DocString.Builtin.Parsing


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DocScope.Variant9e1441c1ea241cf68c3426124b705f0ab73b9c6ebddbac8db1cb74fe3d95bd33

namespace Lean.Doc
open Lean.Parser

public section

inductive DocScope where
  | local
  | import (mods : Array Name)

private def imports := leading_parser sepBy1 ident ", "
set_option compiler.relaxedMetaCheck true in
private meta def importsM := imports

instance : FromDocArg DocScope where
  fromDocArg v := private
    match v with
    | .str s => do
      let stx ← withRef s <| parseQuotedStrLit (whitespace >> imports.fn) s
      let `(importsM|$modNames,*) := stx
        | throwErrorAt stx "Expected comma-separated imports list, got `{stx}`"
      let modNames : Array Ident := modNames
      return .import (modNames.map (·.getId))
    | .ident x =>
      let y := x.getId.eraseMacroScopes
      if y == `local then pure .local
      else throwErrorAt x "Unexpected identifier, expected `local` or a string of imports"
    | .num n => throwErrorAt n "Unexpected number `{n}`"
