-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variante548d4391197ef395de94e41dfecd9c792433c9113507081f0a7f3cad11e4aed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e548d4391197ef395de94e41dfecd9c792433c9113507081f0a7f3cad11e4aed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.State.Variante548d4391197ef395de94e41dfecd9c792433c9113507081f0a7f3cad11e4aed","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e548d4391197ef395de94e41dfecd9c792433c9113507081f0a7f3cad11e4aed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/CollectFVars.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.LocalContext


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variante548d4391197ef395de94e41dfecd9c792433c9113507081f0a7f3cad11e4aed

public section

namespace Lean.CollectFVars

structure State where
  visitedExpr  : ExprSet  := {}
  fvarSet      : FVarIdSet  := {}
  fvarIds      : Array FVarId := #[]
  deriving Inhabited

def State.add (s : State) (fvarId : FVarId) : State :=
  { s with fvarSet := s.fvarSet.insert fvarId, fvarIds := s.fvarIds.push fvarId }

abbrev Visitor := State → State

mutual
  partial def visit (e : Expr) : Visitor := fun s =>
    if !e.hasFVar || s.visitedExpr.contains e then s
    else main e { s with visitedExpr := s.visitedExpr.insert e }

  partial def main : Expr → Visitor
    | .proj _ _ e      => visit e
    | .forallE _ d b _ => visit b ∘ visit d
    | .lam _ d b _     => visit b ∘ visit d
    | .letE _ t v b _  => visit b ∘ visit v ∘ visit t
    | .app f a         => visit a ∘ visit f
    | .mdata _ b       => visit b
    | .fvar fvarId     => fun s => s.add fvarId
    | _                => id
end

end CollectFVars

def collectFVars (s : CollectFVars.State) (e : Expr) : CollectFVars.State :=
  CollectFVars.main e s

end Lean
