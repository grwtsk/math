-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ModelTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.AtomicVersionId.Variant538ea8c61f4181a2eb5d071df50b68bc848c14e4296237f662de8208b880fc14","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"538ea8c61f4181a2eb5d071df50b68bc848c14e4296237f662de8208b880fc14","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ModelTheory.SourceCorpus.AtomicVersionId.Variant538ea8c61f4181a2eb5d071df50b68bc848c14e4296237f662de8208b880fc14","mathematical_subject":"Logic.ModelTheory","original_sha256":"538ea8c61f4181a2eb5d071df50b68bc848c14e4296237f662de8208b880fc14","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/TheoremTransfer/Foundations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
Domain-neutral identities and metadata for universal theorem transfer.

This layer deliberately contains no arithmetic, sieve, coordinate, or graph
concepts.  Mathematical truth is represented by `Theory.Holds`; version,
foundation, assumption, scope, information-loss, and equivalence information
remain separate typed records.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.AtomicVersionId.Variant538ea8c61f4181a2eb5d071df50b68bc848c14e4296237f662de8208b880fc14

namespace FCRS.TheoremTransfer

universe uObject uProposition uAssumption uSourceObject uSourceProposition
  uMiddleObject uMiddleProposition uTargetObject uTargetProposition

/-- Immutable atomic identity for a formal artifact version. -/
structure AtomicVersionId where
  authority : String
  localName : String
  version : String
  digest : String
deriving Repr, DecidableEq

/--
Immutable version identity.  Composition is structural, not string encoding, so
both complete ordered component identities remain injectively recoverable.
-/
inductive VersionId where
  | atomic (identity : AtomicVersionId)
  | composite (first second : VersionId)
  /-- Role tags survive projection into the universal identity namespace. -/
  | roleTagged (roleNamespace : String) (roleCode : Nat) (identity : VersionId)
deriving Repr, DecidableEq

/-- Closed inventory of foundations/logics required by the UTTA contract. -/
inductive FoundationKind where
  | ClassicalFirstOrderLogic
  | IntuitionisticFirstOrderLogic
  | DependentTypeTheory
  | SetTheoreticFoundation
  | HomotopyTypeTheory
  | HigherOrderLogic
  | OtherDeclaredLogic
deriving Repr, DecidableEq

/-- One versioned formal foundation; a kind alone is not a version. -/
structure Foundation where
  identity : VersionId
  kind : FoundationKind
deriving Repr, DecidableEq

/-- The mode of an explicit cross-foundation interpretation. -/
inductive FoundationInterpretationKind where
  | Identity
  | Interpretation
deriving Repr, DecidableEq

/--
Cross-foundation semantics are outside this Lean kernel.  A non-identity bridge
therefore records an externally checkable evidence inventory rather than a
caller-chosen proposition such as `True` that could masquerade as a formal
interpretation theorem.
-/
structure ExternalFoundationInterpretationEvidence where
  artifact : VersionId
  designation : String
  sourceEvidenceArtifacts : List VersionId
  evidenceNonempty : sourceEvidenceArtifacts ≠ []
deriving Repr

/--
Foundation passage with an indexed identity constructor.  Non-identity passage
is explicitly external evidence: the Lean kernel does not claim to formalize a
metalogic merely because an arbitrary proposition was inhabited.
-/
inductive FoundationInterpretation : Foundation → Foundation → Type where
  | identity (foundation : Foundation) (artifact : VersionId) :
      FoundationInterpretation foundation foundation
  | interpretation {source target : Foundation}
      (evidence : ExternalFoundationInterpretationEvidence) :
      FoundationInterpretation source target

namespace FoundationInterpretation

/-- Exact artifact identity of either indexed interpretation constructor. -/
def artifact {source target : Foundation} :
    FoundationInterpretation source target → VersionId
  | .identity _ artifact => artifact
  | .interpretation evidence => evidence.artifact

/-- The constructor determines the interpretation kind; callers cannot relabel it. -/
def kind {source target : Foundation} :
    FoundationInterpretation source target → FoundationInterpretationKind
  | .identity _ _ => .Identity
  | .interpretation _ => .Interpretation

/-- An interpretation classified as identity forces equality of foundation indices. -/
theorem identity_indices_exact
    {source target : Foundation}
    (interpretation : FoundationInterpretation source target)
    (identityKind : interpretation.kind = .Identity) : source = target := by
  cases interpretation with
  | identity => rfl
  | interpretation =>
      simp [kind] at identityKind

