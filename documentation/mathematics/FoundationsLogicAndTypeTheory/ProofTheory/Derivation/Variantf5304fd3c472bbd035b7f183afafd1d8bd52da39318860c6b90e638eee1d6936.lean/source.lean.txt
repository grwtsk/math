-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ProofTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.TransferEdgeKind.Variant05dd72871694265fc4112811b068e5fc549975e83336560993d1b46095af268f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05dd72871694265fc4112811b068e5fc549975e83336560993d1b46095af268f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ProofTheory.SourceCorpus.TransferEdgeKind.Variant05dd72871694265fc4112811b068e5fc549975e83336560993d1b46095af268f","mathematical_subject":"Logic.ProofTheory","original_sha256":"05dd72871694265fc4112811b068e5fc549975e83336560993d1b46095af268f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/TheoremTransfer/Derivation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.TheoremTransfer.Core

/-!
Typed provenance DAGs and complete theorem-transfer derivations.

Proof dependence is ranked and therefore acyclic.  Composition is represented
by a wrapper retaining both component derivations and the exact middle theorem;
it is not replaced by an unexplained direct provenance edge.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.TransferEdgeKind.Variant05dd72871694265fc4112811b068e5fc549975e83336560993d1b46095af268f

namespace FCRS.TheoremTransfer

universe uNode uSO uSP uTO uTP uUO uUP uSourceObject uSourceWitness uTargetObject
  uSourceAssumption uTargetAssumption

/-- Typed proof-dependency edge inventory. -/
inductive TransferEdgeKind where
  | Instantiates
  | Specializes
  | Generalizes
  | Interprets
  | Preserves
  | Reflects
  | Realizes
  | Constructs
  | Forgets
  | Quotients
  | Completes
  | Localizes
  | Dualizes
  | Derives
  | UsesInvariant
  | UsesEquivalence
  | DischargesAssumption
deriving Repr, DecidableEq

/-- Semantic role is part of an artifact identifier's type, not a string tag. -/
inductive ArtifactSemanticRole where
  | TransferNode
  | TheoryVersion
  | Theorem
  | Proposition
  | Proof
  | Translation
  | Interpretation
  | Denotation
  | Constraint
  | SieveResult
  | SieveWitness
  | Event
  | Realization
  | Validation
  | OtherEvidence
deriving Repr, DecidableEq

/-- A version identifier whose semantic role cannot be erased accidentally. -/
structure TypedVersionId (role : ArtifactSemanticRole) where
  identity : VersionId
deriving Repr, DecidableEq

/-- Existentially role-bound supporting artifact retained by a graph node. -/
structure RoleBoundArtifact where
  role : ArtifactSemanticRole
  artifact : TypedVersionId role

/-- Closed node-stage vocabulary makes distinct dependency stages observable. -/
inductive TransferNodeKind where
  | SourceTheorem
  | TheoremApplication
  | ExistenceEvidence
  | SelectionEvent
  | SelectedWitness
  | MaterializableSelection
  | ArithmeticWitness
  | SourceDenotation
  | InterpretationEvent
  | TargetDenotation
  | ConstraintEvidence
  | ConstraintSieveEvidence
  | SieveEvidenceTheory
  | SieveEvidenceTheoryExact
  | ProcedureAcceptanceEvidence
  | SieveEvaluation
  | SieveResult
  | SieveResultExact
  | SieveWitness
  | IntensionalOccurrence
  | RealizationEvent
  | RealizationRecord
  | TheoremDerivedEdge
  | GraphConsequence
  | TargetTheorem
  | ValidationExecution
  | ValidationResult
  | AcceptanceDecision
  | OperationalCommitment
  | GenericIntermediate
deriving Repr, DecidableEq

/-- Version-qualified, role-safe node payload for a transfer dependency graph. -/
structure TransferNode where
  nodeArtifact : TypedVersionId .TransferNode
  kind : TransferNodeKind
  theoryVersionArtifact : TypedVersionId .TheoryVersion
  theoremArtifact : Option (TypedVersionId .Theorem)
  propositionArtifact : Option (TypedVersionId .Proposition)
  supportingArtifacts : List RoleBoundArtifact

/-- A typed edge retains the exact bridge/construction artifact used. -/
structure TransferEdge (source target : TransferNode) where
  edgeArtifact : VersionId
  kind : TransferEdgeKind
  bridgeArtifact : VersionId
  evidenceArtifact : VersionId
deriving Repr

/-- An explicit validation policy; no hidden `validated := True` predicate exists. -/
structure TransferNodeValidationPolicy where
  policyArtifact : VersionId
  accepts : TransferNode → Prop

/-- Validation result indexed by one exact policy and one exact node. -/
structure TransferNodeValidation
    (policy : TransferNodeValidationPolicy) (node : TransferNode) where
  resultArtifact : VersionId
  accepted : policy.accepts node

