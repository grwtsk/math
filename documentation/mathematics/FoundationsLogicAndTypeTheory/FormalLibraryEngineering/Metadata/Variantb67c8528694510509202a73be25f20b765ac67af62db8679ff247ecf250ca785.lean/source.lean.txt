-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantb8ae88aa562df0a2e1a3557fdc0ad7dc0b30f24721fc1c5f31dd863a75d7fb1b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b8ae88aa562df0a2e1a3557fdc0ad7dc0b30f24721fc1c5f31dd863a75d7fb1b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantb8ae88aa562df0a2e1a3557fdc0ad7dc0b30f24721fc1c5f31dd863a75d7fb1b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b8ae88aa562df0a2e1a3557fdc0ad7dc0b30f24721fc1c5f31dd863a75d7fb1b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/a3f388f4162918ea5befc1b62ad077e095050f6e65c5153c2fa061af6714442c/lean/sources/b8ae88aa562df0a2e1a3557fdc0ad7dc0b30f24721fc1c5f31dd863a75d7fb1b/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantb8ae88aa562df0a2e1a3557fdc0ad7dc0b30f24721fc1c5f31dd863a75d7fb1b

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
        logInfo m!"CA_DEV_05e6997d9f37f94504763643_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_05e6997d9f37f94504763643_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_05e6997d9f37f94504763643_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_05e6997d9f37f94504763643_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_05e6997d9f37f94504763643_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_05e6997d9f37f94504763643_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
