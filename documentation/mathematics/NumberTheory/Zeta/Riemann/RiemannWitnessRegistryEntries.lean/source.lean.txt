/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.RiemannWitnessRegistryCore
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Source-bound entries for the Riemann-hypothesis witness registry

This file records exact source identities for locally imported and divergent
branch objects. It does not import the divergent branches. The quintic,
boundary-layer and finite-scale-filter names remain unresolved historical labels:
no current declaration, proposition or consumer is assigned to them.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.RiemannWitnessRegistry

noncomputable section

private def sourceRef (pr : ℕ) (branch commit path declaration note : String) : SourceRef where
  pullRequest := some pr
  branch := branch
  commit := commit
  path := path
  declaration := some declaration
  note := note

private def proseRef (pr : ℕ) (branch commit path note : String) : SourceRef where
  pullRequest := some pr
  branch := branch
  commit := commit
  path := path
  declaration := none
  note := note

private def consumer (name status : String) : ConsumerRef where
  name := name
  status := status

/-- Imported through the exact PR #447 parent stack. -/
def canonicalRectangleEdgeNode : WitnessNode where
  id := .canonicalRectangleEdge
  kind := .witness
  scope := .finiteHeightZeta
  availability := .localImport
  source := some (sourceRef 345
    "research/135-positive-height-count-deficit-v01"
    "9356655ba5ce3a8473b718b41a525d19bdaf21bb"
    "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleEdgeObstructionWitness.lean"
    "CanonicalRectangleEdgeWitness"
    "Exact finite contour-edge enclosure and count-isolation witness.")
  evidence := [.sourceDraft]
  consumer := some (consumer
    "CanonicalRectangleEdgeWitness.rhThrough"
    "Finite-height RH conclusion after an independently aligned critical-line family and strict deficit.")
  summary := "A complete half-unit contour-edge report whose corrected interval isolates one positive-height zero count."

/-- The local route atlas from PR #447. It names conditional routes but supplies
no route inhabitant. -/
def rectangleConjectureJunctionNode : WitnessNode where
  id := .rectangleConjectureJunction
  kind := .connectionAtlas
  scope := .finiteHeightZeta
  availability := .localImport
  source := some (sourceRef 447
    "research/445-rh-conjecture-junction-20261021"
    "cebfa82e0fc74c2ad099c82ecc87846e771baf42"
    "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleConjectureConnections.lean"
    "AllRouteConnections"
    "Conditional route registry; no complete inhabitant is supplied.")
  evidence := [.sourceDraft]
  consumer := none
  summary := "Typed conjectural witness and bypass interfaces surrounding the rectangle-edge witness."

/-- Exact finite endpoint-information-loss obstruction from the Möbius route. -/
def mobiusTerminalEndpointLossNode : WitnessNode where
  id := .mobiusTerminalEndpointLoss
  kind := .obstruction
  scope := .finiteArithmetic
  availability := .externalBranch
  source := some (sourceRef 432
    "research/rh-terminal-prefix-obstruction-430-20261021"
    "30acfd2babb7443461b8d4bb57f23982c50cbe08"
    "GRWTSK/NumberTheory/Moebius/TerminalMertensTwoPointPrefixObstruction.lean"
    "not_terminalMultiplierRecovery"
    "Actual Möbius values at 1, 2 and 3 refute terminal-only recovery at one exact scope.")
  evidence := [.sourceDraft]
  consumer := some (consumer
    "riemannHypothesis_of_subpolynomialDyadicMaximalMertensTwoPointEnergy"
    "Obstruction only; the all-scale maximal-energy premise remains open.")
  summary := "An earlier nonzero two-point Möbius prefix is erased by a zero terminal prefix."

/-- Connection atlas for the endpoint witness and Chowla/Elliott/short-interval/
Sarnak programs. -/
def mobiusEndpointConnectionAtlasNode : WitnessNode where
  id := .mobiusEndpointConnectionAtlas
  kind := .connectionAtlas
  scope := .globalRiemann
  availability := .externalBranch
  source := some (sourceRef 446
    "research/mobius-endpoint-connection-atlas-439-20261021"
    "4af9bb2ba38318e9fe9be838e11cef06425e59bf"
    "GRWTSK/NumberTheory/Moebius/EndpointInformationLossConnections.lean"
    "endpointInformationLossWitness"
    "Typed connection semantics; literature references do not become local theorems.")
  evidence := [.literatureReviewed, .sourceDraft]
  consumer := none
  summary := "Scope-correct relations from the endpoint obstruction to neighboring Möbius programs."

