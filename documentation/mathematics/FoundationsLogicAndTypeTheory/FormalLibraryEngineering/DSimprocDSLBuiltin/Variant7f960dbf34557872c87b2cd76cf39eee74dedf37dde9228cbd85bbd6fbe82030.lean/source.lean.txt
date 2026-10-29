-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabGround.Variant0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabGround.Variant0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Grind/DSimprocDSLBuiltin.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
import Lean.Elab.Tactic.Grind.DSimprocDSL
import Init.Sym.DSimp.DSimprocDSL
import Lean.Meta.Sym.DSimp.Reduce
import Lean.Meta.Sym.DSimp.DSimproc
import Lean.Meta.Sym.DSimp.EvalGround

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabGround.Variant0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab

namespace Lean.Elab.Tactic.Grind
open Meta Sym.DSimp

-- DSimproc elaborators

@[builtin_sym_dsimproc Lean.Parser.Sym.DSimp.ground]
def elabGround : SymDSimprocElab := fun _ =>
  return evalGround

@[builtin_sym_dsimproc Lean.Parser.Sym.DSimp.zetaDelta]
def elabZetaDeltaAll : SymDSimprocElab := fun _ =>
  return zetaDeltaAll

@[builtin_sym_dsimproc Lean.Parser.Sym.DSimp.zeta]
def elabZeta : SymDSimprocElab := fun _ =>
  return zeta

@[builtin_sym_dsimproc Lean.Parser.Sym.DSimp.beta]
def elabBeta : SymDSimprocElab := fun _ =>
  return beta

@[builtin_sym_dsimproc Lean.Parser.Sym.DSimp.reduceMatch]
def elabReduceMatch : SymDSimprocElab := fun _ =>
  return dsimpMatch

@[builtin_sym_dsimproc Lean.Parser.Sym.DSimp.proj]
def elabProj : SymDSimprocElab := fun _ =>
  return dsimpProj

@[builtin_sym_dsimproc Lean.Parser.Sym.DSimp.none]
def elabNone : SymDSimprocElab := fun _ =>
  return fun _ => return .rfl

@[builtin_sym_dsimproc andThen]
def elabDSimprocAndThen : SymDSimprocElab := fun stx => do
  let `(sym_dsimproc| $left >> $right) := stx | throwUnsupportedSyntax
  let left ← elabSymDSimproc left
  let right ← elabSymDSimproc right
  return left >> right

@[builtin_sym_dsimproc Lean.Parser.Sym.DSimp.orElse]
def elabDSimprocOrElse : SymDSimprocElab := fun stx => do
  let `(sym_dsimproc| $left <|> $right) := stx | throwUnsupportedSyntax
  let left ← elabSymDSimproc left
  let right ← elabSymDSimproc right
  return left <|> right

@[builtin_sym_dsimproc dsimprocParen]
def elabDSimprocParen : SymDSimprocElab := fun stx => do
  let `(sym_dsimproc| ( $proc) ) := stx | throwUnsupportedSyntax
  elabSymDSimproc proc

end Lean.Elab.Tactic.Grind
