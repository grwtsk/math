# Original Möbius RH source connections: weighted-energy reciprocal control and faithful observer zero witnesses

Research date: 2026-11-02.
Local attribution: grwtsk contributors.
Mathematical source and Lean source-formalization assistance: OpenAI ChatGPT.
Research scope: the original real Möbius signed pickup, fixed dyadic endpoint, honest observation defects, and source-specific analytic return. This review does not claim corpus-wide closure, proof novelty for classical analysis, Lean kernel acceptance, or RH.

## 1. What the repository search actually covered

Inspected the live Git tree for grwtsk/math/main, initially pinned at
  1cdffe535e8fbd8d0cec79f2c56d6c8f87c38955
with root tree
  29366d2fec882ed901057564d0426f7118e53d4d.

Its maintained
 GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory
directory contains 156 filenames matching Moebius*.lean.
The adjacent relevant trees include
 GRWTSK/HarmonicAnalysisOnEuclideanSpaces,
 GRWTSK/MeasureAndIntegration,
 GRWTSK/NumberTheory/ElementaryNumberTheory/
   ArithmeticFunctionsRelatedNumbersInversionFormulas,
 GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/
   NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.
The accompanying machine-readable graph pins 156 file/blob pairs,
48 selected mathematically pertinent source nodes and 44 TYPED
relations. This is a bounded source map, not semantic certification
of 156 modules or every historical 73k documentation entry.
Nodes marked exact identity refer to source theorem statements;
the actual source proof/kernel verification remains separately
unrun in this conversation.

Repository AGENTS.md and the repository proof-comparison standard
were read. Mathematical structural review used the maintained
grwtsk/noeaaeue repository-local
  structural-formalization v0.3.2,
    skill blob 6b029d4c0c8f85523b2cceee739802e7e5e25965,
  mathematical-communication v0.1.0,
    skill blob f4862a20417587408aa86312a02389e913935e35.
These are interpretive instructions, not execution authority.
The source-edge graph distinguishes proof assumptions from
exact source identities, and alternatives from conjunctions.

## 2. The exact arithmetic object shared across the branches

The unchanged repository source is
  M(x)=mertensPrefix(x)=sum_{1<=n<=floor x}mu(n)
  V(u)=pickupVelocity(u)=exp(-u/2)*M(exp u)
  P(T)=wholePickup(T)=integral_0^T V(u)du
  E(T)=pickupEnergy(T)=integral_0^T P(u)^2du
  X(T)=pickupCross(T), the ORIGINAL ordered signed off-diagonal
                         birth-gated pickupResponseGram.
The physical source has all positive integers, mu(1)=1,
the exact squareful zeros, and the birth condition u>=log n.
At T_J=J log 2 the source ledger is
 E(T_J)=pickupDiagonal(T_J)+pickupCross(T_J)
       =diagonal+collarIncident+shortRatio
         +reducedClose+farReducedOrLongCross.
Both orientations and the original masks are preserved.
All proper packet upper bounds are independent elementary
ordinary-mathematical results but their pinned Lean numerical
formalizations remain explicit unproved Props; the complete FAR
signed upper at every positive rate is OPEN.

Exact source pins:
 - Original MertensPrimitive.lean blob
   45e06c371d67bcf8c939d20a95fcbc63570546fa.
 - MoebiusCausalMertensSquareBridge.lean blob
   be156509d9679a22b52b32d087f87d8449a047ef.
 - MoebiusCausalMertensSquareEnergyIntegration.lean blob
   c01a1e892c14343aee002554172373e9190f6611.
 - EnergyAbscissa.lean blob
   c1f86b43daefd7fbb8cfc4254d6888c410d051d9.
 - MoebiusOriginalLaplaceZeroBarrier.lean blob
   1a66b83553886e96fc227fa9eeb8b92f4bc8a6a8.
 - MoebiusOriginalFarZeroForcedSpikes.lean blob
   7ba344f93af8fbbf44d9080781617724e09829b8.
 - MoebiusFarCompleteUpperTransfer.lean blob
   11b3913a25626bbd4e1a593b50c31e82bac6abee.

## 3. NEW source-facing reciprocal return from true weighted energy

For sigma>0, suppose the actual weighted square energy is finite:
  W_sigma=integral_0^infty e^(-sigma*T)P(T)^2dT <infinity.

Weighted Cauchy-Schwarz yields, for Re(w)>sigma/2,
  |L_P(w)| <= sqrt(W_sigma)/sqrt(2Re(w)-sigma),   (R1)
