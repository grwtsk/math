-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.OperationalRelation.Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.OperationalRelation.Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f","mathematical_subject":"Topology.GeneralTopology","original_sha256":"0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/N/cord/src/theory/CordTheory/OperationalTopology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","lake_or_runtime_control","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import CordTheory.Probe

/-!
# Classical operational topology

A typed operational dependency relation is first closed under reflexive and
transitive reachability.  The resulting upper-closure operator satisfies the
Kuratowski laws and therefore induces a classical finite Alexandrov topology.
Topological boundary remains distinct from directed and residual frontiers.
-/


namespace GRWTSK.Topology.GeneralTopology.OperationalRelation.Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f

namespace Cord

/-- A reflexive and transitive operational propagation relation. -/
structure OperationalRelation (X : Type*) where
  rel : X → X → Prop
  refl : ∀ x, rel x x
  trans : ∀ ⦃x y z⦄, rel x y → rel y z → rel x z

namespace OperationalRelation

variable {X : Type*} (R : OperationalRelation X)

/-- States materially reachable from a set of seed states. -/
def closure (S : Set X) : Set X :=
  {y | ∃ x ∈ S, R.rel x y}

@[simp] theorem mem_closure {S : Set X} {y : X} :
    y ∈ R.closure S ↔ ∃ x ∈ S, R.rel x y := Iff.rfl

@[simp] theorem closure_empty : R.closure (∅ : Set X) = ∅ := by
  ext y
  simp [closure]

/-- Extensivity. -/
theorem subset_closure (S : Set X) : S ⊆ R.closure S := by
  intro x hx
  exact ⟨x, hx, R.refl x⟩

/-- Finite-union preservation, stated for binary unions. -/
theorem closure_union (S T : Set X) :
    R.closure (S ∪ T) = R.closure S ∪ R.closure T := by
  ext y
  constructor
  · rintro ⟨x, hx, hxy⟩
    rcases hx with hx | hx
    · exact Or.inl ⟨x, hx, hxy⟩
    · exact Or.inr ⟨x, hx, hxy⟩
  · intro hy
    rcases hy with ⟨x, hx, hxy⟩ | ⟨x, hx, hxy⟩
    · exact ⟨x, Or.inl hx, hxy⟩
    · exact ⟨x, Or.inr hx, hxy⟩

/-- Idempotence. -/
theorem closure_idem (S : Set X) :
    R.closure (R.closure S) = R.closure S := by
  apply Set.Subset.antisymm
  · rintro z ⟨y, ⟨x, hx, hxy⟩, hyz⟩
    exact ⟨x, hx, R.trans hxy hyz⟩
  · exact R.subset_closure (R.closure S)

/-- The four Kuratowski laws as one proof object. -/
structure KuratowskiCertificate where
  empty : R.closure (∅ : Set X) = ∅
  extensive : ∀ S : Set X, S ⊆ R.closure S
  union : ∀ S T : Set X, R.closure (S ∪ T) = R.closure S ∪ R.closure T
  idempotent : ∀ S : Set X, R.closure (R.closure S) = R.closure S

/-- Reachability supplies an exhaustive Kuratowski certificate. -/
theorem kuratowskiCertificate : R.KuratowskiCertificate where
  empty := R.closure_empty
  extensive := R.subset_closure
  union := R.closure_union
  idempotent := R.closure_idem

/-- Operationally open sets are lower sets for the propagation preorder. -/
@[reducible] def operationalTopology : TopologicalSpace X where
  IsOpen U := ∀ x ∈ U, ∀ y, R.rel y x → y ∈ U
  isOpen_univ := by
    intro x hx y hyx
    trivial
  isOpen_inter := by
    intro U V hU hV x hx y hyx
    exact ⟨hU x hx.1 y hyx, hV x hx.2 y hyx⟩
  isOpen_sUnion := by
    intro family hfamily x hx y hyx
    rcases hx with ⟨U, hUfamily, hxU⟩
    exact ⟨U, hUfamily, hfamily U hUfamily x hxU y hyx⟩

