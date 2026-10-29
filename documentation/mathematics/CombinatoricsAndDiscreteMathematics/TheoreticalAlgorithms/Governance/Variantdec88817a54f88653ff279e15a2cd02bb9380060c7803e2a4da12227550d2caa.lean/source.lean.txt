-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GovernedRelease.Variant47735303a1d6a40bc118affb6a148b974a4f891d8a39106e300d80675710ce3e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"47735303a1d6a40bc118affb6a148b974a4f891d8a39106e300d80675710ce3e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.GovernedRelease.Variant47735303a1d6a40bc118affb6a148b974a4f891d8a39106e300d80675710ce3e","mathematical_subject":"Computation.DataStructures","original_sha256":"47735303a1d6a40bc118affb6a148b974a4f891d8a39106e300d80675710ce3e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/WorldModel/Governance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.Authorization
import Surface.ContinuousAssurance.Reflexive
import Surface.ContinuousAssurance.WorldModel.Coverage

/-!
# Governance for the finite world-model ecosystem

These immutable records extend the existing human review and authorization
substrate.  They cover model, translation, dataset, training, neural,
coupling, coverage, surgery, rollback, incident, and revocation artifacts.
Review and authorization remain governance evidence, never theorem authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GovernedRelease.Variant47735303a1d6a40bc118affb6a148b974a4f891d8a39106e300d80675710ce3e

namespace Surface.ContinuousAssurance.WorldModel

/-- Common exact release identity and source pin. -/
structure GovernedRelease where
  identity : ArtifactIdentity
  artifact : ArtifactIdentity
  sourceDigest : ArtifactIdentity
  proposer : HumanIdentity
  reviewer : HumanIdentity
  authorizer : HumanIdentity
  proposerReviewerSeparated : proposer ≠ reviewer
  proposerAuthorizerSeparated : proposer ≠ authorizer
  reviewEvidence : ArtifactIdentity
  authorizationEvidence : ArtifactIdentity

structure WorldModelReleaseRecord where
  release : GovernedRelease
  modelVersion : ArtifactIdentity
  registryRoot : ArtifactIdentity

structure TranslationReleaseRecord where
  release : GovernedRelease
  sourceVersion : ArtifactIdentity
  targetVersion : ArtifactIdentity
  checkerRoute : ArtifactIdentity

structure DatasetReleaseRecord where
  release : GovernedRelease
  datasetVersion : ArtifactIdentity
  generator : HumanIdentity
  licenseReview : ArtifactIdentity
  generatorNotSoleApprover : generator ≠ release.authorizer

structure TrainingRunRecord where
  identity : ArtifactIdentity
  datasetRelease : ArtifactIdentity
  codeVersion : ArtifactIdentity
  checkerVersions : List ArtifactIdentity
  outputCheckpoint : ArtifactIdentity
  executionAuthority : AuthorityClass
  externalExecution : executionAuthority = .externalCapability

structure NeuralCheckpointRelease where
  release : GovernedRelease
  trainingRun : ArtifactIdentity
  evaluationReport : ArtifactIdentity
  calibrationReport : ArtifactIdentity

structure CouplingPolicyRelease where
  release : GovernedRelease
  policy : ArtifactIdentity
  activeRegion : ArtifactIdentity
  proposerNotSoleAuthorizer : release.proposer ≠ release.authorizer

structure CoverageReviewRecord where
  identity : ArtifactIdentity
  coverageVersion : ArtifactIdentity
  metricVersion : ArtifactIdentity
  author : HumanIdentity
  reviewer : HumanIdentity
  authorReviewerSeparated : author ≠ reviewer
  evidence : ArtifactIdentity

/-- Independent review of one exact proposed surgery. -/
structure SurgeryReviewRecord where
  identity : ArtifactIdentity
  proposal : ArtifactIdentity
  patch : ArtifactIdentity
  sourceDigest : ArtifactIdentity
  activeRegion : ArtifactIdentity
  reductionTrace : ArtifactIdentity
  proposer : HumanIdentity
  reviewer : HumanIdentity
  decision : ReviewDecision
  independent : proposer ≠ reviewer

