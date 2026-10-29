-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsSupportedType.Variantcf9bd3fc049c06352130dfc19ebb14b5b7ff4b0f3c8e1bfbf578987caedc3e86","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf9bd3fc049c06352130dfc19ebb14b5b7ff4b0f3c8e1bfbf578987caedc3e86","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsSupportedType.Variantcf9bd3fc049c06352130dfc19ebb14b5b7ff4b0f3c8e1bfbf578987caedc3e86","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"cf9bd3fc049c06352130dfc19ebb14b5b7ff4b0f3c8e1bfbf578987caedc3e86","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Simp/Arith/Util.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Basic

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsSupportedType.Variantcf9bd3fc049c06352130dfc19ebb14b5b7ff4b0f3c8e1bfbf578987caedc3e86

public section
namespace Lean.Meta.Simp.Arith

private def isSupportedType (type : Expr) : Bool :=
  match_expr type with
  | Nat => true
  | Int => true
  | _ => false

private def isSupportedCommRingType (type : Expr) : Bool :=
  match_expr type with
  | Int => true
  | _ => false

/-- Quick filter for linear terms. -/
def isLinearTerm? (e : Expr) : Option Expr :=
  match_expr e with
  | HAdd.hAdd α _ _ _ _ _ => .guard isSupportedType α
  | HMul.hMul α _ _ _ _ _ => .guard isSupportedType α
  | HSub.hSub α _ _ _ _ _ => .guard isSupportedCommRingType α
  | Neg.neg α _ _ => .guard isSupportedCommRingType α
  | Nat.succ _ => some Nat.mkType
  | _ => none

def isLinearTerm (e : Expr) : Bool :=
  isLinearTerm? e |>.isSome

def isLinearPosCnstr (e : Expr) : Bool :=
  match_expr e with
  | Eq α _ _ => isSupportedType α
  | Ne α _ _ => isSupportedType α
  | LE.le α _ _ _ => isSupportedType α
  | LT.lt α _ _ _ => isSupportedType α
  | GT.gt α _ _ _ => isSupportedType α
  | GE.ge α _ _ _ => isSupportedType α
  | _ => false

def isLinearCnstr (e : Expr) : Bool :=
  match_expr e with
  | Not p => isLinearPosCnstr p
  | _ => isLinearPosCnstr e

def isDvdCnstr (e : Expr) : Bool :=
  match_expr e with
  | Dvd.dvd α _ _ _ => isSupportedType α
  | _ => false

end Lean.Meta.Simp.Arith
