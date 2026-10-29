-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DelabWithUniv.Variantd881f3fcf0964258b0cc835bd91affc0d18b01335f783afb8657049d1408b592","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d881f3fcf0964258b0cc835bd91affc0d18b01335f783afb8657049d1408b592","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DelabWithUniv.Variantd881f3fcf0964258b0cc835bd91affc0d18b01335f783afb8657049d1408b592","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"d881f3fcf0964258b0cc835bd91affc0d18b01335f783afb8657049d1408b592","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/PPWithUniv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","scope_end_name_mismatch","scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
import Mathlib.Init

/-!
# Attribute to pretty-print universe level parameters by default

This module contains the `pp_with_univ` attribute, which enables pretty-printing
of universe parameters for the associated declaration.  This is helpful for definitions like
`Ordinal`, where the universe levels are both relevant and not deducible from the arguments.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DelabWithUniv.Variantd881f3fcf0964258b0cc835bd91affc0d18b01335f783afb8657049d1408b592

namespace Mathlib.PPWithUniv

open Lean Parser PrettyPrinter Delaborator SubExpr Elab Command

/--
Delaborator that prints the current application with universe parameters on the head symbol,
unless `pp.universes` is explicitly set to `false`.
-/
def delabWithUniv : Delab :=
  whenPPOption (·.get pp.universes.name true) <|
  let enablePPUnivOnHead subExpr :=
    let expr := subExpr.expr
    let expr := mkAppN (expr.getAppFn.setOption pp.universes.name true) expr.getAppArgs
    { subExpr with expr }
  withTheReader SubExpr enablePPUnivOnHead delabApp

/--
`attribute [pp_with_univ] Ordinal` instructs the pretty-printer to
print `Ordinal.{u}` with universe parameters by default
(unless `pp.universes` is explicitly set to `false`).
-/
syntax (name := ppWithUnivAttr) "pp_with_univ" : attr

initialize registerBuiltinAttribute {
  name := `ppWithUnivAttr
  descr := ""
  applicationTime := .afterCompilation
  add := fun src ref kind => match ref with
  | `(attr| pp_with_univ) => do
    liftCommandElabM <| withRef ref do
      let attr ← Elab.elabAttr <| ← `(Term.attrInstance| delab $(mkIdent <| `app ++ src))
      liftTermElabM <| Term.applyAttributes ``delabWithUniv #[{attr with kind}]
  | _ => throwUnsupportedSyntax }

end PPWithUniv

end Mathlib
