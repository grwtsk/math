-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Grind.Variant96bb479c44aa6119dd3197d378e983deac77dc9a46d457daf2e271b4ddb75197","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"96bb479c44aa6119dd3197d378e983deac77dc9a46d457daf2e271b4ddb75197","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Grind.Variant96bb479c44aa6119dd3197d378e983deac77dc9a46d457daf2e271b4ddb75197","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"96bb479c44aa6119dd3197d378e983deac77dc9a46d457daf2e271b4ddb75197","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Grind/Cbv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
import Lean.Elab.Tactic.Grind.Basic
import Lean.Meta.Tactic.Cbv.Main

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Grind.Variant96bb479c44aa6119dd3197d378e983deac77dc9a46d457daf2e271b4ddb75197

namespace Lean.Elab.Tactic.Grind
open Meta

@[builtin_grind_tactic Parser.Tactic.Grind.symCbv] def evalSymCbv : GrindTactic := fun _ => withMainContext do
  ensureSym
  let goal ← getMainGoal
  let result ← liftGrindM <|
    Lean.Meta.Tactic.Cbv.cbvGoalCore goal.mvarId
  match result with
  | none => replaceMainGoal []
  | some mvarId => replaceMainGoal [{ goal with mvarId }]

end Lean.Elab.Tactic.Grind
