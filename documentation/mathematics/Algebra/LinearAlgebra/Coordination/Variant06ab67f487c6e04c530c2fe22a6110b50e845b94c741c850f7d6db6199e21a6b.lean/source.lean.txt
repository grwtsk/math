import CordTheory.Records

/-!
# Coordination, prediction, comparison, and correction

This module formalizes a bounded core of `CPCC-CST-2`.  The richer
coordination vocabulary lowers into the existing `CORD-THEORY-1` single-entry
boundary; it does not create a second admission path.  State roles,
discrepancy dimensions, reflective representation levels, exact reification
bindings, intent inference, and mutation authority remain distinct types.
-/

namespace Cord

/-- Stable identifier of the coordination theory formalized by this module. -/
def cpccTheoryIdentifier : String := "CPCC-CST-2"

/-- Version of the coordination theory formalized by this module. -/
def cpccTheoryVersion : String := "0.2.0-rc.3"

/-! ## Exact coordination intents and their single-entry lowering -/

/-- The complete intent vocabulary admitted by the CPCC coordination frame. -/
inductive CoordinationIntent
  | observe
  | inspect
  | ask
  | answer
  | research
  | resolve
  | predict
  | compare
  | explain
  | propose
  | simulate
  | implementInCandidateState
  | validate
  | requestHumanDecision
  | authorize
  | commit
  | rollback
  | continue
  | close
  deriving DecidableEq, Repr, Inhabited, Fintype

namespace CoordinationIntent

/-- Stable source spelling for each CPCC intent. -/
def label : CoordinationIntent → String
  | .observe => "observe"
  | .inspect => "inspect"
  | .ask => "ask"
  | .answer => "answer"
  | .research => "research"
  | .resolve => "resolve"
  | .predict => "predict"
  | .compare => "compare"
  | .explain => "explain"
  | .propose => "propose"
  | .simulate => "simulate"
  | .implementInCandidateState => "implement_in_candidate_state"
  | .validate => "validate"
  | .requestHumanDecision => "request_human_decision"
  | .authorize => "authorize"
  | .commit => "commit"
  | .rollback => "rollback"
  | .continue => "continue"
  | .close => "close"

/--
Lower a coordination intent into the existing single-entry operation class.
Candidate implementation and a request for a human decision lower to proposal,
not to authorization or commit.
-/
def lower : CoordinationIntent → CordIntent
  | .observe => .observe
  | .inspect => .query
  | .ask => .query
  | .answer => .resolve
  | .research => .derive
  | .resolve => .resolve
  | .predict => .derive
  | .compare => .derive
  | .explain => .explain
  | .propose => .propose
  | .simulate => .simulate
  | .implementInCandidateState => .propose
  | .validate => .validate
  | .requestHumanDecision => .propose
  | .authorize => .authorize
  | .commit => .commit
  | .rollback => .rollback
  | .continue => .continue
  | .close => .continue

/-- Authority capability is inherited from, rather than added to, single entry. -/
def MayCreateAuthoritativeEffect (intent : CoordinationIntent) : Prop :=
  intent.lower.MayCreateAuthoritativeEffect

instance (intent : CoordinationIntent) :
    Decidable intent.MayCreateAuthoritativeEffect := by
  unfold MayCreateAuthoritativeEffect
  infer_instance

/-- Closed inventory of the nineteen CPCC coordination intents. -/
def all : Finset CoordinationIntent := Finset.univ

/-- The source vocabulary contains exactly nineteen intents. -/
theorem card_all : all.card = 19 := by
  native_decide

@[simp] theorem mem_all (intent : CoordinationIntent) : intent ∈ all := by
  simp [all]

/-- Exact characterization of authority-capable coordination intents. -/
theorem mayCreate_iff (intent : CoordinationIntent) :
    intent.MayCreateAuthoritativeEffect ↔
      intent = .commit ∨ intent = .rollback := by
  cases intent <;>
    simp [MayCreateAuthoritativeEffect, lower,
      CordIntent.MayCreateAuthoritativeEffect]

@[simp] theorem candidate_implementation_not_authoritative :
    ¬ CoordinationIntent.implementInCandidateState.MayCreateAuthoritativeEffect := by
  simp [MayCreateAuthoritativeEffect, lower,
    CordIntent.MayCreateAuthoritativeEffect]

@[simp] theorem request_decision_not_authoritative :
    ¬ CoordinationIntent.requestHumanDecision.MayCreateAuthoritativeEffect := by
  simp [MayCreateAuthoritativeEffect, lower,
    CordIntent.MayCreateAuthoritativeEffect]

@[simp] theorem validation_not_authoritative :
    ¬ CoordinationIntent.validate.MayCreateAuthoritativeEffect := by
  simp [MayCreateAuthoritativeEffect, lower,
    CordIntent.MayCreateAuthoritativeEffect]

end CoordinationIntent

/--
A CPCC frame refines, rather than bypasses, the existing CORD entry frame.
The equality is a proof-carrying witness of the lowering used at admission.
-/
structure CoordinationEntryFrame where
  base : CordEntryFrame
  coordinationIntent : CoordinationIntent
  loweredAtSingleEntry : base.intent = coordinationIntent.lower
  coordinationContract : RecordId

namespace CoordinationEntryFrame

/-- A coordination frame is valid only when its base entry and contract are valid. -/
def Valid (frame : CoordinationEntryFrame) : Prop :=
  frame.base.Valid ∧ frame.coordinationContract.value ≠ 0

/-- A valid coordination frame cannot widen the authority class of its intent. -/
theorem authoritative_effect_iff (frame : CoordinationEntryFrame) :
    frame.base.intent.MayCreateAuthoritativeEffect ↔
      frame.coordinationIntent = .commit ∨
      frame.coordinationIntent = .rollback := by
  rw [frame.loweredAtSingleEntry]
  exact CoordinationIntent.mayCreate_iff frame.coordinationIntent

end CoordinationEntryFrame

/-! ## Five distinct state roles -/

/-- The five comparison roles are a closed vocabulary, not scalar aliases. -/
inductive CoordinationStateRole
  | intended
  | predicted
  | observed
  | represented
  | authorizedEnvelope
  deriving DecidableEq, Repr, Inhabited, Fintype

namespace CoordinationStateRole

def all : Finset CoordinationStateRole := Finset.univ

/-- There are exactly five distinct roles in every CPCC comparison. -/
theorem card_all : all.card = 5 := by
  native_decide

@[simp] theorem mem_all (role : CoordinationStateRole) : role ∈ all := by
  simp [all]

end CoordinationStateRole

/-! ## Typed discrepancy accounting -/

/-- The sixteen non-collapsible CPCC discrepancy dimensions. -/
inductive DiscrepancyDimension
  | identity
  | typing
  | content
  | time
  | scale
  | sequence
  | scope
  | authority
  | evidence
  | provenance
  | proof
  | validation
  | implementation
  | interface
  | uncertainty
  | residual
  deriving DecidableEq, Repr, Inhabited, Fintype

namespace DiscrepancyDimension

/-- Stable source spelling, including `type` for the Lean constructor `typing`. -/
def label : DiscrepancyDimension → String
  | .identity => "identity"
  | .typing => "type"
  | .content => "content"
  | .time => "time"
  | .scale => "scale"
  | .sequence => "sequence"
  | .scope => "scope"
  | .authority => "authority"
  | .evidence => "evidence"
  | .provenance => "provenance"
  | .proof => "proof"
  | .validation => "validation"
  | .implementation => "implementation"
  | .interface => "interface"
  | .uncertainty => "uncertainty"
  | .residual => "residual"

def all : Finset DiscrepancyDimension := Finset.univ

/-- The discrepancy profile contains exactly sixteen typed dimensions. -/
theorem card_all : all.card = 16 := by
  native_decide

@[simp] theorem mem_all (dimension : DiscrepancyDimension) : dimension ∈ all := by
  simp [all]

end DiscrepancyDimension

/-- Status vocabulary for one discrepancy dimension. -/
inductive DiscrepancyStatus
  | established
  | candidate
  | conflicting
  | indeterminate
  | notEvaluated
  | notApplicable
  deriving DecidableEq, Repr, Inhabited, Fintype

