-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ProofTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.FanInNode.Variante8857798f035dd6f2b92c7bca664d8f1af7f04b3ae45f44e3c1b13cca5886b7b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e8857798f035dd6f2b92c7bca664d8f1af7f04b3ae45f44e3c1b13cca5886b7b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ProofTheory.SourceCorpus.FanInNode.Variante8857798f035dd6f2b92c7bca664d8f1af7f04b3ae45f44e3c1b13cca5886b7b","mathematical_subject":"Logic.ProofTheory","original_sha256":"e8857798f035dd6f2b92c7bca664d8f1af7f04b3ae45f44e3c1b13cca5886b7b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/TheoremTransfer/MultiSourceExample.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.TheoremTransfer.Derivation

/-!
A small kernel-checked, domain-neutral fan-in example for FCRS-UTTA §§15.

Two certified `True` theorems live in differently versioned source theories.
Independent translations and
preservation theorems send both premises into a common target theory.  The
joint inference consumes both translated premises to prove `True ∧ True`, and
the ranked dependency graph retains two distinct incoming proof dependencies.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.FanInNode.Variante8857798f035dd6f2b92c7bca664d8f1af7f04b3ae45f44e3c1b13cca5886b7b

namespace FCRS.TheoremTransfer.MultiSourceExample

def version (name : String) : VersionId :=
  .atomic ⟨"https://w3id.org/reflexive/theorem-transfer/example", name,
    "1.0.0", "sha256:" ++ name ++ "-v1"⟩

def foundation : Foundation :=
  ⟨version "dependent-type-theory", .DependentTypeTheory⟩

def quantifiers : QuantifierProfile where
  artifact := version "closed-quantifier-profile"
  cardinality := .Unrestricted
  scalarDomain := .Other
  geometry := .Discrete
  coverage := .Global
  uniformity := .Pointwise
  measureScope := .Everywhere
  existence := .Propositional
  boundedness := .Unbounded
  compactness := .Noncompact

def propositionTheory (Object : Type) : Theory where
  Object := Object
  Proposition := Prop
  Holds := id
  ProofObject := fun proposition => PLift proposition
  proofObjectSound := fun proof => proof.down
  reifyProofObject := fun proof => ⟨proof⟩
  propositionSupport := fun _ => .universal
  propositionProperty := fun proposition _ => proposition

def sourceTheory (_index : Bool) : Theory := propositionTheory Unit

def targetTheory : Theory := propositionTheory Unit

def sourceVersion (index : Bool) :
    MathematicalTheoryVersion (sourceTheory index) foundation where
  artifact := version (if index then "right-source-theory" else "left-source-theory")
  theoryIdentity := ⟨"https://w3id.org/reflexive", if index then
    "BooleanCarrierSourceTheory" else "UnitCarrierSourceTheory"⟩
  signatureVersion := version (if index then "right-signature" else "left-signature")
  axiomSetVersion := version "empty-source-axioms"
  definitionSetVersion := version (if index then "right-definitions" else "left-definitions")
  importedTheoryVersions := []
  semanticRegime := if index then "boolean-carrier" else "unit-carrier"
  quantifierProfile := quantifiers
  formalizationArtifactVersion := version "fan-in-example-formalization"
  releaseStatus := .Released
  provenance := [version "fan-in-example-source"]

def targetVersion : MathematicalTheoryVersion targetTheory foundation where
  artifact := version "conjunctive-target-theory"
  theoryIdentity := ⟨"https://w3id.org/reflexive", "ConjunctiveTargetTheory"⟩
  signatureVersion := version "target-signature"
  axiomSetVersion := version "empty-target-axioms"
  definitionSetVersion := version "target-definitions"
  importedTheoryVersions := []
  semanticRegime := "joint-conjunction"
  quantifierProfile := quantifiers
  formalizationArtifactVersion := version "fan-in-example-formalization"
  releaseStatus := .Released
  provenance := [version "fan-in-example-target"]

def sourceAssumptions (index : Bool) : AssumptionSet.{0} (sourceTheory index) :=
  AssumptionSet.empty _ (version (if index then
    "right-empty-assumptions" else "left-empty-assumptions"))

def targetAssumptions : AssumptionSet.{0} targetTheory :=
  AssumptionSet.empty _ (version "target-empty-assumptions")

def sourceScope (index : Bool) : TransferScope (sourceTheory index) :=
  TransferScope.universal _ (version (if index then
    "right-source-scope" else "left-source-scope"))

def targetScope : TransferScope targetTheory :=
  TransferScope.universal _ (version "target-scope")

