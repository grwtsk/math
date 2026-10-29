import DAF.Integration.WorldModelPrototype.PrototypeAssurance
import DAF.Integration.WorldModelPrototype.Obstruction
import Surface.ContinuousAssurance.WorldModel.PostSurgeryValidation

/-!
# Governed surgery fixtures for the five-model prototype

One local Boolean section replacement is carried through exact boundary,
complement, version, independent-review, authorization, validation, and
rollback records.  Two pre-adoption failure paths are also executable at the
declarative level: a failed boundary gate and a post-surgery proof replay
regression.  None of these records asserts a generic topology-to-surgery
theorem.
-/

namespace DAF.Integration.WorldModelPrototype

open Surface.ContinuousAssurance
open Surface.ContinuousAssurance.WorldModel

/-! ## Exact proposal pins and independent human roles -/

def prototypeSurgeryProposal : ArtifactIdentity :=
  ⟨"prototype:surgery:proposal:replace-B-section-v1"⟩

def prototypeSurgeryPatch : ArtifactIdentity :=
  ⟨"prototype:surgery:patch:replace-B-section-v1"⟩

def prototypeSurgerySource : ArtifactIdentity :=
  ⟨"prototype:surgery:source:five-model-v1"⟩

def prototypeSurgeryTrace : ArtifactIdentity :=
  ⟨"prototype:surgery:reduction-trace:v1"⟩

def prototypeProposer : HumanIdentity := ⟨"human:prototype-proposer"⟩
def prototypeReviewer : HumanIdentity := ⟨"human:prototype-reviewer"⟩
def prototypeAuthorizer : HumanIdentity := ⟨"human:prototype-authorizer"⟩

theorem prototype_human_roles_separated :
    prototypeProposer ≠ prototypeReviewer ∧
      prototypeProposer ≠ prototypeAuthorizer := by
  decide

def prototypeSurgeryReview : SurgeryReviewRecord where
  identity := ⟨"prototype:surgery:review:v1"⟩
  proposal := prototypeSurgeryProposal
  patch := prototypeSurgeryPatch
  sourceDigest := prototypeSurgerySource
  activeRegion := prototypeStabilityScope.activeRegion
  reductionTrace := prototypeSurgeryTrace
  proposer := prototypeProposer
  reviewer := prototypeReviewer
  decision := .approve
  independent := by decide

def prototypeSurgeryAuthorization : SurgeryAuthorizationRecord where
  identity := ⟨"prototype:surgery:authorization:v1"⟩
  review := prototypeSurgeryReview
  proposal := prototypeSurgeryProposal
  patch := prototypeSurgeryPatch
  sourceDigest := prototypeSurgerySource
  activeRegion := prototypeStabilityScope.activeRegion
  reductionTrace := prototypeSurgeryTrace
  authorizer := prototypeAuthorizer
  reviewApproved := rfl
  proposalMatches := rfl
  patchMatches := rfl
  sourceMatches := rfl
  regionMatches := rfl
  traceMatches := rfl
  proposerAuthorizerSeparated := by decide

theorem prototypeAuthorization_exact :
    prototypeSurgeryAuthorization.Authorizes
      prototypeSurgeryProposal prototypeSurgeryPatch prototypeSurgerySource
      prototypeStabilityScope.activeRegion prototypeSurgeryTrace := by
  exact ⟨rfl, rfl, rfl, rfl, rfl⟩

/-! ## Local section replacement with explicit complement -/

def prototypeSurgerySite : Finset PrototypeCell := {.vertex .B}

def prototypeBeforeSections : PrototypeCell → Bool := fun _ => false

def prototypeAfterSections (cell : PrototypeCell) : Bool :=
  decide (cell = .vertex .B)

theorem prototypeSections_unchanged_outside
    (cell : PrototypeCell) (outside : cell ∉ prototypeSurgerySite) :
    prototypeAfterSections cell = prototypeBeforeSections cell := by
  have unequal : cell ≠ .vertex .B := by
    simpa [prototypeSurgerySite] using outside
  simp [prototypeAfterSections, prototypeBeforeSections, unequal]

