import CordTheory.Basic

/-!
# Repository-evidenced finite probe coverage

This module is the finite Lean carrier for
`CORD-ONTOLOGY-REPOSITORY-PROBE-COVERAGE-1@1.0.0`.  Every theorem is
conditional on exact, typed evidence supplied by records below.  Repository
evidence, a finite enumeration, a successful validator, or a checked theorem
cannot create testimony, consent, policy, ontology admission, or mutation
authority.

The five public theorem names are the exact Lean endpoints named by the five
admitted ontology laws.  Helper records make the laws inspectable at the
finite level: marked points retain their obligation and content-bound span;
sample orders and probe orders are duplicate-free; the observation matrix is
the exact probe-by-point product; and separation supplies a named probe and
two bound observations for every distinct pair.
-/

namespace Cord

def repositoryProbeCoverageProfile : String :=
  "CORD-ONTOLOGY-REPOSITORY-PROBE-COVERAGE-1"

def repositoryProbeCoverageTheoryVersion : String := "1.0.0"

/-! Exact ontology law identities retained by this formal carrier. -/

def repositoryEvidenceNonEscalationLawId : String :=
  "coverage-law:RepositoryEvidenceNonEscalationLaw"

def finiteSamplingScopeLawId : String :=
  "coverage-law:FiniteSamplingScopeLaw"

def probeSeparationLawId : String :=
  "coverage-law:ProbeSeparationLaw"

def exactResolutionLawId : String :=
  "coverage-law:ExactResolutionLaw"

def coverageClosureLawId : String :=
  "coverage-law:CoverageClosureLaw"

namespace ContentHash

/-- A content binding is usable only when it names a nonempty digest. -/
def IsPresent (hash : ContentHash) : Prop := hash.value ≠ ""

end ContentHash

structure ContentBoundSpan where
  contentHash : ContentHash
  startOffset : Nat
  endOffsetInclusive : Nat
  ordered : startOffset ≤ endOffsetInclusive
  deriving DecidableEq, Repr

inductive RepositoryArtifactRole where
  | normativeSource
  | interpretiveSource
  | ontologySource
  | implementationEvidence
  | finiteExecutionEvidence
  | fixtureEvidence
  | validatorEvidence
  | transformationProcedureEvidence
  | operationReceiptEvidence
  | documentaryEvidence
  | excludedOperatingSystemMetadata
  | excludedGeneratedCache
  | excludedThirdPartyMaterial
  | outsideBoundedProfile
  deriving DecidableEq, Repr, Inhabited

inductive RepositoryObligationKind where
  | artifactSurface
  | normativeRequirement
  | prohibition
  | formalDefinition
  | publicType
  | publicVariant
  | publicOperation
  | stateTransition
  | validationCode
  | errorCondition
  | receiptField
  | authorityCheck
  | proofOrCertificateCheck
  | testAssertion
  | fixtureExpectation
  | migrationBehavior
  | rollbackBehavior
  | candidateAdmissionBoundary
  | reflectiveLevel
  | reflectiveTransformation
  deriving DecidableEq, Repr, Inhabited

inductive ObligationModality where
  | required
  | prohibited
  | permitted
  | capability
  | descriptive
  | evidentiary
  | interpretive
  | unresolved
  deriving DecidableEq, Repr, Inhabited

inductive CoverageDisposition where
  | representedByOntology
  | implementedUnderOntology
  | evidencesOntology
  | validatedAgainstOntology
  | intentionallyImplementationOnly
  | intentionallyEvidentiaryOnly
  | excludedByProfile
  | superseded
  | conflicting
  | unresolved
  deriving DecidableEq, Repr, Inhabited

namespace CoverageDisposition

/-- Terminal disposition classes close an obligation without retaining a
conflict or unresolved semantic frontier. -/
def IsTerminalNonconflicting : CoverageDisposition → Prop
  | .conflicting => False
  | .unresolved => False
  | _ => True

theorem conflicting_not_terminal :
    ¬CoverageDisposition.conflicting.IsTerminalNonconflicting := by
  simp [IsTerminalNonconflicting]

theorem unresolved_not_terminal :
    ¬CoverageDisposition.unresolved.IsTerminalNonconflicting := by
  simp [IsTerminalNonconflicting]

end CoverageDisposition

structure RepositoryObligation where
  id : RecordId
  repositorySnapshot : SnapshotId
  profile : String
  artifact : RecordId
  sourceSpan : ContentBoundSpan
  artifactRole : RepositoryArtifactRole
  kind : RepositoryObligationKind
  modality : ObligationModality
  scope : String
  versionContext : Option VersionId
  authorityContext : AuthorityStatus
  requiresTerminalDisposition : Bool
  deriving DecidableEq, Repr

/-! ## Evidence relations and non-escalation -/

inductive EvidenceMappingRelation where
  | profileDeclaredRepresentation
  | sourceDeclaredIdentity
  | validatedImplementation
  | finiteTestEvidence
  | fixtureEvidence
  | compilerEvidence
  | validatorEvidence
  | probeEvidence
  | lexicalCandidate
  | similarityCandidate
  | pathProximityCandidate
  | agentAgreementCandidate
  deriving DecidableEq, Repr, Inhabited

namespace EvidenceMappingRelation

/-- Only independently meaningful relations may support an admitted mapping. -/
def SupportsAdmission : EvidenceMappingRelation → Prop
  | .profileDeclaredRepresentation => True
  | .sourceDeclaredIdentity => True
  | .validatedImplementation => True
  | .finiteTestEvidence => False
  | .fixtureEvidence => False
  | .compilerEvidence => False
  | .validatorEvidence => False
  | .probeEvidence => False
  | .lexicalCandidate => False
  | .similarityCandidate => False
  | .pathProximityCandidate => False
  | .agentAgreementCandidate => False

end EvidenceMappingRelation

inductive MappingExactness where
  | exactIdentity
  | exactlyValidated
  | candidateOnly
  | indeterminate
  deriving DecidableEq, Repr, Inhabited

namespace MappingExactness

def IsReviewedExact : MappingExactness → Prop
  | .exactIdentity => True
  | .exactlyValidated => True
  | .candidateOnly => False
  | .indeterminate => False

end MappingExactness

namespace EvidenceMappingRelation

/-- Exactness is relation-specific: an implementation validation is not an
identity assertion, and an identity assertion is not merely validation. -/
def ExactnessMatches : EvidenceMappingRelation → MappingExactness → Prop
  | .profileDeclaredRepresentation, .exactIdentity => True
  | .sourceDeclaredIdentity, .exactIdentity => True
  | .validatedImplementation, .exactlyValidated => True
  | _, _ => False

end EvidenceMappingRelation

inductive MappingAdmissionStatus where
  | candidate
  | admitted
  | rejected
  deriving DecidableEq, Repr, Inhabited

inductive EvidenceRelationReviewDecision where
  | approved
  | rejected
  deriving DecidableEq, Repr, Inhabited

/-- Independent review of the exact relation, not of a matching name alone. -/
structure EvidenceRelationReview where
  id : RecordId
  sourceObligation : RecordId
  targetOntologyRecord : RecordId
  reviewedRelation : EvidenceMappingRelation
  authority : AuthorityId
  decision : EvidenceRelationReviewDecision
  receipt : ReceiptId
  deriving DecidableEq, Repr

/-- Evidence itself never carries these four kinds of authority. -/
structure EvidenceAuthorityEnvelope where
  testimony : Bool
  consent : Bool
  policy : Bool
  mutation : Bool
  deriving DecidableEq, Repr

namespace EvidenceAuthorityEnvelope

def IsNonauthoritative (envelope : EvidenceAuthorityEnvelope) : Prop :=
  envelope.testimony = false ∧
    envelope.consent = false ∧
    envelope.policy = false ∧
    envelope.mutation = false

end EvidenceAuthorityEnvelope

structure EvidenceBinding where
  id : RecordId
  sourceObligation : RecordId
  targetOntologyRecord : Option RecordId
  targetResidual : Option ResidualId
  mappingRelation : EvidenceMappingRelation
  relevanceBasis : String
  identityOrEquivalenceStatus : String
  profile : String
  exactness : MappingExactness
  authority : Option AuthorityId
  validationResult : String
  admissionStatus : MappingAdmissionStatus
  relationReview : Option EvidenceRelationReview
  evidenceAuthority : EvidenceAuthorityEnvelope
  deriving DecidableEq, Repr