/-- Closed consequence vocabulary corresponding exactly to the Rust cases. -/
inductive DiscrepancyConsequenceKind
  | none
  | evidenceRequired
  | candidateRevisionRequired
  | humanReviewRequired
  | authorityReviewRequired
  | executionBlocked
  deriving DecidableEq, Repr, Inhabited, Fintype

namespace DiscrepancyConsequenceKind

/-- Exhaustive finite inventory of discrepancy consequence kinds. -/
def all : Finset DiscrepancyConsequenceKind := Finset.univ

/-- The Rust and Lean consequence inventories both contain exactly six cases. -/
theorem card_all : all.card = 6 := by
  native_decide

@[simp] theorem mem_all (kind : DiscrepancyConsequenceKind) : kind ∈ all := by
  simp [all]

end DiscrepancyConsequenceKind

/--
An independently projected consequence.  Its kind, exact effect, and affected
records are not reconstructed from discrepancy severity or blocking status.
-/
structure DiscrepancyConsequence where
  kind : DiscrepancyConsequenceKind
  exactEffect : String
  affectedRecords : Set RecordId

/--
Typed, proof-bearing partition of the complete discrepancy inventory.  Every
dimension occurs in exactly one side: evaluated or explicitly not evaluated.
-/
structure DiscrepancyDimensionAccounting where
  evaluated : Finset DiscrepancyDimension
  notEvaluated : Finset DiscrepancyDimension
  disjoint : Disjoint evaluated notEvaluated
  exhaustive : evaluated ∪ notEvaluated = DiscrepancyDimension.all

namespace DiscrepancyDimensionAccounting

/-- Every declared discrepancy dimension is accounted for. -/
theorem accounted (accounting : DiscrepancyDimensionAccounting)
    (dimension : DiscrepancyDimension) :
    dimension ∈ accounting.evaluated ∨
      dimension ∈ accounting.notEvaluated := by
  have membership :
      dimension ∈ accounting.evaluated ∪ accounting.notEvaluated := by
    rw [accounting.exhaustive]
    exact DiscrepancyDimension.mem_all dimension
  simpa only [Finset.mem_union] using membership

/-- No dimension can be both evaluated and not evaluated. -/
theorem not_both (accounting : DiscrepancyDimensionAccounting)
    (dimension : DiscrepancyDimension) :
    ¬ (dimension ∈ accounting.evaluated ∧
      dimension ∈ accounting.notEvaluated) := by
  intro both
  exact (Finset.disjoint_left.mp accounting.disjoint) both.1 both.2

/-- Exact-once accounting follows from exhaustive, disjoint typed coverage. -/
theorem exactly_once (accounting : DiscrepancyDimensionAccounting)
    (dimension : DiscrepancyDimension) :
    (dimension ∈ accounting.evaluated ∨
      dimension ∈ accounting.notEvaluated) ∧
    ¬ (dimension ∈ accounting.evaluated ∧
      dimension ∈ accounting.notEvaluated) :=
  ⟨accounting.accounted dimension, accounting.not_both dimension⟩

end DiscrepancyDimensionAccounting

/-- Intended successor state; intentionally a different type from prediction. -/
structure IntendedState where
  identity : RecordId
  snapshot : SnapshotId
  deriving DecidableEq, Repr

/-- Predicted successor state; it is not an assertion of intention. -/
structure PredictedState where
  identity : RecordId
  snapshot : SnapshotId
  deriving DecidableEq, Repr

/-- State observed from execution or inspection. -/
structure ObservedState where
  identity : RecordId
  snapshot : SnapshotId
  deriving DecidableEq, Repr

/-- State represented in CORD. -/
structure RepresentedState where
  identity : RecordId
  snapshot : SnapshotId
  deriving DecidableEq, Repr

/-- Authorized state and operation envelope. -/
structure AuthorizedStateEnvelope where
  identity : RecordId
  snapshot : SnapshotId
  allowedOperations : Set CoordinationIntent
  authoritySources : Set AuthorityId

/-- A comparison contains every role in a separately typed field. -/
structure FiveStateComparison where
  id : RecordId
  profile : ProfileId
  intended : IntendedState
  predicted : PredictedState
  observed : ObservedState
  represented : RepresentedState
  authorized : AuthorizedStateEnvelope
  snapshots : SnapshotFrame
  dimensionAccounting : DiscrepancyDimensionAccounting
  alternatives : Set RecordId
  comparisonRules : Set RecordId
  exactness : ExactnessStatus
  exactCoversAll :
    exactness = .exact → dimensionAccounting.notEvaluated = ∅
  authority : IndependentStatus
  result : IndependentStatus
  residuals : Set ResidualId

namespace FiveStateComparison

/-- Every comparison covers the complete typed discrepancy inventory. -/
theorem all_dimensions_accounted (comparison : FiveStateComparison)
    (dimension : DiscrepancyDimension) :
    dimension ∈ comparison.dimensionAccounting.evaluated ∨
      dimension ∈ comparison.dimensionAccounting.notEvaluated :=
  comparison.dimensionAccounting.accounted dimension

/-- The comparison cannot classify one dimension on both coverage sides. -/
theorem dimension_accounting_disjoint (comparison : FiveStateComparison)
    (dimension : DiscrepancyDimension) :
    ¬ (dimension ∈ comparison.dimensionAccounting.evaluated ∧
      dimension ∈ comparison.dimensionAccounting.notEvaluated) :=
  comparison.dimensionAccounting.not_both dimension

/-- An exact comparison explicitly leaves no discrepancy dimension unevaluated. -/
theorem exact_has_no_unevaluated_dimensions (comparison : FiveStateComparison)
    (exact : comparison.exactness = .exact) :
    comparison.dimensionAccounting.notEvaluated = ∅ :=
  comparison.exactCoversAll exact

end FiveStateComparison

/--
The ontology name `StateComparison` and the strengthened formal name
`FiveStateComparison` denote the same comparator, without a copied record or
an axiom relating two independently evolving structures.
-/
abbrev StateComparison := FiveStateComparison

namespace StateComparison

/-- View the ontology-named comparator through its strengthened formal name. -/
def toFiveStateComparison (comparison : StateComparison) : FiveStateComparison :=
  comparison

/-- View the strengthened formal comparator through its ontology name. -/
def ofFiveStateComparison (comparison : FiveStateComparison) : StateComparison :=
  comparison

/-- The ontology-to-formal view is a definitional round trip. -/
@[simp] theorem toFiveStateComparison_ofFiveStateComparison
    (comparison : FiveStateComparison) :
    toFiveStateComparison (ofFiveStateComparison comparison) = comparison :=
  rfl

/-- The formal-to-ontology view is a definitional round trip. -/
@[simp] theorem ofFiveStateComparison_toFiveStateComparison
    (comparison : StateComparison) :
    ofFiveStateComparison (toFiveStateComparison comparison) = comparison :=
  rfl

/-- Record equality witnesses that the alias preserves every comparator field. -/
theorem alias_preserves_all_fields (comparison : StateComparison) :
    toFiveStateComparison comparison = comparison :=
  rfl

end StateComparison

/-- Required evidence and disposition fields for one typed dimension. -/
structure DiscrepancyAssessment where
  status : DiscrepancyStatus
  expectedState : Option RecordId
  observedState : Option RecordId
  comparisonMethod : Option RecordId
  sourceBasis : Set RecordId
  severity : Nat
  consequence : DiscrepancyConsequence
  blocking : Bool
  correctable : IndependentStatus
  authorityRequired : IndependentStatus
  openObligation : Option ResidualId

namespace DiscrepancyAssessment

/-- Replace only the independently represented consequence projection. -/
def withConsequence (assessment : DiscrepancyAssessment)
    (consequence : DiscrepancyConsequence) : DiscrepancyAssessment :=
  { assessment with consequence }

@[simp] theorem withConsequence_consequence (assessment : DiscrepancyAssessment)
    (consequence : DiscrepancyConsequence) :
    (assessment.withConsequence consequence).consequence = consequence :=
  rfl

@[simp] theorem withConsequence_severity (assessment : DiscrepancyAssessment)
    (consequence : DiscrepancyConsequence) :
    (assessment.withConsequence consequence).severity = assessment.severity :=
  rfl

@[simp] theorem withConsequence_blocking (assessment : DiscrepancyAssessment)
    (consequence : DiscrepancyConsequence) :
    (assessment.withConsequence consequence).blocking = assessment.blocking :=
  rfl