where L_P(w)=integral_0^infty exp(-w*T)P(T)dT.
On every compact subset strictly inside that half-plane,
higher derivatives are dominated by finite polynomial-
exponential moments, so L_P is holomorphic there.
This uses only ordinary complex integration and a REAL
verified weighted energy premise, no zeta hypotheses.

The original Möbius Dirichlet identity, valid initially for
Re(w)>1/2 (equivalently Re(s=w+1/2)>1), gives exactly
  w*(w+1/2)*Z1(w+1/2)*L_P(w)=w-1/2,             (R2)
with Z1(s) the pinned entire pole-regularized zeta.
The holomorphic identity theorem extends the PRODUCT
identity to Re(w)>sigma/2. Unlike direct 1/Z1, (R2)
does not assume nonvanishing at an unknown zero.

At any s with Re(s)>(1+sigma)/2, put w=s-1/2.
If Z1(s)=0 and s!=1, (R2) forces 0=s-1, a contradiction.
At s=1, the pinned entire completion has Z1(1)=1.
Thus Z1 is nonzero throughout the full open half-plane.
And, crucially, solving the already VERIFIED product only
AFTER proving nonvanishing returns the exact source reciprocal
  R(s):=(s-1)/Z1(s)=s*(s-1/2)*L_P(s-1/2).        (R3)
This remains true at s=1, where R(1)=0, if the domain
contains 1. The alternative Mathlib junk value for
riemannZeta(1) is never identified with this regularized R.

Combining (R1) and (R3), we obtain a quantitative genuine
reciprocal bound:
  |R(s)| <= |s|*|s-1/2|*
            sqrt(W_sigma)/
            sqrt(2Re(s)-1-sigma),               (R4)
on Re(s)>(1+sigma)/2. The original R is the SAME
regularizedReciprocalZeta used by the repository's
Perron/contour branch, not a newly substituted L-function.

This directly joins the previous forward Perron branch to
the previous reverse energy-abscissa obstruction.
It is a standard classical analytical consequence newly
expressed as a source-level formal bridge, NOT evidence
that W_sigma is finite at arbitrarily small sigma.
Nor does (R4) meet the existing
RegularizedReciprocalSubpower: for fixed real part its
allowed growth is O(|Im s|^2), not O(|Im s|^epsilon)
for EVERY epsilon>0. Thus this result cannot, without an
additional argument, discharge the old Perron segment gate.
This is the hostile growth-boundary check.

If PickupWeightedEnergyAll were independently established
for the ORIGINAL true P(T), choose
 sigma=Re(s)-1/2>0
for each Re(s)>1/2; the half-plane nonvanishing above
then gives ZetaZeroFreeRightOf(1/2) with its ordinary
pole exclusion. This is an explicit CONDITIONAL RH-facing
consumer, not a proof that PickupWeightedEnergyAll holds.

The new Lean module
 MoebiusOriginalLaplaceReciprocalControl.lean
contains candidate proof bodies for Z1 nonvanishing, R
identity, quantitative bound and all-weighted-energy
right-half-plane return. Its standard weighted Cauchy
calculus is an explicitly UNPROVED Lean Prop:
  WeightedOriginalLaplaceCauchyTarget.
It also visibly depends on the PREVIOUSLY unported:
 OriginalLaplaceRightLineIdentityTarget,
 WeightedWholePickupLaplaceHolomorphyTarget,
 LaplaceProductIdentityTheoremTarget.
No research axiom or RH-equivalent zero-free input is added.

## 4. NEW faithful-observer transport of hypothetical offcritical zeros

The existing reverse Laplace theorem says:
 IF an actual zeta zero rho has beta=Re(rho)>1/2,
 then no original energy bound E(T)<=C exp(eta*T)
 exists for any 0<eta<2beta-1; its actual energy
 abscissa is >=2beta-1.
This is a necessary obstruction; it neither asserts a
zero exists nor proves its absence.

Let ANY observed signed cross X_J and real defect D_J obey
  pickupCross(T_J)=X_J+D_J
at every original J>=1, and assume a complete one-sided
absolute defect budget
  |D_J|<=A_eta exp(eta*T_J), A_eta>=0.            (O1)

Suppose also X_J<=K exp(eta*T_J) for ALL J>=1.
The unchanged exact pickup energy identity gives
  E(T_J)=pickupDiagonal(T_J)+X_J+D_J.
Original diagonal <=2*T_J^2 and the elementary scalar
  2*T_J^2 <=(4/eta^2)*exp(eta*T_J)
then imply a genuine energy grid upper
  E(T_J) <=[max(K,0)+A_eta+4/eta^2]*exp(eta*T_J).