/--
A proof-dependency DAG.  Multiple nodes may depend on the same target and a
target may have arbitrarily many incoming dependencies.  Strict rank increase
rules out dependency cycles without conflating them with mathematical or
categorical equivalence cycles.
-/
structure TransferDependencyGraph where
  Node : Type uNode
  node : Node → TransferNode
  /-- Distinct graph indices have distinct complete payloads. -/
  nodeInjective : Function.Injective node
  /-- Distinct graph indices also have distinct semantic node identities. -/
  nodeArtifactInjective : Function.Injective (fun index =>
    (node index).nodeArtifact)
  dependsOn : Node → Node → Type
  edge : ∀ {source target},
    dependsOn source target → TransferEdge (node source) (node target)
  dependencyRank : Node → Nat
  rankIncreases : ∀ {source target},
    dependsOn source target → dependencyRank source < dependencyRank target
  validationPolicy : TransferNodeValidationPolicy
  validation : ∀ index, TransferNodeValidation validationPolicy (node index)

namespace TransferDependencyGraph

/-- Strict ranking makes self-dependence impossible. -/
theorem no_self_dependency
    (graph : TransferDependencyGraph) (node : graph.Node) :
    graph.dependsOn node node → False := by
  intro dependency
  exact (Nat.lt_irrefl _) (graph.rankIncreases dependency)

/-- Injective node projection forbids dependencies whose payload aliases itself. -/
theorem no_payload_self_dependency
    (graph : TransferDependencyGraph) {source target : graph.Node}
    (samePayload : graph.node source = graph.node target) :
    graph.dependsOn source target → False := by
  intro dependency
  have sameIndex : source = target := graph.nodeInjective samePayload
  subst target
  exact graph.no_self_dependency source dependency

/-- Every actual dependency has distinct source and target payload artifacts. -/
theorem payload_distinct_of_dependency
    (graph : TransferDependencyGraph) {source target : graph.Node}
    (dependency : graph.dependsOn source target) :
    graph.node source ≠ graph.node target := by
  intro samePayload
  exact graph.no_payload_self_dependency samePayload dependency

/-- Every actual dependency has distinct source and target node artifacts. -/
theorem artifact_distinct_of_dependency
    (graph : TransferDependencyGraph) {source target : graph.Node}
    (dependency : graph.dependsOn source target) :
    (graph.node source).nodeArtifact ≠ (graph.node target).nodeArtifact := by
  intro sameArtifact
  have sameIndex : source = target := graph.nodeArtifactInjective sameArtifact
  subst target
  exact graph.no_self_dependency source dependency

end TransferDependencyGraph

/-- Transfer statuses are evidence-indexed and are not an inferred hierarchy. -/
inductive TransferSoundnessLevel where
  | SyntacticallyTranslated
  | SemanticallyPreserved
  | ProofPreserved
  | PropertyReflected
  | BidirectionallyEquivalent
  | RepresentationIndependent
deriving Repr, DecidableEq

/-- Generic lifecycle vocabulary, kept separate from mathematical soundness. -/
inductive TransferLifecycleState where
  | Draft
  | StructurallyValidated
  | Accepted
  | OperationallyCommitted
  | Superseded
  | Withdrawn
deriving Repr, DecidableEq

/-- Ordered, nonempty lifecycle evidence ledger for one transfer derivation. -/
structure TransferLifecycleLedger where
  ledgerArtifact : VersionId
  states : List TransferLifecycleState
  statesNonempty : states ≠ []
  evidenceArtifacts : List VersionId
  evidenceNonempty : evidenceArtifacts ≠ []

/-- Operational adoption is separate from proof and structural validation. -/
inductive OperationalAdoptionStatus where
  | NotAdopted
  | Adopted
  | Superseded
  | Withdrawn
deriving Repr, DecidableEq

/-- Evidence-bearing operational adoption record for a transfer aggregate. -/
structure TransferOperationalAdoption where
  adoptionArtifact : VersionId
  status : OperationalAdoptionStatus
  evidenceArtifacts : List VersionId
  evidenceNonempty : evidenceArtifacts ≠ []

/-- Scoped completeness status; no constructor denotes universal mathematics. -/
inductive TransferCompletenessStatus where
  | AssertedForDeclaredFiniteInventory
  | VerifiedForDeclaredFiniteInventory
  | IncompleteWithKnownOmissions
  | Withdrawn
deriving Repr, DecidableEq

/-- One explicitly scoped completeness assertion and its evidence. -/
structure TransferCompletenessAssertion where
  assertionArtifact : VersionId
  assertedScope : String
  coverageCriterion : String
  status : TransferCompletenessStatus
  evidenceArtifacts : List VersionId
  evidenceNonempty : evidenceArtifacts ≠ []
  knownOmissions : List String

/-- Audit status is not validation, adoption, or mathematical truth. -/
inductive TransferAuditStatus where
  | Open
  | Resolved
  | WaivedWithResidualRisk
  | Superseded
deriving Repr, DecidableEq

/-- Versioned audit record retained by a proof-bearing aggregate. -/
structure TransferAuditRecord where
  auditArtifact : VersionId
  status : TransferAuditStatus
  evidenceArtifacts : List VersionId
  evidenceNonempty : evidenceArtifacts ≠ []
  residualRisk : Option String