/--
Composition preserves identity classification exactly when both components are
identities.  Every path involving external interpretation evidence remains
explicitly external and retains the complete ordered evidence inventory.
-/
def comp
    {first middle last : Foundation}
    (left : FoundationInterpretation first middle)
    (right : FoundationInterpretation middle last) :
    FoundationInterpretation first last := by
  cases left with
  | identity leftArtifact =>
      cases right with
      | identity rightArtifact =>
          exact .identity first
            (VersionId.composite leftArtifact rightArtifact)
      | interpretation rightEvidence =>
          exact .interpretation {
            artifact := VersionId.composite leftArtifact rightEvidence.artifact
            designation := "identity followed by external interpretation"
            sourceEvidenceArtifacts :=
              leftArtifact :: rightEvidence.sourceEvidenceArtifacts
            evidenceNonempty := by simp
          }
  | interpretation leftEvidence =>
      cases right with
      | identity rightArtifact =>
          exact .interpretation {
            artifact := VersionId.composite leftEvidence.artifact rightArtifact
            designation := "external interpretation followed by identity"
            sourceEvidenceArtifacts :=
              leftEvidence.sourceEvidenceArtifacts ++ [rightArtifact]
            evidenceNonempty := by simp
          }
      | interpretation rightEvidence =>
          exact .interpretation {
            artifact := VersionId.composite
              leftEvidence.artifact rightEvidence.artifact
            designation := "composite external foundation interpretation"
            sourceEvidenceArtifacts :=
              leftEvidence.sourceEvidenceArtifacts ++
                rightEvidence.sourceEvidenceArtifacts
            evidenceNonempty := by
              intro hEmpty
              have leftEmpty : leftEvidence.sourceEvidenceArtifacts = [] := by
                have lengths := congrArg List.length hEmpty
                have parts :
                    leftEvidence.sourceEvidenceArtifacts = [] ∧
                      rightEvidence.sourceEvidenceArtifacts = [] := by
                  simpa using lengths
                exact parts.1
              exact leftEvidence.evidenceNonempty leftEmpty
          }

end FoundationInterpretation

/-- Status of a foundation claim whose metalogic is verified outside Lean. -/
inductive ExternalFoundationClaimStatus where
  | PendingExternalValidation
  | ValidatedByExternalExecution
deriving Repr, DecidableEq

/--
Versioned procedure used to validate a foundation claim outside this kernel.
-/
structure ExternalValidationProcedure where
  procedureArtifact : VersionId
  implementationArtifact : VersionId
  designation : String
deriving Repr

/--
One exact execution of one exact validation procedure.  The subject inventory
is nonempty, so a claim cannot be declared validated by an unrelated run.
-/
structure ExternalValidationExecution
    (procedure : ExternalValidationProcedure) where
  executionArtifact : VersionId
  executedProcedureArtifact : VersionId
  procedureExact : executedProcedureArtifact = procedure.procedureArtifact
  subjectArtifacts : List VersionId
  subjectsNonempty : subjectArtifacts ≠ []
deriving Repr

/-- Machine-readable result of one exact external validation execution. -/
structure ExternalValidationResult
    {procedure : ExternalValidationProcedure}
    (execution : ExternalValidationExecution procedure) where
  resultArtifact : VersionId
  executionArtifact : VersionId
  executionExact : executionArtifact = execution.executionArtifact
  accepted : Bool
deriving Repr

/-- Durable evidence inventory indexed by the exact result it substantiates. -/
structure ExternalValidationEvidence
    {procedure : ExternalValidationProcedure}
    {execution : ExternalValidationExecution procedure}
    (result : ExternalValidationResult execution) where
  evidenceRecordArtifact : VersionId
  resultArtifact : VersionId
  resultExact : resultArtifact = result.resultArtifact
  evidenceArtifacts : List VersionId
  evidenceNonempty : evidenceArtifacts ≠ []
deriving Repr

/--
Validated status is derived only from an accepted result whose execution names
the exact claim and whose evidence is indexed by that exact result.
-/
structure ValidatedExternalFoundationClaim (claimArtifact : VersionId) where
  procedure : ExternalValidationProcedure
  execution : ExternalValidationExecution procedure
  result : ExternalValidationResult execution
  evidence : ExternalValidationEvidence result
  claimWasValidated : claimArtifact ∈ execution.subjectArtifacts
  acceptedExact : result.accepted = true