def sourceTheorem (index : Bool) :
    CertifiedTheorem (sourceVersion index) (sourceAssumptions index) where
  theoremArtifact := version (if index then "right-source-theorem" else
    "left-source-theorem")
  propositionArtifact := version (if index then "right-source-proposition" else
    "left-source-proposition")
  proofArtifact := version (if index then "right-source-proof" else
    "left-source-proof")
  proposition := True
  proofObject := fun _ => ⟨True.intro⟩

def sourceObject (index : Bool) : (sourceTheory index).Object :=
  ()

def sourceTranslation (index : Bool) :
    Translation (sourceTheory index) targetTheory
      (sourceVersion index) targetVersion
      (sourceAssumptions index) targetAssumptions
      (sourceScope index) targetScope where
  artifact := version (if index then "right-translation" else "left-translation")
  lineage := .atomic (version (if index then "right-translation" else
    "left-translation"))
  lineageArtifactExact := rfl
  foundationInterpretation := .identity foundation
    (version "fan-in-foundation-identity")
  mapObject := fun _ => ()
  mapProposition := id
  assumptionTranslation := {
    artifact := version (if index then "right-assumption-map" else
      "left-assumption-map")
    mapIndex := fun assumptionIndex => nomatch assumptionIndex.down
    propositionExact := fun assumptionIndex => nomatch assumptionIndex.down
  }
  targetAssumptionPartition := {
    classify := fun assumptionIndex => nomatch assumptionIndex.down
  }
  scopeTranslation := ⟨by intros; trivial⟩
  propositionScopeTranslation := by intros; trivial
  quantifierTransform := {
    artifact := version (if index then "right-quantifier-map" else
      "left-quantifier-map")
    sourceProfile := quantifiers
    targetProfile := quantifiers
    profileExact := rfl
    unspecifiedCompatibility := .fullySpecified
      (by simp [quantifiers, QuantifierProfile.HasUnspecified])
      (by simp [quantifiers, QuantifierProfile.HasUnspecified])
      (.carrierEquivalent (QuantifierCarrierEquivalence.refl Unit) rfl)
      [version (if index then "right-quantifier-evidence" else
        "left-quantifier-evidence")]
      (by simp)
  }
  quantifierSourceExact := rfl
  quantifierTargetExact := rfl
  informationLoss := [{
    artifact := version (if index then "right-loss" else "left-loss")
    classification := .DerivedInvariantOnly
    declaredScope := "the translated True premise only"
    forgottenInformation := ["source carrier identity"]
    assessmentArtifact := version (if index then "right-loss-assessment" else
      "left-loss-assessment")
  }]
  informationLossNonempty := by simp
  canonicality := [{
    artifact := version (if index then "right-canonicality" else "left-canonicality")
    canonicality := .Canonical
    conclusionDependence := .ChoiceIndependent
  }]

def sourcePreservation (index : Bool) :
    PreservationTheorem (sourceTranslation index) where
  evidenceArtifact := version (if index then "right-preservation" else
    "left-preservation")
  law := ⟨by
    intro proposition _inScope sourceProof _targetAssumptions
    exact sourceProof (AssumptionSet.empty_holds _ _)⟩

def targetTheorem : CertifiedTheorem targetVersion targetAssumptions where
  theoremArtifact := version "joint-target-theorem"
  propositionArtifact := version "joint-target-proposition"
  proofArtifact := version "joint-target-proof"
  proposition := True ∧ True
  proofObject := fun _ => ⟨True.intro, True.intro⟩

inductive FanInNode where
  | source (index : Bool)
  | target
deriving DecidableEq

def FanInNode.identityCode : FanInNode → Nat
  | .source false => 0
  | .source true => 1
  | .target => 2

theorem FanInNode.identityCode_injective : Function.Injective identityCode := by
  intro left right equality
  cases left with
  | source leftIndex =>
      cases right with
      | source rightIndex =>
          cases leftIndex <;> cases rightIndex <;> simp_all [identityCode]
      | target => cases leftIndex <;> simp_all [identityCode]
  | target =>
      cases right with
      | source rightIndex => cases rightIndex <;> simp_all [identityCode]
      | target => rfl

def fanInNode : FanInNode → TransferNode
  | .source index => {
      nodeArtifact := ⟨.roleTagged "FCRS.UTTA.MultiSourceExample"
        (FanInNode.source index).identityCode (sourceTheorem index).theoremArtifact⟩
      kind := .SourceTheorem
      theoryVersionArtifact := ⟨(sourceVersion index).artifact⟩
      theoremArtifact := some ⟨(sourceTheorem index).theoremArtifact⟩
      propositionArtifact := some ⟨(sourceTheorem index).propositionArtifact⟩
      supportingArtifacts := []
    }
  | .target => {
      nodeArtifact := ⟨.roleTagged "FCRS.UTTA.MultiSourceExample"
        FanInNode.target.identityCode targetTheorem.theoremArtifact⟩
      kind := .TargetTheorem
      theoryVersionArtifact := ⟨targetVersion.artifact⟩
      theoremArtifact := some ⟨targetTheorem.theoremArtifact⟩
      propositionArtifact := some ⟨targetTheorem.propositionArtifact⟩
      supportingArtifacts := []
    }