/--
Two assessments can agree on severity and blocking while retaining different
consequences, so neither field determines the consequence projection.
-/
theorem consequence_not_inferred_from_severity_or_blocking
    (assessment : DiscrepancyAssessment) :
    ∃ left right : DiscrepancyAssessment,
      left.severity = right.severity ∧
      left.blocking = right.blocking ∧
      left.consequence ≠ right.consequence := by
  let noEffect : DiscrepancyConsequence := {
    kind := .none
    exactEffect := "no consequence"
    affectedRecords := ∅
  }
  let blockedEffect : DiscrepancyConsequence := {
    kind := .executionBlocked
    exactEffect := "execution blocked"
    affectedRecords := ∅
  }
  refine ⟨assessment.withConsequence noEffect,
    assessment.withConsequence blockedEffect, rfl, rfl, ?_⟩
  intro equalConsequences
  have equalKinds :
      DiscrepancyConsequenceKind.none =
        DiscrepancyConsequenceKind.executionBlocked :=
    congrArg DiscrepancyConsequence.kind equalConsequences
  cases equalKinds

end DiscrepancyAssessment

/-- A total dimension-indexed discrepancy; no dimension is replaced by a scalar. -/
structure TypedDiscrepancy where
  id : RecordId
  comparison : FiveStateComparison
  dimensions : DiscrepancyDimension → DiscrepancyAssessment
  statusAccounting : ∀ dimension,
    (dimensions dimension).status = .notEvaluated ↔
      dimension ∈ comparison.dimensionAccounting.notEvaluated
  residuals : Set ResidualId

namespace TypedDiscrepancy

/-- Every dimension has a separately addressable assessment by construction. -/
theorem assessment_exists (discrepancy : TypedDiscrepancy)
    (dimension : DiscrepancyDimension) :
    ∃ assessment, discrepancy.dimensions dimension = assessment := by
  exact ⟨discrepancy.dimensions dimension, rfl⟩

/-- The linked comparison accounts for every dimension assessed by this record. -/
theorem all_dimensions_accounted (discrepancy : TypedDiscrepancy)
    (dimension : DiscrepancyDimension) :
    dimension ∈ discrepancy.comparison.dimensionAccounting.evaluated ∨
      dimension ∈ discrepancy.comparison.dimensionAccounting.notEvaluated :=
  discrepancy.comparison.all_dimensions_accounted dimension

/-- Explicitly unevaluated dimensions carry the matching typed status. -/
theorem not_evaluated_status (discrepancy : TypedDiscrepancy)
    (dimension : DiscrepancyDimension)
    (notEvaluated :
      dimension ∈ discrepancy.comparison.dimensionAccounting.notEvaluated) :
    (discrepancy.dimensions dimension).status = .notEvaluated :=
  (discrepancy.statusAccounting dimension).mpr notEvaluated

/-- An evaluated dimension cannot simultaneously carry `notEvaluated`. -/
theorem evaluated_status_is_not_notEvaluated (discrepancy : TypedDiscrepancy)
    (dimension : DiscrepancyDimension)
    (evaluated : dimension ∈ discrepancy.comparison.dimensionAccounting.evaluated) :
    (discrepancy.dimensions dimension).status ≠ .notEvaluated := by
  intro status
  have notEvaluated :
      dimension ∈ discrepancy.comparison.dimensionAccounting.notEvaluated :=
    (discrepancy.statusAccounting dimension).mp status
  exact discrepancy.comparison.dimensionAccounting.not_both dimension
    ⟨evaluated, notEvaluated⟩

end TypedDiscrepancy

/-! ## Bounded representation and addressable live reification -/

/-- An explicit finite maximum for the reflective tower. -/
structure ReflectiveTowerProfile where
  maximumLevel : Nat
  deriving DecidableEq, Repr, Inhabited

/--
Legacy type spelling retained for downstream Lean compatibility.  This alias
only bounds a reflective tower; it supplies no reification reference.
-/
abbrev ReificationProfile := ReflectiveTowerProfile

/-- Levels admitted by a profile; `Fin` makes the level space finite. -/
abbrev RepresentationLevel (profile : ReflectiveTowerProfile) :=
  Fin (profile.maximumLevel + 1)

/--
A quoted or represented level shift.  Its fields establish finite stratified
representation only; they do not contain an addressable proxy or rho/delta
reference.
-/
structure RepresentationStep (profile : ReflectiveTowerProfile) where
  represented : RepresentationLevel profile
  representing : RepresentationLevel profile
  strictLevelShift : represented.val < representing.val

namespace RepresentationStep

/-- Representation is a strict meta-level increase. -/
theorem strict_shift {profile : ReflectiveTowerProfile}
    (step : RepresentationStep profile) :
    step.represented.val < step.representing.val :=
  step.strictLevelShift

/-- The represented side of a valid shift is strictly below the profile maximum. -/
theorem represented_below_maximum {profile : ReflectiveTowerProfile}
    (step : RepresentationStep profile) :
    step.represented.val < profile.maximumLevel := by
  exact Nat.lt_of_lt_of_le step.strictLevelShift
    (Nat.le_of_lt_succ step.representing.isLt)

/-- No further reflective step can originate at the declared maximum level. -/
theorem no_step_from_maximum {profile : ReflectiveTowerProfile}
    (step : RepresentationStep profile) :
    step.represented.val ≠ profile.maximumLevel :=
  Nat.ne_of_lt (represented_below_maximum step)

end RepresentationStep

/-- The admitted level space has a finite, exact cardinality. -/
theorem representation_level_card (profile : ReflectiveTowerProfile) :
    Fintype.card (RepresentationLevel profile) = profile.maximumLevel + 1 := by
  simp [RepresentationLevel]

/-- The observer-visible represented state at one exact finite shift. -/
structure RepresentedCoordinationState (profile : ReflectiveTowerProfile) where
  sourceState : RecordId
  sourcePresent : sourceState.value ≠ 0
  step : RepresentationStep profile

/-- The live causal mode of an addressable coordination proxy. -/
inductive CoordinationLiveCausalMode
  | readOnlyLive
  | bidirectionalLive
  deriving DecidableEq, Repr, Inhabited, Fintype

/--
The exact typed inputs required at the interpreter-exactness boundary before a
CPCC representation may be classified as a live reification.
-/
structure CoordinationReificationBinding where
  addressableProxyIdentity : RecordId
  representedAspectIdentity : RecordId
  designatedRhoReference : RecordId
  designatedDeltaReference : RecordId
  authorizedAspectIdentityPolicy : RecordId
  authorizedProxyIdentityPolicy : RecordId
  admittedTransitionScope : RecordId
  reflectiveLevel : Nat
  mode : CoordinationLiveCausalMode
  deriving DecidableEq, Repr

namespace CoordinationReificationBinding

/-- Exact live bindings require addressability, policies, scope, and separate maps. -/
def Complete (binding : CoordinationReificationBinding) : Prop :=
  binding.addressableProxyIdentity.value ≠ 0 ∧
  binding.representedAspectIdentity.value ≠ 0 ∧
  binding.designatedRhoReference.value ≠ 0 ∧
  binding.designatedDeltaReference.value ≠ 0 ∧
  binding.designatedRhoReference ≠ binding.designatedDeltaReference ∧
  binding.authorizedAspectIdentityPolicy.value ≠ 0 ∧
  binding.authorizedProxyIdentityPolicy.value ≠ 0 ∧
  binding.admittedTransitionScope.value ≠ 0

/-- A complete binding carries two independently named map references. -/
theorem rho_ne_delta (binding : CoordinationReificationBinding)
    (complete : binding.Complete) :
    binding.designatedRhoReference ≠ binding.designatedDeltaReference :=
  complete.2.2.2.2.1

/-- A complete binding names one addressable proxy. -/
theorem proxy_present (binding : CoordinationReificationBinding)
    (complete : binding.Complete) :
    binding.addressableProxyIdentity.value ≠ 0 :=
  complete.1

/-- A complete binding names an exact admitted transition scope. -/
theorem transition_scope_present (binding : CoordinationReificationBinding)
    (complete : binding.Complete) :
    binding.admittedTransitionScope.value ≠ 0 :=
  complete.2.2.2.2.2.2.2

end CoordinationReificationBinding