/-- Prose-only classification of strip witnesses, groupoid transport and square
coherence. No Lean declaration is claimed. -/
def typedCriticalStripTransportNode : WitnessNode where
  id := .typedCriticalStripTransport
  kind := .classification
  scope := .criticalStripTransport
  availability := .proseOnly
  source := some (proseRef 440
    "docs/typed-critical-strip-witness-classification"
    "2903d3392feba8facb75261ac7c4ed91b9b903bc"
    "docs/mathematics/NumberTheory/LSeries/typed-critical-strip-witnesses.md"
    "Mathematical prose and taxonomy proposal; explicitly not Lean-formalized.")
  evidence := [.sourceDraft]
  consumer := none
  summary := "Distinguishes strip transport, square coherence, groupoid inverses, null-loop holonomy and line location."

/-- Generic negative-witness budget interface on the divergent PR #308 branch. -/
def fixedNegativeBudgetNode : WitnessNode where
  id := .fixedNegativeBudget
  kind := .obstruction
  scope := .finiteErrorBudget
  availability := .externalBranch
  source := some (sourceRef 308
    "research/decoded-source-fixed-witness-20261020"
    "6c9ca58645612d3e245fa9269eefd5d7010f2321"
    "GRWTSK/Analysis/ErrorBounds/FixedWitnessBudget.lean"
    "witness_forces_budget"
    "A negative source value forces the complete comparison budget to cover its strength.")
  evidence := [.sourceDraft]
  consumer := none
  summary := "Finite real inequality separating a retained negative witness from a nonnegative approximation."

/-- Finite-window Gram comparison that specializes the fixed negative budget. -/
def finiteGramWindowNode : WitnessNode where
  id := .finiteGramWindow
  kind := .supplier
  scope := .finiteErrorBudget
  availability := .externalBranch
  source := some (sourceRef 308
    "research/decoded-source-fixed-witness-20261020"
    "6c9ca58645612d3e245fa9269eefd5d7010f2321"
    "GRWTSK/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean"
    "complex_gram_window_comparison"
    "Conditional finite-window source-to-Gram error propagation with all forcing and tail terms retained.")
  evidence := [.sourceDraft]
  consumer := some (consumer
    "no_fixed_negative_below_window"
    "Finite contradiction only after semantic source, model, tail and strict-margin premises are supplied.")
  summary := "A finite propagated budget that can exclude one fixed negative witness below a strict margin."

/-- Local reflection/contraction route from PR #308. It has its own direct
finite-height consumer and is not identified with the rectangle-count route. -/
def criticalReflectionCoverNode : WitnessNode where
  id := .criticalReflectionCover
  kind := .supplier
  scope := .localZeroCover
  availability := .externalBranch
  source := some (sourceRef 308
    "research/decoded-source-fixed-witness-20261020"
    "6c9ca58645612d3e245fa9269eefd5d7010f2321"
    "GRWTSK/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean"
    "rhThrough_of_cubic_slope_cover"
    "Requires actual slope containment, root membership and complete finite-height coverage.")
  evidence := [.sourceDraft]
  consumer := some (consumer
    "rhThrough_of_cubic_slope_cover"
    "Finite-height RH only under complete accepted local coverage; no packet is constructed.")
  summary := "A distinct local-reflection bypass route based on line-centered contraction disks."

/-- Generic richer observable motivated by the terminal endpoint obstruction. -/
def dyadicTreeMaximalComparisonNode : WitnessNode where
  id := .dyadicTreeMaximalComparison
  kind := .supplier
  scope := .finiteArithmetic
  availability := .externalBranch
  source := some (sourceRef 449
    "research/rh-dyadic-block-maximal-437-20261021"
    "1157501e4b52ec388bbcff8baed6563534c40c0b"
    "GRWTSK/Analysis/FiniteSum/DyadicBlockSquareMaximal.lean"
    "dyadicPrefixMaximum_sq_le_dyadicTreeSquareEnergy"
    "Generic finite comparison; the Möbius arithmetic block-energy estimate remains open.")
  evidence := [.sourceDraft]
  consumer := some (consumer
    "riemannHypothesis_of_subpolynomialDyadicMaximalMertensTwoPointEnergy"
    "Reusable comparison layer only; no arithmetic all-scale witness is supplied.")
  summary := "Every finite prefix maximum is bounded by depth times an aligned-dyadic tree square energy."

private def unresolvedNode (id : WitnessId) (title : String) : WitnessNode where
  id := id
  kind := .unresolvedLabel
  scope := .historicalUnresolved
  availability := .unresolvedLabel
  source := none
  evidence := []
  consumer := none
  summary := title ++ ": historical conversation label with no verified declaration, proposition or consumer in the bounded audit."

/-- No exact declaration was located for this historical label. -/
def quinticWitnessLabelNode : WitnessNode :=
  unresolvedNode .quinticWitnessLabel "Quintic witness"