/-- Human authorization binds all four exact surgery pins. -/
structure SurgeryAuthorizationRecord where
  identity : ArtifactIdentity
  review : SurgeryReviewRecord
  proposal : ArtifactIdentity
  patch : ArtifactIdentity
  sourceDigest : ArtifactIdentity
  activeRegion : ArtifactIdentity
  reductionTrace : ArtifactIdentity
  authorizer : HumanIdentity
  reviewApproved : review.decision = .approve
  proposalMatches : review.proposal = proposal
  patchMatches : review.patch = patch
  sourceMatches : review.sourceDigest = sourceDigest
  regionMatches : review.activeRegion = activeRegion
  traceMatches : review.reductionTrace = reductionTrace
  proposerAuthorizerSeparated : review.proposer ≠ authorizer

namespace SurgeryAuthorizationRecord

def Authorizes
    (authorization : SurgeryAuthorizationRecord)
    (proposal patch source region trace : ArtifactIdentity) : Prop :=
  authorization.proposal = proposal ∧
  authorization.patch = patch ∧
  authorization.sourceDigest = source ∧
  authorization.activeRegion = region ∧
  authorization.reductionTrace = trace

theorem binds_exact_patch
    (authorization : SurgeryAuthorizationRecord) :
    authorization.review.patch = authorization.patch :=
  authorization.patchMatches

theorem binds_exact_source
    (authorization : SurgeryAuthorizationRecord) :
    authorization.review.sourceDigest = authorization.sourceDigest :=
  authorization.sourceMatches

theorem binds_exact_region
    (authorization : SurgeryAuthorizationRecord) :
    authorization.review.activeRegion = authorization.activeRegion :=
  authorization.regionMatches

theorem binds_exact_trace
    (authorization : SurgeryAuthorizationRecord) :
    authorization.review.reductionTrace = authorization.reductionTrace :=
  authorization.traceMatches

theorem stale_patch_rejected
    (authorization : SurgeryAuthorizationRecord)
    (proposal patch source region trace : ArtifactIdentity)
    (stale : authorization.patch ≠ patch) :
    ¬ authorization.Authorizes proposal patch source region trace := by
  intro authorizes
  exact stale authorizes.2.1

theorem stale_region_rejected
    (authorization : SurgeryAuthorizationRecord)
    (proposal patch source region trace : ArtifactIdentity)
    (stale : authorization.activeRegion ≠ region) :
    ¬ authorization.Authorizes proposal patch source region trace := by
  intro authorizes
  exact stale authorizes.2.2.2.1

end SurgeryAuthorizationRecord

/-- Full rollback state, including proof and checker effects. -/
structure RollbackRecord where
  identity : ArtifactIdentity
  preChangeRegistryRoot : ArtifactIdentity
  postChangeRegistryRoot : ArtifactIdentity
  affectedModels : List ArtifactIdentity
  affectedTranslations : List ArtifactIdentity
  couplingStateBefore : ArtifactIdentity
  couplingStateAfter : ArtifactIdentity
  checkerVersions : List ArtifactIdentity
  proofsInvalidated : List ArtifactIdentity
  proofsRestored : List ArtifactIdentity
  datasetVersions : List ArtifactIdentity
  neuralVersions : List ArtifactIdentity
  reason : String
  review : SurgeryReviewRecord
  authorization : SurgeryAuthorizationRecord
  postRollbackVerification : ArtifactIdentity

/-- Enumerated incident classes; the record itself is immutable data. -/
inductive IncidentKind
  | unsoundProofPromotion
  | authorityLeakage
  | datasetLicenseBreach
  | staleChecker
  | assumptionLoss
  | neuralMiscalibration
  | surgeryComplementMutation
  | coverageOverclaim
  | provenanceCorruption
  deriving DecidableEq, Repr

structure IncidentRecord where
  identity : ArtifactIdentity
  kind : IncidentKind
  detectedAgainst : ArtifactIdentity
  evidence : List ArtifactIdentity
  affectedCertificates : List ArtifactIdentity
  response : String
  owner : Project

structure CertificateRevocationRecord where
  identity : ArtifactIdentity
  incident : ArtifactIdentity
  revokedCertificate : ArtifactIdentity
  dependencyClosure : List ArtifactIdentity
  effectiveRegistryRoot : ArtifactIdentity
  reviewer : HumanIdentity
  authorizer : HumanIdentity
  reviewerAuthorizerSeparated : reviewer ≠ authorizer

/-- Existing version separation rules also govern ecosystem controllers. -/
theorem ecosystem_controller_cannot_self_authorize
    (run : AssuranceRun) :
    run.controllerVersion ≠ run.subjectVersion :=
  run.cannot_authorize_controller_version

end Surface.ContinuousAssurance.WorldModel