/-- Pending and validated claims have disjoint evidence constructors. -/
inductive ExternalFoundationClaimEvidence (claimArtifact : VersionId) :
    ExternalFoundationClaimStatus → Type where
  | pending (pendingRecordArtifact : VersionId) :
      ExternalFoundationClaimEvidence claimArtifact .PendingExternalValidation
  | validated (record : ValidatedExternalFoundationClaim claimArtifact) :
      ExternalFoundationClaimEvidence claimArtifact .ValidatedByExternalExecution

/--
Conservativity is an independent external claim, not a synonym for
interpretation and not a caller-selected Lean proposition.
-/
structure FoundationConservativityClaim
    {source target : Foundation}
    (interpretation : FoundationInterpretation source target) where
  claimArtifact : VersionId
  status : ExternalFoundationClaimStatus
  validation : ExternalFoundationClaimEvidence claimArtifact status

/--
Foundation equivalence carries both externally evidenced interpretations and a
separate claim whose validated state requires an exact external execution,
result, and evidence record.  It makes no kernel theorem about an unformalized
metalogic.
-/
structure FoundationEquivalenceClaim (left right : Foundation) where
  claimArtifact : VersionId
  forward : FoundationInterpretation left right
  reverse : FoundationInterpretation right left
  roundTripEvidenceArtifacts : List VersionId
  roundTripEvidenceNonempty : roundTripEvidenceArtifacts ≠ []
  status : ExternalFoundationClaimStatus
  validation : ExternalFoundationClaimEvidence claimArtifact status

/--
A proposition is genuinely nullary, carries a statically nonempty exact finite
support, or conservatively requires every object in the theory scope.  The
universal case is used when an opaque semantic proposition does not expose a
finite support witness.
-/
inductive PropositionSupport (Object : Type uObject) where
  | nullary
  | nonempty (head : Object) (tail : List Object)
  | universal

namespace PropositionSupport

/-- Exact list view of a typed proposition support. -/
def objects {Object : Type uObject} : PropositionSupport Object → List Object
  | .nullary => []
  | .nonempty head tail => head :: tail
  | .universal => []

/-- Every exactly supported object lies in the supplied scope predicate. -/
def Within
    {Object : Type uObject}
    (contains : Object → Prop) : PropositionSupport Object → Prop
  | .nullary => True
  | .nonempty head tail =>
      contains head ∧ ∀ object, object ∈ tail → contains object
  | .universal => ∀ object, contains object

end PropositionSupport

set_option linter.checkUnivs false in
/--
The semantic core of a mathematical theory.  Its two carrier universes are
intentionally independent even though this record stores both together.
-/
structure Theory where
  Object : Type uObject
  Proposition : Type uProposition
  Holds : Proposition → Prop
  /-- Reified proof objects are distinct from semantic truth proofs. -/
  ProofObject : Proposition → Type
  proofObjectSound : ∀ {proposition}, ProofObject proposition → Holds proposition
  /-- Every semantic proof can be reified; inhabited truth cannot use `Empty`. -/
  reifyProofObject : ∀ {proposition}, Holds proposition → ProofObject proposition
  /-- Typed exact support prevents a nonnullary proposition from using `[]`. -/
  propositionSupport : Proposition → PropositionSupport Object
  /-- Object property represented by a proposition, when one is requested. -/
  propositionProperty : Proposition → Object → Prop

/-- Closed metadata axes whose silent strengthening is forbidden. -/
inductive CardinalityRegime where
  | Finite
  | Infinite
  | Unrestricted
  | Unspecified
deriving Repr, DecidableEq

inductive ScalarDomainRegime where
  | Integer
  | Real
  | Other
  | Unspecified
deriving Repr, DecidableEq

inductive GeometricRegime where
  | Discrete
  | Continuous
  | Unspecified
deriving Repr, DecidableEq

inductive CoverageRegime where
  | Local
  | Global
  | Unspecified
deriving Repr, DecidableEq

inductive UniformityRegime where
  | Pointwise
  | Uniform
  | Unspecified
deriving Repr, DecidableEq

inductive MeasureScopeRegime where
  | AlmostEverywhere
  | Everywhere
  | Unspecified
deriving Repr, DecidableEq

