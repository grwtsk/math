-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalBVNormalize.Variant5de9f58c7b53bf24af68f97e6dedd85efcedda4f6de2a8878100b4d098d4af6c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5de9f58c7b53bf24af68f97e6dedd85efcedda4f6de2a8878100b4d098d4af6c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EvalBVNormalize.Variant5de9f58c7b53bf24af68f97e6dedd85efcedda4f6de2a8878100b4d098d4af6c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5de9f58c7b53bf24af68f97e6dedd85efcedda4f6de2a8878100b4d098d4af6c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/BVDecide/Normalize.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module
prelude
public import Lean.Meta.Tactic.BVDecide.Normalize


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalBVNormalize.Variant5de9f58c7b53bf24af68f97e6dedd85efcedda4f6de2a8878100b4d098d4af6c

namespace Lean.Elab.Tactic.BVDecide
namespace Normalize

@[builtin_tactic Lean.Parser.Tactic.bvNormalize]
def evalBVNormalize : Tactic := fun
  | `(tactic| bv_normalize $cfg:optConfig) => do
    let cfg ← Meta.Tactic.BVDecide.elabBVDecideConfig cfg
    let g ← getMainGoal
    match ← Meta.Tactic.BVDecide.Normalize.bvNormalize g cfg with
    | some newGoal => replaceMainGoal [newGoal]
    | none => replaceMainGoal []
  | _ => throwUnsupportedSyntax

end Normalize
end Lean.Elab.Tactic.BVDecide
