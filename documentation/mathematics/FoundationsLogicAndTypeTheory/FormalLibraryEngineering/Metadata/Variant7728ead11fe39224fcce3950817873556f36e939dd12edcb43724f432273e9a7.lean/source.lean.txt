-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantf45b31a66074ebbcdd6695c9fb959e82bd098d7c0347a79e47818b8ffb2b9a64","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f45b31a66074ebbcdd6695c9fb959e82bd098d7c0347a79e47818b8ffb2b9a64","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantf45b31a66074ebbcdd6695c9fb959e82bd098d7c0347a79e47818b8ffb2b9a64","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f45b31a66074ebbcdd6695c9fb959e82bd098d7c0347a79e47818b8ffb2b9a64","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/5142ca5beab2e837793330657e113262eab8abe0a90fba48284b171dcd7a66d9/lean/sources/f45b31a66074ebbcdd6695c9fb959e82bd098d7c0347a79e47818b8ffb2b9a64/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantf45b31a66074ebbcdd6695c9fb959e82bd098d7c0347a79e47818b8ffb2b9a64

open Lean

namespace Surface.ContinuousAssurance

run_cmd Elab.Command.liftTermElabM do
  let expectedType ← Lean.Elab.Term.elabType (← `(True))
  let candidate ← Lean.Elab.Term.elabTermEnsuringType (← `(by exact False.elim (by exact True.intro)) ) (some expectedType)
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
        logInfo m!"CA_DEV_fc85f2b91e40016215b88596_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_fc85f2b91e40016215b88596_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_fc85f2b91e40016215b88596_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_fc85f2b91e40016215b88596_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_fc85f2b91e40016215b88596_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_fc85f2b91e40016215b88596_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
