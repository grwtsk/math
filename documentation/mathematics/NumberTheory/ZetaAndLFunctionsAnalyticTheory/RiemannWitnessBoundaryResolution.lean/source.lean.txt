/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.RiemannWitnessRegistryEntries
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Resolution of the historical boundary-layer witness label

The witness registry initially retained `boundaryLayerWitnessLabel` as an
unresolved historical name. A bounded cross-repository audit identifies its
source-bound mathematical content in `grwtsk/formal-research` accepted main.

The exact open witness is

  `FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel.CriticalAbelTailLowerBound`.

The accepted source proves

  `FirstPrimeTailUpperBound ↔ CriticalAbelTailLowerBound`

and separately proves that `FirstPrimeTailUpperBound` supplies

  `CorrelationAssembly.EstimateObligation`.

The latter is definitionally the all-scale lower bound `UniformLowerBound` for
the actual arithmetic quadratic family. The separate proposition
`CorrelationAssembly.BridgeObligation` remains an open bridge from that estimate
to the Riemann Hypothesis. Thus resolving the historical label does not construct
its witness, import the external theorem into this repository, or prove RH.

This file is a metadata overlay. It does not import the divergent/private
repository and does not turn an exact source reference into a local proof edge.
The quintic and finite-scale-filter labels remain unresolved.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.RiemannWitnessRegistry

noncomputable section

/-- Exact identity of a declaration in another repository. It remains metadata
until that source is imported and replayed in the current environment. -/
structure ExternalRepositoryRef where
  repository : String
  issue : Option ℕ
  pullRequest : Option ℕ
  commit : String
  path : String
  declaration : String
  evidenceNote : String
  deriving Repr

namespace ExternalRepositoryRef

/-- Project an external-repository identity into the existing source-reference
record without claiming local availability. The repository is retained
literally in the note because the original record is repository-local. -/
def toSourceRef (ref : ExternalRepositoryRef) : SourceRef where
  pullRequest := ref.pullRequest
  branch := ref.repository ++ "@accepted-main"
  commit := ref.commit
  path := ref.path
  declaration := some ref.declaration
  note := "repository=" ++ ref.repository ++ "; " ++ ref.evidenceNote

end ExternalRepositoryRef

private def acceptedMain : String :=
  "dc96769a40980ba724fa248c00541f594ad00080"

/-- Exact open signed Abel witness at the accepted source revision. -/
def boundaryCriticalAbelSource : ExternalRepositoryRef where
  repository := "grwtsk/formal-research"
  issue := some 16
  pullRequest := some 289
  commit := acceptedMain
  path := "FormalResearch/RiemannHypothesis/SourceFirstPrimeAbel.lean"
  declaration := "FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel.CriticalAbelTailLowerBound"
  evidenceNote :=
    "Open eventual lower bound for the actual signed first-prime Abel interaction; no inhabitant is supplied."

/-- Exact equivalence between the signed Abel witness and the first-prime tail
interface used by the accepted source. -/
def boundaryAbelEquivalenceSource : ExternalRepositoryRef where
  repository := "grwtsk/formal-research"
  issue := some 16
  pullRequest := some 289
  commit := acceptedMain
  path := "FormalResearch/RiemannHypothesis/SourceFirstPrimeAbel.lean"
  declaration :=
    "FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel.firstPrime_tail_iff_criticalAbel_tail"
  evidenceNote :=
    "Accepted-main equivalence: FirstPrimeTailUpperBound iff CriticalAbelTailLowerBound."

/-- Exact accepted-main consumer from the first-prime tail to the maintained
all-scale estimate obligation. -/
def boundaryEstimateConsumerSource : ExternalRepositoryRef where
  repository := "grwtsk/formal-research"
  issue := some 16
  pullRequest := some 289
  commit := acceptedMain
  path := "FormalResearch/RiemannHypothesis/SourcePrimePowerPartition.lean"
  declaration :=
    "FormalResearch.RiemannHypothesis.SourcePrimePowerPartition.estimate_of_firstPrime_tail"
  evidenceNote :=
    "Accepted-main theorem: FirstPrimeTailUpperBound implies CorrelationAssembly.EstimateObligation."

/-- Exact target proposition supplied by the accepted external consumer. -/
def boundaryEstimateTargetSource : ExternalRepositoryRef where
  repository := "grwtsk/formal-research"
  issue := some 16
  pullRequest := some 289
  commit := acceptedMain
  path :=
    "FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/CorrelationAssembly.lean"
  declaration :=
    "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly.EstimateObligation"
  evidenceNote :=
    "Definitionally UniformLowerBound for the actual sourceQuadraticValue at every real A >= 1."

/-- The subsequent RH bridge is separately named and remains an open proposition,
not an accepted theorem application. -/
def boundaryRHBridgeTargetSource : ExternalRepositoryRef where
  repository := "grwtsk/formal-research"
  issue := some 16
  pullRequest := some 289
  commit := acceptedMain
  path :=
    "FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/CorrelationAssembly.lean"
  declaration :=
    "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly.BridgeObligation"
  evidenceNote :=
    "Open proposition UniformLowerBound -> RiemannHypothesis; resolution of the witness label does not prove it."