namespace EvidenceBinding

def TargetsExactlyOne (binding : EvidenceBinding) : Prop :=
  (binding.targetOntologyRecord.isSome ∧ binding.targetResidual.isNone) ∨
    (binding.targetOntologyRecord.isNone ∧ binding.targetResidual.isSome)

/-- Admission is conditional on an exact admissible relation and an exact,
independently approved matching review receipt. -/
def AdmissionReviewed (binding : EvidenceBinding) : Prop :=
  binding.admissionStatus = .admitted →
    ∃ target authority review,
      binding.targetOntologyRecord = some target ∧
      binding.authority = some authority ∧
      binding.relationReview = some review ∧
      binding.relevanceBasis ≠ "" ∧
      binding.identityOrEquivalenceStatus ≠ "" ∧
      binding.profile ≠ "" ∧
      binding.validationResult ≠ "" ∧
      binding.mappingRelation.SupportsAdmission ∧
      binding.mappingRelation.ExactnessMatches binding.exactness ∧
      target.value ≠ 0 ∧
      authority.value ≠ 0 ∧
      review.id.value ≠ 0 ∧
      review.id ≠ binding.id ∧
      review.sourceObligation = binding.sourceObligation ∧
      review.targetOntologyRecord = target ∧
      review.reviewedRelation = binding.mappingRelation ∧
      review.authority = authority ∧
      review.decision = .approved ∧
      review.receipt.value ≠ 0

def NonEscalating (binding : EvidenceBinding) : Prop :=
  binding.TargetsExactlyOne ∧
    binding.AdmissionReviewed ∧
    binding.evidenceAuthority.IsNonauthoritative

end EvidenceBinding

structure EvidenceNonEscalationConclusion (binding : EvidenceBinding) : Prop where
  targetsExactlyOne : binding.TargetsExactlyOne
  admittedRequiresMatchingIndependentReview : binding.AdmissionReviewed
  noTestimonyAuthority : binding.evidenceAuthority.testimony = false
  noConsentAuthority : binding.evidenceAuthority.consent = false
  noPolicyAuthority : binding.evidenceAuthority.policy = false
  noMutationAuthority : binding.evidenceAuthority.mutation = false

/-! ## Exact marked rhetorical realizations -/

structure RhetoricalCoordinates where
  profile : String
  obligation : RecordId
  artifact : RecordId
  sourceSpan : ContentBoundSpan
  artifactRole : RepositoryArtifactRole
  representationLayer : RecordId
  claimKind : RepositoryObligationKind
  modality : ObligationModality
  scope : String
  moduleName : String
  namespaceName : String
  version : Option VersionId
  authorityStatus : AuthorityStatus
  assertionStratum : String
  proofStatus : String
  validationStatus : String
  temporalStatus : String
  reflectiveLevel : Option Nat
  lifecycleStatus : String
  deriving DecidableEq, Repr

structure MarkedRhetoricalRealization where
  id : RecordId
  repositorySnapshot : SnapshotId
  profile : String
  obligation : RecordId
  artifact : RecordId
  sourceSpan : ContentBoundSpan
  marking : String
  coordinates : RhetoricalCoordinates
  admittedBinding : Option RecordId
  deriving DecidableEq, Repr

namespace MarkedRhetoricalRealization

def ValidAgainst
    (point : MarkedRhetoricalRealization)
    (obligation : RepositoryObligation)
    (bindingAt : RecordId → Option EvidenceBinding) : Prop :=
  point.repositorySnapshot = obligation.repositorySnapshot ∧
    point.profile = obligation.profile ∧
    point.obligation = obligation.id ∧
    point.artifact = obligation.artifact ∧
    point.sourceSpan = obligation.sourceSpan ∧
    point.sourceSpan.contentHash.IsPresent ∧
    obligation.requiresTerminalDisposition = true ∧
    obligation.scope ≠ "" ∧
    point.marking ≠ "" ∧
    point.coordinates.profile = point.profile ∧
    point.coordinates.obligation = point.obligation ∧
    point.coordinates.artifact = point.artifact ∧
    point.coordinates.sourceSpan = point.sourceSpan ∧
    point.coordinates.artifactRole = obligation.artifactRole ∧
    point.coordinates.claimKind = obligation.kind ∧
    point.coordinates.modality = obligation.modality ∧
    point.coordinates.scope = obligation.scope ∧
    point.coordinates.version = obligation.versionContext ∧
    point.coordinates.authorityStatus = obligation.authorityContext ∧
    match point.admittedBinding with
    | none => True
    | some bindingId =>
        ∃ binding,
          bindingAt bindingId = some binding ∧
          binding.id = bindingId ∧
          binding.sourceObligation = point.obligation ∧
          binding.profile = point.profile ∧
          binding.admissionStatus = .admitted ∧
          binding.NonEscalating

end MarkedRhetoricalRealization

structure MarkedBindingConclusion
    (point : MarkedRhetoricalRealization)
    (obligation : RepositoryObligation)
    (bindingAt : RecordId → Option EvidenceBinding) : Prop where
  repositorySnapshotBound : point.repositorySnapshot = obligation.repositorySnapshot
  profileBound : point.profile = obligation.profile
  obligationBound : point.obligation = obligation.id
  artifactBound : point.artifact = obligation.artifact
  spanBound : point.sourceSpan = obligation.sourceSpan
  spanContentPresent : point.sourceSpan.contentHash.IsPresent
  terminalDispositionRequired : obligation.requiresTerminalDisposition = true
  obligationScopePresent : obligation.scope ≠ ""
  markingPresent : point.marking ≠ ""
  coordinateProfileBound : point.coordinates.profile = point.profile
  coordinateObligationBound : point.coordinates.obligation = point.obligation
  coordinateArtifactBound : point.coordinates.artifact = point.artifact
  coordinateSpanBound : point.coordinates.sourceSpan = point.sourceSpan
  coordinateRoleBound : point.coordinates.artifactRole = obligation.artifactRole
  coordinateKindBound : point.coordinates.claimKind = obligation.kind
  coordinateModalityBound : point.coordinates.modality = obligation.modality
  coordinateScopeBound : point.coordinates.scope = obligation.scope
  coordinateVersionBound : point.coordinates.version = obligation.versionContext
  coordinateAuthorityBound : point.coordinates.authorityStatus = obligation.authorityContext
  admittedBindingExact :
    match point.admittedBinding with
    | none => True
    | some bindingId =>
        ∃ binding,
          bindingAt bindingId = some binding ∧
          binding.id = bindingId ∧
          binding.sourceObligation = point.obligation ∧
          binding.profile = point.profile ∧
          binding.admissionStatus = .admitted ∧
          binding.NonEscalating

structure RhetoricalCoordinateSpace where
  id : RecordId
  contentHash : ContentHash
  repositorySnapshot : SnapshotId
  profile : String
  obligationUniverse : RecordId
  obligationUniverseHash : ContentHash
  obligations : Finset RecordId
  points : Finset RecordId
  pointAt : RecordId → Option MarkedRhetoricalRealization
  obligationAt : RecordId → Option RepositoryObligation
  bindingAt : RecordId → Option EvidenceBinding

namespace RhetoricalCoordinateSpace

def HasExactMarkings
    (space : RhetoricalCoordinateSpace) : Prop :=
  space.contentHash.IsPresent ∧
    space.obligationUniverseHash.IsPresent ∧
    space.obligations.Nonempty ∧
    (∀ obligationId ∈ space.obligations,
      ∃ obligation,
        space.obligationAt obligationId = some obligation ∧
        obligation.id = obligationId ∧
        obligation.repositorySnapshot = space.repositorySnapshot ∧
        obligation.profile = space.profile) ∧
    (∀ pointId ∈ space.points,
      ∃ point obligation,
        space.pointAt pointId = some point ∧
        space.obligationAt point.obligation = some obligation ∧
        point.id = pointId ∧
        point.obligation ∈ space.obligations ∧
        point.repositorySnapshot = space.repositorySnapshot ∧
        point.profile = space.profile ∧
        point.ValidAgainst obligation space.bindingAt) ∧
    ∀ obligationId ∈ space.obligations,
      ∃ pointId ∈ space.points, ∃ point,
        space.pointAt pointId = some point ∧ point.obligation = obligationId

end RhetoricalCoordinateSpace

