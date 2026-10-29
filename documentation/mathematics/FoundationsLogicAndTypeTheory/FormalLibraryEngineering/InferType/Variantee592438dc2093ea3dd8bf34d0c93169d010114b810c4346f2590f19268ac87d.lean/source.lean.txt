-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InferTypeWithoutCache.Variantd3b50bf7e608015b615fb82959f91b589abb87da49f1c626fed7c7e122e1d074","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d3b50bf7e608015b615fb82959f91b589abb87da49f1c626fed7c7e122e1d074","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.InferTypeWithoutCache.Variantd3b50bf7e608015b615fb82959f91b589abb87da49f1c626fed7c7e122e1d074","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d3b50bf7e608015b615fb82959f91b589abb87da49f1c626fed7c7e122e1d074","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/InferType.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.SymM

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InferTypeWithoutCache.Variantd3b50bf7e608015b615fb82959f91b589abb87da49f1c626fed7c7e122e1d074

namespace Lean.Meta.Sym

def inferTypeWithoutCache (e : Expr) : MetaM Expr :=
  withReader (fun c => { c with cacheInferType := false }) do
    Meta.inferType e

def getLevelWithoutCache (type : Expr) : MetaM Level :=
  withReader (fun c => { c with cacheInferType := false }) do
    Meta.getLevel type

/-- Returns the type of `e`. -/
public def inferType (e : Expr) : SymM Expr := do
  if let some type := (← get).inferType.find? { expr := e } then
    return type
  else
    let type ← shareCommonInc (← inferTypeWithoutCache e)
    modify fun s => { s with inferType := s.inferType.insert { expr := e } type }
    return type

@[inherit_doc Meta.getLevel]
public def getLevel (type : Expr) : SymM Level := do
  if let some u := (← get).getLevel.find? { expr := type } then
    return u
  else
    let u ← getLevelWithoutCache type
    modify fun s => { s with getLevel := s.getLevel.insert { expr := type } u }
    return u

public def mkEqRefl (e : Expr) : SymM Expr := do
  let α ← inferType e
  let u ← getLevel α
  return mkApp2 (mkConst ``Eq.refl [u]) α e

end Lean.Meta.Sym