/-- No exact declaration was located for this historical label. -/
def boundaryLayerWitnessLabelNode : WitnessNode :=
  unresolvedNode .boundaryLayerWitnessLabel "Boundary-layer witness"

/-- No exact declaration was located for this historical label. -/
def finiteScaleFilterWitnessLabelNode : WitnessNode :=
  unresolvedNode .finiteScaleFilterWitnessLabel "Finite-scale filter witness"

private def edge (from to : WitnessId) (kind : RelationKind)
    (authority : EdgeAuthority) (source : Option SourceRef) (scopeNote : String) : WitnessEdge where
  from := from
  to := to
  kind := kind
  authority := authority
  source := source
  scopeNote := scopeNote

/-- Local source formalizes the rectangle route taxonomy but does not itself
assert any conjecture or construct a witness. -/
def rectangleAtlasFormalizesEdge : WitnessEdge :=
  edge .rectangleConjectureJunction .canonicalRectangleEdge .formalizes .localProof
    rectangleConjectureJunctionNode.source
    "Formal interface relation only; `formalizes` is deliberately non-implicational."

/-- The divergent Möbius atlas formalizes the exact endpoint witness at its
source scope. -/
def mobiusAtlasFormalizesEdge : WitnessEdge :=
  edge .mobiusEndpointConnectionAtlas .mobiusTerminalEndpointLoss .formalizes
    .externalSourceBound mobiusEndpointConnectionAtlasNode.source
    "Not locally traversable; the branch is not imported into this stack."

/-- The finite counterexample motivates a richer observable but does not prove
its arithmetic estimate. -/
def endpointMotivatesDyadicTreeEdge : WitnessEdge :=
  edge .mobiusTerminalEndpointLoss .dyadicTreeMaximalComparison .motivates
    .externalSourceBound mobiusTerminalEndpointLossNode.source
    "Information loss rules out terminal recovery; it does not imply the dyadic-tree bound or its Möbius specialization."

/-- The finite Gram window specializes the generic fixed-witness budget on its
own divergent branch. -/
def finiteGramSpecializesFixedBudgetEdge : WitnessEdge :=
  edge .finiteGramWindow .fixedNegativeBudget .specializes .externalSourceBound
    finiteGramWindowNode.source
    "Conditional finite error propagation; no arithmetic positivity or Weil source is constructed."

/-- The local reflection route can bypass the rectangle count route only through
its own complete-cover theorem. The external source is not imported here. -/
def criticalReflectionBypassEdge : WitnessEdge :=
  edge .criticalReflectionCover .canonicalRectangleEdge .bypasses
    .externalSourceBound criticalReflectionCoverNode.source
    "Direct finite-height consumer under complete local coverage; it neither constructs nor refutes the rectangle witness."

/-- Critical-strip transport has no proved route to the fixed contour witness. -/
def criticalStripNoRectangleEdge : WitnessEdge :=
  edge .typedCriticalStripTransport .canonicalRectangleEdge .noProvedConnection
    .proseOnly typedCriticalStripTransportNode.source
    "Strip membership, square coherence and null-loop holonomy do not imply critical-line location or contour count isolation."

/-- The Möbius endpoint obstruction and the rectangle-edge witness are currently
independent RH routes. -/
def endpointNoRectangleEdge : WitnessEdge :=
  edge .mobiusTerminalEndpointLoss .canonicalRectangleEdge .noProvedConnection
    .externalSourceBound mobiusTerminalEndpointLossNode.source
    "No theorem transports the finite Möbius endpoint obstruction into a zeta contour enclosure."

/-- Fixed negative-witness inequalities do not construct the arithmetic source
or contour enclosure required by the rectangle witness. -/
def fixedBudgetNoRectangleEdge : WitnessEdge :=
  edge .fixedNegativeBudget .canonicalRectangleEdge .noProvedConnection
    .externalSourceBound fixedNegativeBudgetNode.source
    "Generic comparison budgets are not an arithmetic or Weil-positivity supplier."

private def unresolvedNoConnection (id target : WitnessId) (label : String) : WitnessEdge :=
  edge id target .noProvedConnection .unresolved none
    (label ++ " has no verified source declaration or comparison theorem.")

/-- Explicit unresolved-label barriers. -/
def quinticNoRectangleEdge : WitnessEdge :=
  unresolvedNoConnection .quinticWitnessLabel .canonicalRectangleEdge "Quintic witness"
def quinticNoEndpointEdge : WitnessEdge :=
  unresolvedNoConnection .quinticWitnessLabel .mobiusTerminalEndpointLoss "Quintic witness"
def quinticNoReflectionEdge : WitnessEdge :=
  unresolvedNoConnection .quinticWitnessLabel .criticalReflectionCover "Quintic witness"

def boundaryNoRectangleEdge : WitnessEdge :=
  unresolvedNoConnection .boundaryLayerWitnessLabel .canonicalRectangleEdge "Boundary-layer witness"