/-- Representation independence is an additional proof, not an equivalence alias. -/
structure RepresentationIndependenceClaim
    {source : Theory.{uSO, uSP}}
    {target : Theory.{uTO, uTP}}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    (translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope)
    (targetProposition : target.Proposition) where
  artifact : VersionId
  regime : EquivalenceRegime target
  admissibleRepresentation : source.Object → target.Object → Prop
  canonicalRepresentation : ∀ sourceObject,
    sourceScope.contains sourceObject →
      admissibleRepresentation sourceObject (translation.mapObject sourceObject)
  admissibleInTargetScope : ∀ sourceObject representation,
    sourceScope.contains sourceObject →
    admissibleRepresentation sourceObject representation →
      targetScope.contains representation
  allAdmissibleEquivalent : ∀ sourceObject left right,
    sourceScope.contains sourceObject →
    admissibleRepresentation sourceObject left →
    admissibleRepresentation sourceObject right →
      regime.equivalent left right
  invariant : PropertyInvariant regime
    (target.propositionProperty targetProposition)
  /-- `Holds` and the object property agree at every admissible representation. -/
  semanticCoherence : ∀ sourceObject representation,
    sourceScope.contains sourceObject →
    admissibleRepresentation sourceObject representation →
      (target.Holds targetProposition ↔
        target.propositionProperty targetProposition representation)

/--
Proof preservation supplies an actual proof transformer under the exact indexed
assumptions.  An artifact identifier alone cannot inhabit this evidence type.
-/
structure ProofPreservationClaim
    {source : Theory.{uSO, uSP}}
    {target : Theory.{uTO, uTP}}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    (translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope)
    (sourceTheorem : CertifiedTheorem sourceVersion sourceAssumptions)
    (targetTheorem : CertifiedTheorem targetVersion targetAssumptions) where
  evidenceArtifact : VersionId
  targetPropositionExact : targetTheorem.proposition =
    translation.mapProposition sourceTheorem.proposition
  encodeProof : source.ProofObject sourceTheorem.proposition →
    target.ProofObject targetTheorem.proposition
  decodeProof : target.ProofObject targetTheorem.proposition →
    source.ProofObject sourceTheorem.proposition
  sourceProofRoundTrip : ∀ proofObject,
    decodeProof (encodeProof proofObject) = proofObject
  certifiedProofExact : ∀ sourceAssumptionsHold targetAssumptionsHold,
    encodeProof (sourceTheorem.proofObject sourceAssumptionsHold) =
      targetTheorem.proofObject targetAssumptionsHold

/-- Syntactic status requires a durable, nonempty external evidence inventory. -/
structure SyntacticTranslationEvidence where
  artifact : VersionId
  designation : String
  evidenceArtifacts : List VersionId
  evidenceNonempty : evidenceArtifacts ≠ []

/-- Each declared soundness status carries exactly the evidence it names. -/
inductive TransferSoundnessEvidence
    {source : Theory.{uSO, uSP}}
    {target : Theory.{uTO, uTP}}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    (translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope)
    (preservation : PreservationTheorem translation)
    (sourceTheorem : CertifiedTheorem sourceVersion sourceAssumptions)
    (targetTheorem : CertifiedTheorem targetVersion targetAssumptions)
    (declaredRegime : Option (EquivalenceRegime target)) :
    TransferSoundnessLevel →
      Type (max (max (uSO + 1) (uSP + 1))
        (max (uTO + 1) (uTP + 1))) where
  | syntacticallyTranslated (evidence : SyntacticTranslationEvidence) :
      TransferSoundnessEvidence translation preservation sourceTheorem targetTheorem
        declaredRegime .SyntacticallyTranslated
  | semanticallyPreserved :
      TransferSoundnessEvidence translation preservation sourceTheorem targetTheorem
        declaredRegime .SemanticallyPreserved
  | proofPreserved
      (proofMap : ProofPreservationClaim translation sourceTheorem targetTheorem) :
      TransferSoundnessEvidence translation preservation sourceTheorem targetTheorem
        declaredRegime .ProofPreserved
  | propertyReflected (reflection : ReflectionTheorem translation) :
      TransferSoundnessEvidence translation preservation sourceTheorem targetTheorem
        declaredRegime .PropertyReflected
  | bidirectionallyEquivalent (equivalence : EquivalenceWitness translation) :
      TransferSoundnessEvidence translation preservation sourceTheorem targetTheorem
        declaredRegime .BidirectionallyEquivalent
  | representationIndependent
      (equivalence : EquivalenceWitness translation)
      (independence : RepresentationIndependenceClaim translation
        targetTheorem.proposition)
      (regimeExact : declaredRegime = some independence.regime) :
      TransferSoundnessEvidence translation preservation sourceTheorem targetTheorem
        declaredRegime .RepresentationIndependent

/--
Recursive realization of translation lineage as an ordered path through the
actual dependency DAG.  An atomic leaf is tied to one real edge.  A composite
must expose a genuine middle node with an exact theory-version identity and a
present proposition artifact, then realize its two children on the two sides
of that same middle node.  Parallel endpoint edges cannot inhabit this type.
-/
inductive TranslationLineageRealization
    (graph : TransferDependencyGraph.{uNode}) :
    TranslationLineage → graph.Node → graph.Node → Type (uNode + 1) where
  | atomic
      {artifact : VersionId} {source target : graph.Node}
      (dependency : graph.dependsOn source target)
      (artifactExact :
        (graph.edge dependency).bridgeArtifact = artifact ∨
        (graph.edge dependency).evidenceArtifact = artifact) :
      TranslationLineageRealization graph (.atomic artifact) source target
  | composite
      {middleTheoryVersion middlePropositionArtifact : VersionId}
      {first second : TranslationLineage} {source target : graph.Node}
      (middle : graph.Node)
      (middleTheoryVersionExact :
        (graph.node middle).theoryVersionArtifact.identity = middleTheoryVersion)
      (middlePropositionExact :
        (graph.node middle).propositionArtifact =
          some ⟨middlePropositionArtifact⟩)
      (firstRealization :
        TranslationLineageRealization graph first source middle)
      (secondRealization :
        TranslationLineageRealization graph second middle target) :
      TranslationLineageRealization graph
        (.composite middleTheoryVersion middlePropositionArtifact first second)
        source target