def prototypeSurgeryEvidence : ProgressiveEvidence where
  identity := ⟨"prototype:surgery:candidate-evidence:v1"⟩
  level := .integration
  authority := .certifiedSource
  evidenceClass := .kernelProof
  derivesFrom := [prototypeSurgeryProposal]
  materialization := .reference
  source := some prototypeSurgerySource

def prototypeAnalyticSite :
    AnalyticSurgicalSite PrototypeCell PrototypeModel where
  identity := ⟨"prototype:surgery:site:B-v1"⟩
  carrierCell := .vertex .B
  activeModels := Finset.univ
  obstructionDegree := 1
  obstructionRef := some ⟨"prototype:obstruction:B-local-v1"⟩
  localEnergy := 0
  threshold := 1
  selectorPolicy := ⟨"prototype:surgery:selector-policy:v1"⟩
  authority := .certifiedSource
  evidence := prototypeSurgeryEvidence
  openObligations := []

def prototypeBoundary : FiniteBoundary PrototypeCell where
  cells := {.edge .τPB, .edge .τBS}
  identity := ⟨"prototype:surgery:boundary:B-v1"⟩

def prototypeBoundaryCertificate : BoundaryCompatibilityCertificate where
  boundaryIdentity := prototypeBoundary.identity
  compatible := True
  proof := trivial
  evidence := ⟨"prototype:surgery:boundary-check:v1"⟩

def prototypeComplementCertificate :
    ComplementInvarianceCertificate PrototypeCell Bool where
  selected := prototypeSurgerySite
  before := prototypeBeforeSections
  after := prototypeAfterSections
  unchanged := prototypeSections_unchanged_outside

def prototypeLocalReplacement : LocalModelReplacement Bool Bool where
  replace := Bool.not
  identity := ⟨"prototype:surgery:replacement:false-to-true-v1"⟩
  sourceVersion := ⟨"prototype:section-version:1"⟩
  targetVersion := ⟨"prototype:section-version:2"⟩
  versionChanged := by decide

def prototypeDependencyUpdate : DependencyUpdate where
  declaration := ⟨"prototype:declaration:B-local-section"⟩
  oldDependencies := [⟨"prototype:section-version:1"⟩]
  newDependencies := [⟨"prototype:section-version:2"⟩]
  replayEvidence := some ⟨"prototype:proof-replay:B-local-v1"⟩

noncomputable def prototypeRollbackRecord : RollbackRecord where
  identity := ⟨"prototype:rollback:replace-B-section-v1"⟩
  preChangeRegistryRoot := ⟨"prototype:registry-root:before-v1"⟩
  postChangeRegistryRoot := ⟨"prototype:registry-root:after-v1"⟩
  affectedModels := [prototypeModelIdentity .booleanQuantizedMatrices |>.sourceDigest]
  affectedTranslations := [⟨(prototypeTranslationId .τBS).value⟩]
  couplingStateBefore := prototypeCoupling.policyIdentity
  couplingStateAfter := prototypeCoupling.policyIdentity
  checkerVersions := [prototypeStabilityScope.checkerSet]
  proofsInvalidated := []
  proofsRestored := [⟨"prototype:proof-replay:B-local-v1"⟩]
  datasetVersions := []
  neuralVersions := []
  reason := "restore the exact pre-surgery Boolean section"
  review := prototypeSurgeryReview
  authorization := prototypeSurgeryAuthorization
  postRollbackVerification := ⟨"prototype:rollback:verification-v1"⟩

noncomputable def prototypeRollbackCertificate : RollbackCertificate where
  record := prototypeRollbackRecord
  ready := True
  readinessEvidence := trivial

/-! ## Accepted surgery and post-surgery validation -/

/-- The changed support abstraction remains a typed translation update. -/
def prototypeSurgeryTranslationUpdate : AnyModelTranslation where
  Source := BinMat 1 1
  Target := BinMat 1 1
  translation := translationBS 1