/--
An addressable live reification wraps, but does not identify with, its
representation.  The source aspect and reflective level are cross-bound at
the system boundary.
-/
structure AddressableCoordinationReification
    (profile : ReflectiveTowerProfile) where
  representation : RepresentedCoordinationState profile
  binding : CoordinationReificationBinding
  bindingComplete : binding.Complete
  representedAspectBound :
    binding.representedAspectIdentity = representation.sourceState
  representedLevelBound :
    binding.reflectiveLevel = representation.step.represented.val

namespace AddressableCoordinationReification

/-- Exact reification retains the separately inspectable representation shift. -/
theorem representation_strict_shift
    {profile : ReflectiveTowerProfile}
    (reification : AddressableCoordinationReification profile) :
    reification.representation.step.represented.val <
      reification.representation.step.representing.val :=
  reification.representation.step.strictLevelShift

/-- Exact reification exposes its independently addressable proxy identity. -/
theorem addressable_proxy_present
    {profile : ReflectiveTowerProfile}
    (reification : AddressableCoordinationReification profile) :
    reification.binding.addressableProxyIdentity.value ≠ 0 :=
  reification.binding.proxy_present reification.bindingComplete

/-- Exact reification cannot collapse rho and delta into one reference. -/
theorem designated_maps_distinct
    {profile : ReflectiveTowerProfile}
    (reification : AddressableCoordinationReification profile) :
    reification.binding.designatedRhoReference ≠
      reification.binding.designatedDeltaReference :=
  reification.binding.rho_ne_delta reification.bindingComplete

/-- Exact reification exposes the bounded transition scope it claims. -/
theorem transition_scope_present
    {profile : ReflectiveTowerProfile}
    (reification : AddressableCoordinationReification profile) :
    reification.binding.admittedTransitionScope.value ≠ 0 :=
  reification.binding.transition_scope_present reification.bindingComplete

end AddressableCoordinationReification

/--
Compatibility receipt for the historical reified-state wire spelling.  It
returns only representation state and fixes mutation authority to false.
-/
structure LegacyRepresentationAdapterReceipt
    (profile : ReflectiveTowerProfile) where
  representation : RepresentedCoordinationState profile
  wireDigest : ContentHash
  maximumWireBytes : Nat
  observedWireBytes : Nat
  wireDigestPresent : wireDigest.value ≠ ""
  positiveWireBound : 0 < maximumWireBytes
  withinWireBound : observedWireBytes ≤ maximumWireBytes
  mutationAuthority : Bool
  noMutationAuthority : mutationAuthority = false

namespace LegacyRepresentationAdapterReceipt

/-- The compatibility boundary cannot mint mutation authority. -/
theorem cannot_authorize
    {profile : ReflectiveTowerProfile}
    (receipt : LegacyRepresentationAdapterReceipt profile) :
    receipt.mutationAuthority = false :=
  receipt.noMutationAuthority

end LegacyRepresentationAdapterReceipt

/-- Existing reflective-mutation records equipped with an explicit level bound. -/
structure BoundedReflectiveMutation where
  profile : ReflectiveTowerProfile
  mutation : ReflectiveMutationRecord
  complete : mutation.Complete
  representedWithinMaximum : mutation.representedLevel ≤ profile.maximumLevel
  representingWithinMaximum : mutation.representingLevel ≤ profile.maximumLevel

namespace BoundedReflectiveMutation

/--
A bounded complete mutation retains its strict representation-level shift.
That inequality alone does not establish an addressable reification binding.
-/
theorem strict_shift (bounded : BoundedReflectiveMutation) :
    bounded.mutation.representedLevel <
      bounded.mutation.representingLevel :=
  bounded.complete.2.2.2.1

/-- A mutation cannot shift upward from its maximum admitted level. -/
theorem represented_below_maximum (bounded : BoundedReflectiveMutation) :
    bounded.mutation.representedLevel < bounded.profile.maximumLevel := by
  exact Nat.lt_of_lt_of_le bounded.strict_shift
    bounded.representingWithinMaximum

end BoundedReflectiveMutation

/-! ## Human-intent inference and mutation authority -/

/-- The independently admitted authority kinds named by CPCC-CST-2. -/
inductive IndependentAuthorityKind
  | sourceAuthority
  | delegation
  | humanDecision
  | proofCertificate
  | governanceDecision
  | transactionAuthorization
  deriving DecidableEq, Repr, Inhabited, Fintype

namespace IndependentAuthorityKind

def all : Finset IndependentAuthorityKind := Finset.univ

theorem card_all : all.card = 6 := by
  native_decide

end IndependentAuthorityKind

/-- A separately admitted authority record and the receipt for that admission. -/
structure AdmittedIndependentAuthority where
  kind : IndependentAuthorityKind
  source : RecordId
  admissionReceipt : ReceiptId
  deriving DecidableEq, Repr

namespace AdmittedIndependentAuthority

def Valid (authority : AdmittedIndependentAuthority) : Prop :=
  authority.source.value ≠ 0 ∧ authority.admissionReceipt.value ≠ 0

end AdmittedIndependentAuthority

/-- A calibrated model score remains evidence metadata, not authority. -/
structure ModelConfidence where
  model : RecordId
  numerator : Nat
  denominator : Nat
  deriving DecidableEq, Repr

namespace ModelConfidence

def WellFormed (confidence : ModelConfidence) : Prop :=
  confidence.model.value ≠ 0 ∧
  confidence.denominator ≠ 0 ∧
  confidence.numerator ≤ confidence.denominator

end ModelConfidence

/-- A derived human-intent interpretation preserves its source and model score. -/
structure HumanIntentInference where
  id : RecordId
  sourceResponses : Set RecordId
  interpretation : RecordId
  confidence : ModelConfidence

/-- Candidate claim bases, only one of which carries independently admitted authority. -/
inductive CoordinationClaimBasis
  | independentAuthority (authority : AdmittedIndependentAuthority)
  | declaredHumanIntent (sourceResponse : RecordId)
  | inferredHumanIntent (inference : HumanIntentInference)
  | modelConfidence (confidence : ModelConfidence)

namespace CoordinationClaimBasis

/-- Human intent and confidence cannot satisfy the independent authority gate. -/
def CanAuthorizeMutation : CoordinationClaimBasis → Prop
  | .independentAuthority authority => authority.Valid
  | .declaredHumanIntent _ => False
  | .inferredHumanIntent _ => False
  | .modelConfidence _ => False

/-- Exact characterization of a mutation-authorizing claim basis. -/
theorem canAuthorize_iff (basis : CoordinationClaimBasis) :
    basis.CanAuthorizeMutation ↔
      ∃ authority,
        basis = .independentAuthority authority ∧ authority.Valid := by
  cases basis <;> simp [CanAuthorizeMutation]

/-- Declared intent is not itself a mutation authorization. -/
@[simp] theorem declared_human_intent_cannot_authorize (source : RecordId) :
    ¬ (CoordinationClaimBasis.declaredHumanIntent source).CanAuthorizeMutation := by
  simp [CanAuthorizeMutation]

/-- Inferred human intent cannot authorize its own admission or mutation. -/
@[simp] theorem inferred_human_intent_cannot_authorize
    (inference : HumanIntentInference) :
    ¬ (CoordinationClaimBasis.inferredHumanIntent inference).CanAuthorizeMutation := by
  simp [CanAuthorizeMutation]

/-- Model confidence cannot authorize mutation, even when independently calibrated. -/
@[simp] theorem model_confidence_cannot_authorize
    (confidence : ModelConfidence) :
    ¬ (CoordinationClaimBasis.modelConfidence confidence).CanAuthorizeMutation := by
  simp [CanAuthorizeMutation]

/-- Combined CPCC non-escalation boundary for inference and model confidence. -/
theorem inference_and_confidence_cannot_authorize
    (inference : HumanIntentInference) (confidence : ModelConfidence) :
    (¬ (CoordinationClaimBasis.inferredHumanIntent inference).CanAuthorizeMutation) ∧
    (¬ (CoordinationClaimBasis.modelConfidence confidence).CanAuthorizeMutation) := by
  exact ⟨inferred_human_intent_cannot_authorize inference,
    model_confidence_cannot_authorize confidence⟩

end CoordinationClaimBasis

