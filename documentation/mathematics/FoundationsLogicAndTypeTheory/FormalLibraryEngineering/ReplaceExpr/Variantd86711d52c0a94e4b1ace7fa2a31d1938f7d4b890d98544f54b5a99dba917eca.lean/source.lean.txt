-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReplaceImpl.Variant228c3a563a08b986843cf66fd7a543f7659d7322d737b19b1b6c28f9acbad032","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"228c3a563a08b986843cf66fd7a543f7659d7322d737b19b1b6c28f9acbad032","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ReplaceImpl.Variant228c3a563a08b986843cf66fd7a543f7659d7322d737b19b1b6c28f9acbad032","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"228c3a563a08b986843cf66fd7a543f7659d7322d737b19b1b6c28f9acbad032","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/ReplaceExpr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Gabriel Ebner, Sebastian Ullrich
-/
module

prelude
public import Lean.Expr
public import Lean.Util.PtrSet


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReplaceImpl.Variant228c3a563a08b986843cf66fd7a543f7659d7322d737b19b1b6c28f9acbad032

public section

namespace Lean.Expr

@[extern "lean_replace_expr"]
opaque replaceImpl (f? : @& (Expr → Option Expr)) (e : @& Expr) : Expr

@[inline] def replace (f? : Expr → Option Expr) (e : Expr) : Expr :=
  replaceImpl f? e

@[specialize]
def replaceNoCache (f? : Expr → Option Expr) (e : Expr) : Expr :=
  match f? e with
  | some eNew => eNew
  | none      => match e with
    | .forallE _ d b _ => let d := replaceNoCache f? d; let b := replaceNoCache f? b; e.updateForallE! d b
    | .lam _ d b _     => let d := replaceNoCache f? d; let b := replaceNoCache f? b; e.updateLambdaE! d b
    | .mdata _ b       => let b := replaceNoCache f? b; e.updateMData! b
    | .letE _ t v b _  => let t := replaceNoCache f? t; let v := replaceNoCache f? v; let b := replaceNoCache f? b; e.updateLetE! t v b
    | .app f a         => let f := replaceNoCache f? f; let a := replaceNoCache f? a; e.updateApp! f a
    | .proj _ _ b      => let b := replaceNoCache f? b; e.updateProj! b
    | e                => e

end Lean.Expr