/-- One complete, governed, locally compatible prototype surgery. -/
noncomputable def prototypeSurgery :
    WorldModelSurgery PrototypeCell PrototypeModel Bool Bool where
  identity := ⟨"prototype:surgery:accepted:replace-B-section-v1"⟩
  proposal := prototypeSurgeryProposal
  patch := prototypeSurgeryPatch
  sourceDigest := prototypeSurgerySource
  activeRegionIdentity := prototypeStabilityScope.activeRegion
  reductionTrace := prototypeSurgeryTrace
  preCarrier := prototypeCarrier
  postCarrier := prototypeCarrier
  preCarrierCells := Equiv.refl PrototypeCell
  postCarrierCells := Equiv.refl PrototypeCell
  preSite := prototypeSite
  postSite := prototypeSite
  prePresheaf := prototypePresheaf
  postPresheaf := prototypePresheaf
  selectedSite := prototypeSurgerySite
  candidate := prototypeAnalyticSite
  candidateCellSelected := by simp [prototypeSurgerySite, prototypeAnalyticSite]
  beforeSections := prototypeBeforeSections
  afterSections := prototypeAfterSections
  attachingBoundary := prototypeBoundary
  boundaryComparison := prototypeBoundaryCertificate
  boundaryIdentityMatches := rfl
  unchangedComplement := prototypeComplementCertificate
  complementUsesSections := ⟨rfl, rfl, rfl⟩
  localReplacement := prototypeLocalReplacement
  translationUpdates := [prototypeSurgeryTranslationUpdate]
  proofDependencyUpdates := [prototypeDependencyUpdate]
  authorityPreservation :=
    { source := .certifiedSource
      target := .certifiedSource
      preserved := rfl }
  versionTransition :=
    { oldRegistryRoot := prototypeRollbackRecord.preChangeRegistryRoot
      newRegistryRoot := prototypeRollbackRecord.postChangeRegistryRoot
      changedObjects := [prototypeLocalReplacement.identity]
      newVersions := [prototypeLocalReplacement.targetVersion]
      changedObjectsVersioned := rfl }
  rollback := some prototypeRollbackCertificate
  newObligations := []
  gluingCondition := True
  review := prototypeSurgeryReview
  authorization := prototypeSurgeryAuthorization
  reviewMatchesProposal := rfl
  authorizationReviewMatches := rfl
  authorizationExact := prototypeAuthorization_exact
  reviewIndependent := by decide

noncomputable def prototypeAdoptableSurgery :
    AdoptableSurgery PrototypeCell PrototypeModel Bool Bool where
  surgery := prototypeSurgery
  gluingProof := trivial
  proofDependenciesValid := True
  dependencyProof := trivial
  rollbackReady := True
  rollbackProof := trivial

def prototypePostSurgeryValidation : PostSurgeryValidation where
  proofReplay := True
  dependencyClosureComparison := True
  trustedBaseComparison := True
  translationRevalidation := True
  carrierValidation := True
  coverValidation := True
  gluingCheck := True
  coverageRecalculation := True
  stabilityRecalculation := True
  runtimeRegressionEvidence :=
    ⟨"prototype:runtime-regression:external-conformance-v1"⟩
  rollbackReadiness := True

theorem prototypePostSurgeryValidation_passes :
    prototypePostSurgeryValidation.Passes := by
  simp [PostSurgeryValidation.Passes, prototypePostSurgeryValidation]

/-- The accepted case contains every adoption and validation proof. -/
noncomputable def prototypeValidatedSurgery :
    ValidatedSurgery PrototypeCell PrototypeModel Bool Bool where
  adopted := prototypeAdoptableSurgery
  validation := prototypePostSurgeryValidation
  passes := prototypePostSurgeryValidation_passes

theorem prototype_surgery_is_accepted :
    Nonempty (ValidatedSurgery PrototypeCell PrototypeModel Bool Bool) :=
  ⟨prototypeValidatedSurgery⟩