/-! ## Finite plans, probes, and exact enumeration -/

structure RhetoricalCoverageCell where
  id : RecordId
  space : RecordId
  members : Finset RecordId
  sampledMembers : Finset RecordId
  probeOscillationBounds : Finset RecordId
  boundary : Bool
  exceptional : Bool

namespace RhetoricalCoverageCell

def ValidFor
    (cell : RhetoricalCoverageCell)
    (space : RhetoricalCoordinateSpace) : Prop :=
  cell.space = space.id ∧
    cell.members ⊆ space.points ∧
    cell.sampledMembers ⊆ cell.members

end RhetoricalCoverageCell

inductive ProbeExactness where
  | exact
  | exactlyVerifiedCandidate
  | candidateOnly
  | indeterminate
  deriving DecidableEq, Repr, Inhabited

structure CoverageProbe where
  id : RecordId
  domain : RecordId
  profile : String
  valueType : String
  operationalMeaning : String
  algorithmOrRule : String
  validator : String
  exactness : ProbeExactness
  maximumEvaluations : Nat
  version : VersionId
  failureValue : String
  evidenceAuthority : EvidenceAuthorityEnvelope
  deriving DecidableEq, Repr

namespace CoverageProbe

def ValidFor (probe : CoverageProbe) (profile : String) (domain : RecordId) : Prop :=
  probe.profile = profile ∧
    probe.domain = domain ∧
    probe.valueType ≠ "" ∧
    probe.operationalMeaning ≠ "" ∧
    probe.algorithmOrRule ≠ "" ∧
    probe.validator ≠ "" ∧
    probe.failureValue ≠ "" ∧
    probe.evidenceAuthority.IsNonauthoritative

end CoverageProbe

structure CoverageProbeFamily where
  id : RecordId
  contentHash : ContentHash
  profile : String
  domain : RecordId
  probeOrder : List RecordId
  probes : Finset RecordId
  probeAt : RecordId → Option CoverageProbe
  maximumEvaluations : RecordId → Nat

namespace CoverageProbeFamily

structure Valid (family : CoverageProbeFamily) : Prop where
  familyHashPresent : family.contentHash.IsPresent
  probeOrderNodup : family.probeOrder.Nodup
  probeOrderExact : family.probeOrder.toFinset = family.probes
  probesPresent : family.probes.Nonempty
  everyProbeBound :
    ∀ probeId ∈ family.probes,
      ∃ probe,
        family.probeAt probeId = some probe ∧
        probe.id = probeId ∧
        probe.maximumEvaluations = family.maximumEvaluations probeId ∧
        probe.ValidFor family.profile family.domain

end CoverageProbeFamily

inductive SamplingTopology where
  | finiteDiscrete
  | declaredPseudometric
  deriving DecidableEq, Repr, Inhabited

inductive SamplingStoppingCondition where
  | exhaustedFiniteUniverse
  | reachedHostBound
  | foundBlockingResidual
  | evaluatorFailure
  deriving DecidableEq, Repr, Inhabited

inductive SamplingTerminationStatus where
  | planned
  | terminated
  | resourceExhausted
  | blocked
  | failed
  deriving DecidableEq, Repr, Inhabited

structure SamplingPlan where
  id : PlanId
  contentHash : ContentHash
  space : RecordId
  profile : String
  points : Finset RecordId
  sampleOrder : List RecordId
  cells : Finset RecordId
  cellAt : RecordId → Option RhetoricalCoverageCell
  probeFamily : RecordId
  topology : SamplingTopology
  pseudometric : String
  meshTarget : Nat
  exhaustive : Bool
  stoppingCondition : SamplingStoppingCondition
  expectedTermination : SamplingTerminationStatus
  maximumPoints : Nat
  maximumProbeEvaluations : Nat
  version : VersionId
  evidenceAuthority : EvidenceAuthorityEnvelope

structure SamplingReceipt where
  id : ReceiptId
  plan : PlanId
  sampledOrder : List RecordId
  accountedCells : Finset RecordId
  evaluatedProbes : Finset RecordId
  evaluationCount : RecordId → Nat
  unsampledPoints : Finset RecordId
  unresolvedCells : Finset RecordId
  topology : SamplingTopology
  meshBound : Nat
  stoppingCondition : SamplingStoppingCondition
  termination : SamplingTerminationStatus
  deterministicReceiptHash : ContentHash

structure ExactSamplingEvidence
    (space : RhetoricalCoordinateSpace)
    (plan : SamplingPlan)
    (family : CoverageProbeFamily)
    (receipt : SamplingReceipt) : Prop where
  planSpace : plan.space = space.id
  planProfile : plan.profile = space.profile
  familyIdentity : plan.probeFamily = family.id
  familyProfile : family.profile = plan.profile
  familyDomain : family.domain = plan.space
  familyValid : family.Valid
  planHashPresent : plan.contentHash.IsPresent
  pointsExact : plan.points = space.points
  pointsPresent : space.points.Nonempty
  exactMarkings : space.HasExactMarkings
  sampleOrderNodup : plan.sampleOrder.Nodup
  sampleOrderExact : plan.sampleOrder.toFinset = plan.points
  sampleFitsBound : plan.sampleOrder.length ≤ plan.maximumPoints
  cellsPresent : plan.cells.Nonempty
  cellsExact :
    ∀ cellId,
      cellId ∈ plan.cells ↔
        ∃ cell,
          plan.cellAt cellId = some cell ∧
          cell.id = cellId ∧
          cell.ValidFor space ∧
          cell.sampledMembers = cell.members
  cellsCoverEveryPoint :
    ∀ pointId,
      pointId ∈ plan.points ↔
        ∃ cellId ∈ plan.cells, ∃ cell,
          plan.cellAt cellId = some cell ∧ pointId ∈ cell.members
  cellsPairwiseDisjoint :
    ∀ leftId ∈ plan.cells, ∀ rightId ∈ plan.cells, leftId ≠ rightId →
      ∀ left right,
        plan.cellAt leftId = some left →
        plan.cellAt rightId = some right →
        Disjoint left.members right.members
  receiptPlan : receipt.plan = plan.id
  receiptOrder : receipt.sampledOrder = plan.sampleOrder
  receiptCells : receipt.accountedCells = plan.cells
  receiptProbes : receipt.evaluatedProbes = family.probes
  eachProbeEvaluatedExactly :
    ∀ probe ∈ family.probes,
      receipt.evaluationCount probe = plan.points.card ∧
        receipt.evaluationCount probe ≤ family.maximumEvaluations probe
  totalEvaluationsFitBound :
    (∑ probe ∈ family.probes, receipt.evaluationCount probe) ≤
      plan.maximumProbeEvaluations
  noUnsampledPoints : receipt.unsampledPoints = ∅
  noUnresolvedCells : receipt.unresolvedCells = ∅
  planFiniteDiscrete : plan.topology = .finiteDiscrete
  receiptFiniteDiscrete : receipt.topology = plan.topology
  planMeshZero : plan.meshTarget = 0
  receiptMeshZero : receipt.meshBound = plan.meshTarget
  planExhaustive : plan.exhaustive = true
  planStopsOnExhaustion :
    plan.stoppingCondition = .exhaustedFiniteUniverse
  receiptStoppingCondition :
    receipt.stoppingCondition = plan.stoppingCondition
  plannedTermination : plan.expectedTermination = .terminated
  receiptTerminated : receipt.termination = plan.expectedTermination
  deterministicReceiptPresent : receipt.deterministicReceiptHash.IsPresent
  hostBoundsNonauthoritative : plan.evidenceAuthority.IsNonauthoritative

