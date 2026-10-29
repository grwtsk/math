import FCRS.ControlledPlane.CoordinateFixation
import FCRS.ControlledPlane.Sieve
import FCRS.ControlledPlane.Observation
import FCRS.ControlledPlane.Refinement

universe uObj uHom vObj vHom uData

namespace FCRS.ControlledPlane

/--
All raw carriers and maps used by the controlled-plane claims.

Every representation level has its own type field.  The graph edge map below
is not a `CategoryLike` morphism, and the carrier point is not a control state.
-/
structure ControlledPlaneModel
    (S : RealizationSystem.{uObj, uHom}) where
  Fixed : CategoryLike.{vObj, vHom}

  GraphPrimitive : Type uData
  GraphEdge : Type uData
  GraphMorphism : Type uData
  Factorization : Type uData
  ClosedCoordinate : Type uData
  ControlState : Type uData
  Entity : Type uData
  FixedGraphMorphism : Type uData
  FixedGraphEdge : Type uData
  FixedFactorization : Type uData
  FixedCoordinateValue : Type uData
  RefinementStage : Type uData

  graph : DirectedGraph GraphPrimitive GraphEdge
  entityPrimitive : Entity → GraphPrimitive

  carrier : Carrier2D.{uData}
  fixation :
    CoordinateFixationLayer
      S.carrier.categories.Global Fixed ClosedCoordinate
  fixationSpecification :
    CoordinateFixationSpecification
      S.carrier.categories.Global Fixed ClosedCoordinate
  preservationSpecification :
    CoordinatePreservationSpecification
      S.carrier.categories.Global Fixed

  sieve : FactoringSieve GraphMorphism Factorization
  occurs : GraphEdge → Factorization → Prop
  traversalWeight : TraversalWeight GraphEdge
  fixedSieve :
    ClosedCoordinate → FactoringSieve FixedGraphMorphism FixedFactorization
  fixedOccurs :
    ClosedCoordinate → FixedGraphEdge → FixedFactorization → Prop
  fixedTraversalWeight :
    ClosedCoordinate → TraversalWeight FixedGraphEdge
  sieveTransport :
    ∀ c : ClosedCoordinate,
      SieveTransport
        sieve (fixedSieve c) occurs (fixedOccurs c)

  observation :
    ControlledObservation Entity ControlState carrier.Point
  transition : ControlTransitionData Entity ControlState
  sourceOperation : BinaryOperation Entity
  observedOperation : BinaryOperation (carrier.Point × ControlState)

  fixedAt : ClosedCoordinate → Entity → FixedCoordinateValue
  refinement :
    RefinementSystem
      RefinementStage ClosedCoordinate Entity ControlState carrier.Point

namespace ControlledPlaneModel

/-- The traversal maps underlying the typed sieve transport at a coordinate. -/
def traversalTransport
    {S : RealizationSystem.{uObj, uHom}}
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S)
    (c : M.ClosedCoordinate) :
    TraversalTransport
      M.GraphEdge M.FixedGraphEdge M.Factorization M.FixedFactorization :=
  (M.sieveTransport c).toTraversalTransport

end ControlledPlaneModel

/-- CF-01: the supplied functor family realizes closed-coordinate fixation. -/
def CF01Claim
    (S : RealizationSystem.{uObj, uHom})
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S) : Prop :=
  ClosedCoordinateRegime S →
    ∃ L : CoordinateFixationLayer
        S.carrier.categories.Global M.Fixed M.ClosedCoordinate,
      L = M.fixation ∧
      IsClosedCoordinateFixation L M.fixationSpecification

/--
CF-02: designated commutative pullback-shaped cones and base change are
compatible.  No categorical pullback or finite-limit claim is made.
-/
def CF02Claim
    (S : RealizationSystem.{uObj, uHom})
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S) : Prop :=
  S.P.analytificationPreservesFiberProducts →
  S.P.analytificationPreservesBaseChange →
    ∀ c,
      DesignatedConeAndBaseChangeCompatible
        M.preservationSpecification (M.fixation.fix c)