inductive ExistenceRegime where
  | Propositional
  | Constructive
  | UniquePropositional
  | UniqueConstructive
  | Unspecified
deriving Repr, DecidableEq

inductive BoundednessRegime where
  | Bounded
  | Unbounded
  | Unspecified
deriving Repr, DecidableEq

inductive CompactnessRegime where
  | Compact
  | Noncompact
  | Unspecified
deriving Repr, DecidableEq

/-- Exact quantifier-domain metadata used by the Lean-safe baseline. -/
structure QuantifierProfile where
  artifact : VersionId
  cardinality : CardinalityRegime
  scalarDomain : ScalarDomainRegime
  geometry : GeometricRegime
  coverage : CoverageRegime
  uniformity : UniformityRegime
  measureScope : MeasureScopeRegime
  existence : ExistenceRegime
  boundedness : BoundednessRegime
  compactness : CompactnessRegime
deriving Repr, DecidableEq

/-- True exactly when at least one closed quantifier axis is unspecified. -/
def QuantifierProfile.HasUnspecified (profile : QuantifierProfile) : Prop :=
  profile.cardinality = .Unspecified ∨
  profile.scalarDomain = .Unspecified ∨
  profile.geometry = .Unspecified ∨
  profile.coverage = .Unspecified ∨
  profile.uniformity = .Unspecified ∨
  profile.measureScope = .Unspecified ∨
  profile.existence = .Unspecified ∨
  profile.boundedness = .Unspecified ∨
  profile.compactness = .Unspecified

/--
A kernel-checked two-sided equivalence between the actual object carriers used
by two theories.  This local record avoids reducing semantic compatibility to
nominal IDs and keeps the foundation module independent of external libraries.
-/
structure QuantifierCarrierEquivalence
    (SourceObject : Type uSourceObject) (TargetObject : Type uTargetObject) where
  toTarget : SourceObject → TargetObject
  toSource : TargetObject → SourceObject
  sourceRoundTrip : ∀ source, toSource (toTarget source) = source
  targetRoundTrip : ∀ target, toTarget (toSource target) = target

namespace QuantifierCarrierEquivalence

/-- Identity carrier equivalence. -/
def refl (Object : Type uObject) : QuantifierCarrierEquivalence Object Object where
  toTarget := id
  toSource := id
  sourceRoundTrip := by intro; rfl
  targetRoundTrip := by intro; rfl

/-- Exact composition of two carrier equivalences. -/
def comp
    {SourceObject : Type uSourceObject} {MiddleObject : Type uObject}
    {TargetObject : Type uTargetObject}
    (first : QuantifierCarrierEquivalence SourceObject MiddleObject)
    (second : QuantifierCarrierEquivalence MiddleObject TargetObject) :
    QuantifierCarrierEquivalence SourceObject TargetObject where
  toTarget := fun source => second.toTarget (first.toTarget source)
  toSource := fun target => first.toSource (second.toSource target)
  sourceRoundTrip := by
    intro source
    rw [second.sourceRoundTrip, first.sourceRoundTrip]
  targetRoundTrip := by
    intro target
    rw [first.targetRoundTrip, second.targetRoundTrip]

end QuantifierCarrierEquivalence

/--
Non-nominal semantics for the exact object map of a fully specified
quantifier transform.  Equivalence proves carrier continuity; object
independence proves that neither theory's represented propositions quantify
over its object carrier; explicit noninjectivity records an actual lossy map
rather than misclassifying it as carrier-compatible.  Composition retains the
complete ordered evidence tree.
-/
inductive QuantifierSpecifiedMapEvidence
    (source : Theory.{uSourceObject, uSourceProposition})
    (target : Theory.{uTargetObject, uTargetProposition})
    (mapObject : source.Object → target.Object) :
    Type (max uSourceObject uSourceProposition uTargetObject uTargetProposition) where
  | carrierEquivalent
      (carrierEquivalence :
        QuantifierCarrierEquivalence source.Object target.Object)
      (mapObjectExact : carrierEquivalence.toTarget = mapObject)
  | propositionObjectIndependent
      (sourceIndependent : ∀ proposition left right,
        source.propositionProperty proposition left ↔
          source.propositionProperty proposition right)
      (targetIndependent : ∀ proposition left right,
        target.propositionProperty proposition left ↔
          target.propositionProperty proposition right)
  | explicitlyNonInjective
      (left right : source.Object)
      (sourceDistinct : left ≠ right)
      (sameTarget : mapObject left = mapObject right)