/-- A set is closed exactly when it is upward closed under propagation. -/
theorem isClosed_iff_upward (C : Set X) :
    @IsClosed X R.operationalTopology C ↔
      ∀ x ∈ C, ∀ y, R.rel x y → y ∈ C := by
  constructor
  · intro hClosed x hx y hxy
    have hOpen : @IsOpen X R.operationalTopology Cᶜ := hClosed.isOpen_compl
    change ∀ a ∈ Cᶜ, ∀ b, R.rel b a → b ∈ Cᶜ at hOpen
    by_contra hy
    have hxComp : x ∈ Cᶜ := hOpen y hy x hxy
    exact hxComp hx
  · intro hUp
    apply @IsClosed.mk X R.operationalTopology C
    change ∀ x ∈ Cᶜ, ∀ y, R.rel y x → y ∈ Cᶜ
    intro x hx y hyx hy
    exact hx (hUp y hy x hyx)

/-- Reachability closure is operationally closed. -/
theorem isClosed_closure (S : Set X) :
    @IsClosed X R.operationalTopology (R.closure S) := by
  rw [R.isClosed_iff_upward]
  intro x hx y hxy
  rcases hx with ⟨seed, hseed, hseedx⟩
  exact ⟨seed, hseed, R.trans hseedx hxy⟩

/-- The topological closure induced by the operational topology is exactly reachability closure. -/
theorem topological_closure_eq (S : Set X) :
    @_root_.closure X R.operationalTopology S = R.closure S := by
  apply Set.Subset.antisymm
  · exact @_root_.closure_minimal X R.operationalTopology S (R.closure S)
      (R.subset_closure S) (R.isClosed_closure S)
  · intro y hy
    rcases hy with ⟨x, hx, hxy⟩
    have hxClosure : x ∈ @_root_.closure X R.operationalTopology S :=
      @_root_.subset_closure X R.operationalTopology S x hx
    have hClosed : @IsClosed X R.operationalTopology
        (@_root_.closure X R.operationalTopology S) :=
      @_root_.isClosed_closure X R.operationalTopology S
    have hUp :=
      (R.isClosed_iff_upward (@_root_.closure X R.operationalTopology S)).1 hClosed
    exact hUp x hxClosure y hxy

/-- Operational interior derived from the reachability topology. -/
def interior (S : Set X) : Set X :=
  Set.univ \ R.closure (Set.univ \ S)

/-- Operational boundary derived from closure and interior. -/
def boundary (S : Set X) : Set X :=
  R.closure S ∩ R.closure (Set.univ \ S)

/-- Directed exit boundary. -/
def exitBoundary (S : Set X) : Set X :=
  {y | y ∉ S ∧ ∃ x ∈ S, R.rel x y}

/-- Directed entry boundary. -/
def entryBoundary (S : Set X) : Set X :=
  {y | y ∉ S ∧ ∃ x ∈ S, R.rel y x}

/-- Principal lower sets are operationally open. -/
def lowerSet (x : X) : Set X := {y | R.rel y x}

@[simp] theorem mem_lowerSet {x y : X} : y ∈ R.lowerSet x ↔ R.rel y x := Iff.rfl

theorem isOpen_lowerSet (x : X) :
    @IsOpen X R.operationalTopology (R.lowerSet x) := by
  intro y hy z hzy
  exact R.trans hzy hy

/-- Arbitrary intersections of operationally open sets are open. -/
theorem isOpen_sInter (family : Set (Set X))
    (hfamily : ∀ U ∈ family, @IsOpen X R.operationalTopology U) :
    @IsOpen X R.operationalTopology (⋂₀ family) := by
  intro x hx y hyx
  show y ∈ ⋂₀ family
  intro U hU
  exact hfamily U hU x (hx U hU) y hyx