structure FiniteSamplingConclusion
    (space : RhetoricalCoordinateSpace)
    (plan : SamplingPlan)
    (family : CoverageProbeFamily)
    (receipt : SamplingReceipt) : Prop where
  finiteUniverseExact : plan.points = space.points
  finiteUniversePresent : space.points.Nonempty
  everyPointExactlyMarked : space.HasExactMarkings
  orderedSampleNodup : plan.sampleOrder.Nodup
  orderedSampleExact : plan.sampleOrder.toFinset = space.points
  orderedSampleWithinBound : plan.sampleOrder.length ≤ plan.maximumPoints
  allCellsAccounted : receipt.accountedCells = plan.cells
  cellsCoverEveryPoint :
    ∀ pointId,
      pointId ∈ plan.points ↔
        ∃ cellId ∈ plan.cells, ∃ cell,
          plan.cellAt cellId = some cell ∧ pointId ∈ cell.members
  cellsPairwiseDisjoint :
    ∀ leftId ∈ plan.cells, ∀ rightId ∈ plan.cells, leftId ≠ rightId →
      ∀ left right,
        plan.cellAt leftId = some left →
        plan.cellAt rightId = some right →
        Disjoint left.members right.members
  allProbesAccounted : receipt.evaluatedProbes = family.probes
  everyProbeWithinBound :
    ∀ probe ∈ family.probes,
      receipt.evaluationCount probe = space.points.card ∧
        receipt.evaluationCount probe ≤ family.maximumEvaluations probe
  finiteDiscreteMeshZero :
    plan.topology = .finiteDiscrete ∧
      receipt.topology = .finiteDiscrete ∧
      plan.meshTarget = 0 ∧
      receipt.meshBound = 0
  terminatedAtDeclaredStoppingCondition :
    plan.stoppingCondition = .exhaustedFiniteUniverse ∧
      receipt.stoppingCondition = .exhaustedFiniteUniverse ∧
      plan.expectedTermination = .terminated ∧
      receipt.termination = .terminated
  noUnreportedSamplingFrontier :
    receipt.unsampledPoints = ∅ ∧ receipt.unresolvedCells = ∅
  hostBoundsDoNotAuthorize : plan.evidenceAuthority.IsNonauthoritative

/-! ## Total content-bound probe observation matrix -/

inductive ProbeOutcome where
  | value (declaredValue : String)
  | explicitFailure (failureValue : String) (residual : ResidualId)
  deriving DecidableEq, Repr, Inhabited

namespace ProbeOutcome

def WellFormed : ProbeOutcome → Prop
  | .value declaredValue => declaredValue ≠ ""
  | .explicitFailure failureValue residual =>
      failureValue ≠ "" ∧ residual.value ≠ 0

end ProbeOutcome

inductive ProbeValidatorOutcome where
  | accepted
  | rejected (reason : String)
  | failed (failure : String) (residual : ResidualId)
  deriving DecidableEq, Repr, Inhabited

namespace ProbeValidatorOutcome

def WellFormed : ProbeValidatorOutcome → Prop
  | .accepted => True
  | .rejected reason => reason ≠ ""
  | .failed failure residual => failure ≠ "" ∧ residual.value ≠ 0

end ProbeValidatorOutcome

structure ProbeObservation where
  id : RecordId
  probe : RecordId
  point : RecordId
  pointContentHash : ContentHash
  observationContentHash : ContentHash
  outcome : ProbeOutcome
  exactness : ProbeExactness
  validatorResult : ProbeValidatorOutcome
  deriving DecidableEq, Repr

structure ProbeObservationMatrix where
  id : RecordId
  contentHash : ContentHash
  repositorySnapshot : SnapshotId
  ontologySnapshot : OntologySnapshotId
  profile : String
  probeFamily : RecordId
  points : Finset RecordId
  probes : Finset RecordId
  pointContentHash : RecordId → ContentHash
  observation : RecordId → RecordId → Option ProbeObservation

namespace ProbeObservationMatrix

/-- A function supplies uniqueness; these conditions establish exact totality
on the finite Cartesian product and exclude out-of-domain observations. -/
structure ExactAgainst
    (matrix : ProbeObservationMatrix)
    (space : RhetoricalCoordinateSpace)
    (plan : SamplingPlan)
    (family : CoverageProbeFamily) : Prop where
  matrixHashPresent : matrix.contentHash.IsPresent
  profileBound : matrix.profile = plan.profile
  familyBound : matrix.probeFamily = family.id
  pointsBound : matrix.points = plan.points
  probesBound : matrix.probes = family.probes
  pointHashesBound :
    ∀ pointId ∈ matrix.points,
      ∃ point,
        space.pointAt pointId = some point ∧
        point.id = pointId ∧
        matrix.pointContentHash pointId = point.sourceSpan.contentHash ∧
        (matrix.pointContentHash pointId).IsPresent
  total :
    ∀ probe ∈ matrix.probes, ∀ point ∈ matrix.points,
      ∃ observed, matrix.observation probe point = some observed
  entriesExact :
    ∀ probe point observed,
      matrix.observation probe point = some observed →
        probe ∈ matrix.probes ∧
        point ∈ matrix.points ∧
        observed.probe = probe ∧
        observed.point = point ∧
        observed.id.value ≠ 0 ∧
        observed.pointContentHash = matrix.pointContentHash point ∧
        observed.pointContentHash.IsPresent ∧
        observed.observationContentHash.IsPresent ∧
        observed.exactness = .exact ∧
        observed.outcome.WellFormed ∧
        observed.validatorResult.WellFormed ∧
        ∃ probeRecord,
          family.probeAt probe = some probeRecord ∧
          probeRecord.id = probe ∧
          observed.exactness = probeRecord.exactness

theorem observation_unique
    (matrix : ProbeObservationMatrix)
    {probe point : RecordId}
    {first second : ProbeObservation}
    (firstObserved : matrix.observation probe point = some first)
    (secondObserved : matrix.observation probe point = some second) :
    first = second := by
  exact Option.some.inj (firstObserved.symm.trans secondObserved)

end ProbeObservationMatrix

structure ProbeSeparationWitness (matrix : ProbeObservationMatrix) where
  id : RecordId
  contentHash : ContentHash
  observationMatrix : RecordId
  equivalenceProfile : RecordId
  matrixBound : observationMatrix = matrix.id
  pairwiseSeparated :
    ∀ left ∈ matrix.points, ∀ right ∈ matrix.points, left ≠ right →
      ∃ probe ∈ matrix.probes,
        ∃ leftObservation rightObservation,
          matrix.observation probe left = some leftObservation ∧
          matrix.observation probe right = some rightObservation ∧
          leftObservation.outcome ≠ rightObservation.outcome

/-! ## Exact certificate and scoped closure -/

inductive CoverageResolutionClass where
  | notEvaluated
  | candidateSampled
  | partiallyResolved
  | epsilonResolved
  | exactlyResolved
  | indeterminate
  deriving DecidableEq, Repr, Inhabited

/-- Independently supplied inspection evidence for the exact ontology
snapshot used by a coverage evaluation. The certificate cannot synthesize
this record or its receipt. -/
structure InspectedOntologySnapshot where
  id : OntologySnapshotId
  aggregateContentHash : ContentHash
  sourceArtifact : RecordId
  inspector : RecordId
  inspectionTool : String
  inspectionToolVersion : VersionId
  receipt : ReceiptId
  deriving DecidableEq, Repr

namespace InspectedOntologySnapshot

def Valid (snapshot : InspectedOntologySnapshot) : Prop :=
  snapshot.id.value ≠ 0 ∧
    snapshot.aggregateContentHash.IsPresent ∧
    snapshot.sourceArtifact.value ≠ 0 ∧
    snapshot.inspector.value ≠ 0 ∧
    snapshot.inspectionTool ≠ "" ∧
    snapshot.inspectionToolVersion.value ≠ 0 ∧
    snapshot.receipt.value ≠ 0

end InspectedOntologySnapshot

structure ProbeResolutionCertificate where
  id : CertificateId
  repositorySnapshot : SnapshotId
  repositoryAggregateHash : ContentHash
  ontologySnapshot : OntologySnapshotId
  ontologyAggregateHash : ContentHash
  profile : String
  profileVersion : VersionId
  obligationUniverse : RecordId
  obligationUniverseHash : ContentHash
  inclusionRuleHash : ContentHash
  exclusionRuleHash : ContentHash
  extractorVersion : VersionId
  parserVersion : VersionId
  rhetoricalSpace : RecordId
  rhetoricalSpaceHash : ContentHash
  coordinateSchemaVersion : VersionId
  equivalenceProfile : RecordId
  probeFamily : RecordId
  probeFamilyHash : ContentHash
  samplingPlan : PlanId
  samplingPlanHash : ContentHash
  samplingReceipt : ReceiptId
  samplingReceiptHash : ContentHash
  observationMatrix : RecordId
  observationMatrixHash : ContentHash
  separationWitness : RecordId
  separationWitnessHash : ContentHash
  sampleIdentities : List RecordId
  coverageCells : Finset RecordId
  topology : SamplingTopology
  meshBound : Nat
  exactness : CoverageResolutionClass
  separated : Bool
  blockingResiduals : Finset ResidualId
  nonblockingResiduals : Finset ResidualId
  authority : Option AuthorityId
  maximumPoints : Nat
  termination : SamplingTerminationStatus
  deterministicReceipt : ReceiptId
  repositoryEvidenceCoverage : CoverageResolutionClass
  ontologyRepresentationCoverage : CoverageResolutionClass
  answerability : CoverageResolutionClass
  logicalConsistency : CoverageResolutionClass
  semanticCompleteness : CoverageResolutionClass
  proofCompleteness : CoverageResolutionClass
  mutationAuthority : Bool