Since E is nondecreasing for T>=0 and every T>=0 has
a dyadic J with T<=T_J<=T+log 2, this would imply
a global E(T)<=C' exp(eta*T). It CONTRADICTS the
Laplace zero obstruction.

Therefore under the hypothetical zero antecedent:
 for every 0<eta<2beta-1, every real K,
 there is J>=1 with
    X_J>K exp(eta*T_J).                        (O2)
This is a genuine signed-positive observation statement
with a full source defect budget. It does NOT require
separate source packet estimates for the observedCross
case, unlike the more specialized previous
bank-uniform FAR spike theorem.

Two EXACT maintained representations supply (O1):
 * UniversalWaveformReturn.lean, blob
   8f807513c6a5cbf264750717327ed319f926ed44,
   has the source-definitional equality
     pickupCross(T)=
       arbitraryOrderedCross(observedCoeff,K,T)
        +orderedCrossDefect(mu,observedCoeff,K,T).
   The defect expands into BOTH mixed source/error
   orientations and the error*error packet. It is NOT
   automatically small for an arbitrary coefficient model.

 * PhysicalMoebiusBitGramReturn.lean, blob
   67cbc92ee2dec824d0a5c2930f0f45671dad61a9,
   has the exact two-bit statement
     observedPacket(p,chart,T,encodedStream p)=pickupCross(T)
   and the more general complete
     pickupCross(T)=observedPacket(stream,T)
                      +signedReadoutDefect(stream,T).
   The IDEAL encodedStream uses the ORIGINAL mu signs
   and its defect is ZERO; the arbitrary actual stream
   must carry its measured or proven signed defect.

Hence a hypothetical offcritical zero would force the
ideal two-bit readout to have arbitrarily large positive
normalized signed-cross values. For an imperfect stream,
the same conclusion is available ONLY after a full
exp(eta*T_J) signed defect budget. This is a
CONDITIONAL consequence of the zero obstruction, not a
physical prediction of a device or an actual observation
of such spikes.

The new Lean source
 MoebiusOriginalObserverZeroTransport.lean
supplies a general observed+defect source candidate theorem
and exact instantiations for universal real-coefficient
waveforms, ideal physical encoded bits, and imperfect
indexed physical streams. It imports the original
Laplace zero barrier and its already unproved analytic
gates, plus a single elementary
DyadicOriginalEnergyCeilingTarget. It does not assume
an observer-induced RH bound.

## 5. Hostile checks: exact representation is NOT cancellation

(A) NEGATE THE ENTIRE TRUE COEFFICIENT STREAM:
  observedCoeff(n)=-mu(n).
Every original off-diagonal pair has product
  (-mu(m))*(-mu(n))=mu(m)*mu(n).
Therefore the ORIGINAL quadratic cross is IDENTICAL
even though the coefficient readout differs.
The repository already records the exact source theorem
  pickupCross_global_sign_invariant.
Hence equality of the quadratic observation does NOT
imply the arithmetic signed coefficient was recovered.

(B) TAKE THE EMPTY OBSERVER: observedCoeff=0.
Then observedCross(T)=0 for every T, and the exact signed
defect equals the ENTIRE original pickupCross(T).
The exact source ledger remains true, but it supplies no
error budget or RH information whatsoever. This example
refutes the inference "exact source+defect identity implies
small observedCross without estimating defect."

Independent noncertifying finite evaluation with the
ACTUAL birth-gated original response Gram confirms:
 J  2^J   originalCross(T_J)    all-negative-coefficient cross
 3    8       -1.481237803                 -1.481237803
 4   16       -3.618107158                 -3.618107158
 5   32       -6.641582208                 -6.641582208
 6   64      -10.548201120                -10.548201120
 7  128      -15.389850750                -15.389850750
The empty observer cross is zero and the missing signed
defect equals the respective original cross in each row.
This is a finite floating-point diagnostic, NOT Lean
certification or a test of the Riemann Hypothesis.

## 6. Alternative routes identified, not conflated

**Original sieve and FAR:** source is genuinely split
through TerminalHighSmoothCrossShellCollar,
CollarResidualLowWave, CollarResidualShortRatio and
CollarResidualGcdReducedGap into genuine signed FAR.
CompleteHighGcdElementaryClosure and
LowGcdSieveTargetClosures concern independent high/low
gcd selectors and true square-energy expansions;
they are not a proof of all-rate FAR simply because
the high-gcd packet is absolutely payable.
FarPrimeBoxForcedCompensation identifies real
positive/negative signed compensation at rate ONE from
classical quantitative Mertens, not every positive rate.