/-- A proof-carrying authorization remains separate from an inferred intent. -/
structure CoordinationMutationAuthorization where
  basis : CoordinationClaimBasis
  authorizes : basis.CanAuthorizeMutation

namespace CoordinationMutationAuthorization

/-- Every proof-bearing authorization exposes its independently admitted basis. -/
theorem independent_basis
    (authorization : CoordinationMutationAuthorization) :
    ∃ authority,
      authorization.basis = .independentAuthority authority ∧
      authority.Valid :=
  (CoordinationClaimBasis.canAuthorize_iff authorization.basis).mp
    authorization.authorizes

/-- No valid mutation authorization can cite an intent inference as its basis. -/
theorem basis_not_inferred (authorization : CoordinationMutationAuthorization)
    (inference : HumanIntentInference) :
    authorization.basis ≠ .inferredHumanIntent inference := by
  intro equality
  have authorizes := authorization.authorizes
  rw [equality] at authorizes
  exact (CoordinationClaimBasis.inferred_human_intent_cannot_authorize inference)
    authorizes

/-- No valid mutation authorization can cite model confidence as its basis. -/
theorem basis_not_model_confidence
    (authorization : CoordinationMutationAuthorization)
    (confidence : ModelConfidence) :
    authorization.basis ≠ .modelConfidence confidence := by
  intro equality
  have authorizes := authorization.authorizes
  rw [equality] at authorizes
  exact (CoordinationClaimBasis.model_confidence_cannot_authorize confidence)
    authorizes

end CoordinationMutationAuthorization

/-! ## Conjunctive correction admission and staged refinement -/

/--
The nine independent admission obligations from `CPCC-CST-2`.  A score is
retained as candidate-ranking metadata and is deliberately absent from the
definition of `Admissible`.
-/
structure CorrectionAdmissionGate where
  candidate : RecordId
  typed : Prop
  sourceSupported : Prop
  scopeValid : Prop
  provenanceComplete : Prop
  mutationAuthorization : Option CoordinationMutationAuthorization
  impactAccounted : Prop
  validationSatisfied : Prop
  budgetAvailable : Prop
  requiredHumanDecisionPresent : Prop
  rankingScore : Option ScoreMillionths

namespace CorrectionAdmissionGate

/-- The authority factor is inhabited only by a proof-bearing authorization. -/
def authorityValid (gate : CorrectionAdmissionGate) : Prop :=
  ∃ authorization, gate.mutationAuthorization = some authorization

/-- A correction is admitted only by satisfying every named obligation. -/
def Admissible (gate : CorrectionAdmissionGate) : Prop :=
  gate.typed ∧
  gate.sourceSupported ∧
  gate.scopeValid ∧
  gate.provenanceComplete ∧
  gate.authorityValid ∧
  gate.impactAccounted ∧
  gate.validationSatisfied ∧
  gate.budgetAvailable ∧
  gate.requiredHumanDecisionPresent

theorem admissible_source_supported (gate : CorrectionAdmissionGate)
    (h : gate.Admissible) : gate.sourceSupported :=
  h.2.1

theorem admissible_authority_valid (gate : CorrectionAdmissionGate)
    (h : gate.Admissible) : gate.authorityValid :=
  h.2.2.2.2.1

/-- Admission yields the concrete proof-bearing mutation authorization. -/
theorem admissible_has_mutation_authorization (gate : CorrectionAdmissionGate)
    (h : gate.Admissible) :
    ∃ authorization, gate.mutationAuthorization = some authorization :=
  gate.admissible_authority_valid h

/-- Admission ultimately exposes a separately admitted independent authority. -/
theorem admissible_has_independent_authority (gate : CorrectionAdmissionGate)
    (h : gate.Admissible) :
    ∃ authorization authority,
      gate.mutationAuthorization = some authorization ∧
      authorization.basis = .independentAuthority authority ∧
      authority.Valid := by
  rcases gate.admissible_has_mutation_authorization h with
    ⟨authorization, bound⟩
  rcases authorization.independent_basis with ⟨authority, basis, valid⟩
  exact ⟨authorization, authority, bound, basis, valid⟩

theorem admissible_validation_satisfied (gate : CorrectionAdmissionGate)
    (h : gate.Admissible) : gate.validationSatisfied :=
  h.2.2.2.2.2.2.1

/-- A ranking score cannot replace a missing source basis. -/
theorem score_cannot_replace_missing_source (gate : CorrectionAdmissionGate)
    (missing : ¬ gate.sourceSupported) : ¬ gate.Admissible := by
  intro admitted
  exact missing (admissible_source_supported gate admitted)

/-- A ranking score cannot replace independent authority. -/
theorem score_cannot_replace_missing_authority (gate : CorrectionAdmissionGate)
    (missing : ¬ gate.authorityValid) : ¬ gate.Admissible := by
  intro admitted
  exact missing (admissible_authority_valid gate admitted)

/-- An absent authorization value cannot be repaired by candidate ranking. -/
theorem score_cannot_replace_absent_authorization
    (gate : CorrectionAdmissionGate)
    (absent : gate.mutationAuthorization = none) : ¬ gate.Admissible := by
  intro admitted
  rcases gate.admissible_has_mutation_authorization admitted with
    ⟨authorization, present⟩
  rw [absent] at present
  cases present

end CorrectionAdmissionGate

/-- The eleven correction outcomes enumerated by the candidate theory. -/
inductive CorrectionOutcomeTag
  | applied
  | alternatives
  | needEvidence
  | needHumanInput
  | needHumanDecision
  | nonauthoritative
  | noDecision
  | rejected
  | failure
  | resourceExhausted
  | cancelled
  deriving DecidableEq, Repr, Inhabited, Fintype

namespace CorrectionOutcomeTag

def all : Finset CorrectionOutcomeTag := Finset.univ

theorem card_all : all.card = 11 := by
  native_decide

end CorrectionOutcomeTag

/--
Payload-bearing correction result.  `NoDecision`, evidence requests, and
nonauthoritative continuations are first-class results rather than failures.
-/
inductive CoordinationCorrectionResult
  | applied (candidateState : SnapshotId) (receipt : ReceiptId)
  | alternatives (candidateStates : Set SnapshotId) (comparison : RecordId)
  | needEvidence (request : RecordId)
  | needHumanInput (question : RecordId)
  | needHumanDecision (request : RecordId)
  | nonauthoritative (candidateState : SnapshotId) (residuals : Set ResidualId)
  | noDecision (reason : RecordId) (residuals : Set ResidualId)
  | rejected (findings : Set RecordId) (receipt : ReceiptId)
  | failure (failureRecord : RecordId) (receipt : ReceiptId)
  | resourceExhausted (openFrontier : Set RecordId) (receipt : ReceiptId)
  | cancelled (atomicPrefix : Option RecordId) (receipt : ReceiptId)

namespace CoordinationCorrectionResult

def tag : CoordinationCorrectionResult → CorrectionOutcomeTag
  | .applied _ _ => .applied
  | .alternatives _ _ => .alternatives
  | .needEvidence _ => .needEvidence
  | .needHumanInput _ => .needHumanInput
  | .needHumanDecision _ => .needHumanDecision
  | .nonauthoritative _ _ => .nonauthoritative
  | .noDecision _ _ => .noDecision
  | .rejected _ _ => .rejected
  | .failure _ _ => .failure
  | .resourceExhausted _ _ => .resourceExhausted
  | .cancelled _ _ => .cancelled

end CoordinationCorrectionResult

/-! ## Tool-concern ownership and capacity -/

/-- Closed, nonauthoritative ownership/capacity classifications. -/
inductive ToolConcernCapacityStatus
  | equivalentAndCapable
  | equivalentButIncomplete
  | newConcern
  | unknownOwnership
  deriving DecidableEq, Repr, Inhabited, Fintype

/--
The exact requested semantics, current concern and contract, required and
observed capacities, evidence, gaps, finite ownership universe, and residuals
remain independently inspectable.  The proof fields prevent a classification
from manufacturing authority or silently selecting `newConcern`.
-/
structure ToolConcernCapacityDisposition where
  requestedSemantics : String
  currentConcern : Option String
  sourceContract : Option String
  requiredCapacity : Set String
  observedCapacity : Set String
  equivalenceEvidence : Set RecordId
  gaps : Set String
  ownershipUniverse : Finset String
  ownershipUniverseComplete : Bool
  ownershipEvidence : Set RecordId
  residuals : Set ResidualId
  evaluator : RecordId
  status : ToolConcernCapacityStatus
  candidateOnly : Bool
  mutationAuthority : Bool
  candidateOnlyExact : candidateOnly = true
  mutationAuthorityAbsent : mutationAuthority = false
  newConcernGrounded :
    status = .newConcern →
      ownershipUniverseComplete = true ∧ ownershipUniverse.Nonempty ∧
        ownershipEvidence.Nonempty

