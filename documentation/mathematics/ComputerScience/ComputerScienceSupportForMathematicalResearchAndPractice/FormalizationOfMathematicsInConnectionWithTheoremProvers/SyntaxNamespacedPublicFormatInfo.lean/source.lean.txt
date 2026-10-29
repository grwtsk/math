-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FormatInfo.Variantfd4a889bc742f87efe573cbdce9ab1342ea5830de6168745f23659d474112efc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd4a889bc742f87efe573cbdce9ab1342ea5830de6168745f23659d474112efc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FormatInfo.Variantfd4a889bc742f87efe573cbdce9ab1342ea5830de6168745f23659d474112efc","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fd4a889bc742f87efe573cbdce9ab1342ea5830de6168745f23659d474112efc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Format/Syntax.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Leonardo de Moura
-/
module

prelude
import Init.Data.ToString.Name
public import Init.Data.ToString.Basic
import Init.Data.Format.Instances
import Init.Data.Format.Macro


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FormatInfo.Variantfd4a889bc742f87efe573cbdce9ab1342ea5830de6168745f23659d474112efc

public section

namespace Lean.Syntax

open Std
open Std.Format

private def formatInfo (showInfo : Bool) (info : SourceInfo) (f : Format) : Format :=
  match showInfo, info with
  | true, SourceInfo.original lead pos trail endPos => f!"{repr lead.toString}:{pos}:{f}:{endPos}:{repr trail.toString}"
  | true, SourceInfo.synthetic pos endPos true      => f!"{pos}!:{f}:{endPos}"
  | true, SourceInfo.synthetic pos endPos false     => f!"{pos}:{f}:{endPos}"
  | _,    _                                         => f

partial def formatStxAux (maxDepth : Option Nat) (showInfo : Bool) (depth : Nat) : Syntax → Format
  | atom info val        => formatInfo showInfo info <| format (repr val)
  | ident info _ val _   => formatInfo showInfo info <| format "`" ++ format val
  | missing              => "<missing>"
  | node info kind args  =>
    let depth := depth + 1;
    if kind == nullKind then
      sbracket <|
        if args.size > 0 && depth > maxDepth.getD depth then
          ".."
        else
          joinSep (args.toList.map (formatStxAux maxDepth showInfo depth)) line
    else
      let shorterName := kind.replacePrefix `Lean.Parser Name.anonymous
      let header      := formatInfo showInfo info <| format shorterName
      let body : List Format :=
        if args.size > 0 && depth > maxDepth.getD depth then
          [".."]
        else
          args.toList.map (formatStxAux maxDepth showInfo depth)
      paren <| joinSep (header :: body) line

/-- Pretty print the given syntax `stx` as a `Format`.
Nodes deeper than `maxDepth` are omitted.
Setting the `showInfo` flag will also print the `SourceInfo` for each node. -/
def formatStx (stx : Syntax) (maxDepth : Option Nat := none) (showInfo := false) : Format :=
  formatStxAux maxDepth showInfo 0 stx

instance : ToFormat (Syntax) := ⟨formatStx⟩
instance : ToString (Syntax) := ⟨@toString Format _ ∘ format⟩

instance : ToFormat (TSyntax k) := ⟨(format ·.raw)⟩
instance : ToString (TSyntax k) := ⟨(toString ·.raw)⟩

end Lean.Syntax