**Actual Perron:** ReciprocalZetaPerronBridge and
PerronRightLineExplicit supply classical one-sided
contour/Dirichlet adapters. ReciprocalCriticalCompact,
PerronLocalCriticalWindow and
AdaptiveSharperFiniteCertificate give bounded-height
statements and a finite-constant effectivity audit.
A fixed verified zero height cannot supply ALL scales.
PR103ExactEnergyAbscissa supplies an upper spectral
boundary only under its explicitly external zero-free
and complex-Perron interfaces. The new source (R4) is
a REVERSE energy-to-reciprocal estimate, not a replacement
for those forward assumptions.

**Finite phase and weighted decoder:**
FinitePhaseDecoderBudget and
WeightedDecoderEnergyTransfer preserve all cross terms
and expose ErrorCertificate/UniformWeightedErrorOn.
The actual conditional RH consumers require both
observed subexponential upper AND controlled error.
The new observer-spike theorem is the complementary
NECESSARY consequence under hypothetical offcritical
zeros; it does not prove the decoder bounds.

**Elliptic observer:** GeneralizedFiberObserver
supplies an exact five-term source ledger:
model, matched defect, rough source and both mixed
orientations. The model term alone is NOT the original
cross and has not been shown to satisfy a small
complete signed residual. Its full sum is exact.

**Harmonic/circle/gauge:** CMAdaptiveDisjointBirth,
CMAdaptiveFourierMoments, CMAdaptiveSignedTupleMoments,
CMAdaptiveFiniteCyclicTrace and
CMAdaptivePhysicalTimeHolderLp maintain full integer
frequency and original mu signs in finite moments,
but they use ADAPTIVE smoothed responses. The
original unsmoothed source return and the integrated
all-k arithmetic bounds are separate unproved gates.
CMKaehlerZQGaugeFullReturn has an explicit exact
signed/source-energy compensation but not a new
all-rate upper. Gauge covariance or lossless residue
transport does not by itself reduce the energy.

**L-function generalization:** LFunctionFamilyInverse
proves a source candidate exact zeta specialization
  zeta_mobius_eq_classical,
and Dirichlet right-line arithmetic inversion.
LFunctionLocalEuler, LFunctionEulerSynthesis,
LFunctionIdealNormFamilies and
LFunctionHermitianPickup define family sources that
use COMPLEX Hermitian coefficient products
mu_F(m)*conj(mu_F(n)), not the original real
mu(m)*mu(n) for arbitrary families.
Their finite-Gram and analytic return require separate
family-specific coefficient growth/normalization gates.
The new real zeta energy-to-reciprocal bound does not
automatically extend to other L-functions without
their own Dirichlet/Laplace/Fubini inputs.

This distinction is the central reason the typed
cross-source graph includes not-proved edges.

## 7. Review disposition and formal verification

Original theorem-level novelty: NO claim to a new
classical Cauchy-Schwarz or identity-theorem principle.
The new research contribution within this exact source
corpus is the explicit quantitative source COMPOSITION
(R3,R4) and faithful-observer obstruction (O2),
with precise mixed-defect sensitivity and a durable
fully pinned typed source graph.

Source identity: pinned original source as stated;
no modified coefficients, masks, physical kernels,
cutoffs, budgets, toolchain versions or root imports.
Analytic proof: complete in ordinary mathematics;
unported Lean Prop interfaces remain explicitly named.
Independent hostile example: global sign gauge and
empty observer as above; numerical checks noncertifying.
Alternate route: genuine signed FAR arithmetic and
forward contour, not collapsed into the observer map.

The new source proof bodies are NOT compiled.
Compilation, parser, expected theorem types,
fresh independent kernel, complete transitive axiom
and opaque/native auditing remain NOT_RUN per user.
The earlier source files have their own independent
historical acceptance/NOT_RUN statuses; a Git tree
search does not promote them.

The exact unresolved mathematical input is still
  ∀epsilon>0 ∃C_epsilon ∀J>=1,
    farReducedOrLongCross(emptyPrimeBand,empty,J)
       <=C_epsilon*exp(epsilon*T_J)
or a source-equivalent original complete square-energy
bound. No new unconditional all-positive-rate estimate
was obtained. Neither RH nor an offcritical zero is
claimed to have been established.

Provenance and mathematical uses:
 - grwtsk/math repository instructions and proof-
   comparison disposition (current live source).
 - existing original Laplace/energy/observer sources,
   pinned Git blobs listed in the accompanying graph.
 - no new external research-paper theorem claimed;
   standard Laplace/Cauchy and complex identity theorem
   methods are used with explicit scopes.
 - exact source module additions and static verification
   target bind the results to the publication commit
   after Git readback. No native build or scheduler run.