namespace TranslationLineageRealization

/-- Every realized lineage path strictly follows the dependency ranking. -/
theorem rankIncreases
    {graph : TransferDependencyGraph.{uNode}}
    {lineage : TranslationLineage} {source target : graph.Node}
    (realization : TranslationLineageRealization graph lineage source target) :
    graph.dependencyRank source < graph.dependencyRank target :=
  match realization with
  | .atomic dependency _ => graph.rankIncreases dependency
  | .composite _ _ _ firstRealization secondRealization =>
      Nat.lt_trans firstRealization.rankIncreases secondRealization.rankIncreases

/--
A composite realization exposes an ordered middle semantic stage.  Its theory
and proposition identities are read from that actual middle node.
-/
theorem compositeHasOrderedMiddle
    {graph : TransferDependencyGraph.{uNode}}
    {middleTheory middleProposition : VersionId}
    {first second : TranslationLineage} {source target : graph.Node}
    (realization : TranslationLineageRealization graph
      (.composite middleTheory middleProposition first second) source target) :
    ∃ (middle : graph.Node),
      graph.dependencyRank source < graph.dependencyRank middle ∧
      graph.dependencyRank middle < graph.dependencyRank target ∧
      (graph.node middle).theoryVersionArtifact.identity = middleTheory ∧
      (graph.node middle).propositionArtifact = some ⟨middleProposition⟩ := by
  cases realization with
  | composite middle theoryExact propositionExact
      firstRealization secondRealization =>
      exact ⟨middle,
        firstRealization.rankIncreases, secondRealization.rankIncreases,
        theoryExact, propositionExact⟩

end TranslationLineageRealization

/--
Complete generic transfer derivation.  The target theorem is required to be
the exact canonical application of the supplied source theorem and
preservation law.  The graph edge separately records provenance and validation.
-/
structure TheoremTransferDerivation
    {source : Theory.{uSO, uSP}}
    {target : Theory.{uTO, uTP}}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    (translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope)
    (preservation : PreservationTheorem translation) where
  derivationArtifact : VersionId
  sourceTheorem : CertifiedTheorem sourceVersion sourceAssumptions
  sourcePropositionInScope : PropositionWithinScope source sourceScope
    sourceTheorem.proposition
  targetTheorem : CertifiedTheorem targetVersion targetAssumptions
  targetTheoremExact : targetTheorem =
    transport_theorem translation preservation sourceTheorem
      sourcePropositionInScope
  targetPropositionInScope : PropositionWithinScope target targetScope
    targetTheorem.proposition
  dependencyGraph : TransferDependencyGraph.{0}
  sourceNode : dependencyGraph.Node
  targetNode : dependencyGraph.Node
  dependency : dependencyGraph.dependsOn sourceNode targetNode
  /-- Every composite leaf and intermediate semantic stage is ordered in the DAG. -/
  lineageRealization : TranslationLineageRealization dependencyGraph
    translation.lineage sourceNode targetNode
  sourceTheoryVersionExact :
    (dependencyGraph.node sourceNode).theoryVersionArtifact.identity =
      sourceVersion.artifact
  targetTheoryVersionExact :
    (dependencyGraph.node targetNode).theoryVersionArtifact.identity =
      targetVersion.artifact
  sourceTheoremArtifactExact :
    (dependencyGraph.node sourceNode).theoremArtifact = some
      ⟨sourceTheorem.theoremArtifact⟩
  targetTheoremArtifactExact :
    (dependencyGraph.node targetNode).theoremArtifact = some
      ⟨targetTheorem.theoremArtifact⟩
  sourcePropositionArtifactExact :
    (dependencyGraph.node sourceNode).propositionArtifact = some
      ⟨sourceTheorem.propositionArtifact⟩
  targetPropositionArtifactExact :
    (dependencyGraph.node targetNode).propositionArtifact = some
      ⟨targetTheorem.propositionArtifact⟩
  edgeKindExact :
    (dependencyGraph.edge dependency).kind = .Preserves
  bridgeArtifactExact :
    (dependencyGraph.edge dependency).bridgeArtifact = translation.artifact
  evidenceArtifactExact :
    (dependencyGraph.edge dependency).evidenceArtifact =
      preservation.evidenceArtifact
  declaredInformationLoss : List InformationLossProfile
  informationLossExact : declaredInformationLoss = translation.informationLoss
  informationLossAssessment : ∀ profile, profile ∈ declaredInformationLoss →
    @InformationLossAssessment source target sourceFoundation targetFoundation
      sourceVersion targetVersion sourceAssumptions targetAssumptions
      sourceScope targetScope translation profile
  declaredCanonicality : List CanonicalityProfile
  canonicalityExact : declaredCanonicality = translation.canonicality
  lifecycle : TransferLifecycleLedger
  equivalenceRegime : Option (EquivalenceRegime target)
  soundnessLevel : TransferSoundnessLevel
  soundnessEvidence : TransferSoundnessEvidence translation preservation
    sourceTheorem targetTheorem equivalenceRegime soundnessLevel