/--
Separate, semantically indexed evidence for the exact translation map.
Fully specified profiles require `QuantifierSpecifiedMapEvidence`, not only
artifact identifiers.  An unspecified profile requires an actual Lean carrier
equivalence.  Nominal metadata alone therefore cannot certify a
finite-to-infinite carrier change or an unrelated map.
-/
inductive QuantifierUnspecifiedCompatibility
    (source : Theory.{uSourceObject, uSourceProposition})
    (target : Theory.{uTargetObject, uTargetProposition})
    (mapObject : source.Object → target.Object)
    (sourceProfile targetProfile : QuantifierProfile) :
    Type (max uSourceObject uSourceProposition uTargetObject uTargetProposition) where
  | fullySpecified
      (sourceSpecified : ¬ sourceProfile.HasUnspecified)
      (targetSpecified : ¬ targetProfile.HasUnspecified)
      (mapEvidence : QuantifierSpecifiedMapEvidence source target mapObject)
      (mapEvidenceArtifacts : List VersionId)
      (mapEvidenceNonempty : mapEvidenceArtifacts ≠ [])
  | evidenced
      (carrierEquivalence :
        QuantifierCarrierEquivalence source.Object target.Object)
      (mapObjectExact : carrierEquivalence.toTarget = mapObject)
      (evidenceArtifacts : List VersionId)
      (evidenceNonempty : evidenceArtifacts ≠ [])

namespace QuantifierUnspecifiedCompatibility

/--
An unspecified source profile exposes a genuine carrier equivalence.  The
fully-specified constructor is impossible under the supplied hypothesis.
-/
def carrierEquivalenceOfSourceUnspecified
    {source : Theory.{uSourceObject, uSourceProposition}}
    {target : Theory.{uTargetObject, uTargetProposition}}
    {sourceProfile targetProfile : QuantifierProfile}
    {mapObject : source.Object → target.Object}
    (compatibility : QuantifierUnspecifiedCompatibility source target
      mapObject sourceProfile targetProfile)
    (sourceUnspecified : sourceProfile.HasUnspecified) :
    QuantifierCarrierEquivalence source.Object target.Object :=
  match compatibility with
  | .fullySpecified sourceSpecified _ _ _ _ =>
      False.elim (sourceSpecified sourceUnspecified)
  | .evidenced carrierEquivalence _ _ _ => carrierEquivalence

/-- The carrier equivalence exposed for an unknown profile is the exact map. -/
theorem carrierEquivalenceMapExactOfSourceUnspecified
    {source : Theory.{uSourceObject, uSourceProposition}}
    {target : Theory.{uTargetObject, uTargetProposition}}
    {mapObject : source.Object → target.Object}
    {sourceProfile targetProfile : QuantifierProfile}
    (compatibility : QuantifierUnspecifiedCompatibility source target
      mapObject sourceProfile targetProfile)
    (sourceUnspecified : sourceProfile.HasUnspecified) :
    (carrierEquivalenceOfSourceUnspecified compatibility sourceUnspecified).toTarget =
      mapObject :=
  match compatibility with
  | .fullySpecified sourceSpecified _ _ _ _ =>
      False.elim (sourceSpecified sourceUnspecified)
  | .evidenced _ mapObjectExact _ _ => mapObjectExact