structure InspectedOntologyBinding
    (certificate : ProbeResolutionCertificate)
    (matrix : ProbeObservationMatrix)
    (snapshot : InspectedOntologySnapshot) : Prop where
  inspectionValid : snapshot.Valid
  certificateIdentityBound : certificate.ontologySnapshot = snapshot.id
  certificateHashBound : certificate.ontologyAggregateHash = snapshot.aggregateContentHash
  matrixIdentityBound : matrix.ontologySnapshot = snapshot.id

structure ExactResolutionEvidence
    (certificate : ProbeResolutionCertificate)
    (inspectedOntology : InspectedOntologySnapshot)
    (space : RhetoricalCoordinateSpace)
    (plan : SamplingPlan)
    (family : CoverageProbeFamily)
    (receipt : SamplingReceipt)
    (matrix : ProbeObservationMatrix)
    (separation : ProbeSeparationWitness matrix) : Prop where
  samplingExact : ExactSamplingEvidence space plan family receipt
  matrixExact : matrix.ExactAgainst space plan family
  inspectedOntologyBound :
    InspectedOntologyBinding certificate matrix inspectedOntology
  repositorySnapshotBound : matrix.repositorySnapshot = certificate.repositorySnapshot
  spaceSnapshotBound : space.repositorySnapshot = certificate.repositorySnapshot
  admittedProfile : certificate.profile = repositoryProbeCoverageProfile
  profileBound : certificate.profile = plan.profile
  universeIdentityBound : certificate.obligationUniverse = space.obligationUniverse
  universeHashBound : certificate.obligationUniverseHash = space.obligationUniverseHash
  spaceBound : certificate.rhetoricalSpace = space.id
  spaceHashBound : certificate.rhetoricalSpaceHash = space.contentHash
  familyBound : certificate.probeFamily = family.id
  familyHashBound : certificate.probeFamilyHash = family.contentHash
  planBound : certificate.samplingPlan = plan.id
  planHashBound : certificate.samplingPlanHash = plan.contentHash
  receiptBound : certificate.samplingReceipt = receipt.id
  receiptHashBound :
    certificate.samplingReceiptHash = receipt.deterministicReceiptHash
  deterministicReceiptBound : certificate.deterministicReceipt = receipt.id
  matrixBound : certificate.observationMatrix = matrix.id
  matrixHashBound : certificate.observationMatrixHash = matrix.contentHash
  separationBound : certificate.separationWitness = separation.id
  separationHashBound : certificate.separationWitnessHash = separation.contentHash
  separationHashPresent : separation.contentHash.IsPresent
  equivalenceProfileBound : certificate.equivalenceProfile = separation.equivalenceProfile
  samplesBound : certificate.sampleIdentities = plan.sampleOrder
  cellsBound : certificate.coverageCells = plan.cells
  topologyBound : certificate.topology = plan.topology
  meshBound : certificate.meshBound = receipt.meshBound
  maximumPointsBound : certificate.maximumPoints = plan.maximumPoints
  repositoryHashPresent : certificate.repositoryAggregateHash.IsPresent
  ontologyHashPresent : certificate.ontologyAggregateHash.IsPresent
  universeHashPresent : certificate.obligationUniverseHash.IsPresent
  inclusionRulesBound : certificate.inclusionRuleHash.IsPresent
  exclusionRulesBound : certificate.exclusionRuleHash.IsPresent
  familyHashPresent : certificate.probeFamilyHash.IsPresent
  planHashPresent : certificate.samplingPlanHash.IsPresent
  receiptHashPresent : certificate.samplingReceiptHash.IsPresent
  matrixHashPresent : certificate.observationMatrixHash.IsPresent
  witnessHashPresent : certificate.separationWitnessHash.IsPresent
  exactClass : certificate.exactness = .exactlyResolved
  separatedResult : certificate.separated = true
  noBlockingResiduals : certificate.blockingResiduals = ∅
  terminated : certificate.termination = .terminated
  receiptPresent : certificate.deterministicReceipt.value ≠ 0
  nonauthoritative : certificate.mutationAuthority = false

structure ResolutionArtifactBindings
    (certificate : ProbeResolutionCertificate)
    (space : RhetoricalCoordinateSpace)
    (plan : SamplingPlan)
    (family : CoverageProbeFamily)
    (receipt : SamplingReceipt)
    (matrix : ProbeObservationMatrix)
    (separation : ProbeSeparationWitness matrix) : Prop where
  spaceIdentity : certificate.rhetoricalSpace = space.id
  spaceHash : certificate.rhetoricalSpaceHash = space.contentHash
  familyIdentity : certificate.probeFamily = family.id
  familyHash : certificate.probeFamilyHash = family.contentHash
  planIdentity : certificate.samplingPlan = plan.id
  planHash : certificate.samplingPlanHash = plan.contentHash
  receiptIdentity : certificate.samplingReceipt = receipt.id
  receiptHash : certificate.samplingReceiptHash = receipt.deterministicReceiptHash
  deterministicReceiptIdentity : certificate.deterministicReceipt = receipt.id
  matrixIdentity : certificate.observationMatrix = matrix.id
  matrixHash : certificate.observationMatrixHash = matrix.contentHash
  witnessIdentity : certificate.separationWitness = separation.id
  witnessHash : certificate.separationWitnessHash = separation.contentHash

structure ExactResolutionConclusion
    (certificate : ProbeResolutionCertificate)
    (inspectedOntology : InspectedOntologySnapshot)
    (space : RhetoricalCoordinateSpace)
    (plan : SamplingPlan)
    (family : CoverageProbeFamily)
    (receipt : SamplingReceipt)
    (matrix : ProbeObservationMatrix)
    (separation : ProbeSeparationWitness matrix) : Prop where
  inspectedOntologyEvidence :
    InspectedOntologyBinding certificate matrix inspectedOntology
  finiteSampling : FiniteSamplingConclusion space plan family receipt
  exactArtifactBindings :
    ResolutionArtifactBindings certificate space plan family receipt matrix separation
  matrixIsExactProduct : matrix.ExactAgainst space plan family
  everyProbePointObserved :
    ∀ probe ∈ family.probes, ∀ point ∈ space.points,
      ∃ observed, matrix.observation probe point = some observed
  everyProbePointUnique :
    ∀ probe point first second,
      matrix.observation probe point = some first →
      matrix.observation probe point = some second →
      first = second
  everyDistinctPairSeparated :
    ∀ left ∈ matrix.points, ∀ right ∈ matrix.points, left ≠ right →
      ∃ probe ∈ matrix.probes,
        ∃ leftObservation rightObservation,
          matrix.observation probe left = some leftObservation ∧
          matrix.observation probe right = some rightObservation ∧
          leftObservation.outcome ≠ rightObservation.outcome
  exactClass : certificate.exactness = .exactlyResolved
  admittedProfile : certificate.profile = repositoryProbeCoverageProfile
  separatedResult : certificate.separated = true
  noBlockingResiduals : certificate.blockingResiduals = ∅
  terminated : certificate.termination = .terminated
  noMutationAuthority : certificate.mutationAuthority = false

structure CoverageResidual where
  id : ResidualId
  obligation : RecordId
  sourceArtifact : RecordId
  sourceSpan : ContentBoundSpan
  requiredProfile : String
  blocking : Bool
  deriving DecidableEq, Repr

structure CoverageDispositionReview where
  id : RecordId
  obligationUniverse : RecordId
  obligations : Finset RecordId
  dispositionCount : RecordId → Nat
  dispositionAt : RecordId → Option CoverageDisposition
  reviewed : RecordId → Bool
  blockingResiduals : Finset ResidualId
  repositoryEvidenceCoverage : CoverageResolutionClass
  ontologyRepresentationCoverage : CoverageResolutionClass
  authority : Option AuthorityId
  receipt : ReceiptId

