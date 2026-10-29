-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyIteSimproc.Variant63b20c2c62994c173b4bb5a5d54b0cc122b62d7fd6e9d7bd8ce68db8b2a9d35a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63b20c2c62994c173b4bb5a5d54b0cc122b62d7fd6e9d7bd8ce68db8b2a9d35a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ApplyIteSimproc.Variant63b20c2c62994c173b4bb5a5d54b0cc122b62d7fd6e9d7bd8ce68db8b2a9d35a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"63b20c2c62994c173b4bb5a5d54b0cc122b62d7fd6e9d7bd8ce68db8b2a9d35a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/BVDecide/Normalize/ApplyControlFlow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Meta.Tactic.Simp
import Init.ByCases
import Init.Omega

/-!
This modules contains simprocs and functions to compute discrimination tree keys in order to
construct simp sets that apply `apply_ite` and `Bool.apply_cond` to specific functions.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyIteSimproc.Variant63b20c2c62994c173b4bb5a5d54b0cc122b62d7fd6e9d7bd8ce68db8b2a9d35a

namespace Lean.Meta.Tactic.BVDecide
namespace Normalize

public def applyIteSimproc : Simp.Simproc := fun e => e.withApp fun fn args => do
  if h : args.size ≠ 0 then
    let_expr ite α c instDec t e := args.back | return .continue
    let params := args.pop
    let fnApp := mkAppN fn params
    let newT := mkApp fnApp t
    let newE := mkApp fnApp e
    let newIf ← mkAppOptM ``ite #[none, c, instDec, newT, newE]
    let proof ← mkAppOptM ``apply_ite #[α, none, fnApp, c, instDec, t, e]
    return .visit { expr := newIf, proof? := some proof }
  else
    return .continue

public def applyCondSimproc : Simp.Simproc := fun e => e.withApp fun fn args => do
  if h : args.size ≠ 0 then
    let_expr cond α c t e := args.back | return .continue
    let params := args.pop
    let fnApp := mkAppN fn params
    let newT := mkApp fnApp t
    let newE := mkApp fnApp e
    let newCond ← mkAppOptM ``cond #[none, c, newT, newE]
    let proof ← mkAppOptM ``Bool.apply_cond #[α, none, fnApp, c, t, e]
    return .visit { expr := newCond, proof? := some proof }
  else
    return .continue

/--
For `Prod.fst` and `ite` this function creates the path: `Prod.fst (ite (Prod _ _) _ _ _ _)`.
This path can be used to match on applications of structure projections onto control flow primitives.
-/
public def mkApplyProjControlDiscrPath (struct : Name) (structParams : Nat) (projIdx : Nat)
    (controlFlow : Name) (controlFlowParams : Nat) : Array DiscrTree.Key := Id.run do
  let stars := structParams + controlFlowParams - 1
  let mut path : Array DiscrTree.Key := Array.mkEmpty (3 + stars)
  path := path.push <| .proj struct projIdx 0
  path := path.push <| .const controlFlow controlFlowParams
  path := path.push <| .const struct structParams
  path := Nat.fold (init := path) stars (fun _ _ acc => acc.push .star)
  return path

/--
For `f`, `SomeType α β` and `ite` this function creates the path: `f (ite (SomeType _ _) _ _ _ _)`.
This path can be used to match on applications of unary functions onto control flow primitives.
-/
public def mkApplyUnaryControlDiscrPath (type : Name) (typeParams : Nat) (constName : Name)
    (controlFlow : Name) (controlFlowParams : Nat) : Array DiscrTree.Key := Id.run do
  let stars := typeParams + controlFlowParams - 1
  let mut path : Array DiscrTree.Key := Array.mkEmpty (3 + stars)
  path := path.push <| .const constName 1
  path := path.push <| .const controlFlow controlFlowParams
  path := path.push <| .const type typeParams
  path := Nat.fold (init := path) stars (fun _ _ acc => acc.push .star)
  return path

end Normalize
end Lean.Meta.Tactic.BVDecide