theorem fanInNodeArtifact_injective :
    Function.Injective (fun node => (fanInNode node).nodeArtifact) := by
  intro left right equality
  cases left with
  | source leftIndex =>
      cases right with
      | source rightIndex =>
          cases leftIndex <;> cases rightIndex <;>
            simp_all [fanInNode, FanInNode.identityCode]
      | target =>
          cases leftIndex <;>
            simp_all [fanInNode, FanInNode.identityCode]
  | target =>
      cases right with
      | source rightIndex =>
          cases rightIndex <;>
            simp_all [fanInNode, FanInNode.identityCode]
      | target => rfl

theorem fanInNode_injective : Function.Injective fanInNode := by
  intro left right equality
  exact fanInNodeArtifact_injective
    (congrArg TransferNode.nodeArtifact equality)

inductive FanInDependency : FanInNode → FanInNode → Type where
  | left : FanInDependency (.source false) .target
  | right : FanInDependency (.source true) .target

def fanInEdge {sourceNode targetNode : FanInNode}
    (dependency : FanInDependency sourceNode targetNode) :
    TransferEdge (fanInNode sourceNode) (fanInNode targetNode) :=
  match dependency with
  | .left => ⟨version "left-fan-in-edge", .Preserves,
      (sourceTranslation false).artifact,
      (sourcePreservation false).evidenceArtifact⟩
  | .right => ⟨version "right-fan-in-edge", .Preserves,
      (sourceTranslation true).artifact,
      (sourcePreservation true).evidenceArtifact⟩

def fanInRank : FanInNode → Nat
  | .source _ => 0
  | .target => 1

theorem fanInRank_increases {sourceNode targetNode : FanInNode}
    (dependency : FanInDependency sourceNode targetNode) :
    fanInRank sourceNode < fanInRank targetNode := by
  cases dependency <;> decide

def dependencyGraph : TransferDependencyGraph where
  Node := FanInNode
  node := fanInNode
  nodeInjective := fanInNode_injective
  nodeArtifactInjective := fanInNodeArtifact_injective
  dependsOn := FanInDependency
  edge := fanInEdge
  dependencyRank := fanInRank
  rankIncreases := fanInRank_increases
  validationPolicy := ⟨version "fan-in-node-policy", fun _ => True⟩
  validation := fun node =>
    ⟨VersionId.composite (version "fan-in-node-validation")
      (fanInNode node).nodeArtifact.identity, True.intro⟩

/--
Typed conjunction expression with one exact source leaf for each Boolean
source index.  Its rule constructs the left and right conjuncts from the
corresponding interpreted child proof objects.
-/
def jointInferenceExpression : MultiSourceInferenceExpression Bool
    (fun index =>
      (sourceTranslation index).mapProposition (sourceTheorem index).proposition)
    (True ∧ True) :=
  .inference
    (PremiseIndex := Bool)
    (premiseProposition := fun index =>
      (sourceTranslation index).mapProposition (sourceTheorem index).proposition)
    (version "joint-conjunction-inference-rule")
    (fun index => .source index)
    (fun premises => ⟨(premises false).down, (premises true).down⟩)