namespace CoverageDispositionReview

structure ExactFor
    (review : CoverageDispositionReview)
    (space : RhetoricalCoordinateSpace)
    (certificate : ProbeResolutionCertificate) : Prop where
  universeBound : review.obligationUniverse = certificate.obligationUniverse
  spaceUniverseBound : space.obligationUniverse = certificate.obligationUniverse
  universeHashBound : space.obligationUniverseHash = certificate.obligationUniverseHash
  obligationsExact : review.obligations = space.obligations
  reviewIdentityPresent : review.id.value ≠ 0
  obligationsPresent : review.obligations.Nonempty
  everyObligationExactlyOnce :
    ∀ obligation ∈ review.obligations,
      review.dispositionCount obligation = 1 ∧
        review.reviewed obligation = true ∧
        ∃ disposition,
          review.dispositionAt obligation = some disposition ∧
          disposition.IsTerminalNonconflicting
  noOutsideDisposition :
    ∀ obligation ∉ review.obligations,
      review.dispositionCount obligation = 0 ∧
        review.dispositionAt obligation = none ∧
        review.reviewed obligation = false
  noBlockingResiduals : review.blockingResiduals = ∅
  repositoryEvidenceExact :
    review.repositoryEvidenceCoverage = .exactlyResolved
  ontologyRepresentationExact :
    review.ontologyRepresentationCoverage = .exactlyResolved
  independentlyAuthorized : review.authority.isSome
  reviewReceiptPresent : review.receipt.value ≠ 0

end CoverageDispositionReview

structure ScopedCompletenessAuthority where
  id : AuthorityId
  repositorySnapshot : SnapshotId
  ontologySnapshot : OntologySnapshotId
  obligationUniverse : RecordId
  profile : String
  probeFamily : RecordId
  observationMatrix : RecordId
  separationWitness : RecordId
  exactWording : String
  permitsIssue : Bool
  mutationAuthority : Bool
  receipt : ReceiptId
  deriving DecidableEq, Repr

namespace ScopedCompletenessAuthority

structure ValidFor
    (record : ScopedCompletenessAuthority)
    (certificate : ProbeResolutionCertificate) : Prop where
  repositorySnapshotBound : record.repositorySnapshot = certificate.repositorySnapshot
  ontologySnapshotBound : record.ontologySnapshot = certificate.ontologySnapshot
  universeBound : record.obligationUniverse = certificate.obligationUniverse
  profileBound : record.profile = certificate.profile
  familyBound : record.probeFamily = certificate.probeFamily
  matrixBound : record.observationMatrix = certificate.observationMatrix
  separationBound : record.separationWitness = certificate.separationWitness
  authorityIdentityPresent : record.id.value ≠ 0
  certificateAuthorityBound : certificate.authority = some record.id
  exactWordingPresent : record.exactWording ≠ ""
  permitsExactIssue : record.permitsIssue = true
  noMutationAuthority : record.mutationAuthority = false
  authorityReceiptPresent : record.receipt.value ≠ 0

end ScopedCompletenessAuthority

inductive RepositoryCompletenessClaimStatus where
  | issued
  | withheld
  deriving DecidableEq, Repr, Inhabited

structure RepositoryCompletenessClaim where
  id : RecordId
  status : RepositoryCompletenessClaimStatus
  repositorySnapshot : SnapshotId
  ontologySnapshot : OntologySnapshotId
  obligationUniverse : RecordId
  profile : String
  probeFamily : RecordId
  observationMatrix : RecordId
  separationWitness : RecordId
  probeResolutionCertificate : CertificateId
  exactScopedWording : Option String
  withholdingBasis : List String
  authority : Option AuthorityId
  globalOntologyCompleteness : Bool
  semanticTruth : Bool
  logicalConsistency : Bool
  proofCompleteness : Bool
  mutationAuthority : Bool
  deriving DecidableEq, Repr

structure CoverageClosureGate
    (certificate : ProbeResolutionCertificate)
    (inspectedOntology : InspectedOntologySnapshot)
    (space : RhetoricalCoordinateSpace)
    (plan : SamplingPlan)
    (family : CoverageProbeFamily)
    (receipt : SamplingReceipt)
    (matrix : ProbeObservationMatrix)
    (separation : ProbeSeparationWitness matrix)
    (dispositions : CoverageDispositionReview)
    (authority : ScopedCompletenessAuthority) : Prop where
  exactResolution :
    ExactResolutionEvidence certificate inspectedOntology space plan family receipt matrix separation
  exactDispositions : dispositions.ExactFor space certificate
  exactScopedAuthority : authority.ValidFor certificate
  dispositionAuthorityBound : dispositions.authority = some authority.id
  repositoryEvidenceExact :
    certificate.repositoryEvidenceCoverage = .exactlyResolved
  ontologyRepresentationExact :
    certificate.ontologyRepresentationCoverage = .exactlyResolved

structure CoverageClosureEvidence
    (claim : RepositoryCompletenessClaim)
    (certificate : ProbeResolutionCertificate)
    (inspectedOntology : InspectedOntologySnapshot)
    (space : RhetoricalCoordinateSpace)
    (plan : SamplingPlan)
    (family : CoverageProbeFamily)
    (receipt : SamplingReceipt)
    (matrix : ProbeObservationMatrix)
    (separation : ProbeSeparationWitness matrix)
    (dispositions : CoverageDispositionReview)
    (authority : ScopedCompletenessAuthority) : Prop where
  gate : CoverageClosureGate certificate inspectedOntology space plan family receipt matrix separation
    dispositions authority
  issued : claim.status = .issued
  repositorySnapshotBound : claim.repositorySnapshot = certificate.repositorySnapshot
  ontologySnapshotBound : claim.ontologySnapshot = certificate.ontologySnapshot
  universeBound : claim.obligationUniverse = certificate.obligationUniverse
  profileBound : claim.profile = certificate.profile
  familyBound : claim.probeFamily = certificate.probeFamily
  matrixBound : claim.observationMatrix = certificate.observationMatrix
  separationBound : claim.separationWitness = certificate.separationWitness
  certificateBound : claim.probeResolutionCertificate = certificate.id
  wordingBound : claim.exactScopedWording = some authority.exactWording
  authorityBound : claim.authority = some authority.id
  noWithholdingBasis : claim.withholdingBasis = []
  noGlobalCompleteness : claim.globalOntologyCompleteness = false
  noSemanticTruthClaim : claim.semanticTruth = false
  noLogicalConsistencyClaim : claim.logicalConsistency = false
  noProofCompletenessClaim : claim.proofCompleteness = false
  noMutationAuthority : claim.mutationAuthority = false

/-- The explicit negative branch required when the scoped closure gate fails. -/
structure CoverageClosureFailure
    (claim : RepositoryCompletenessClaim)
    (certificate : ProbeResolutionCertificate)
    (inspectedOntology : InspectedOntologySnapshot)
    (space : RhetoricalCoordinateSpace)
    (plan : SamplingPlan)
    (family : CoverageProbeFamily)
    (receipt : SamplingReceipt)
    (matrix : ProbeObservationMatrix)
    (separation : ProbeSeparationWitness matrix)
    (dispositions : CoverageDispositionReview)
    (authority : ScopedCompletenessAuthority) : Prop where
  withheld : claim.status = .withheld
  basisPresent : claim.withholdingBasis ≠ []
  gateFailed :
    ¬CoverageClosureGate certificate inspectedOntology space plan family receipt matrix separation
      dispositions authority

/-- The evaluator has exactly two authority-preserving outcomes: a proved
issuance gate or a nonempty, explicit withholding basis for a failed gate. -/
inductive CoverageClosureEvaluation
    (claim : RepositoryCompletenessClaim)
    (certificate : ProbeResolutionCertificate)
    (inspectedOntology : InspectedOntologySnapshot)
    (space : RhetoricalCoordinateSpace)
    (plan : SamplingPlan)
    (family : CoverageProbeFamily)
    (receipt : SamplingReceipt)
    (matrix : ProbeObservationMatrix)
    (separation : ProbeSeparationWitness matrix)
    (dispositions : CoverageDispositionReview)
    (authority : ScopedCompletenessAuthority) : Prop where
  | issued
      (evidence :
        CoverageClosureEvidence claim certificate inspectedOntology space plan family receipt matrix separation
          dispositions authority)
  | withheld
      (failure :
        CoverageClosureFailure claim certificate inspectedOntology space plan family receipt matrix separation
          dispositions authority)

