-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsIndependentOf.Variantb5e5cd827814edde44ed088c0bfc01346098da99f028afa63b6d3fb2a700b64a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b5e5cd827814edde44ed088c0bfc01346098da99f028afa63b6d3fb2a700b64a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsIndependentOf.Variantb5e5cd827814edde44ed088c0bfc01346098da99f028afa63b6d3fb2a700b64a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b5e5cd827814edde44ed088c0bfc01346098da99f028afa63b6d3fb2a700b64a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/IndependentOf.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Jannis Limperg
-/
module

prelude
public import Lean.Meta.CollectMVars
public import Lean.Meta.Tactic.Util


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsIndependentOf.Variantb5e5cd827814edde44ed088c0bfc01346098da99f028afa63b6d3fb2a700b64a

public section

namespace Lean.MVarId

open Meta

/--
Check if a goal is "independent" of a list of other goals.
We say a goal is independent of other goals if assigning a value to it
can not change the assignability of the other goals.

Examples:
* `?m_1 : Type` is not independent of `?m_2 : ?m_1`,
  because we could assign `true : Bool` to `?m_2`,
  but if we first assign `Nat` to `?m_1` then that is no longer possible.
* `?m_1 : Nat` is not independent of `?m_2 : Fin ?m_1`,
  because we could assign `37 : Fin 42` to `?m_2`,
  but if we first assign `2` to `?m_1` then that is no longer possible.
* `?m_1 : ?m_2` is not independent of `?m_2 : Type`, because we could assign `Bool` to ?m_2`,
  but if we first assign `0 : Nat` to `?m_1` then that is no longer possible.
* Given `P : Prop` and `f : P → Type`, `?m_1 : P` is independent of `?m_2 : f ?m_1`
  by proof irrelevance.
* Similarly given `f : Fin 0 → Type`, `?m_1 : Fin 0` is independent of `?m_2 : f ?m_1`,
  because `Fin 0` is a subsingleton.
* Finally `?m_1 : Nat` is independent of `?m_2 : α`,
  as long as `?m_1` does not appear in `Meta.getMVars α`
  (note that `Meta.getMVars` follows delayed assignments).

This function only calculates a conservative approximation of this condition.
That is, it may return `false` when it should return `true`.
(In particular it returns false whenever the type of `g` contains a metavariable,
regardless of whether this is related to the metavariables in `L`.)
-/
def isIndependentOf (L : List MVarId) (g : MVarId) : MetaM Bool := g.withContext do
  let t ← instantiateMVars (← g.getType)
  if t.hasExprMVar then
    -- If the goal's type contains other meta-variables,
    -- we conservatively say that `g` is not independent.
    -- It would be possible to check if `L` depends on these meta-variables.
    return false
  if (← inferType t).isProp then
    -- If the goal is propositional,
    -- proof-irrelevance ensures it is independent of any other goals.
    return true
  if ← g.isSubsingleton then
    -- If the goal is a subsingleton, it is independent of any other goals.
    return true
  -- Finally, we check if the goal `g` appears in the type of any of the goals `L`.
  L.allM fun g' => do pure !((← getMVarDependencies g').contains g)

end Lean.MVarId
