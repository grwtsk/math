-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantf5f37bead8cf60dabfd773577ac4bbacfdbf870049996123744ab85bd43256fb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f5f37bead8cf60dabfd773577ac4bbacfdbf870049996123744ab85bd43256fb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantf5f37bead8cf60dabfd773577ac4bbacfdbf870049996123744ab85bd43256fb","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f5f37bead8cf60dabfd773577ac4bbacfdbf870049996123744ab85bd43256fb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/97714aa77b03b3980a4953e0b2eef3e6b728e17238e08e651e2b776e36051f00/lean/sources/f5f37bead8cf60dabfd773577ac4bbacfdbf870049996123744ab85bd43256fb/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantf5f37bead8cf60dabfd773577ac4bbacfdbf870049996123744ab85bd43256fb

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
        logInfo m!"CA_DEV_004d3af0d2861b499a3ea0b3_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_004d3af0d2861b499a3ea0b3_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_004d3af0d2861b499a3ea0b3_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_004d3af0d2861b499a3ea0b3_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_004d3af0d2861b499a3ea0b3_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_004d3af0d2861b499a3ea0b3_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