structure CoverageClosureConclusion
    (claim : RepositoryCompletenessClaim)
    (certificate : ProbeResolutionCertificate)
    (inspectedOntology : InspectedOntologySnapshot)
    (space : RhetoricalCoordinateSpace)
    (matrix : ProbeObservationMatrix)
    (separation : ProbeSeparationWitness matrix)
    (dispositions : CoverageDispositionReview)
    (authority : ScopedCompletenessAuthority) : Prop where
  issued : claim.status = .issued
  inspectedOntologyBound :
    InspectedOntologyBinding certificate matrix inspectedOntology ∧
      claim.ontologySnapshot = inspectedOntology.id
  reviewCoversExactUniverse :
    dispositions.obligationUniverse = certificate.obligationUniverse ∧
      space.obligationUniverse = certificate.obligationUniverse ∧
      space.obligationUniverseHash = certificate.obligationUniverseHash ∧
      dispositions.obligations = space.obligations
  dispositionReviewEvidencePresent :
    dispositions.id.value ≠ 0 ∧ dispositions.receipt.value ≠ 0
  exactScope :
    claim.repositorySnapshot = certificate.repositorySnapshot ∧
      claim.ontologySnapshot = certificate.ontologySnapshot ∧
      claim.obligationUniverse = certificate.obligationUniverse ∧
      claim.profile = certificate.profile ∧
      claim.probeFamily = certificate.probeFamily ∧
      claim.observationMatrix = matrix.id ∧
      claim.separationWitness = separation.id
  everyObligationExactlyOnce :
    ∀ obligation ∈ dispositions.obligations,
      dispositions.dispositionCount obligation = 1 ∧
        dispositions.reviewed obligation = true ∧
        ∃ disposition,
          dispositions.dispositionAt obligation = some disposition ∧
          disposition.IsTerminalNonconflicting
  noOutsideDisposition :
    ∀ obligation ∉ dispositions.obligations,
      dispositions.dispositionCount obligation = 0 ∧
        dispositions.dispositionAt obligation = none ∧
        dispositions.reviewed obligation = false
  noBlockingResiduals :
    dispositions.blockingResiduals = ∅ ∧ certificate.blockingResiduals = ∅
  exactCoverageClasses :
    certificate.repositoryEvidenceCoverage = .exactlyResolved ∧
      certificate.ontologyRepresentationCoverage = .exactlyResolved
  exactFiniteEvidence :
    certificate.profile = repositoryProbeCoverageProfile ∧
      certificate.exactness = .exactlyResolved ∧
      certificate.observationMatrix = matrix.id ∧
      certificate.separationWitness = separation.id ∧
      certificate.separated = true ∧
      certificate.termination = .terminated
  wordingAuthorized :
    claim.exactScopedWording = some authority.exactWording ∧
      authority.exactWording ≠ "" ∧
      authority.permitsIssue = true ∧
      claim.authority = some authority.id ∧
      certificate.authority = some authority.id ∧
      dispositions.authority = some authority.id
  boundedClaimsOnly :
    claim.globalOntologyCompleteness = false ∧
      claim.semanticTruth = false ∧
      claim.logicalConsistency = false ∧
      claim.proofCompleteness = false ∧
      claim.mutationAuthority = false

namespace CoverageLaws

/-- `coverage-law:RepositoryEvidenceNonEscalationLaw`. -/
theorem repository_evidence_non_escalation
    (binding : EvidenceBinding)
    (checked : binding.NonEscalating) :
    EvidenceNonEscalationConclusion binding := by
  exact ⟨checked.1, checked.2.1, checked.2.2.1, checked.2.2.2.1,
    checked.2.2.2.2.1, checked.2.2.2.2.2⟩

/-- Exact marked binding is available only from the content- and
profile-preserving validation record. -/
theorem marked_realization_binding_exact
    (point : MarkedRhetoricalRealization)
    (obligation : RepositoryObligation)
    (bindingAt : RecordId → Option EvidenceBinding)
    (checked : point.ValidAgainst obligation bindingAt) :
    MarkedBindingConclusion point obligation bindingAt := by
  rcases checked with
    ⟨snapshot, profile, obligationId, artifact, span, hash,
      terminalDisposition, obligationScope, marking,
      coordinateProfile, coordinateObligation, coordinateArtifact,
      coordinateSpan, coordinateRole, coordinateKind, coordinateModality,
      coordinateScope, coordinateVersion, coordinateAuthority, binding⟩
  exact ⟨snapshot, profile, obligationId, artifact, span, hash,
    terminalDisposition, obligationScope, marking,
    coordinateProfile, coordinateObligation, coordinateArtifact,
    coordinateSpan, coordinateRole, coordinateKind, coordinateModality,
    coordinateScope, coordinateVersion, coordinateAuthority, binding⟩

/-- `coverage-law:FiniteSamplingScopeLaw`. -/
theorem finite_sampling_scope
    (space : RhetoricalCoordinateSpace)
    (plan : SamplingPlan)
    (family : CoverageProbeFamily)
    (receipt : SamplingReceipt)
    (checked : ExactSamplingEvidence space plan family receipt) :
    FiniteSamplingConclusion space plan family receipt := by
  refine {
    finiteUniverseExact := checked.pointsExact
    finiteUniversePresent := checked.pointsPresent
    everyPointExactlyMarked := checked.exactMarkings
    orderedSampleNodup := checked.sampleOrderNodup
    orderedSampleExact := ?_
    orderedSampleWithinBound := checked.sampleFitsBound
    allCellsAccounted := checked.receiptCells
    cellsCoverEveryPoint := checked.cellsCoverEveryPoint
    cellsPairwiseDisjoint := checked.cellsPairwiseDisjoint
    allProbesAccounted := checked.receiptProbes
    everyProbeWithinBound := ?_
    finiteDiscreteMeshZero := ?_
    terminatedAtDeclaredStoppingCondition := ?_
    noUnreportedSamplingFrontier := ?_
    hostBoundsDoNotAuthorize := checked.hostBoundsNonauthoritative
  }
  · exact checked.sampleOrderExact.trans checked.pointsExact
  · intro probe member
    have evaluated := checked.eachProbeEvaluatedExactly probe member
    rw [checked.pointsExact] at evaluated
    exact evaluated
  · exact ⟨checked.planFiniteDiscrete,
      checked.receiptFiniteDiscrete.trans checked.planFiniteDiscrete,
      checked.planMeshZero,
      checked.receiptMeshZero.trans checked.planMeshZero⟩
  · exact ⟨checked.planStopsOnExhaustion,
      checked.receiptStoppingCondition.trans checked.planStopsOnExhaustion,
      checked.plannedTermination,
      checked.receiptTerminated.trans checked.plannedTermination⟩
  · exact ⟨checked.noUnsampledPoints, checked.noUnresolvedCells⟩

/-- `coverage-law:ProbeSeparationLaw`: every distinct pair has a named probe
and two exact matrix observations that differ under the pinned profile. -/
theorem probe_separation
    (matrix : ProbeObservationMatrix)
    (space : RhetoricalCoordinateSpace)
    (plan : SamplingPlan)
    (family : CoverageProbeFamily)
    (matrixExact : matrix.ExactAgainst space plan family)
    (witness : ProbeSeparationWitness matrix) :
    matrix.ExactAgainst space plan family ∧
      ∀ left ∈ matrix.points, ∀ right ∈ matrix.points, left ≠ right →
        ∃ probe ∈ matrix.probes,
          ∃ leftObservation rightObservation,
            matrix.observation probe left = some leftObservation ∧
            matrix.observation probe right = some rightObservation ∧
            leftObservation.outcome ≠ rightObservation.outcome := by
  exact ⟨matrixExact, witness.pairwiseSeparated⟩