namespace ToolConcernCapacityDisposition

/-- Capacity classification cannot mint mutation authority. -/
theorem disposition_is_not_mutation_authority
    (disposition : ToolConcernCapacityDisposition) :
    disposition.mutationAuthority = false :=
  disposition.mutationAuthorityAbsent

/-- Unknown ownership is preserved as the existing CPCC `NoDecision` outcome. -/
def outcomeTag (disposition : ToolConcernCapacityDisposition) : CorrectionOutcomeTag :=
  match disposition.status with
  | .equivalentAndCapable => .nonauthoritative
  | .equivalentButIncomplete => .needEvidence
  | .newConcern => .needHumanDecision
  | .unknownOwnership => .noDecision

theorem unknown_ownership_yields_no_decision
    (disposition : ToolConcernCapacityDisposition)
    (unknown : disposition.status = .unknownOwnership) :
    disposition.outcomeTag = .noDecision := by
  simp [outcomeTag, unknown]

/-- A `newConcern` status carries a finite nonempty complete ownership witness. -/
theorem new_concern_requires_complete_ownership_universe
    (disposition : ToolConcernCapacityDisposition)
    (fresh : disposition.status = .newConcern) :
    disposition.ownershipUniverseComplete = true ∧
      disposition.ownershipUniverse.Nonempty ∧
      disposition.ownershipEvidence.Nonempty :=
  disposition.newConcernGrounded fresh

end ToolConcernCapacityDisposition

/-! ## Candidate and reviewed live-revision implementation inputs -/

/--
An exact ontology-tree binding keeps the typed snapshot identity and its content
hash together. The nonemptiness witnesses are structural scope conditions;
they do not establish semantic truth or mutation authority.
-/
structure ExactOntologyTreeBinding where
  snapshot : SnapshotId
  contentHash : ContentHash
  snapshotPresent : snapshot.value ≠ 0
  contentHashPresent : contentHash.value ≠ ""

/-- The ordinary nonauthoritative candidate-implementation branch. -/
structure CandidateImplementationBundle where
  id : RecordId
  idPresent : id.value ≠ 0
  candidateTree : ExactOntologyTreeBinding
  sourceBasis : Set RecordId
  validationObligations : Set RecordId

/-- Closed location class for a staged ontology transaction input. -/
inductive OntologyStageLocation
  | outsideRepository
  | repositoryLocal
  deriving DecidableEq, Repr, Inhabited

/-- Closed disposition class for an external staged tree. -/
inductive ExternalStageDisposition
  | consumeAfterDurableReceipt
  | retainAfterTransaction
  deriving DecidableEq, Repr, Inhabited

/--
An external staged tree is transaction input. Its type is deliberately
distinct from `CandidateImplementationBundle`, and the stage remains outside
the repository until the admitted transaction copies it into a repository-local
publication stage.
-/
structure ExternalStagedOntologyTransactionInput where
  transaction : TransactionId
  transactionPresent : transaction.value ≠ 0
  stageArtifact : RecordId
  stageArtifactPresent : stageArtifact.value ≠ 0
  stagedAfter : ExactOntologyTreeBinding
  location : OntologyStageLocation
  externalLocation : location = .outsideRepository
  disposition : ExternalStageDisposition
  consumptionOrder : disposition = .consumeAfterDurableReceipt

/-- Explicit absence of both candidate-tree and candidate-pack inputs. -/
structure CandidateAbsenceWitness where
  candidateTree : Option ExactOntologyTreeBinding
  candidatePack : Option RecordId
  treeAbsent : candidateTree = none
  packAbsent : candidatePack = none

/--
The publication guarantee currently supported by a reviewed live revision.
Two individually atomic renames plus same-transaction compensation are not a
single crash-atomic namespace exchange.
-/
inductive LiveRevisionPublicationMode
  | repositoryLocalReplacementWithCompensatingRollback
  | singleCrashAtomicNamespaceExchange
  deriving DecidableEq, Repr, Inhabited

namespace LiveRevisionPublicationMode

/-- Whether the mode claims one crash-atomic namespace exchange. -/
def CrashAtomic : LiveRevisionPublicationMode → Prop
  | .repositoryLocalReplacementWithCompensatingRollback => False
  | .singleCrashAtomicNamespaceExchange => True

instance (mode : LiveRevisionPublicationMode) : Decidable mode.CrashAtomic := by
  cases mode <;> unfold CrashAtomic <;> infer_instance

@[simp] theorem compensating_replacement_not_crash_atomic :
    ¬ LiveRevisionPublicationMode.repositoryLocalReplacementWithCompensatingRollback.CrashAtomic :=
  show False → False from id

end LiveRevisionPublicationMode

/-- Closed authority scope for compensation after a publication attempt. -/
inductive LiveRevisionRollbackAuthorizationScope
  | sameTransactionOnly
  | reusableFutureAuthority
  deriving DecidableEq, Repr, Inhabited

/--
The exact rollback scope for a reviewed live revision. It describes an
authoritative-tree restoration, not an algebraic inverse and not reusable
future mutation authority.
-/
structure LiveRevisionRollbackScope where
  rollbackPayload : RecordId
  rollbackPayloadPresent : rollbackPayload.value ≠ 0
  beforeTree : ExactOntologyTreeBinding
  publishedTree : ExactOntologyTreeBinding
  restoredTree : ExactOntologyTreeBinding
  restoresExactBefore : restoredTree = beforeTree
  authorizationScope : LiveRevisionRollbackAuthorizationScope
  sameTransactionOnly : authorizationScope = .sameTransactionOnly
  reusableFutureAuthorization : Option AdmittedIndependentAuthority
  futureRollbackRequiresIndependentAuthority :
    reusableFutureAuthorization = none

/--
A reviewed no-candidate replacement of one already-live ontology tree. The
external stage is the sole publishable transaction input, while proposal,
review, and direct-human decision remain separately identified evidence.
-/
structure ReviewedLiveRevisionPayload where
  id : RecordId
  idPresent : id.value ≠ 0
  proposal : RecordId
  proposalPresent : proposal.value ≠ 0
  review : RecordId
  reviewPresent : review.value ≠ 0
  directHumanDecision : RecordId
  directHumanDecisionPresent : directHumanDecision.value ≠ 0
  beforeTree : ExactOntologyTreeBinding
  afterTree : ExactOntologyTreeBinding
  externalStage : ExternalStagedOntologyTransactionInput
  stagedAfterExact : externalStage.stagedAfter = afterTree
  beforeAfterDistinct : beforeTree ≠ afterTree
  beforeAfterHashDistinct : beforeTree.contentHash ≠ afterTree.contentHash
  candidateAbsence : CandidateAbsenceWitness
  publicationMode : LiveRevisionPublicationMode
  compensatingPublication :
    publicationMode = .repositoryLocalReplacementWithCompensatingRollback
  rollback : LiveRevisionRollbackScope
  rollbackBeforeExact : rollback.beforeTree = beforeTree
  rollbackPublishedExact : rollback.publishedTree = afterTree

namespace ReviewedLiveRevisionPayload

/-- A reviewed live revision binds the external staged after-tree exactly. -/
theorem external_stage_after_exact (payload : ReviewedLiveRevisionPayload) :
    payload.externalStage.stagedAfter = payload.afterTree :=
  payload.stagedAfterExact

/-- A live revision binds a content-distinct after-tree, not a no-op alias. -/
theorem before_after_hash_distinct (payload : ReviewedLiveRevisionPayload) :
    payload.beforeTree.contentHash ≠ payload.afterTree.contentHash :=
  payload.beforeAfterHashDistinct

/-- The reviewed staged tree is externally located transaction input. -/
theorem external_stage_is_transaction_input
    (payload : ReviewedLiveRevisionPayload) :
    payload.externalStage.location = .outsideRepository ∧
      payload.externalStage.disposition = .consumeAfterDurableReceipt :=
  ⟨payload.externalStage.externalLocation,
    payload.externalStage.consumptionOrder⟩