/--
Compatibility composition retains semantic carrier continuity whenever the
shared exact profile is unspecified, and otherwise constructs the closed
fully-specified case.
-/
def comp
    {source : Theory.{uSourceObject, uSourceProposition}}
    {middle : Theory.{uMiddleObject, uMiddleProposition}}
    {target : Theory.{uTargetObject, uTargetProposition}}
    {sourceProfile firstTargetProfile secondSourceProfile targetProfile :
      QuantifierProfile}
    {firstMap : source.Object → middle.Object}
    {secondMap : middle.Object → target.Object}
    (sourceFirstExact : sourceProfile = firstTargetProfile)
    (middleExact : firstTargetProfile = secondSourceProfile)
    (secondTargetExact : secondSourceProfile = targetProfile)
    (first : QuantifierUnspecifiedCompatibility source middle
      firstMap sourceProfile firstTargetProfile)
    (second : QuantifierUnspecifiedCompatibility middle target
      secondMap secondSourceProfile targetProfile)
    (composedMapEvidence : QuantifierSpecifiedMapEvidence source target
      (fun source => secondMap (firstMap source)))
    (evidenceArtifacts : List VersionId)
    (evidenceNonempty : evidenceArtifacts ≠ []) :
    QuantifierUnspecifiedCompatibility source target
      (fun source => secondMap (firstMap source))
      sourceProfile targetProfile := by
  letI : Decidable sourceProfile.HasUnspecified := by
    unfold QuantifierProfile.HasUnspecified
    infer_instance
  by_cases sourceUnspecified : sourceProfile.HasUnspecified
  · have middleUnspecified : secondSourceProfile.HasUnspecified := by
      simpa [sourceFirstExact, middleExact] using sourceUnspecified
    let firstEquivalence :=
      carrierEquivalenceOfSourceUnspecified first sourceUnspecified
    let secondEquivalence :=
      carrierEquivalenceOfSourceUnspecified second middleUnspecified
    exact .evidenced
      (QuantifierCarrierEquivalence.comp firstEquivalence secondEquivalence)
      (by
        funext source
        change secondEquivalence.toTarget (firstEquivalence.toTarget source) = _
        rw [carrierEquivalenceMapExactOfSourceUnspecified
          first sourceUnspecified,
          carrierEquivalenceMapExactOfSourceUnspecified
            second middleUnspecified])
      evidenceArtifacts evidenceNonempty
  · exact .fullySpecified sourceUnspecified (by
      intro targetUnspecified
      apply sourceUnspecified
      rw [sourceFirstExact, middleExact, secondTargetExact]
      exact targetUnspecified)
      composedMapEvidence
      evidenceArtifacts evidenceNonempty

end QuantifierUnspecifiedCompatibility

/--
The current Lean kernel accepts only exact quantifier-profile transport.
Nonidentity transformations require a future semantic extension and cannot be
smuggled in as an unchecked label.
-/
structure QuantifierTransform
    (source : Theory.{uSourceObject, uSourceProposition})
    (target : Theory.{uTargetObject, uTargetProposition})
    (mapObject : source.Object → target.Object) where
  artifact : VersionId
  sourceProfile : QuantifierProfile
  targetProfile : QuantifierProfile
  profileExact : sourceProfile = targetProfile
  unspecifiedCompatibility :
    QuantifierUnspecifiedCompatibility source target
      mapObject sourceProfile targetProfile

/-- Neutral exact profile for propositions with no specialized quantifier metadata. -/
def QuantifierProfile.unspecified (artifact : VersionId) : QuantifierProfile where
  artifact := artifact
  cardinality := .Unspecified
  scalarDomain := .Unspecified
  geometry := .Unspecified
  coverage := .Unspecified
  uniformity := .Unspecified
  measureScope := .Unspecified
  existence := .Unspecified
  boundedness := .Unspecified
  compactness := .Unspecified

/-- Stable identity of a mathematical theory, distinct from a discipline name. -/
structure MathematicalTheoryIdentity where
  authority : String
  localName : String
deriving Repr, DecidableEq

/-- Release status of one immutable mathematical-theory version. -/
inductive TheoryReleaseStatus where
  | Draft
  | Candidate
  | Released
  | Superseded
  | Withdrawn
deriving Repr, DecidableEq

/--
First-class theory version.  Its foundation is an index, so a value cannot be
silently reused under a different logic/foundation.
-/
structure MathematicalTheoryVersion
    (theory : Theory) (foundation : Foundation) where
  artifact : VersionId
  theoryIdentity : MathematicalTheoryIdentity
  signatureVersion : VersionId
  axiomSetVersion : VersionId
  definitionSetVersion : VersionId
  importedTheoryVersions : List VersionId
  semanticRegime : String
  quantifierProfile : QuantifierProfile
  formalizationArtifactVersion : VersionId
  releaseStatus : TheoryReleaseStatus
  provenance : List VersionId

/-- One proposition-valued assumption in an exact theory. -/
structure Assumption (theory : Theory) where
  artifact : VersionId
  proposition : theory.Proposition

/-- An indexed assumption inventory; its members are not flattened to strings. -/
structure AssumptionSet (theory : Theory) where
  artifact : VersionId
  Index : Type uAssumption
  assumption : Index → Assumption theory

namespace AssumptionSet