/-- Auditable resolution packet for the historical label. Boolean fields record
negative facts explicitly and are not substitutes for mathematical proofs. -/
structure BoundaryLayerResolution where
  sourceIssue : Nat
  sourcePullRequest : Nat
  acceptedMainCommit : String
  witness : ExternalRepositoryRef
  equivalence : ExternalRepositoryRef
  estimateConsumer : ExternalRepositoryRef
  estimateTarget : ExternalRepositoryRef
  rhBridgeTarget : ExternalRepositoryRef
  importedLocally : Bool
  witnessConstructed : Bool
  rhBridgeDischarged : Bool
  deriving Repr

/-- Exact source-bound disposition of the historical boundary-layer label. -/
def boundaryLayerResolution : BoundaryLayerResolution where
  sourceIssue := 16
  sourcePullRequest := 289
  acceptedMainCommit := acceptedMain
  witness := boundaryCriticalAbelSource
  equivalence := boundaryAbelEquivalenceSource
  estimateConsumer := boundaryEstimateConsumerSource
  estimateTarget := boundaryEstimateTargetSource
  rhBridgeTarget := boundaryRHBridgeTargetSource
  importedLocally := false
  witnessConstructed := false
  rhBridgeDischarged := false

/-- Replace only the unresolved boundary-layer metadata node. The exact external
source is recorded, but availability remains external and non-proof-bearing. -/
def boundaryLayerResolvedNode : WitnessNode where
  id := .boundaryLayerWitnessLabel
  kind := .witness
  scope := .globalRiemann
  availability := .externalBranch
  source := some boundaryCriticalAbelSource.toSourceRef
  evidence := [.kernelChecked, .trustAudited]
  consumer := some
    { name := boundaryEstimateConsumerSource.declaration
      status :=
        "Accepted in the source repository; not imported or replayed in grwtsk/math. Supplies EstimateObligation, not RH by itself." }
  summary :=
    "Historical boundary-layer label resolved to the open CriticalAbelTailLowerBound witness and its accepted-main estimate consumer."

private def replaceBoundaryNode (node : WitnessNode) : WitnessNode :=
  if node.id = .boundaryLayerWitnessLabel then boundaryLayerResolvedNode else node

private def isBoundaryOutgoing (edge : WitnessEdge) : Bool :=
  decide (edge.from = .boundaryLayerWitnessLabel)

private def resolvedNoConnection
    (target : WitnessId) (scopeNote : String) : WitnessEdge where
  from := .boundaryLayerWitnessLabel
  to := target
  kind := .noProvedConnection
  authority := .externalSourceBound
  source := some boundaryCriticalAbelSource.toSourceRef
  scopeNote := scopeNote

/-- Resolution of the source identity does not create a rectangle-count bridge. -/
def boundaryResolvedNoRectangleEdge : WitnessEdge :=
  resolvedNoConnection .canonicalRectangleEdge
    "The accepted signed-Abel witness supplies the formal-research all-scale estimate interface, not the grwtsk/math rectangle enclosure."

/-- Resolution of the source identity does not create a Möbius endpoint bridge. -/
def boundaryResolvedNoEndpointEdge : WitnessEdge :=
  resolvedNoConnection .mobiusTerminalEndpointLoss
    "No theorem identifies the signed first-prime Abel witness with the finite terminal-prefix information-loss obstruction."

/-- Resolution of the source identity does not create a local-reflection bridge. -/
def boundaryResolvedNoReflectionEdge : WitnessEdge :=
  resolvedNoConnection .criticalReflectionCover
    "No theorem transports the all-scale signed-Abel witness into the separate finite-height reflection-cover route."

/-- Registry overlay replacing the old unresolved node and its unresolved
outgoing barriers by exact external-source-bound metadata. -/
def registryWithBoundaryResolution : WitnessRegistry where
  nodes := registry.nodes.map replaceBoundaryNode
  edges := registry.edges.filter (fun edge => !isBoundaryOutgoing edge) ++
    [boundaryResolvedNoRectangleEdge,
      boundaryResolvedNoEndpointEdge,
      boundaryResolvedNoReflectionEdge]

@[simp] theorem boundary_source_is_resolved :
    boundaryLayerResolvedNode.source.isSome = true := rfl

@[simp] theorem boundary_source_is_external :
    boundaryLayerResolvedNode.availability = .externalBranch := rfl

@[simp] theorem boundary_witness_is_not_constructed :
    boundaryLayerResolution.witnessConstructed = false := rfl

@[simp] theorem boundary_rh_bridge_is_not_discharged :
    boundaryLayerResolution.rhBridgeDischarged = false := rfl

@[simp] theorem boundary_edges_remain_nontraversable :
    boundaryResolvedNoRectangleEdge.traversable = false ∧
      boundaryResolvedNoEndpointEdge.traversable = false ∧
      boundaryResolvedNoReflectionEdge.traversable = false := by
  decide

/-- The overlay retains the historical identifier while replacing its unresolved
source state. -/
theorem boundary_identifier_present :
    WitnessId.boundaryLayerWitnessLabel ∈
      registryWithBoundaryResolution.nodeIds := by
  decide

/-- The bounded audit resolves no other historical label. -/
theorem unresolved_labels_remaining :
    quinticWitnessLabelNode.source = none ∧
      finiteScaleFilterWitnessLabelNode.source = none := by
  exact ⟨rfl, rfl⟩

end

end GRWTSK.RiemannHypothesis.RiemannWitnessRegistry
