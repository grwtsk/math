-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant4f70390eb27261eb9140675631fff81c59e29e537cfd7bb2e6b55bf6ad35e520","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4f70390eb27261eb9140675631fff81c59e29e537cfd7bb2e6b55bf6ad35e520","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant4f70390eb27261eb9140675631fff81c59e29e537cfd7bb2e6b55bf6ad35e520","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4f70390eb27261eb9140675631fff81c59e29e537cfd7bb2e6b55bf6ad35e520","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/9ed126c3a47e41a6ff2923f8d2698cea4482b380792a1e879b1e2a543f56e5a9/lean/sources/4f70390eb27261eb9140675631fff81c59e29e537cfd7bb2e6b55bf6ad35e520/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant4f70390eb27261eb9140675631fff81c59e29e537cfd7bb2e6b55bf6ad35e520

open Lean

namespace Surface.ContinuousAssurance

run_cmd Elab.Command.liftTermElabM do
  let expectedType ← Lean.Elab.Term.elabType (← `(True))
  let candidate ← Lean.Elab.Term.elabTermEnsuringType (← `(by exact True.intro) ) (some expectedType)
  Lean.Elab.Term.synthesizeSyntheticMVarsNoPostponing
  let candidate ← instantiateMVars candidate
  let expectedType ← instantiateMVars expectedType
  let env ← getEnv
  let mut pending := candidate.getUsedConstants.toList ++ expectedType.getUsedConstants.toList
  let mut visited : NameSet := {}
  while !pending.isEmpty do
    let dependency := pending.head!
    pending := pending.tail!
    if !visited.contains dependency then
      visited := visited.insert dependency
      if let some dependencyInfo := env.find? dependency then
        logInfo m!"CA_DEV_bd39fff895b6e08373ce2d0b_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_bd39fff895b6e08373ce2d0b_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_bd39fff895b6e08373ce2d0b_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_bd39fff895b6e08373ce2d0b_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_bd39fff895b6e08373ce2d0b_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_bd39fff895b6e08373ce2d0b_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