/-- CF-03: closure, extensional admissibility, and typed sieve transport. -/
structure CF03Claim
    {S : RealizationSystem.{uObj, uHom}}
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S) : Prop where
  factoringClosed :
    ∀ {f g},
      M.sieve.accepts (M.sieve.factorMorph f) →
      M.sieve.furtherFactor f g →
      M.sieve.accepts (M.sieve.factorMorph g)
  admissibilityExact :
    ∀ e,
      AdmissibleEdge M.sieve M.occurs e ↔
        ∃ f,
          M.sieve.accepts (M.sieve.factorMorph f) ∧
          M.occurs e f
  factorMorphTransported :
    ∀ c f,
      (M.sieveTransport c).mapMorphism (M.sieve.factorMorph f) =
        (M.fixedSieve c).factorMorph
          ((M.sieveTransport c).mapFactorization f)
  acceptanceCorrespondence :
    ∀ c m,
      (M.fixedSieve c).accepts
          ((M.sieveTransport c).mapMorphism m) ↔
        M.sieve.accepts m
  furtherFactorPreserved :
    ∀ c {f g}, M.sieve.furtherFactor f g →
      (M.fixedSieve c).furtherFactor
        ((M.sieveTransport c).mapFactorization f)
        ((M.sieveTransport c).mapFactorization g)
  occurrenceCorrespondence :
    ∀ c e f,
      M.fixedOccurs c
          ((M.sieveTransport c).mapEdge e)
          ((M.sieveTransport c).mapFactorization f) ↔
        M.occurs e f
  admissibilityPreserved :
    ∀ c e, AdmissibleEdge M.sieve M.occurs e →
      AdmissibleEdge
        (M.fixedSieve c) (M.fixedOccurs c)
        ((M.sieveTransport c).mapEdge e)

/--
CF-04: source occurrences are preserved, mapped-edge weights agree, and
positive weights have occurrence witnesses.  No reflection of arbitrary
fixed occurrences is asserted.
-/
structure CF04Claim
    {S : RealizationSystem.{uObj, uHom}}
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S) : Prop where
  preserved :
    ∀ c,
      TraversalPreserved
        M.occurs (M.fixedOccurs c)
        M.traversalWeight (M.fixedTraversalWeight c)
        (M.traversalTransport c)
  sourceWeightCorrect :
    TraversalWeightCorrect M.occurs M.traversalWeight
  fixedWeightCorrect :
    ∀ c,
      TraversalWeightCorrect
        (M.fixedOccurs c) (M.fixedTraversalWeight c)

/--
The genuinely open CF-04 weight obligations.  Source-occurrence preservation
is absent here because it is derived from the model's typed `SieveTransport`.
-/
structure CF04ResearchInput
    {S : RealizationSystem.{uObj, uHom}}
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S) : Prop where
  weightPreserved :
    ∀ c,
      TraversalWeightPreserved
        M.traversalWeight (M.fixedTraversalWeight c)
        (M.traversalTransport c)
  sourceWeightCorrect :
    TraversalWeightCorrect M.occurs M.traversalWeight
  fixedWeightCorrect :
    ∀ c,
      TraversalWeightCorrect
        (M.fixedOccurs c) (M.fixedTraversalWeight c)

/-- CF-05: equality of geometric and control observations separates entities. -/
def CF05Claim
    {S : RealizationSystem.{uObj, uHom}}
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S) : Prop :=
  Separating M.observation

/--
CF-06: deterministic normalization and transition soundness, with controlled
separation retained as an explicit research input rather than reconstructed.
-/
def CF06Claim
    {S : RealizationSystem.{uObj, uHom}}
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S) : Prop :=
  DeterministicControlContract M.observation M.transition