/-- `coverage-law:ExactResolutionLaw`: exactness exposes the finite sample,
the total content-bound matrix, the pairwise witness, termination, and the
empty blocking frontier. -/
theorem exact_resolution
    (certificate : ProbeResolutionCertificate)
    (inspectedOntology : InspectedOntologySnapshot)
    (space : RhetoricalCoordinateSpace)
    (plan : SamplingPlan)
    (family : CoverageProbeFamily)
    (receipt : SamplingReceipt)
    (matrix : ProbeObservationMatrix)
    (separation : ProbeSeparationWitness matrix)
    (checked :
      ExactResolutionEvidence certificate inspectedOntology space plan family receipt matrix separation) :
    ExactResolutionConclusion certificate inspectedOntology space plan family receipt matrix separation := by
  refine {
    inspectedOntologyEvidence := checked.inspectedOntologyBound
    finiteSampling := finite_sampling_scope space plan family receipt checked.samplingExact
    exactArtifactBindings := {
      spaceIdentity := checked.spaceBound
      spaceHash := checked.spaceHashBound
      familyIdentity := checked.familyBound
      familyHash := checked.familyHashBound
      planIdentity := checked.planBound
      planHash := checked.planHashBound
      receiptIdentity := checked.receiptBound
      receiptHash := checked.receiptHashBound
      deterministicReceiptIdentity := checked.deterministicReceiptBound
      matrixIdentity := checked.matrixBound
      matrixHash := checked.matrixHashBound
      witnessIdentity := checked.separationBound
      witnessHash := checked.separationHashBound
    }
    matrixIsExactProduct := checked.matrixExact
    everyProbePointObserved := ?_
    everyProbePointUnique := ?_
    everyDistinctPairSeparated := separation.pairwiseSeparated
    exactClass := checked.exactClass
    admittedProfile := checked.admittedProfile
    separatedResult := checked.separatedResult
    noBlockingResiduals := checked.noBlockingResiduals
    terminated := checked.terminated
    noMutationAuthority := checked.nonauthoritative
  }
  · intro probe probeMember point pointMember
    have probeMember' : probe ∈ matrix.probes := by
      rw [checked.matrixExact.probesBound]
      exact probeMember
    have pointMember' : point ∈ matrix.points := by
      rw [checked.matrixExact.pointsBound, checked.samplingExact.pointsExact]
      exact pointMember
    exact checked.matrixExact.total probe probeMember' point pointMember'
  · intro probe point first second firstObserved secondObserved
    exact matrix.observation_unique firstObserved secondObserved

/-- The positive branch used by the exhaustive coverage-closure theorem. -/
theorem coverage_closure_issued
    (claim : RepositoryCompletenessClaim)
    (certificate : ProbeResolutionCertificate)
    (inspectedOntology : InspectedOntologySnapshot)
    (space : RhetoricalCoordinateSpace)
    (plan : SamplingPlan)
    (family : CoverageProbeFamily)
    (receipt : SamplingReceipt)
    (matrix : ProbeObservationMatrix)
    (separation : ProbeSeparationWitness matrix)
    (dispositions : CoverageDispositionReview)
    (authority : ScopedCompletenessAuthority)
    (checked :
      CoverageClosureEvidence claim certificate inspectedOntology space plan family receipt matrix separation
        dispositions authority) :
    CoverageClosureConclusion claim certificate inspectedOntology space matrix separation dispositions authority := by
  refine {
    issued := checked.issued
    inspectedOntologyBound := ?_
    reviewCoversExactUniverse := ?_
    dispositionReviewEvidencePresent := ?_
    exactScope := ?_
    everyObligationExactlyOnce := ?_
    noOutsideDisposition := ?_
    noBlockingResiduals := ?_
    exactCoverageClasses := ?_
    exactFiniteEvidence := ?_
    wordingAuthorized := ?_
    boundedClaimsOnly := ?_
  }
  · exact ⟨checked.gate.exactResolution.inspectedOntologyBound,
      checked.ontologySnapshotBound.trans
        checked.gate.exactResolution.inspectedOntologyBound.certificateIdentityBound⟩
  · exact ⟨checked.gate.exactDispositions.universeBound,
      checked.gate.exactDispositions.spaceUniverseBound,
      checked.gate.exactDispositions.universeHashBound,
      checked.gate.exactDispositions.obligationsExact⟩
  · exact ⟨checked.gate.exactDispositions.reviewIdentityPresent,
      checked.gate.exactDispositions.reviewReceiptPresent⟩
  · exact ⟨checked.repositorySnapshotBound, checked.ontologySnapshotBound,
      checked.universeBound, checked.profileBound, checked.familyBound,
      checked.matrixBound.trans checked.gate.exactResolution.matrixBound,
      checked.separationBound.trans checked.gate.exactResolution.separationBound⟩
  · intro obligation member
    exact checked.gate.exactDispositions.everyObligationExactlyOnce obligation member
  · intro obligation outside
    exact checked.gate.exactDispositions.noOutsideDisposition obligation outside
  · exact ⟨checked.gate.exactDispositions.noBlockingResiduals,
      checked.gate.exactResolution.noBlockingResiduals⟩
  · exact ⟨checked.gate.repositoryEvidenceExact,
      checked.gate.ontologyRepresentationExact⟩
  · exact ⟨checked.gate.exactResolution.admittedProfile,
      checked.gate.exactResolution.exactClass,
      checked.gate.exactResolution.matrixBound,
      checked.gate.exactResolution.separationBound,
      checked.gate.exactResolution.separatedResult,
      checked.gate.exactResolution.terminated⟩
  · exact ⟨checked.wordingBound,
      checked.gate.exactScopedAuthority.exactWordingPresent,
      checked.gate.exactScopedAuthority.permitsExactIssue,
      checked.authorityBound,
      checked.gate.exactScopedAuthority.certificateAuthorityBound,
      checked.gate.dispositionAuthorityBound⟩
  · exact ⟨checked.noGlobalCompleteness, checked.noSemanticTruthClaim,
      checked.noLogicalConsistencyClaim, checked.noProofCompletenessClaim,
      checked.noMutationAuthority⟩

/-- Failure of the same gate has a typed, nonempty withholding basis. -/
theorem coverage_withheld_when_gate_fails
    (claim : RepositoryCompletenessClaim)
    (certificate : ProbeResolutionCertificate)
    (inspectedOntology : InspectedOntologySnapshot)
    (space : RhetoricalCoordinateSpace)
    (plan : SamplingPlan)
    (family : CoverageProbeFamily)
    (receipt : SamplingReceipt)
    (matrix : ProbeObservationMatrix)
    (separation : ProbeSeparationWitness matrix)
    (dispositions : CoverageDispositionReview)
    (authority : ScopedCompletenessAuthority)
    (withheld :
      CoverageClosureFailure claim certificate inspectedOntology space plan family receipt matrix separation
        dispositions authority) :
    claim.status = .withheld ∧
      claim.withholdingBasis ≠ [] ∧
      ¬CoverageClosureGate certificate inspectedOntology space plan family receipt matrix separation
        dispositions authority :=
  ⟨withheld.withheld, withheld.basisPresent, withheld.gateFailed⟩

/-- `coverage-law:CoverageClosureLaw`: evaluation either issues a claim bound
to every exact finite carrier and the scoped authority, or withholds it with a
nonempty basis proving that the same gate failed. -/
theorem coverage_closure
    (claim : RepositoryCompletenessClaim)
    (certificate : ProbeResolutionCertificate)
    (inspectedOntology : InspectedOntologySnapshot)
    (space : RhetoricalCoordinateSpace)
    (plan : SamplingPlan)
    (family : CoverageProbeFamily)
    (receipt : SamplingReceipt)
    (matrix : ProbeObservationMatrix)
    (separation : ProbeSeparationWitness matrix)
    (dispositions : CoverageDispositionReview)
    (authority : ScopedCompletenessAuthority)
    (evaluation :
      CoverageClosureEvaluation claim certificate inspectedOntology space plan family receipt matrix separation
        dispositions authority) :
    CoverageClosureConclusion claim certificate inspectedOntology space matrix separation dispositions authority ∨
      (claim.status = .withheld ∧
        claim.withholdingBasis ≠ [] ∧
        ¬CoverageClosureGate certificate inspectedOntology space plan family receipt matrix separation
          dispositions authority) := by
  cases evaluation with
  | issued evidence =>
      exact Or.inl (coverage_closure_issued claim certificate inspectedOntology space plan family receipt matrix
        separation dispositions authority evidence)
  | withheld failure =>
      exact Or.inr (coverage_withheld_when_gate_fails claim certificate inspectedOntology space plan family receipt
        matrix separation dispositions authority failure)

end CoverageLaws
end Cord
