-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalStats.Variantbc6c2be59c61021bc55dfe67867be975a1dc24caa4d6ed8dfcfd6db38eeefffc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bc6c2be59c61021bc55dfe67867be975a1dc24caa4d6ed8dfcfd6db38eeefffc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GoalStats.Variantbc6c2be59c61021bc55dfe67867be975a1dc24caa4d6ed8dfcfd6db38eeefffc","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"bc6c2be59c61021bc55dfe67867be975a1dc24caa4d6ed8dfcfd6db38eeefffc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Tree/Stats.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Tree.TreeM
import Aesop.Tree.Traversal


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalStats.Variantbc6c2be59c61021bc55dfe67867be975a1dc24caa4d6ed8dfcfd6db38eeefffc

public section

namespace Aesop

def Goal.stats (g : Goal) : TreeM GoalStats := do
  let (goal, metaState) ← g.currentGoalAndMetaState (← getRootMetaState)
  let decl := metaState.meta.mctx.getDecl goal
  let lctxSize := decl.lctx.foldl (init := 0) fun acc ldecl =>
    if ldecl.isImplementationDetail then acc else acc + 1
  return {
    goalId := g.id.toNat
    goalKind := if g.isNormal then .postNorm else .preNorm
    forwardStateStats := g.forwardState.stats
    depth := g.depth
    lctxSize
  }

def collectGoalStatsIfEnabled : TreeM Unit := do
  if ← enableStats then
    let go : StateRefT (Array GoalStats) TreeM Unit :=
      postTraverseDown
        (fun gref => do
          let stats ← (← gref.get).stats
          modify (·.push stats))
        (fun _rref => return)
        (fun _cref => return)
        (.mvarCluster (← getThe Tree).root)
    let goalStats ← (·.2) <$> go.run #[]
    modifyStats ({ · with goalStats })

end Aesop
