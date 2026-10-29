-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant26d67724c576ecfccb14ea467eccb9a864490c220ab4c555715c16798c82c1a8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"26d67724c576ecfccb14ea467eccb9a864490c220ab4c555715c16798c82c1a8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.State.Variant26d67724c576ecfccb14ea467eccb9a864490c220ab4c555715c16798c82c1a8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"26d67724c576ecfccb14ea467eccb9a864490c220ab4c555715c16798c82c1a8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/CollectLevelParams.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Expr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant26d67724c576ecfccb14ea467eccb9a864490c220ab4c555715c16798c82c1a8

public section

namespace Lean

namespace CollectLevelParams

structure State where
  visitedLevel : LevelSet   := {}
  visitedExpr  : ExprSet    := {}
  params       : Array Name := #[]

instance : Inhabited State := ⟨{}⟩

abbrev Visitor := State → State

mutual
  partial def visitLevel (u : Level) : Visitor := fun s =>
    if !u.hasParam || s.visitedLevel.contains u then s
    else collect u { s with visitedLevel := s.visitedLevel.insert u }

  partial def collect : Level → Visitor
    | .succ v    => visitLevel v
    | .max u v   => visitLevel v ∘ visitLevel u
    | .imax u v  => visitLevel v ∘ visitLevel u
    | .param n   => fun s => { s with params := s.params.push n }
    | _          => id
end

def visitLevels (us : List Level) : Visitor :=
  fun s => us.foldl (fun s u => visitLevel u s) s

mutual
  partial def visitExpr (e : Expr) : Visitor := fun s =>
    if !e.hasLevelParam then s
    else if s.visitedExpr.contains e then s
    else main e { s with visitedExpr := s.visitedExpr.insert e }

  partial def main : Expr → Visitor
    | .proj _ _ s      => visitExpr s
    | .forallE _ d b _ => visitExpr b ∘ visitExpr d
    | .lam _ d b _     => visitExpr b ∘ visitExpr d
    | .letE _ t v b _  => visitExpr b ∘ visitExpr v ∘ visitExpr t
    | .app f a         => visitExpr a ∘ visitExpr f
    | .mdata _ b       => visitExpr b
    | .const _ us      => visitLevels us
    | .sort u          => visitLevel u
    | _                => id
end

partial def State.getUnusedLevelParam (s : CollectLevelParams.State) (pre : Name := `v) : Level :=
  let v := mkLevelParam pre;
  if s.visitedLevel.contains v then
    let rec loop (i : Nat) :=
      let v := mkLevelParam (pre.appendIndexAfter i);
      if s.visitedLevel.contains v then loop (i+1) else v
    loop 1
  else
    v

end CollectLevelParams

def collectLevelParams (s : CollectLevelParams.State) (e : Expr) : CollectLevelParams.State :=
  CollectLevelParams.main e s

def CollectLevelParams.State.collect (s : CollectLevelParams.State) (e : Expr) : CollectLevelParams.State :=
  collectLevelParams s e

end Lean