/-!
Domain-neutral, proof-bearing fan-in aggregate required by FCRS-UTTA §§14–15.

The source theories may differ by index.  Each source retains its exact theory,
foundation, assumptions, scope, theorem, objects, witnesses, translation,
application event, preservation theorem, optional reflection theorem, and loss
ledger.  The target proof is interpreted from a typed inference expression
whose source leaves are indexed by the exact translated source propositions.
Every source index is structurally present in that expression and paired with
the dependency-graph edge for the same index.  This certifies proof-expression
leaf use; it deliberately does not claim the stronger, generally undecidable
counterfactual statement that deleting any premise makes the conclusion false.
`sourceHasFanIn` excludes a unary value, while `TheoremTransferDerivation` above
remains the useful unary specialization.
-/

/--
Proof-relevant syntax for a typed multi-source inference.

`source` is the only leaf constructor, so every leaf is definitionally tied to
one exact translated source proposition.  `inference` combines already-typed
subexpressions with a rule on reified proof objects rather than equating proofs
of a `Prop`.
-/
inductive MultiSourceInferenceExpression
    {target : Theory.{uTO, uTP}}
    (SourceIndex : Type uNode)
    (sourceProposition : SourceIndex → target.Proposition) :
    target.Proposition → Type (max (uNode + 1) uTP) where
  | source (index : SourceIndex) :
      MultiSourceInferenceExpression SourceIndex sourceProposition
        (sourceProposition index)
  | inference
      {PremiseIndex : Type uNode}
      {premiseProposition : PremiseIndex → target.Proposition}
      {conclusion : target.Proposition}
      (artifact : VersionId)
      (premises : ∀ index,
        MultiSourceInferenceExpression SourceIndex sourceProposition
          (premiseProposition index))
      (rule : (∀ index, target.ProofObject (premiseProposition index)) →
        target.ProofObject conclusion) :
      MultiSourceInferenceExpression SourceIndex sourceProposition conclusion

namespace MultiSourceInferenceExpression

/-- Kernel interpretation of a typed expression from exact source proof objects. -/
def interpret
    {target : Theory.{uTO, uTP}}
    {SourceIndex : Type uNode}
    {sourceProposition : SourceIndex → target.Proposition}
    {conclusion : target.Proposition}
    (expression : MultiSourceInferenceExpression
      SourceIndex sourceProposition conclusion)
    (sourceProof : ∀ index, target.ProofObject (sourceProposition index)) :
    target.ProofObject conclusion :=
  match expression with
  | .source index => sourceProof index
  | .inference _ premises rule =>
      rule (fun index => (premises index).interpret sourceProof)

/-- Structural source-leaf occurrence in a proof-relevant expression. -/
def UsesSource
    {target : Theory.{uTO, uTP}}
    {SourceIndex : Type uNode}
    {sourceProposition : SourceIndex → target.Proposition}
    {conclusion : target.Proposition}
    (expression : MultiSourceInferenceExpression
      SourceIndex sourceProposition conclusion)
    (sourceIndex : SourceIndex) : Prop :=
  match expression with
  | .source index => sourceIndex = index
  | .inference _ premises _ =>
      ∃ premiseIndex, (premises premiseIndex).UsesSource sourceIndex

end MultiSourceInferenceExpression

/--
One exact source identity is simultaneously a leaf of the inference expression
and the source of a dependency edge into the derived target node.
-/
structure MultiSourceLeafDependency
    {target : Theory.{uTO, uTP}}
    {SourceIndex : Type uNode}
    {sourceProposition : SourceIndex → target.Proposition}
    {targetProposition : target.Proposition}
    (expression : MultiSourceInferenceExpression
      SourceIndex sourceProposition targetProposition)
    (graph : TransferDependencyGraph.{uNode})
    (sourceNode : SourceIndex → graph.Node)
    (targetNode : graph.Node)
    (sourceIndex : SourceIndex) where
  expressionUsesSource : expression.UsesSource sourceIndex
  dependency : graph.dependsOn (sourceNode sourceIndex) targetNode