/-- Semantic satisfaction of every member of one assumption set. -/
def Holds {theory : Theory} (assumptions : AssumptionSet theory) : Prop :=
  ∀ index, theory.Holds (assumptions.assumption index).proposition

/-- The explicitly empty assumption set. -/
def empty (theory : Theory) (artifact : VersionId) :
    AssumptionSet theory where
  artifact := artifact
  Index := ULift Empty
  assumption := fun index => nomatch index.down

/-- Empty assumptions are satisfied without introducing a mathematical axiom. -/
theorem empty_holds (theory : Theory) (artifact : VersionId) :
    (empty theory artifact).Holds := by
  intro index
  exact nomatch index.down

end AssumptionSet

/-- Explicit object/quantifier scope in one exact theory. -/
structure TransferScope (theory : Theory) where
  artifact : VersionId
  contains : theory.Object → Prop

namespace TransferScope

/-- Universal scope is still a named, versioned scope artifact. -/
def universal (theory : Theory) (artifact : VersionId) : TransferScope theory where
  artifact := artifact
  contains := fun _ => True

end TransferScope

/-- Every object named by a proposition lies in the declared transfer scope. -/
def PropositionWithinScope
    (theory : Theory) (scope : TransferScope theory)
    (proposition : theory.Proposition) : Prop :=
  (theory.propositionSupport proposition).Within scope.contains

/-- The exact information behavior of one transfer component. -/
inductive InformationLossClass where
  | Lossless
  | LosslessOnScope
  | FaithfulButNotFull
  | Quotienting
  | Forgetful
  | ManyToOne
  | Partial
  | Approximate
  | DerivedInvariantOnly
  | UnknownInformationLoss
deriving Repr, DecidableEq

/-- One component-level information-loss declaration. -/
structure InformationLossProfile where
  artifact : VersionId
  classification : InformationLossClass
  declaredScope : String
  forgottenInformation : List String
  /-- Loss metadata is a declaration until separately assessed in a derivation. -/
  assessmentArtifact : VersionId
deriving Repr

/-- Canonicality of an object-level construction or representation. -/
inductive ConstructionCanonicality where
  | Canonical
  | CanonicalUpToUniqueIsomorphism
  | CanonicalUpToIsomorphism
  | ChoiceDependent
  | NonCanonical
  | Unknown
deriving Repr, DecidableEq

/-- Dependence of a conclusion on choices made by a construction. -/
inductive ChoiceDependence where
  | ChoiceIndependent
  | ChoiceRelative
  | InvariantUnderAdmissibleChoices
  | UnknownWithRespectToChoice
deriving Repr, DecidableEq

/-- Canonicality and choice dependence are recorded together but not collapsed. -/
structure CanonicalityProfile where
  artifact : VersionId
  canonicality : ConstructionCanonicality
  conclusionDependence : ChoiceDependence
deriving Repr

/-- Required equivalence vocabulary for property and invariant transfer. -/
inductive EquivalenceRegimeKind where
  | Equality
  | Isomorphism
  | TypedIsomorphism
  | LabelPreservingIsomorphism
  | OrderIsomorphism
  | GroupIsomorphism
  | RingIsomorphism
  | FieldIsomorphism
  | LinearIsomorphism
  | Homeomorphism
  | HomotopyEquivalence
  | Diffeomorphism
  | MeasurePreservingIsomorphism
  | CategoryEquivalence
  | NaturalIsomorphism
  | MoritaEquivalence
  | QuasiIsomorphism
  | WeakEquivalence
  | BirationalEquivalence
  | CustomProvedEquivalence
deriving Repr, DecidableEq

/-- A proof-bearing equivalence relation for objects of one theory. -/
structure EquivalenceRegime (theory : Theory) where
  artifact : VersionId
  kind : EquivalenceRegimeKind
  equivalent : theory.Object → theory.Object → Prop
  reflexive : ∀ object, equivalent object object
  symmetric : ∀ {left right}, equivalent left right → equivalent right left
  transitive : ∀ {first middle last},
    equivalent first middle → equivalent middle last → equivalent first last

/-- A property invariant under one exact, explicit equivalence regime. -/
structure PropertyInvariant
    {theory : Theory}
    (regime : EquivalenceRegime theory)
    (property : theory.Object → Prop) where
  artifact : VersionId
  preserved : ∀ {left right},
    regime.equivalent left right → (property left ↔ property right)

end FCRS.TheoremTransfer
