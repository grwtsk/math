-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantb157c0db6b9f4975e1be50afe2dfe015d783bc49a97f38ea74a6cd96c475e82e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b157c0db6b9f4975e1be50afe2dfe015d783bc49a97f38ea74a6cd96c475e82e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantb157c0db6b9f4975e1be50afe2dfe015d783bc49a97f38ea74a6cd96c475e82e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b157c0db6b9f4975e1be50afe2dfe015d783bc49a97f38ea74a6cd96c475e82e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/dc36fd8fc14af12e5f5c84723ae46430e654d8f43883874eb92a6f12f38abcc7/lean/sources/b157c0db6b9f4975e1be50afe2dfe015d783bc49a97f38ea74a6cd96c475e82e/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantb157c0db6b9f4975e1be50afe2dfe015d783bc49a97f38ea74a6cd96c475e82e

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
        logInfo m!"CA_DEV_ffbd714376e790a78e4f82af_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_ffbd714376e790a78e4f82af_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_ffbd714376e790a78e4f82af_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_ffbd714376e790a78e4f82af_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_ffbd714376e790a78e4f82af_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_ffbd714376e790a78e4f82af_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
