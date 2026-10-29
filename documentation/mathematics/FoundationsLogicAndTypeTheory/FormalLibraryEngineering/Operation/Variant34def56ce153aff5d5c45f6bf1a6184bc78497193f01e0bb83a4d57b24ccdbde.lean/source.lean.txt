-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NetworkOperation.Variantbf7e77236956a9c9250d4d48e5ac9d3bbcefff55c835575b1c2cb2813894737c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bf7e77236956a9c9250d4d48e5ac9d3bbcefff55c835575b1c2cb2813894737c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.NetworkOperation.Variantbf7e77236956a9c9250d4d48e5ac9d3bbcefff55c835575b1c2cb2813894737c","mathematical_subject":"Foundations.Unclassified","original_sha256":"bf7e77236956a9c9250d4d48e5ac9d3bbcefff55c835575b1c2cb2813894737c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/network/NetworkElements/Operation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Capability.Effect

/-! # Closed network operation registry -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NetworkOperation.Variantbf7e77236956a9c9250d4d48e5ac9d3bbcefff55c835575b1c2cb2813894737c

namespace URSM.Network

open Mathematics.Capability

inductive NetworkOperation
  | queryState
  | queryProject
  | queryDeclaration
  | queryOutcome
  | subscribe
  | requestDiagnostic
  | fetchObjectAuthorization
  | prepareUpload
  | registerStagedObject
  | refreshProject
  | buildProject
  | checkProject
  | testProject
  | extractProject
  | composeComposite
  | verifyComposite
  | compareBuilds
  | generateBitfield
  | requestTransport
  | cancelJob
  | prepareActivation
  | activateComposite
  | proposePatch
  | prepareRuntimeCandidate
  | requestRuntimeHandoff
  deriving DecidableEq, Repr

def NetworkOperation.requiredEffect : NetworkOperation → Effect
  | .queryState
  | .queryProject
  | .queryDeclaration
  | .queryOutcome
  | .subscribe
  | .requestDiagnostic => .observe
  | .fetchObjectAuthorization => .retain
  | .prepareUpload
  | .registerStagedObject
  | .extractProject => .retain
  | .composeComposite
  | .generateBitfield
  | .requestTransport
  | .proposePatch => .transform
  | .refreshProject
  | .buildProject
  | .checkProject
  | .testProject
  | .verifyComposite
  | .compareBuilds
  | .cancelJob
  | .prepareActivation
  | .activateComposite
  | .prepareRuntimeCandidate
  | .requestRuntimeHandoff => .execute

def NetworkOperation.isObservation : NetworkOperation → Bool
  | .queryState
  | .queryProject
  | .queryDeclaration
  | .queryOutcome
  | .subscribe
  | .requestDiagnostic => true
  | _ => false

@[simp] theorem query_state_requires_observe :
    NetworkOperation.queryState.requiredEffect = .observe :=
  rfl

@[simp] theorem activation_requires_execute :
    NetworkOperation.activateComposite.requiredEffect = .execute :=
  rfl

end URSM.Network