/-- Concrete proof-bearing aggregate whose target proof consumes both sources. -/
def derivation : MultiSourceTheoremTransferDerivation
    targetVersion targetAssumptions targetScope where
  derivationArtifact := version "fan-in-derivation"
  SourceIndex := Bool
  sourceHasFanIn := ⟨false, true, by decide⟩
  sourceTheory := sourceTheory
  sourceFoundation := fun _ => foundation
  sourceVersion := sourceVersion
  sourceAssumptions := sourceAssumptions
  sourceScope := sourceScope
  sourceTheorem := sourceTheorem
  sourcePropositionInScope := by
    intro index
    cases index <;>
      simp [PropositionWithinScope, sourceTheory, sourceTheorem,
        propositionTheory, sourceScope, TransferScope.universal,
        PropositionSupport.Within]
  SourceObjectIndex := fun _ => Unit
  sourceObjectIndexNonempty := fun _ => ⟨()⟩
  sourceObjectInstance := fun index _ => sourceObject index
  sourceObjectInScope := by intros; trivial
  SourceWitnessIndex := fun _ => Unit
  sourceWitnessIndexNonempty := fun _ => ⟨()⟩
  sourceWitnessInstance := fun index _ => sourceObject index
  sourceWitnessInScope := by intros; trivial
  translation := sourceTranslation
  translationApplicationEvent := fun index => version (if index then
    "right-translation-application" else "left-translation-application")
  translatedObject := fun _ _ => ()
  translatedObjectExact := by intros; rfl
  translationEvidenceArtifacts := fun index => [
    (sourceTranslation index).artifact,
    (sourcePreservation index).evidenceArtifact]
  translationEvidenceNonempty := by intros; simp
  preservation := sourcePreservation
  reflection := fun _ => none
  TargetObjectIndex := Unit
  targetObjectIndexNonempty := ⟨()⟩
  targetObject := fun _ => ()
  targetObjectInScope := by intros; trivial
  targetProposition := True ∧ True
  targetPropositionInScope := by
    simp [PropositionWithinScope, targetTheory, propositionTheory,
      targetScope, TransferScope.universal, PropositionSupport.Within]
  jointInferenceArtifact := version "joint-inference"
  jointInferenceExpression := jointInferenceExpression
  targetEvidenceArtifacts := [targetTheorem.proofArtifact,
    version "joint-inference"]
  targetEvidenceNonempty := by simp
  derivedTheorem := targetTheorem
  derivedPropositionExact := rfl
  derivedProofObjectExact := by intros; rfl
  dependencyGraph := dependencyGraph
  sourceNode := .source
  sourceNodeInjective := by intro left right equality; cases equality; rfl
  targetNode := .target
  sourceLeafDependency := fun index => {
    expressionUsesSource := ⟨index, rfl⟩
    dependency := match index with
      | false => .left
      | true => .right
  }
  sourceTheoryVersionExact := by intro index; cases index <;> rfl
  sourceTheoremArtifactExact := by intro index; cases index <;> rfl
  sourcePropositionArtifactExact := by intro index; cases index <;> rfl
  targetTheoryVersionExact := rfl
  targetTheoremArtifactExact := rfl
  targetPropositionArtifactExact := rfl
  edgeKindExact := by intro index; cases index <;> rfl
  bridgeArtifactExact := by intro index; cases index <;> rfl
  evidenceArtifactExact := by intro index; cases index <;> rfl
  declaredInformationLoss := fun index => (sourceTranslation index).informationLoss
  informationLossExact := by intros; rfl
  informationLossAssessment := by
    intro _ profile _membership
    exact .declaredMetadata profile
  equivalenceRegime := none
  validationLifecycle := {
    ledgerArtifact := version "fan-in-validation-lifecycle"
    states := [.Draft, .StructurallyValidated]
    statesNonempty := by simp
    evidenceArtifacts := [version "fan-in-node-validation"]
    evidenceNonempty := by simp
  }
  operationalAdoption := {
    adoptionArtifact := version "fan-in-operational-adoption"
    status := .NotAdopted
    evidenceArtifacts := [version "fan-in-not-adopted-record"]
    evidenceNonempty := by simp
  }
  completenessAssertions := [{
    assertionArtifact := version "fan-in-completeness"
    assertedScope := "the two declared source indices and their target"
    coverageCriterion := "both source dependencies are retained"
    status := .VerifiedForDeclaredFiniteInventory
    evidenceArtifacts := [version "fan-in-completeness-proof"]
    evidenceNonempty := by simp
    knownOmissions := []
  }]
  completenessAssertionsNonempty := by simp
  auditRecords := [{
    auditArtifact := version "fan-in-audit"
    status := .Resolved
    evidenceArtifacts := [version "fan-in-audit-evidence"]
    evidenceNonempty := by simp
    residualRisk := none
  }]
  auditRecordsNonempty := by simp

/-- Positive lock: the concrete value exposes two distinct incoming dependencies. -/
theorem derivation_has_distinct_fan_in :
    ∃ left right : derivation.SourceIndex,
      left ≠ right ∧
      derivation.sourceNode left ≠ derivation.sourceNode right := by
  obtain ⟨left, right, distinct, nodeDistinct, _, _⟩ := derivation.hasDistinctFanIn
  exact ⟨left, right, distinct, nodeDistinct⟩

/-- Positive lock: both exact source indices occur as expression leaves. -/
theorem derivation_expression_uses_both_source_leaves :
    derivation.jointInferenceExpression.UsesSource false ∧
      derivation.jointInferenceExpression.UsesSource true := by
  exact ⟨derivation.sourceLeafCoverage false,
    derivation.sourceLeafCoverage true⟩

end FCRS.TheoremTransfer.MultiSourceExample