/-- Candidate trees and packs are absent rather than silently ignored. -/
theorem candidate_inputs_absent (payload : ReviewedLiveRevisionPayload) :
    payload.candidateAbsence.candidateTree = none ∧
      payload.candidateAbsence.candidatePack = none :=
  ⟨payload.candidateAbsence.treeAbsent, payload.candidateAbsence.packAbsent⟩

/-- The rollback scope is bound to the exact reviewed before and after trees. -/
theorem rollback_bound_exactly (payload : ReviewedLiveRevisionPayload) :
    payload.rollback.beforeTree = payload.beforeTree ∧
      payload.rollback.publishedTree = payload.afterTree :=
  ⟨payload.rollbackBeforeExact, payload.rollbackPublishedExact⟩

/-- The declared compensating replacement makes no crash-atomicity claim. -/
theorem publication_not_crash_atomic (payload : ReviewedLiveRevisionPayload) :
    ¬ payload.publicationMode.CrashAtomic := by
  intro impossible
  rw [payload.compensatingPublication] at impossible
  exact impossible

/-- Same-transaction compensation restores the exact pinned before-tree. -/
theorem compensation_restores_before (payload : ReviewedLiveRevisionPayload) :
    payload.rollback.restoredTree = payload.beforeTree := by
  calc
    payload.rollback.restoredTree = payload.rollback.beforeTree :=
      payload.rollback.restoresExactBefore
    _ = payload.beforeTree := payload.rollbackBeforeExact

/-- The current receipt carries same-transaction compensation only. -/
theorem rollback_authority_is_not_reusable
    (payload : ReviewedLiveRevisionPayload) :
    payload.rollback.authorizationScope = .sameTransactionOnly ∧
      payload.rollback.reusableFutureAuthorization = none :=
  ⟨payload.rollback.sameTransactionOnly,
    payload.rollback.futureRollbackRequiresIndependentAuthority⟩

end ReviewedLiveRevisionPayload

/--
The proposal-to-validation implementation input is an explicit disjoint sum.
An external live-revision stage is never coerced into a candidate bundle.
-/
inductive RefinementImplementationInput
  | candidate (bundle : CandidateImplementationBundle)
  | reviewedLiveRevision (payload : ReviewedLiveRevisionPayload)

namespace RefinementImplementationInput

/-- Candidate projection; the reviewed live-revision branch has none. -/
def candidateBundle? : RefinementImplementationInput →
    Option CandidateImplementationBundle
  | .candidate bundle => some bundle
  | .reviewedLiveRevision _ => none

/-- External transaction-input projection; the candidate branch has none. -/
def externalStage? : RefinementImplementationInput →
    Option ExternalStagedOntologyTransactionInput
  | .candidate _ => none
  | .reviewedLiveRevision payload => some payload.externalStage

@[simp] theorem reviewed_live_revision_has_no_candidate_bundle
    (payload : ReviewedLiveRevisionPayload) :
    (RefinementImplementationInput.reviewedLiveRevision payload).candidateBundle? = none :=
  rfl

@[simp] theorem reviewed_live_revision_exposes_external_transaction_input
    (payload : ReviewedLiveRevisionPayload) :
    (RefinementImplementationInput.reviewedLiveRevision payload).externalStage? =
      some payload.externalStage :=
  rfl

/-- The two implementation branches cannot be identified. -/
theorem candidate_ne_reviewed_live_revision
    (bundle : CandidateImplementationBundle)
    (payload : ReviewedLiveRevisionPayload) :
    RefinementImplementationInput.candidate bundle ≠
      RefinementImplementationInput.reviewedLiveRevision payload := by
  intro equality
  cases equality

end RefinementImplementationInput

/-- Ordered stages from an open question to a preserved continuation. -/
inductive RefinementStage
  | openQuestion
  | researchPlan
  | sourceObservation
  | evidenceBinding
  | ontologyInsight
  | changeProposal
  | candidateImplementation
  | reviewedLiveRevisionPayload
  | validation
  | authorityDecision
  | reflectiveMutation
  | receipt
  | continuation
  deriving DecidableEq, Repr, Inhabited, Fintype

namespace RefinementStage

def rank : RefinementStage → Nat
  | .openQuestion => 0
  | .researchPlan => 1
  | .sourceObservation => 2
  | .evidenceBinding => 3
  | .ontologyInsight => 4
  | .changeProposal => 5
  | .candidateImplementation => 6
  | .reviewedLiveRevisionPayload => 6
  | .validation => 7
  | .authorityDecision => 8
  | .reflectiveMutation => 9
  | .receipt => 10
  | .continuation => 11

/-- Only the next stage in the research-to-mutation pipeline is immediate. -/
inductive Immediate : RefinementStage → RefinementStage → Prop
  | questionToPlan : Immediate .openQuestion .researchPlan
  | planToObservation : Immediate .researchPlan .sourceObservation
  | observationToEvidence : Immediate .sourceObservation .evidenceBinding
  | evidenceToInsight : Immediate .evidenceBinding .ontologyInsight
  | insightToProposal : Immediate .ontologyInsight .changeProposal
  | proposalToCandidate : Immediate .changeProposal .candidateImplementation
  | candidateToValidation : Immediate .candidateImplementation .validation
  | proposalToReviewedLiveRevision :
      Immediate .changeProposal .reviewedLiveRevisionPayload
  | reviewedLiveRevisionToValidation :
      Immediate .reviewedLiveRevisionPayload .validation
  | validationToAuthority : Immediate .validation .authorityDecision
  | authorityToMutation : Immediate .authorityDecision .reflectiveMutation
  | mutationToReceipt : Immediate .reflectiveMutation .receipt
  | receiptToContinuation : Immediate .receipt .continuation

/-- Every admitted immediate transition advances by exactly one stage. -/
theorem immediate_rank (h : Immediate before after) :
    rank after = rank before + 1 := by
  cases h <;> rfl

/-- Candidate implementation cannot skip validation and authority review. -/
theorem candidate_cannot_jump_to_mutation :
    ¬ Immediate .candidateImplementation .reflectiveMutation := by
  intro h
  cases h

/-- A reviewed live-revision payload cannot skip validation and authority review. -/
theorem reviewed_live_revision_cannot_jump_to_mutation :
    ¬ Immediate .reviewedLiveRevisionPayload .reflectiveMutation := by
  intro h
  cases h

/-- A typed implementation input selects exactly one of the disjoint stage branches. -/
def implementationStage : RefinementImplementationInput → RefinementStage
  | .candidate _ => .candidateImplementation
  | .reviewedLiveRevision _ => .reviewedLiveRevisionPayload

/-- Every implementation branch is reached from the proposal stage. -/
theorem proposal_to_implementation
    (input : RefinementImplementationInput) :
    Immediate .changeProposal (implementationStage input) := by
  cases input with
  | candidate bundle => exact .proposalToCandidate
  | reviewedLiveRevision payload => exact .proposalToReviewedLiveRevision

/-- Every implementation branch must enter validation next. -/
theorem implementation_to_validation
    (input : RefinementImplementationInput) :
    Immediate (implementationStage input) .validation := by
  cases input with
  | candidate bundle => exact .candidateToValidation
  | reviewedLiveRevision payload => exact .reviewedLiveRevisionToValidation

/-- Validation and an authority decision remain mandatory before mutation. -/
theorem validation_authority_mutation_tail :
    Immediate .validation .authorityDecision ∧
      Immediate .authorityDecision .reflectiveMutation :=
  ⟨.validationToAuthority, .authorityToMutation⟩

/--
Both disjoint implementation inputs obey the same mandatory
proposal-to-validation-to-authority-to-mutation chain.
-/
theorem implementation_refinement_chain
    (input : RefinementImplementationInput) :
    Immediate .changeProposal (implementationStage input) ∧
      Immediate (implementationStage input) .validation ∧
      Immediate .validation .authorityDecision ∧
      Immediate .authorityDecision .reflectiveMutation := by
  exact ⟨proposal_to_implementation input,
    implementation_to_validation input,
    validation_authority_mutation_tail.1,
    validation_authority_mutation_tail.2⟩