/-- CF-07: a decoder section exists for the combined observation. -/
def CF07Claim
    {S : RealizationSystem.{uObj, uHom}}
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S) : Prop :=
  ControlledLossless M.observation

/-- CF-08: operation homomorphism together with derived reconstruction. -/
structure CF08Claim
    {S : RealizationSystem.{uObj, uHom}}
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S)
    (D : LosslessDecoder M.observation) : Prop where
  homomorphic :
    OperationHomomorphic
      M.sourceOperation M.observedOperation M.observation
  decodedOperation :
    ∀ x y,
      decodeObserved D
        (M.observedOperation.op
          (combinedObservation M.observation x)
          (combinedObservation M.observation y)) =
        M.sourceOperation.op x y

/-- Distinct entities are distinguished at some abstract closed coordinate. -/
def ClosedCoordinateSeparating
    (Coord Entity Value : Type uData)
    (fixedAt : Coord → Entity → Value) : Prop :=
  ∀ x y, x ≠ y → ∃ c, fixedAt c x ≠ fixedAt c y

/-- CF-09: closed-coordinate separation remains a research rule. -/
def CF09Claim
    (S : RealizationSystem.{uObj, uHom})
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S) : Prop :=
  ClosedCoordinateRegime S →
    ClosedCoordinateSeparating
      M.ClosedCoordinate M.Entity M.FixedCoordinateValue M.fixedAt

/-- CF-10: coverage and persistence are separate requirements. -/
structure CF10Claim
    {S : RealizationSystem.{uObj, uHom}}
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S) : Prop where
  complete :
    ClosedCoordinateComplete
      M.ClosedCoordinate M.RefinementStage M.refinement.observedAt
  persistent :
    PersistentCoverage
      M.ClosedCoordinate M.RefinementStage
      M.refinement.refines M.refinement.observedAt

/-- CF-11: CT-13 predicates feed an explicit refinement-coherence rule. -/
def CF11Claim
    (S : RealizationSystem.{uObj, uHom})
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S) : Prop :=
  S.P.specializationNatural →
  S.P.admissibleBlowupsGenericFiberInvariant →
    RefinementCoherent M.refinement

/--
The assumptions consumed by CF-12.  In particular, controlled separation is
named as an input.  A decoder obtained from CF-12 can re-derive separation in
the kernel, but that re-derivation is not an independent assembly-level proof.
-/
structure ControlledPresentationPremises
    {S : RealizationSystem.{uObj, uHom}}
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S) : Prop where
  coordinateComplete : CF10Claim M
  refinementCoherent : RefinementCoherent M.refinement
  closedCoordinateSeparating :
    ClosedCoordinateSeparating
      M.ClosedCoordinate M.Entity M.FixedCoordinateValue M.fixedAt
  controlledSeparationAssumption : Separating M.observation

/--
CF-12: the explicit compatible, complete, and separating premises admit an
abstract coherent controlled presentation.  This is a research existence rule,
not a construction or universal-property theorem for an inverse limit.
-/
def CF12Claim
    {S : RealizationSystem.{uObj, uHom}}
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S) : Prop :=
  ControlledPresentationPremises M →
    Nonempty (CoherentControlledPresentation M.refinement M.observation)

/-- CF-13: only the geometric carrier's compactness assertion is requested. -/
def CF13Claim
    {S : RealizationSystem.{uObj, uHom}}
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S) : Prop :=
  CompactCarrier M.carrier

/--
The CF-14 structural contract contains controlled losslessness and no geometric
injectivity or embedding field.
-/
structure CombinedObservationLosslessness
    {Entity : Type uData} {Control : Type uData} {Point : Type uData}
    (O : ControlledObservation Entity Control Point) : Prop where
  controlledLossless : ControlledLossless O

/-- CF-14: losslessness is carried entirely by the combined observation. -/
def CF14Claim
    {S : RealizationSystem.{uObj, uHom}}
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S) : Prop :=
  CombinedObservationLosslessness M.observation

end FCRS.ControlledPlane
