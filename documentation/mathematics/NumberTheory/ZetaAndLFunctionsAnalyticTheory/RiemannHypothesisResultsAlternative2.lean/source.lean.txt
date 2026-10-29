import FormalResearch.RiemannHypothesis.Defect
import FormalResearch.RiemannHypothesis.ZeroSymmetry
import FormalResearch.RiemannHypothesis.TargetComparator
import FormalResearch.RiemannHypothesis.InferenceGuards
import FormalResearch.RiemannHypothesis.SourcePairing
import FormalResearch.RiemannHypothesis.MultiplicativePhase
import FormalResearch.RiemannHypothesis.PhaseInvolution
import FormalResearch.RiemannHypothesis.PhaseObservationObstruction
import FormalResearch.RiemannHypothesis.PhaseCharacteristicRadical
import FormalResearch.RiemannHypothesis.PhaseCompensationDescent
import FormalResearch.RiemannHypothesis.CharacteristicPhaseFamily
import FormalResearch.RiemannHypothesis.PhaseDeformationQuantities
import FormalResearch.RiemannHypothesis.JointPhaseScaling
import FormalResearch.RiemannHypothesis.SourceCharacteristicInventory
import FormalResearch.RiemannHypothesis.PhaseKernelBoundary
import FormalResearch.RiemannHypothesis.PoleOperatorAlgebra
import FormalResearch.RiemannHypothesis.GeneralizedPoleMoments
import FormalResearch.RiemannHypothesis.GeneralizedPoleBoundary
import FormalResearch.RiemannHypothesis.PoleDifferentialCorrelation
import FormalResearch.RiemannHypothesis.PoleArithmeticFunctional
import FormalResearch.RiemannHypothesis.PoleGreenKernel
import FormalResearch.RiemannHypothesis.PoleGreenWeakIdentity
import FormalResearch.RiemannHypothesis.PoleGreenArithmetic
import FormalResearch.RiemannHypothesis.PoleCorrelationRegularity
import FormalResearch.RiemannHypothesis.PoleGreenGauge
import FormalResearch.RiemannHypothesis.PoleAbelTransform
import FormalResearch.RiemannHypothesis.PoleFrontierInvariance
import FormalResearch.RiemannHypothesis.SourceBumpLaplace
import FormalResearch.RiemannHypothesis.SourceLaplaceDetection
import FormalResearch.RiemannHypothesis.SourceLaplaceEndpoint
import FormalResearch.RiemannHypothesis.PoleSourceDetection
import FormalResearch.RiemannHypothesis.PoleSourceZetaDetection
import FormalResearch.RiemannHypothesis.PoleSourceSensitivity
import FormalResearch.RiemannHypothesis.FullQuadraticAudit
import FormalResearch.RiemannHypothesis.FullQuadraticOperator
import FormalResearch.RiemannHypothesis.FullQuadraticObstruction
import FormalResearch.RiemannHypothesis.FullQuadraticFrontierAudit
import FormalResearch.RiemannHypothesis.SourceScaledKernel
import FormalResearch.RiemannHypothesis.SourceBoundaryLayer
import FormalResearch.RiemannHypothesis.SourceBoundaryArithmetic
import FormalResearch.RiemannHypothesis.SourceBoundaryFrontierAudit
import FormalResearch.RiemannHypothesis.BoundaryRieszKernel
import FormalResearch.RiemannHypothesis.BoundaryRieszLaplace
import FormalResearch.RiemannHypothesis.PrimePowerPerron
import FormalResearch.RiemannHypothesis.RieszResidueAudit
import FormalResearch.RiemannHypothesis.RiemannHypothesisEstimateConverse
import FormalResearch.RiemannHypothesis.RieszZeroSummability
import FormalResearch.RiemannHypothesis.ArithmeticDirichletGramAudit
import FormalResearch.RiemannHypothesis.SourceGramAudit
import FormalResearch.RiemannHypothesis.ZeroOrbitGramAudit
import FormalResearch.RiemannHypothesis.Arithmetic
import FormalResearch.RiemannHypothesis.Estimate
import FormalResearch.RiemannHypothesis.ZeroSide.SmoothExplicitFormula
import FormalResearch.RiemannHypothesis.ZeroSide.SmoothExplicitFormulaTransport
import FormalResearch.RiemannHypothesis.ZeroSide.WeilFormulaImport
import FormalResearch.RiemannHypothesis.ZeroSide.WeilArithmeticTransport
import FormalResearch.RiemannHypothesis.ZeroSide.DominatedDescent
import FormalResearch.RiemannHypothesis.ZeroSide.Assembly
import FormalResearch.RiemannHypothesis.Laplace.Algebra
import FormalResearch.RiemannHypothesis.Laplace.Kernel
import FormalResearch.RiemannHypothesis.Laplace.Expansion
import FormalResearch.RiemannHypothesis.Laplace.InitialFormula
import FormalResearch.RiemannHypothesis.Laplace.Continuation
import FormalResearch.RiemannHypothesis.Laplace.PoleCertificate
import FormalResearch.RiemannHypothesis.Laplace.Assembly
import FormalResearch.RiemannHypothesis.Landau.Correction
import FormalResearch.RiemannHypothesis.Landau.Bridge

/-!
# Riemann Hypothesis

Exact target comparisons, zero symmetries, equivalent formulations, and scoped
inference guards. No theorem asserting the Riemann Hypothesis is supplied.