/-- The reviewed live-revision branch is admitted only through that full tail. -/
theorem reviewed_live_revision_refinement_chain
    (payload : ReviewedLiveRevisionPayload) :
    Immediate .changeProposal .reviewedLiveRevisionPayload ∧
      Immediate .reviewedLiveRevisionPayload .validation ∧
      Immediate .validation .authorityDecision ∧
      Immediate .authorityDecision .reflectiveMutation := by
  exact implementation_refinement_chain (.reviewedLiveRevision payload)

/-- A source observation cannot skip directly to an ontology mutation. -/
theorem observation_cannot_jump_to_mutation :
    ¬ Immediate .sourceObservation .reflectiveMutation := by
  intro h
  cases h

end RefinementStage

/-! ## Exact-current-tree semantic admission without mutation -/

/-- Bounded evidence that no prior receipt was located in declared stores. -/
structure NoPriorReceiptAntecedent where
  receiptSearchEvidence : RecordId
  receiptSearchEvidencePresent : receiptSearchEvidence.value ≠ 0
  declaredReceiptStores : Set RecordId
  declaredReceiptStoresNonempty : declaredReceiptStores.Nonempty
  matchingReceiptCount : Nat
  noMatchingReceiptLocated : matchingReceiptCount = 0

/-- Exact prior-receipt and preimage anchors for one reconstructed drift. -/
structure PriorReceiptDriftAntecedent where
  priorReceipt : RecordId
  priorReceiptPresent : priorReceipt.value ≠ 0
  preimageAnchor : RecordId
  preimageAnchorPresent : preimageAnchor.value ≠ 0
  reconstructedManifest : RecordId
  reconstructedManifestPresent : reconstructedManifest.value ≠ 0
  completeDeltaManifest : RecordId
  completeDeltaManifestPresent : completeDeltaManifest.value ≠ 0
  comparisonBoundary : RecordId
  comparisonBoundaryPresent : comparisonBoundary.value ≠ 0
  readOnly : Bool
  readOnlyExact : readOnly = true
  nonTransitive : Bool
  nonTransitiveExact : nonTransitive = true
  importsAuthority : Bool
  importsNoAuthority : importsAuthority = false

/-- Exhaustive antecedent for semantic admission of an already-live tree. -/
inductive ExistingLiveAdmissionAntecedent
  | noPriorReceipt (antecedent : NoPriorReceiptAntecedent)
  | priorReceiptDrift (antecedent : PriorReceiptDriftAntecedent)

/--
One current-tree semantic admission payload. Its before and after trees are the
same exact binding. Candidate, external-stage, mutation, and retroactive
authority inputs are explicitly absent rather than ignored.
-/
structure ExistingLiveOntologyAdmissionPayload where
  id : RecordId
  idPresent : id.value ≠ 0
  currentTree : ExactOntologyTreeBinding
  observedBefore : ExactOntologyTreeBinding
  admittedAfter : ExactOntologyTreeBinding
  observedBeforeExact : observedBefore = currentTree
  admittedAfterExact : admittedAfter = currentTree
  antecedent : ExistingLiveAdmissionAntecedent
  review : RecordId
  reviewPresent : review.value ≠ 0
  directHumanDecision : RecordId
  directHumanDecisionPresent : directHumanDecision.value ≠ 0
  proceduralViolation : RecordId
  proceduralViolationPresent : proceduralViolation.value ≠ 0
  receiptProceduralViolation : RecordId
  proceduralViolationPreserved : receiptProceduralViolation = proceduralViolation
  durableReceipt : ReceiptId
  durableReceiptPresent : durableReceipt.value ≠ 0
  candidateTree : Option ExactOntologyTreeBinding
  candidateTreeAbsent : candidateTree = none
  candidatePack : Option RecordId
  candidatePackAbsent : candidatePack = none
  externalStage : Option ExternalStagedOntologyTransactionInput
  externalStageAbsent : externalStage = none
  ontologyFilesystemMutation : Option TransactionId
  ontologyFilesystemMutationAbsent : ontologyFilesystemMutation = none
  retroactiveMutationAuthority : Option AdmittedIndependentAuthority
  retroactiveMutationAuthorityAbsent : retroactiveMutationAuthority = none

namespace ExistingLiveOntologyAdmissionPayload

/-- Existing-live admission preserves the exact current tree. -/
theorem existing_live_admission_preserves_current_tree
    (payload : ExistingLiveOntologyAdmissionPayload) :
    payload.observedBefore = payload.currentTree ∧
      payload.admittedAfter = payload.currentTree ∧
      payload.observedBefore = payload.admittedAfter := by
  exact ⟨payload.observedBeforeExact, payload.admittedAfterExact,
    payload.observedBeforeExact.trans payload.admittedAfterExact.symm⟩

/-- Existing-live semantic admission performs no ontology filesystem mutation. -/
theorem existing_live_admission_performs_no_ontology_mutation
    (payload : ExistingLiveOntologyAdmissionPayload) :
    payload.ontologyFilesystemMutation = none :=
  payload.ontologyFilesystemMutationAbsent

/-- Current semantic admission cannot authorize a prior mutation. -/
theorem semantic_admission_not_retroactive_mutation_authority
    (payload : ExistingLiveOntologyAdmissionPayload) :
    payload.retroactiveMutationAuthority = none :=
  payload.retroactiveMutationAuthorityAbsent

/-- The unreceipted interval remains named in the terminal receipt. -/
theorem procedural_violation_remains_evidence
    (payload : ExistingLiveOntologyAdmissionPayload) :
    payload.receiptProceduralViolation = payload.proceduralViolation :=
  payload.proceduralViolationPreserved

/-- Candidate and external-stage inputs are absent from receipt-only admission. -/
theorem existing_live_admission_has_no_candidate_or_stage
    (payload : ExistingLiveOntologyAdmissionPayload) :
    payload.candidateTree = none ∧
      payload.candidatePack = none ∧
      payload.externalStage = none :=
  ⟨payload.candidateTreeAbsent, payload.candidatePackAbsent,
    payload.externalStageAbsent⟩

end ExistingLiveOntologyAdmissionPayload

/-- A drift admission exposes an exact receipt, preimage, and complete delta. -/
theorem drift_admission_requires_exact_prior_anchor
    (antecedent : PriorReceiptDriftAntecedent) :
    antecedent.priorReceipt.value ≠ 0 ∧
      antecedent.preimageAnchor.value ≠ 0 ∧
      antecedent.reconstructedManifest.value ≠ 0 ∧
      antecedent.completeDeltaManifest.value ≠ 0 ∧
      antecedent.readOnly = true ∧
      antecedent.nonTransitive = true ∧
      antecedent.importsAuthority = false :=
  ⟨antecedent.priorReceiptPresent, antecedent.preimageAnchorPresent,
    antecedent.reconstructedManifestPresent,
    antecedent.completeDeltaManifestPresent,
    antecedent.readOnlyExact, antecedent.nonTransitiveExact,
    antecedent.importsNoAuthority⟩

/-- Separate finite stages for receipt-only current-tree semantic admission. -/
inductive ExistingLiveAdmissionStage
  | currentTree
  | antecedentComparison
  | review
  | authority
  | semanticReceipt
  | continuation
  deriving DecidableEq, Repr, Inhabited, Fintype

namespace ExistingLiveAdmissionStage

/-- Immediate edges contain no candidate or reflective-mutation stage. -/
inductive Immediate : ExistingLiveAdmissionStage → ExistingLiveAdmissionStage → Prop
  | treeToAntecedent : Immediate .currentTree .antecedentComparison
  | antecedentToReview : Immediate .antecedentComparison .review
  | reviewToAuthority : Immediate .review .authority
  | authorityToReceipt : Immediate .authority .semanticReceipt
  | receiptToContinuation : Immediate .semanticReceipt .continuation

/-- The complete no-mutation semantic-admission chain is explicit. -/
theorem existing_live_admission_refinement_chain :
    Immediate .currentTree .antecedentComparison ∧
      Immediate .antecedentComparison .review ∧
      Immediate .review .authority ∧
      Immediate .authority .semanticReceipt ∧
      Immediate .semanticReceipt .continuation :=
  ⟨.treeToAntecedent, .antecedentToReview, .reviewToAuthority,
    .authorityToReceipt, .receiptToContinuation⟩

end ExistingLiveAdmissionStage

end Cord
