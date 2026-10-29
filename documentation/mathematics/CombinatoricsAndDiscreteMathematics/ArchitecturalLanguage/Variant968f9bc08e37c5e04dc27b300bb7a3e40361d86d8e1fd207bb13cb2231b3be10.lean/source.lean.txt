import Mathematics.SemanticTokenization.IdiomConceptNetwork

/-!
# Formal interfaces for interpretation-dependent architectural language
-/

namespace Mathematics.SemanticTokenization

inductive ArchitecturalTermKind
  | irreducibleConcern
  | locallyFiniteNeighborhood
  | whisper
  | monoParentProjection
  | polyHierarchicalRelation
  | deviceNeutrality
  | boundaryMirror
  | percolation
deriving DecidableEq, Repr

inductive ArchitecturalInterpretation
  | technical
  | metaphorical
  | mixed
deriving DecidableEq, Repr

structure ArchitecturalTermAssertion
    (cut : EvidenceCut) where
  term : ArchitecturalTermKind
  source : Finset (Span cut.text)
  source_nonempty : source.Nonempty
  interpretation : ArchitecturalInterpretation
  context : ContextId
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty
  snapshot : SnapshotId

structure DecompositionStructure (α : Type*) where
  decomposes : α → α → α → Prop

def Irreducible
    {α : Type*}
    (decomposition : DecompositionStructure α)
    (value : α) : Prop :=
  ¬ ∃ left right,
    left ≠ value ∧
    right ≠ value ∧
    decomposition.decomposes value left right

structure NeighborhoodStructure (α : Type*) where
  neighborhood : α → Finset α

def LocallyFinite
    {α : Type*}
    (neighborhood : NeighborhoodStructure α) : Prop :=
  ∀ value, (neighborhood.neighborhood value).Finite

def EveryAcceptedAssertionHasLocalSource
    (cut : EvidenceCut) : Prop :=
  ∀ assertion : Fin cut.metadataAssertions.size,
    AcceptedAssertion cut
      (cut.metadataAssertions[assertion]) →
    ∃ path : Fin cut.provenanceRegistry.size,
      (cut.provenanceRegistry[path]).assertion =
        (cut.metadataAssertions[assertion]).2.id ∧
      (cut.provenanceRegistry[path]).Valid
        cut.activeSnapshot cut.hasAcceptedEvidence

structure MonoParentTree (Vertex : Type*) where
  root : Vertex
  parent : Vertex → Option Vertex
  root_has_no_parent : parent root = none
  nonroot_has_parent :
    ∀ vertex, vertex ≠ root →
      ∃ parentVertex,
        parent vertex = some parentVertex

structure PolyHierarchy
    (Vertex Relation : Type*) where
  edges : Finset (Vertex × Relation × Vertex)

structure DeviceId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure DeviceSemantics
    (Observation : Type*) where
  state : DeviceId → Type*
  transport :
    ∀ source target,
      state source →
      state target
  observe :
    ∀ device,
      state device →
      Observation

structure DeviceNeutralityCertificate
    {Observation : Type*}
    (semantics : DeviceSemantics Observation) where
  observationPreserved :
    ∀ source target state,
      semantics.observe target
        (semantics.transport source target state) =
      semantics.observe source state

structure BoundaryInvariant
    (Left Right Invariant : Type*) where
  boundaryRelation : Left → Right → Prop
  leftInvariant : Left → Invariant
  rightInvariant : Right → Invariant
  preserved :
    ∀ left right,
      boundaryRelation left right →
      leftInvariant left = rightInvariant right

structure ProbabilityModel where
  sampleSpace : Finset Nat
  weight : Nat → ℚ
  nonnegative :
    ∀ value, 0 ≤ weight value

structure PercolationModel
    (Vertex State : Type*) where
  neighbors : Vertex → Finset Vertex
  activation : State → Vertex → Bool
  step : State → State
  stops : State → Bool
  probabilityModel : Option ProbabilityModel

end Mathematics.SemanticTokenization
