-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabTerm.Variant0c8a9ddc8533f617076e4a81972300f3d1713cd507e98a54a9bd66704174c00c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0c8a9ddc8533f617076e4a81972300f3d1713cd507e98a54a9bd66704174c00c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabTerm.Variant0c8a9ddc8533f617076e4a81972300f3d1713cd507e98a54a9bd66704174c00c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0c8a9ddc8533f617076e4a81972300f3d1713cd507e98a54a9bd66704174c00c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/ApplyAt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz
-/
module

public meta import Lean.Elab.Tactic.ElabTerm
public meta import Mathlib.Lean.Meta.Basic
public import Mathlib.Init

/-!
# Apply at

A tactic for applying functions at hypotheses.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabTerm.Variant0c8a9ddc8533f617076e4a81972300f3d1713cd507e98a54a9bd66704174c00c

public meta section

open Lean Meta Elab Tactic Term

namespace Mathlib.Tactic

/--
`apply t at i` uses forward reasoning with `t` at the hypothesis `i`.
Explicitly, if `t : α₁ → ⋯ → αᵢ → ⋯ → αₙ` and `i` has type `αᵢ`, then this tactic adds
metavariables/goals for any terms of `αⱼ` for `j = 1, …, i-1`,
then replaces the type of `i` with `αᵢ₊₁ → ⋯ → αₙ` by applying those metavariables and the
original `i`.
-/
@[nolint tacticAlt]
elab "apply " t:term " at " i:ident : tactic => withSynthesize <| withMainContext do
  let f ← elabTermForApply t
  let some ldecl := (← getLCtx).findFromUserName? i.getId
    | throwErrorAt i m!"Identifier {i} not found"
  let (mvs, bis, _) ← forallMetaTelescopeReducingUntilDefEq (← inferType f) ldecl.type
  for (m, b) in mvs.zip bis do
    if b.isInstImplicit && !(← m.mvarId!.isAssigned) then
      try m.mvarId!.inferInstance
      catch _ => continue
  let (_, mainGoal) ← (← getMainGoal).note ldecl.userName
    (← mkAppOptM' f (mvs.pop.push ldecl.toExpr |>.map some))
  let mainGoal ← mainGoal.tryClear ldecl.fvarId
  replaceMainGoal <| [mainGoal] ++ mvs.pop.toList.map (·.mvarId!)

end Mathlib.Tactic