theorem prototype_surgery_complement_unchanged
    (cell : PrototypeCell) (outside : cell ∉ prototypeSurgerySite) :
    prototypeSurgery.afterSections cell = prototypeSurgery.beforeSections cell :=
  prototypeSurgery.complement_unchanged cell outside

/-! ## Explicit rejection paths and rollback -/

/-- Pre-adoption boundary checking returns an explicit typed failure. -/
def prototypeBoundaryGate (passes : Bool) : Except SurgeryFailure Unit :=
  if passes then .ok ()
  else .error (.boundaryMismatch ⟨"prototype:boundary-mismatch:evidence-v1"⟩)

theorem prototype_boundary_mismatch_rejected :
    prototypeBoundaryGate false =
      .error (.boundaryMismatch
        ⟨"prototype:boundary-mismatch:evidence-v1"⟩) :=
  rfl

/-- A review/authorization bound to another patch cannot authorize this one. -/
def prototypeStalePatch : ArtifactIdentity :=
  ⟨"prototype:surgery:patch:stale-v0"⟩

theorem prototype_stale_patch_rejected :
    ¬ prototypeSurgeryAuthorization.Authorizes
      prototypeSurgeryProposal prototypeStalePatch prototypeSurgerySource
      prototypeStabilityScope.activeRegion prototypeSurgeryTrace :=
  prototypeSurgeryAuthorization.stale_patch_rejected
    prototypeSurgeryProposal prototypeStalePatch prototypeSurgerySource
    prototypeStabilityScope.activeRegion prototypeSurgeryTrace (by decide)

/-- Authorization from a stale attention region is likewise rejected. -/
def prototypeStaleRegion : ArtifactIdentity :=
  ⟨"prototype:active-region:stale-v0"⟩

theorem prototype_stale_region_rejected :
    ¬ prototypeSurgeryAuthorization.Authorizes
      prototypeSurgeryProposal prototypeSurgeryPatch prototypeSurgerySource
      prototypeStaleRegion prototypeSurgeryTrace :=
  prototypeSurgeryAuthorization.stale_region_rejected
    prototypeSurgeryProposal prototypeSurgeryPatch prototypeSurgerySource
    prototypeStaleRegion prototypeSurgeryTrace (by decide)

/-- A second validation fixture fails only the proof-replay gate. -/
def prototypeProofRegressionValidation : PostSurgeryValidation where
  proofReplay := False
  dependencyClosureComparison := True
  trustedBaseComparison := True
  translationRevalidation := True
  carrierValidation := True
  coverValidation := True
  gluingCheck := True
  coverageRecalculation := True
  stabilityRecalculation := True
  runtimeRegressionEvidence :=
    ⟨"prototype:runtime-regression:proof-replay-failed-v1"⟩
  rollbackReadiness := True

theorem prototype_proof_regression_rejected :
    ¬ ∃ accepted : ValidatedSurgery PrototypeCell PrototypeModel Bool Bool,
      accepted.adopted = prototypeAdoptableSurgery ∧
      accepted.validation = prototypeProofRegressionValidation := by
  apply proof_regression_blocks_validation
  simp [prototypeProofRegressionValidation]

/-- The accepted surgery retains an exact ready rollback certificate. -/
theorem prototype_rollback_is_ready :
    ∃ rollback : RollbackCertificate,
      prototypeSurgery.rollback = some rollback ∧ rollback.ready := by
  exact ⟨prototypeRollbackCertificate, rfl, trivial⟩

/-- Executing the declared fixture rollback restores the pre-change sections. -/
def prototypeRollbackSections (_ : PrototypeCell → Bool) :
    PrototypeCell → Bool :=
  prototypeBeforeSections

theorem prototype_rollback_restores_before :
    prototypeRollbackSections prototypeAfterSections = prototypeBeforeSections :=
  rfl

end DAF.Integration.WorldModelPrototype
