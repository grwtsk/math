import Mathematics.MobiusOntology.ContractionScale
import Mathematics.MobiusOntology.UnknownLedger

/-!
# Contractive-boundary authority ledger

The ledger records exactly what a contractive boundary proves, what requires
one additional certificate, and what remains independent.  It prevents
asymptotic convergence from being promoted to finite confluence, arithmetic
identification, trace purity, or a square-root estimate.
-/

namespace Mathematics.MobiusOntology

inductive ContractiveBoundaryClaim
  | branchCertifiedVerification
  | verificationResidualCompatibility
  | asymptoticConfluence
  | scheduleIndependentBoundary
  | boundedNoEscape
  | geometricInitialDifferenceDecay
  | periodicOrbitZeroDistance
  | periodicOrbitCollapse
  | observableStability
  | perturbedExactBoundaryConvergence
  | perturbedResidualBoundary
  | finiteNormalFormEquality
  | semanticBoundaryIdentification
  | arithmeticSquareRootScale
  | structuralIncidence
  | arithmeticEssentiality
  | automorphicRealization
  | traceIdentity
  | tracePurityBridge
  | spectralHalfPlane
  | invariantBias
  | growthToDiscrepancyBridge
  deriving DecidableEq, Repr, Fintype

inductive ContractiveBoundaryAuthority
  | branchCertificateRequired
  | verificationToStateBridgeRequired
  | baseCertificate
  | metricSeparationRequired
  | observableCertificateRequired
  | perturbationTailRequired
  | finiteConfluenceCertificateRequired
  | semanticIdentificationRequired
  | contractionScaleBridgeRequired
  | independentCertificateRequired
  deriving DecidableEq, Repr, Fintype

/--
The exhaustive authority routing table.  Adding a new claim requires choosing
its authority source instead of inheriting authority from proximity in the
architecture graph.
-/
def contractiveBoundaryAuthority :
    ContractiveBoundaryClaim → ContractiveBoundaryAuthority
  | .branchCertifiedVerification =>
      .branchCertificateRequired
  | .verificationResidualCompatibility =>
      .verificationToStateBridgeRequired
  | .asymptoticConfluence => .baseCertificate
  | .scheduleIndependentBoundary => .baseCertificate
  | .boundedNoEscape => .baseCertificate
  | .geometricInitialDifferenceDecay => .baseCertificate
  | .periodicOrbitZeroDistance => .baseCertificate
  | .periodicOrbitCollapse => .metricSeparationRequired
  | .observableStability => .observableCertificateRequired
  | .perturbedExactBoundaryConvergence =>
      .perturbationTailRequired
  | .perturbedResidualBoundary =>
      .perturbationTailRequired
  | .finiteNormalFormEquality =>
      .finiteConfluenceCertificateRequired
  | .semanticBoundaryIdentification =>
      .semanticIdentificationRequired
  | .arithmeticSquareRootScale =>
      .contractionScaleBridgeRequired
  | .structuralIncidence => .independentCertificateRequired
  | .arithmeticEssentiality => .independentCertificateRequired
  | .automorphicRealization => .independentCertificateRequired
  | .traceIdentity => .independentCertificateRequired
  | .tracePurityBridge => .independentCertificateRequired
  | .spectralHalfPlane => .independentCertificateRequired
  | .invariantBias => .independentCertificateRequired
  | .growthToDiscrepancyBridge =>
      .independentCertificateRequired

def baseContractiveConsequences :
    Finset ContractiveBoundaryClaim :=
  {
    .asymptoticConfluence,
    .scheduleIndependentBoundary,
    .boundedNoEscape,
    .geometricInitialDifferenceDecay,
    .periodicOrbitZeroDistance
  }

def changedContractiveUnknowns :
    Finset ContractiveBoundaryUnknownKind :=
  {
    .verificationBranch,
    .verificationResidual,
    .basinMembership,
    .basinInvariance,
    .robustBasinInvariance,
    .finiteNormalFormEquality,
    .perturbationTail,
    .boundaryIdentification,
    .commonBoundaryFixation,
    .uniformContraction,
    .verificationLeftInverse,
    .logarithmBranch,
    .derivativeToLipschitzBridge,
    .observableLipschitzBound,
    .replayRefinement,
    .contractionToSquareRootScale
  }

def independentContractiveUnknowns :
    Finset ContractiveBoundaryUnknownKind :=
  {
    .admissibilityMask,
    .structuralIncidence,
    .arithmeticEssentiality,
    .automorphicRealization,
    .traceIdentity,
    .tracePurityBridge,
    .spectralHalfPlane,
    .invariantBias,
    .growthToDiscrepancyBridge
  }

def expansiveBranchUnknowns :
    Finset ContractiveBoundaryUnknownKind :=
  {
    .periodicAttractor,
    .basinDecomposition,
    .scheduleSensitiveLimit,
    .errorAmplification,
    .boundaryBifurcation
  }

inductive ContractiveDynamicalStatus
  | certifiedContractiveBoundarySemantics
  deriving DecidableEq, Repr, Fintype

inductive ContractiveInterfaceStatus
  | unknownInterpretationAndAnalyticCoupling
  deriving DecidableEq, Repr, Fintype

structure ContractiveBoundaryCheckpoint where
  dynamical : ContractiveDynamicalStatus
  interface : ContractiveInterfaceStatus

def conditionalContractiveBoundaryCheckpoint
    {State Schedule : Type*}
    [PseudoMetricSpace State]
    (_certificate :
      ContractiveBoundaryCertificate State Schedule) :
    ContractiveBoundaryCheckpoint :=
  {
    dynamical :=
      .certifiedContractiveBoundarySemantics
    interface :=
      .unknownInterpretationAndAnalyticCoupling
  }

/--
Terminal interface obligations deliberately retained after the dynamical core
has been certified.
-/
def interpretationAndAnalyticCouplingUnknowns :
    Finset MobiusOntologyUnknownKind :=
  {
    .core .grading,
    .core .shellGeometry,
    .core .dependencyComplex,
    .core .proofAlternativeCompleteness,
    .core .closureOperator,
    .core .admissibilityMask,
    .core .frontierPerfectness,
    .core .coneOverlap,
    .core .dominatorRelation,
    .core .growthSubmodularity,
    .core .behavioralQuotient,
    .core .coarseGrainingStability,
    .arithmetic .structuralIncidence,
    .arithmetic .arithmeticEssentiality,
    .arithmetic .nonfactorization,
    .arithmetic .automorphicRealization,
    .arithmetic .localGlobalCompatibility,
    .analytic .growthToDiscrepancyBridge,
    .analytic .traceIdentity,
    .analytic .tracePurityBridge,
    .analytic .spectralHalfPlane,
    .analytic .invariantBias,
    .analytic .spectralMultiplicity,
    .analytic .jordanOrder,
    .analytic .uniformConstants
  }

/-- A base certificate has no authority over finite normal-form equality. -/
theorem finiteConfluence_not_baseAuthorized :
    contractiveBoundaryAuthority
        .finiteNormalFormEquality ≠
      .baseCertificate := by
  decide

/-- Arithmetic scale requires an explicit bridge, even after convergence. -/
theorem squareRootScale_not_baseAuthorized :
    contractiveBoundaryAuthority
        .arithmeticSquareRootScale ≠
      .baseCertificate := by
  decide

/-- Semantic identification of the limit is not supplied by metric decay. -/
theorem boundaryIdentity_not_baseAuthorized :
    contractiveBoundaryAuthority
        .semanticBoundaryIdentification ≠
      .baseCertificate := by
  decide

end Mathematics.MobiusOntology