`Arithmetic` exposes the actual source identities and spectral representations;
`Estimate` exposes the unchanged all-scale target and its conditional arithmetic
reductions. The exact Issue #15 Landau implication is proved, while the
independent Issue #16 estimate and Issue #17 terminal construction remain open.
`FullQuadraticAudit` bounds the actual Gamma contribution on both sides.
`FullQuadraticFrontierAudit` consequently proves the previously missing converse
from the full estimate to prime-square compensation. Both estimates remain open.

`SourceGramAudit` proves actual translated-source Gram positivity and excludes
every PSD matrix with the actual Gamma diagonal beyond an explicit finite radius.
The exact square completion retains its full prime-pair energy. `ZeroOrbitGramAudit`
computes multiplicity-aware labelled quartets and gives arbitrary-strip negative
ordinary squares; these parameters are not asserted to be zeta zeros. The actual
source also cannot be a strict Hermite–Biehler real component. The positive
Dirichlet sectors retain their scale-dependent negative budget. These scoped
certificate obstructions do not prove or disprove actual-source positivity or RH.

`PhaseObservationObstruction` distinguishes actual Jacobson radicals from
observation kernels and preserves the nonzero object at zero phase.
`PhaseCharacteristicRadical` proves a genuine radical fiber in the distinct
phase-one characteristic algebra, whose signed trace still retains its baseline.
`PhaseCompensationDescent` identifies the exact signed trace tail with the open
prime-square compensation proposition; quotient descent supplies no proof of it.
`CharacteristicPhaseFamily` constructs a finite free universal quadratic algebra
and its exact radical special fibers, bound to the actual phase rotation.
`SourceCharacteristicInventory` keeps the simultaneous strict arithmetic labels
and logarithmic first-order directions. `JointPhaseScaling` exposes the actual
radius-dependent spectral kernel. `PhaseKernelBoundary` bounds its continuous
reference and proves sign change; the discrete arithmetic compensation is open.
`PoleOperatorAlgebra` classifies the exact repeated-pole algebra and its radical.
`PoleDifferentialCorrelation` proves the actual source's fourth-order operator
identity; `GeneralizedPoleMoments` proves the two generalized moments.
`GeneralizedPoleBoundary` proves that the positive-half first moment tends to
four, and therefore does not vanish at every radius.
`PoleArithmeticFunctional` proves its operator tail equivalent to prime-square
compensation. The Green modules verify homogeneous modes and the weak kernel
identity; inverse Green smoothing supplies no uniform arithmetic bound.
`PoleGreenArithmetic` proves the weak Green equation for the exact arithmetic
potential and its source specialization, preserving the inverse pairing order.
`PoleCorrelationRegularity` proves actual source C⁴ and base C⁸ regularity.
`PoleAbelTransform` completes exact second Abel summation and its endpoint budget.
`PoleGreenGauge` kills homogeneous freedom in the correctly differentiated pairing.
`PoleFrontierInvariance` instantiates quantitative uniform-tail equivalence on the
actual Green, doubled pole and Abel values. These certified estimates remain
equivalent to prime-square compensation; no unconditional arithmetic bound follows.
`SourceBumpLaplace` proves the actual bump transform has no zero off the imaginary axis.
`SourceLaplaceDetection` computes the actual correlation transform and proves nonvanishing
at every off-line strip parameter for every real radius at least one.
`SourceLaplaceEndpoint` gives its exact endpoint formula and fixed-parameter A⁻⁹ leading limit.
These source-detection results supply no uniform signed arithmetic estimate.
`PoleSourceDetection` extends the exact transform and off-axis detection to every positive radius.
`PoleSourceZetaDetection` consumes the existing exact zeta-zero predicate and Mathlib zero set.
`PoleSourceSensitivity` proves fixed-parameter exponential norm lower bounds away from the poles.
The arithmetic frontier and the Landau implication remain unchanged.
`FullQuadraticOperator` realizes the complete value on a genuine norm-one L² source
with a common Gamma form domain and a Hermitian sesquilinear form.
`FullQuadraticObstruction` disproves a uniform lower bound on all ambient unit vectors;
it does not disprove the required source-orbit estimate or classify supported compression.
The Gamma bound and frontier certificate close no arithmetic estimate or RH target.
`SourceScaledKernel` computes the actual three endpoint polynomials and their vanishing jets.
`SourceBoundaryLayer` retains all three components at their common ninth-order boundary scale.
`SourceBoundaryArithmetic` constructs exact strict-inventory finite measures
and continuum reflection.
`SourceBoundaryFrontierAudit` proves that the required one-sided square-root cancellation rate
is equivalent to the existing estimate; ordinary boundedness after its vanishing normalization
is insufficient. Profile moment cancellation supplies no arithmetic witness.
`BoundaryRieszKernel` proves the exact finite rational transform and eighteenth-order pole.
`BoundaryRieszLaplace` supplies genuine half-line integrals, the limiting transform and
its fixed-parameter convergence. `PrimePowerPerron` retains the strict complete
prime-power source and its exact right-line contour representations.
`RieszResidueAudit` audits rational decay and local residue structure.
`RieszZeroSummability` proves convergence of actual multiplicity-indexed Riesz weights
with an unconditional exponential budget and an explicit-RH uniform majorant.
`RiemannHypothesisEstimateConverse` proves RH implies source nonnegativity using
the existing summable Weil identity. Hence the unchanged estimate is equivalent
to exact Mathlib RH. Neither side is proved unconditionally; #16 and #17 remain open.
-/