set_option linter.checkUnivs false in
structure MultiSourceTheoremTransferDerivation
    {target : Theory.{uTO, uTP}}
    {targetFoundation : Foundation}
    (targetVersion : MathematicalTheoryVersion target targetFoundation)
    (targetAssumptions : AssumptionSet.{uTargetAssumption} target)
    (targetScope : TransferScope target) where
  derivationArtifact : VersionId

  SourceIndex : Type uNode
  sourceHasFanIn : ∃ left right : SourceIndex, left ≠ right
  sourceTheory : SourceIndex → Theory.{uSO, uSP}
  sourceFoundation : SourceIndex → Foundation
  sourceVersion : ∀ index,
    MathematicalTheoryVersion (sourceTheory index) (sourceFoundation index)
  sourceAssumptions : ∀ index,
    AssumptionSet.{uSourceAssumption} (sourceTheory index)
  sourceScope : ∀ index, TransferScope (sourceTheory index)
  sourceTheorem : ∀ index,
    CertifiedTheorem (sourceVersion index) (sourceAssumptions index)
  sourcePropositionInScope : ∀ index,
    PropositionWithinScope (sourceTheory index) (sourceScope index)
      (sourceTheorem index).proposition

  SourceObjectIndex : SourceIndex → Type uSourceObject
  sourceObjectIndexNonempty : ∀ index, Nonempty (SourceObjectIndex index)
  sourceObjectInstance : ∀ index,
    SourceObjectIndex index → (sourceTheory index).Object
  sourceObjectInScope : ∀ index objectIndex,
    (sourceScope index).contains (sourceObjectInstance index objectIndex)

  SourceWitnessIndex : SourceIndex → Type uSourceWitness
  sourceWitnessIndexNonempty : ∀ index, Nonempty (SourceWitnessIndex index)
  sourceWitnessInstance : ∀ index,
    SourceWitnessIndex index → (sourceTheory index).Object
  sourceWitnessInScope : ∀ index witnessIndex,
    (sourceScope index).contains (sourceWitnessInstance index witnessIndex)

  translation : ∀ index,
    Translation (sourceTheory index) target
      (sourceVersion index) targetVersion
      (sourceAssumptions index) targetAssumptions
      (sourceScope index) targetScope
  translationApplicationEvent : SourceIndex → VersionId
  translatedObject : ∀ index,
    SourceObjectIndex index → target.Object
  translatedObjectExact : ∀ index objectIndex,
    translatedObject index objectIndex =
      (translation index).mapObject (sourceObjectInstance index objectIndex)
  translationEvidenceArtifacts : SourceIndex → List VersionId
  translationEvidenceNonempty : ∀ index,
    translationEvidenceArtifacts index ≠ []
  preservation : ∀ index, PreservationTheorem (translation index)
  reflection : ∀ index, Option (ReflectionTheorem (translation index))

  TargetObjectIndex : Type uTargetObject
  targetObjectIndexNonempty : Nonempty TargetObjectIndex
  targetObject : TargetObjectIndex → target.Object
  targetObjectInScope : ∀ index, targetScope.contains (targetObject index)

  targetProposition : target.Proposition
  targetPropositionInScope :
    PropositionWithinScope target targetScope targetProposition
  jointInferenceArtifact : VersionId
  jointInferenceExpression : MultiSourceInferenceExpression SourceIndex
    (fun index =>
      (translation index).mapProposition (sourceTheorem index).proposition)
    targetProposition
  targetEvidenceArtifacts : List VersionId
  targetEvidenceNonempty : targetEvidenceArtifacts ≠ []
  derivedTheorem : CertifiedTheorem targetVersion targetAssumptions
  derivedPropositionExact : derivedTheorem.proposition = targetProposition
  derivedProofObjectExact : ∀ targetAssumptionsHold,
    Eq.mp (congrArg target.ProofObject derivedPropositionExact)
      (derivedTheorem.proofObject targetAssumptionsHold) =
      jointInferenceExpression.interpret (fun index =>
        target.reifyProofObject
          ((preservation index).law.sound
            (sourceTheorem index).proposition
            (sourcePropositionInScope index)
            (sourceTheorem index).proof
            targetAssumptionsHold))

  dependencyGraph : TransferDependencyGraph.{uNode}
  sourceNode : SourceIndex → dependencyGraph.Node
  sourceNodeInjective : Function.Injective sourceNode
  targetNode : dependencyGraph.Node
  sourceLeafDependency : ∀ index,
    MultiSourceLeafDependency jointInferenceExpression dependencyGraph
      sourceNode targetNode index
  sourceTheoryVersionExact : ∀ index,
    (dependencyGraph.node (sourceNode index)).theoryVersionArtifact.identity =
      (sourceVersion index).artifact
  sourceTheoremArtifactExact : ∀ index,
    (dependencyGraph.node (sourceNode index)).theoremArtifact =
      some ⟨(sourceTheorem index).theoremArtifact⟩
  sourcePropositionArtifactExact : ∀ index,
    (dependencyGraph.node (sourceNode index)).propositionArtifact =
      some ⟨(sourceTheorem index).propositionArtifact⟩
  targetTheoryVersionExact :
    (dependencyGraph.node targetNode).theoryVersionArtifact.identity =
      targetVersion.artifact
  targetTheoremArtifactExact :
    (dependencyGraph.node targetNode).theoremArtifact =
      some ⟨derivedTheorem.theoremArtifact⟩
  targetPropositionArtifactExact :
    (dependencyGraph.node targetNode).propositionArtifact =
      some ⟨derivedTheorem.propositionArtifact⟩
  edgeKindExact : ∀ index,
    (dependencyGraph.edge (sourceLeafDependency index).dependency).kind = .Preserves
  bridgeArtifactExact : ∀ index,
    (dependencyGraph.edge (sourceLeafDependency index).dependency).bridgeArtifact =
      (translation index).artifact
  evidenceArtifactExact : ∀ index,
    (dependencyGraph.edge (sourceLeafDependency index).dependency).evidenceArtifact =
      (preservation index).evidenceArtifact

  declaredInformationLoss : SourceIndex → List InformationLossProfile
  informationLossExact : ∀ index,
    declaredInformationLoss index = (translation index).informationLoss
  informationLossAssessment : ∀ index profile,
    profile ∈ declaredInformationLoss index →
      @InformationLossAssessment
        (sourceTheory index) target
        (sourceFoundation index) targetFoundation
        (sourceVersion index) targetVersion
        (sourceAssumptions index) targetAssumptions
        (sourceScope index) targetScope
        (translation index) profile
  equivalenceRegime : Option (EquivalenceRegime target)

  validationLifecycle : TransferLifecycleLedger
  operationalAdoption : TransferOperationalAdoption
  completenessAssertions : List TransferCompletenessAssertion
  completenessAssertionsNonempty : completenessAssertions ≠ []
  auditRecords : List TransferAuditRecord
  auditRecordsNonempty : auditRecords ≠ []