/-- Operational monotonicity between propagation relations. -/
def MonotoneTo {Y : Type*} (Q : OperationalRelation Y) (f : X → Y) : Prop :=
  ∀ ⦃x y⦄, R.rel x y → Q.rel (f x) (f y)

/-- A monotone map is continuous for the induced operational topologies. -/
theorem continuous_of_monotone
    {Y : Type*} (Q : OperationalRelation Y) (f : X → Y)
    (hmono : R.MonotoneTo Q f) :
    @Continuous X Y R.operationalTopology Q.operationalTopology f := by
  rw [continuous_def]
  intro U hU
  change ∀ x ∈ f ⁻¹' U, ∀ y, R.rel y x → y ∈ f ⁻¹' U
  change ∀ x ∈ U, ∀ y, Q.rel y x → y ∈ U at hU
  intro x hx y hyx
  exact hU (f x) hx (f y) (hmono hyx)

/-- Continuity recovers operational monotonicity. -/
theorem monotone_of_continuous
    {Y : Type*} (Q : OperationalRelation Y) (f : X → Y)
    (hcont : @Continuous X Y R.operationalTopology Q.operationalTopology f) :
    R.MonotoneTo Q f := by
  intro x y hxy
  rw [continuous_def] at hcont
  have hOpen : @IsOpen Y Q.operationalTopology (Q.lowerSet (f y)) :=
    Q.isOpen_lowerSet (f y)
  have hPreOpen : @IsOpen X R.operationalTopology (f ⁻¹' Q.lowerSet (f y)) :=
    hcont (Q.lowerSet (f y)) hOpen
  change ∀ a ∈ f ⁻¹' Q.lowerSet (f y), ∀ b, R.rel b a →
    b ∈ f ⁻¹' Q.lowerSet (f y) at hPreOpen
  have hy : y ∈ f ⁻¹' Q.lowerSet (f y) := Q.refl (f y)
  exact hPreOpen y hy x hxy

/-- Continuity and monotonicity coincide for these operational topologies. -/
theorem continuous_iff_monotone
    {Y : Type*} (Q : OperationalRelation Y) (f : X → Y) :
    @Continuous X Y R.operationalTopology Q.operationalTopology f ↔
      R.MonotoneTo Q f := by
  constructor
  · exact R.monotone_of_continuous Q f
  · exact R.continuous_of_monotone Q f

/-- Mutual reachability used by the operational `T₀` quotient. -/
def Mutual (x y : X) : Prop := R.rel x y ∧ R.rel y x

/-- Mutual reachability is an equivalence relation. -/
def mutualSetoid : Setoid X where
  r := R.Mutual
  iseqv := {
    refl := fun x => ⟨R.refl x, R.refl x⟩
    symm := fun h => ⟨h.2, h.1⟩
    trans := fun hxy hyz => ⟨R.trans hxy.1 hyz.1, R.trans hyz.2 hxy.2⟩
  }

/-- Carrier of the mutual-reachability quotient. -/
abbrev T0Carrier := Quotient R.mutualSetoid

end OperationalRelation

inductive OperationalDependencyKind
  | definition
  | signature
  | taxonomic
  | axiom
  | constraint
  | identity
  | equivalence
  | import
  | authority
  | evidence
  | proof
  | certificate
  | validation
  | version
  | supersession
  | execution
  | migration
  | continuation
  deriving DecidableEq, Repr, Inhabited

structure OperationalDependencyEdge where
  id : DependencyId
  source : RecordId
  target : RecordId
  kind : OperationalDependencyKind
  sourceRecords : Set RecordId
  snapshot : SnapshotId
  admitted : Bool
  authority : Option AuthorityId

structure OperationalDependencyRelationRecord where
  id : RecordId
  profile : ProfileId
  carrier : Set RecordId
  snapshot : SnapshotId
  version : VersionId
  edges : Set OperationalDependencyEdge

structure OperationalClosureRecord where
  id : RecordId
  relation : RecordId
  seeds : Set RecordId
  reached : Set RecordId
  traversedEdges : Set DependencyId
  resourceStatus : CordExecutionStatus

inductive SpecializationOrientation
  | dependencyForward
  | dependencyReverse
  deriving DecidableEq, Repr, Inhabited

structure TopologyResourceBounds where
  maximumSubsets : Nat
  maximumPairs : Nat
  deriving DecidableEq, Repr, Inhabited

structure OperationalTopologyRecord where
  id : RecordId
  relation : RecordId
  carrier : Set RecordId
  openSets : Set (Set RecordId)
  closedSets : Set (Set RecordId)
  orientation : SpecializationOrientation
  exactness : ExactnessStatus
  resourceBounds : TopologyResourceBounds

structure ClassicalTopologyCertificate where
  id : CertificateId
  carrier : RecordId
  relation : RecordId
  closureAlgorithm : String
  emptyClosure : Prop
  extensive : Prop
  finiteUnionPreserving : Prop
  idempotent : Prop
  topology : RecordId
  specializationOrientation : SpecializationOrientation
  automaticProperties : Set String
  unestablishedProperties : Set String
  validator : String
  receipt : ReceiptId

structure OperationalBoundaryRecord where
  id : RecordId
  topology : RecordId
  subject : Set RecordId
  closure : Set RecordId
  interior : Set RecordId
  boundary : Set RecordId

structure DirectedBoundaryRecord where
  id : RecordId
  relation : RecordId
  subject : Set RecordId
  exitBoundary : Set RecordId
  entryBoundary : Set RecordId

inductive ResidualBlockingReason
  | missingTarget
  | missingAuthority
  | missingProof
  | missingCertificate
  | versionIncompatible
  | profileIncompatible
  | excludedDependency
  | resourceLimit
  | unresolvedConflict
  | unavailableExternalSource
  deriving DecidableEq, Repr, Inhabited

structure ResidualFrontierEdge where
  source : RecordId
  target : RecordId
  dependency : DependencyId
  reason : ResidualBlockingReason

structure ResidualFrontierRecord where
  id : RecordId
  impactClosure : RecordId
  edges : Set ResidualFrontierEdge

inductive TopologyConstructionKind
  | originalOperational
  | t0Quotient
  | discreteSpectral
  | discreteTheoremEnvelope
  | other
  deriving DecidableEq, Repr, Inhabited

structure OperationalTopologyConstruction where
  id : RecordId
  kind : TopologyConstructionKind
  sourceTopology : Option RecordId
  carrier : Set RecordId
  certificate : CertificateId

inductive HomeomorphismStatus
  | established
  | refuted
  | indeterminate
  | notEvaluated
  deriving DecidableEq, Repr, Inhabited

structure OperationalContinuityCertificate where
  id : CertificateId
  sourceTopology : RecordId
  targetTopology : RecordId
  map : RecordId
  preimagesOpen : Prop
  monotone : Prop
  homeomorphism : HomeomorphismStatus
  receipt : ReceiptId

inductive TheoremHypothesisStatus
  | established
  | refuted
  | indeterminate
  | notEvaluated
  deriving DecidableEq, Repr, Inhabited

structure TheoremHypothesisWitness where
  hypothesis : RecordId
  status : TheoremHypothesisStatus
  witness : Option RecordId

structure TopologicalTheoremApplicabilityCertificate where
  id : CertificateId
  theoremRecord : RecordId
  theoremVersion : String
  topology : RecordId
  carrier : RecordId
  auxiliaryStructures : Set RecordId
  hypotheses : Set TheoremHypothesisWitness
  conclusion : Option RecordId
  proof : Option RecordId
  scope : String
  limitations : Set String
  receipt : ReceiptId

end Cord
