-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetSrcDir.Variant41d8ce058a17588fada50cf354c87fc2f9de6994442255b1c8198eb6927134d7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"41d8ce058a17588fada50cf354c87fc2f9de6994442255b1c8198eb6927134d7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetSrcDir.Variant41d8ce058a17588fada50cf354c87fc2f9de6994442255b1c8198eb6927134d7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"41d8ce058a17588fada50cf354c87fc2f9de6994442255b1c8198eb6927134d7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/BVDecide/BVCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Elab.Tactic.BVDecide.BVDecide
public import Lean.Meta.Tactic.TryThis
import Lean.Meta.Tactic.BVDecide.TacticContext
import Lean.Meta.Tactic.BVDecide.Normalize


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetSrcDir.Variant41d8ce058a17588fada50cf354c87fc2f9de6994442255b1c8198eb6927134d7

public section

/-!
This modules provides the implementation of `bv_check`.
-/

namespace Lean.Elab.Tactic.BVDecide
namespace BVCheck

open Std.Tactic.BVDecide
open Std.Tactic.BVDecide.Reflect
open Meta.Tactic.BVDecide

/--
Get the directory that contains the Lean file which is currently being elaborated.
-/
def getSrcDir : TermElabM System.FilePath := do
  let ctx ← readThe Lean.Core.Context
  let srcPath := System.FilePath.mk ctx.fileName
  let some srcDir := srcPath.parent
    | throwError "cannot compute parent directory of `{srcPath}`"
  return srcDir

def mkContext (lratPath : System.FilePath) (cfg : BVDecideConfig) : TermElabM TacticContext := do
  let lratPath := (← getSrcDir) / lratPath
  TacticContext.new lratPath cfg

@[inherit_doc Lean.Parser.Tactic.bvCheck]
def bvCheck (g : MVarId) (ctx : TacticContext) : MetaM Unit := do
  discard <| closeWithBVReflection g (lratChecker ctx)


open Lean.Meta.Tactic in
@[builtin_tactic Lean.Parser.Tactic.bvCheck]
def evalBvCheck : Tactic := fun
  | `(tactic| bv_check%$tk $cfgStx:optConfig $path:str) => do
    let cfg ← elabBVDecideConfig cfgStx
    let ctx ← mkContext path.getString cfg
    liftMetaFinishingTactic fun g => do
      let g'? ← Normalize.bvNormalize g cfg
      match g'? with
      | some g' => bvCheck g' ctx
      | none =>
        let bvNormalizeStx ← `(tactic| bv_normalize $cfgStx)
        logWarning m!"This goal can be closed by only applying bv_normalize, no need to keep the LRAT proof around."
        TryThis.addSuggestion tk bvNormalizeStx (origSpan? := ← getRef)
  | _ => throwUnsupportedSyntax

end BVCheck
end Lean.Elab.Tactic.BVDecide