namespace MultiSourceTheoremTransferDerivation

/-- Every multi-source aggregate has two distinct dependency nodes into one target. -/
theorem hasDistinctFanIn
    {target : Theory.{uTO, uTP}}
    {targetFoundation : Foundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {targetAssumptions : AssumptionSet target}
    {targetScope : TransferScope target}
    (derivation : MultiSourceTheoremTransferDerivation
      targetVersion targetAssumptions targetScope) :
    ∃ left right : derivation.SourceIndex,
      left ≠ right ∧
      derivation.sourceNode left ≠ derivation.sourceNode right ∧
      Nonempty (derivation.dependencyGraph.dependsOn
        (derivation.sourceNode left) derivation.targetNode) ∧
      Nonempty (derivation.dependencyGraph.dependsOn
        (derivation.sourceNode right) derivation.targetNode) := by
  obtain ⟨left, right, distinct⟩ := derivation.sourceHasFanIn
  exact ⟨left, right, distinct,
    fun equality => distinct (derivation.sourceNodeInjective equality),
    ⟨(derivation.sourceLeafDependency left).dependency⟩,
    ⟨(derivation.sourceLeafDependency right).dependency⟩⟩

/-- Every graph source is the exact same indexed source used by the expression. -/
theorem sourceLeafCoverage
    {target : Theory.{uTO, uTP}}
    {targetFoundation : Foundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {targetAssumptions : AssumptionSet target}
    {targetScope : TransferScope target}
    (derivation : MultiSourceTheoremTransferDerivation
      targetVersion targetAssumptions targetScope) :
    ∀ index, derivation.jointInferenceExpression.UsesSource index :=
  fun index => (derivation.sourceLeafDependency index).expressionUsesSource

end MultiSourceTheoremTransferDerivation

namespace PreservationTheorem

/-- Data-level composition retains both preservation artifact identities. -/
def comp
    {source : Theory.{uSO, uSP}}
    {middle : Theory.{uTO, uTP}}
    {target : Theory.{uUO, uUP}}
    {sourceFoundation middleFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {middleVersion : MathematicalTheoryVersion middle middleFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {middleAssumptions : AssumptionSet middle}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {middleScope : TransferScope middle}
    {targetScope : TransferScope target}
    {first : Translation source middle sourceVersion middleVersion
      sourceAssumptions middleAssumptions sourceScope middleScope}
    {second : Translation middle target middleVersion targetVersion
      middleAssumptions targetAssumptions middleScope targetScope}
    (composedQuantifierMapEvidence : QuantifierSpecifiedMapEvidence source target
      (fun object => second.mapObject (first.mapObject object)))
    (firstProof : PreservationTheorem first)
    (secondProof : PreservationTheorem second) :
    PreservationTheorem (first.comp second composedQuantifierMapEvidence) where
  evidenceArtifact := VersionId.composite
    firstProof.evidenceArtifact secondProof.evidenceArtifact
  law := preservation_comp composedQuantifierMapEvidence
    firstProof.law secondProof.law

end PreservationTheorem

namespace ReflectionTheorem

/-- Data-level reflection composition exposes the correct reverse proof order. -/
def comp
    {source : Theory.{uSO, uSP}}
    {middle : Theory.{uTO, uTP}}
    {target : Theory.{uUO, uUP}}
    {sourceFoundation middleFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {middleVersion : MathematicalTheoryVersion middle middleFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {middleAssumptions : AssumptionSet middle}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {middleScope : TransferScope middle}
    {targetScope : TransferScope target}
    {first : Translation source middle sourceVersion middleVersion
      sourceAssumptions middleAssumptions sourceScope middleScope}
    {second : Translation middle target middleVersion targetVersion
      middleAssumptions targetAssumptions middleScope targetScope}
    (composedQuantifierMapEvidence : QuantifierSpecifiedMapEvidence source target
      (fun object => second.mapObject (first.mapObject object)))
    (secondProof : ReflectionTheorem second)
    (firstProof : ReflectionTheorem first) :
    ReflectionTheorem (first.comp second composedQuantifierMapEvidence) where
  evidenceArtifact := VersionId.composite
    secondProof.evidenceArtifact firstProof.evidenceArtifact
  law := reflection_comp composedQuantifierMapEvidence
    secondProof.law firstProof.law

end ReflectionTheorem

/--
A composite derivation retains both steps and exact middle-theorem continuity.
It therefore cannot masquerade as a primitive direct edge.
-/
structure CompositeTransferDerivation
    {source : Theory.{uSO, uSP}}
    {middle : Theory.{uTO, uTP}}
    {target : Theory.{uUO, uUP}}
    {sourceFoundation middleFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {middleVersion : MathematicalTheoryVersion middle middleFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {middleAssumptions : AssumptionSet middle}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {middleScope : TransferScope middle}
    {targetScope : TransferScope target}
    {first : Translation source middle sourceVersion middleVersion
      sourceAssumptions middleAssumptions sourceScope middleScope}
    {second : Translation middle target middleVersion targetVersion
      middleAssumptions targetAssumptions middleScope targetScope}
    {firstPreservation : PreservationTheorem first}
    {secondPreservation : PreservationTheorem second}
    (firstDerivation : @TheoremTransferDerivation
      source middle sourceFoundation middleFoundation
      sourceVersion middleVersion sourceAssumptions middleAssumptions
      sourceScope middleScope first firstPreservation)
    (secondDerivation : @TheoremTransferDerivation
      middle target middleFoundation targetFoundation
      middleVersion targetVersion middleAssumptions targetAssumptions
      middleScope targetScope second secondPreservation) where
  compositeArtifact : VersionId
  middleTheoremExact : secondDerivation.sourceTheorem =
    firstDerivation.targetTheorem
  combinedGraph : TransferDependencyGraph.{0}
  firstDerivationNode : combinedGraph.Node
  middleDerivationNode : combinedGraph.Node
  finalDerivationNode : combinedGraph.Node
  firstDependency :
    combinedGraph.dependsOn firstDerivationNode middleDerivationNode
  secondDependency :
    combinedGraph.dependsOn middleDerivationNode finalDerivationNode
  firstNodeTheoryVersionExact :
    (combinedGraph.node firstDerivationNode).theoryVersionArtifact.identity =
      sourceVersion.artifact
  middleNodeTheoryVersionExact :
    (combinedGraph.node middleDerivationNode).theoryVersionArtifact.identity =
      middleVersion.artifact
  finalNodeTheoryVersionExact :
    (combinedGraph.node finalDerivationNode).theoryVersionArtifact.identity =
      targetVersion.artifact
  firstNodeTheoremExact :
    (combinedGraph.node firstDerivationNode).theoremArtifact = some
      ⟨firstDerivation.sourceTheorem.theoremArtifact⟩
  middleNodeTheoremExact :
    (combinedGraph.node middleDerivationNode).theoremArtifact = some
      ⟨firstDerivation.targetTheorem.theoremArtifact⟩
  finalNodeTheoremExact :
    (combinedGraph.node finalDerivationNode).theoremArtifact = some
      ⟨secondDerivation.targetTheorem.theoremArtifact⟩
  firstNodePropositionExact :
    (combinedGraph.node firstDerivationNode).propositionArtifact = some
      ⟨firstDerivation.sourceTheorem.propositionArtifact⟩
  middleNodePropositionExact :
    (combinedGraph.node middleDerivationNode).propositionArtifact = some
      ⟨firstDerivation.targetTheorem.propositionArtifact⟩
  finalNodePropositionExact :
    (combinedGraph.node finalDerivationNode).propositionArtifact = some
      ⟨secondDerivation.targetTheorem.propositionArtifact⟩
  firstEdgeKindExact : (combinedGraph.edge firstDependency).kind = .Preserves
  secondEdgeKindExact : (combinedGraph.edge secondDependency).kind = .Preserves
  firstBridgeArtifactExact :
    (combinedGraph.edge firstDependency).bridgeArtifact = first.artifact
  secondBridgeArtifactExact :
    (combinedGraph.edge secondDependency).bridgeArtifact = second.artifact
  firstEvidenceArtifactExact :
    (combinedGraph.edge firstDependency).evidenceArtifact =
      firstPreservation.evidenceArtifact
  secondEvidenceArtifactExact :
    (combinedGraph.edge secondDependency).evidenceArtifact =
      secondPreservation.evidenceArtifact

namespace CompositeTransferDerivation

/-- Canonical theorem obtained from both retained preservation components. -/
def composedTargetTheorem
    {source : Theory.{uSO, uSP}}
    {middle : Theory.{uTO, uTP}}
    {target : Theory.{uUO, uUP}}
    {sourceFoundation middleFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {middleVersion : MathematicalTheoryVersion middle middleFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {middleAssumptions : AssumptionSet middle}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {middleScope : TransferScope middle}
    {targetScope : TransferScope target}
    {first : Translation source middle sourceVersion middleVersion
      sourceAssumptions middleAssumptions sourceScope middleScope}
    {second : Translation middle target middleVersion targetVersion
      middleAssumptions targetAssumptions middleScope targetScope}
    {firstPreservation : PreservationTheorem first}
    {secondPreservation : PreservationTheorem second}
    {firstDerivation : @TheoremTransferDerivation
      source middle sourceFoundation middleFoundation
      sourceVersion middleVersion sourceAssumptions middleAssumptions
      sourceScope middleScope first firstPreservation}
    {secondDerivation : @TheoremTransferDerivation
      middle target middleFoundation targetFoundation
      middleVersion targetVersion middleAssumptions targetAssumptions
      middleScope targetScope second secondPreservation}
    (_derivation : CompositeTransferDerivation
      firstDerivation secondDerivation) :
    CertifiedTheorem targetVersion targetAssumptions :=
  secondDerivation.targetTheorem

end CompositeTransferDerivation

end FCRS.TheoremTransfer