def boundaryNoEndpointEdge : WitnessEdge :=
  unresolvedNoConnection .boundaryLayerWitnessLabel .mobiusTerminalEndpointLoss "Boundary-layer witness"
def boundaryNoReflectionEdge : WitnessEdge :=
  unresolvedNoConnection .boundaryLayerWitnessLabel .criticalReflectionCover "Boundary-layer witness"

def finiteScaleNoRectangleEdge : WitnessEdge :=
  unresolvedNoConnection .finiteScaleFilterWitnessLabel .canonicalRectangleEdge "Finite-scale filter witness"
def finiteScaleNoEndpointEdge : WitnessEdge :=
  unresolvedNoConnection .finiteScaleFilterWitnessLabel .mobiusTerminalEndpointLoss "Finite-scale filter witness"
def finiteScaleNoReflectionEdge : WitnessEdge :=
  unresolvedNoConnection .finiteScaleFilterWitnessLabel .criticalReflectionCover "Finite-scale filter witness"

/-- Complete bounded registry. Its contents are metadata, not imported theorem
claims from divergent branches. -/
def allNodes : List WitnessNode :=
  [canonicalRectangleEdgeNode,
   rectangleConjectureJunctionNode,
   mobiusTerminalEndpointLossNode,
   mobiusEndpointConnectionAtlasNode,
   typedCriticalStripTransportNode,
   fixedNegativeBudgetNode,
   finiteGramWindowNode,
   criticalReflectionCoverNode,
   dyadicTreeMaximalComparisonNode,
   quinticWitnessLabelNode,
   boundaryLayerWitnessLabelNode,
   finiteScaleFilterWitnessLabelNode]

/-- Every relation is scope-typed. No external or unresolved edge is locally
proof-traversable. -/
def allEdges : List WitnessEdge :=
  [rectangleAtlasFormalizesEdge,
   mobiusAtlasFormalizesEdge,
   endpointMotivatesDyadicTreeEdge,
   finiteGramSpecializesFixedBudgetEdge,
   criticalReflectionBypassEdge,
   criticalStripNoRectangleEdge,
   endpointNoRectangleEdge,
   fixedBudgetNoRectangleEdge,
   quinticNoRectangleEdge,
   quinticNoEndpointEdge,
   quinticNoReflectionEdge,
   boundaryNoRectangleEdge,
   boundaryNoEndpointEdge,
   boundaryNoReflectionEdge,
   finiteScaleNoRectangleEdge,
   finiteScaleNoEndpointEdge,
   finiteScaleNoReflectionEdge]

def registry : WitnessRegistry where
  nodes := allNodes
  edges := allEdges

@[simp] theorem quintic_source_unresolved :
    quinticWitnessLabelNode.source = none := rfl

@[simp] theorem boundary_source_unresolved :
    boundaryLayerWitnessLabelNode.source = none := rfl

@[simp] theorem finiteScale_source_unresolved :
    finiteScaleFilterWitnessLabelNode.source = none := rfl

@[simp] theorem criticalStrip_to_rectangle_not_traversable :
    criticalStripNoRectangleEdge.traversable = false := rfl

@[simp] theorem criticalReflection_bypass_not_locally_traversable :
    criticalReflectionBypassEdge.traversable = false := rfl

@[simp] theorem endpoint_motivation_not_traversable :
    endpointMotivatesDyadicTreeEdge.traversable = false := rfl

@[simp] theorem quintic_edges_not_traversable :
    quinticNoRectangleEdge.traversable = false ∧
      quinticNoEndpointEdge.traversable = false ∧
      quinticNoReflectionEdge.traversable = false := by
  decide

@[simp] theorem boundary_edges_not_traversable :
    boundaryNoRectangleEdge.traversable = false ∧
      boundaryNoEndpointEdge.traversable = false ∧
      boundaryNoReflectionEdge.traversable = false := by
  decide

@[simp] theorem finiteScale_edges_not_traversable :
    finiteScaleNoRectangleEdge.traversable = false ∧
      finiteScaleNoEndpointEdge.traversable = false ∧
      finiteScaleNoReflectionEdge.traversable = false := by
  decide

/-- The bounded registry contains the exact local rectangle identifier and all
three unresolved historical identifiers. -/
theorem selected_ids_present :
    WitnessId.canonicalRectangleEdge ∈ registry.nodeIds ∧
      WitnessId.quinticWitnessLabel ∈ registry.nodeIds ∧
      WitnessId.boundaryLayerWitnessLabel ∈ registry.nodeIds ∧
      WitnessId.finiteScaleFilterWitnessLabel ∈ registry.nodeIds := by
  decide

end

end GRWTSK.RiemannHypothesis.RiemannWitnessRegistry
