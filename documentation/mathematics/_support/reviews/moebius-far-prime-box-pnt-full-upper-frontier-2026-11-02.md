# Actual Möbius FAR source: explicit eventual PNT mass, prime-doubling obstruction, and complete noncircular upper envelopes

Research date: 2026-11-02 (America/Los_Angeles).
Local mathematical attribution: grwtsk contributors; Lean source formalization assistance: OpenAI ChatGPT.
Status: unconditional ordinary mathematical prime-box and classical-quantitative-Mertens derivations, with only explicit unproved pinned-Lean suppliers. User-DEFERRED compilation; no kernel or transitive audit.

## 1. Exact source, scope, and predecessor pins

Source on grwtsk/math/main is the UNCHANGED original signed
  farReducedOrLongCross(B,A,J)
at physical T_J=J log 2 with positive integer N=2^J, true
moebiusReal(m)*moebiusReal(n)*pickupResponseGram(T_J,m,n),
both ordered orientations, original squareful zero coefficients,
diagonal exclusion, literal Nat.dist gap mask, original
lowIndices B J support and original terminal birth inventory.

Two precise inherited source files:
  MoebiusFarReducedStructuralFrontier.lean
    blob 9f72096be0c6aa30ecb0099a747090a5e30e4c44
    maintains true farPair and FarBothSignsLargePNTTarget;
  MoebiusCollarResidualGcdReducedGap.lean
    blob 48081c7e32d41455ef7fc7d02c006588bd9b36b7
    maintains exact small-gcd/short-ratio/reduced-close complement.

The other distinct paid components are
  collarIncidentCross, shortRatioCross, reducedCloseCross.
All remain genuine SAME original signed source. The new
MoebiusFarCompleteUpperTransfer.lean proves as source candidates
the exact global identity and its transfer to the complete FAR.
No original source definition or selected mask is redefined.

### Prior source decomposition

For any true finite prime bank B, at the same fixed T_J:
  pickupCross(T_J)
    =collarIncidentCross(B,empty,J)
     +shortRatioCross(B,empty,J)
     +reducedCloseCross(B,empty,J)
     +farReducedOrLongCross(B,empty,J).              (1)
It follows immediately (no RH hypothesis) that, if the three
proper packets are absolutely bounded by I_J,S_J,C_J,
  farReducedOrLongCross(B,empty,J)
    <=pickupCross(T_J)+I_J+S_J+C_J.                (2)
The identical endpoint comparison pays only the preexisting
single 1/4 curvature error:
  far<=endpointSum(T_J)+1/4+I_J+S_J+C_J.
These are source identities and elementary inequalities,
not new cancellation estimates.

## 2. Explicit real source prime boxes, no rounding ambiguity

Let J>=8, N=2^J, T=log N, K=floor(exp(sqrt T)).
Choose these true-prime sets, all integer inequalities literal:
  P={p prime: N<=16p AND 12p<=N},
  Q={q prime: N<=4q AND 3q<=N},
  R={r prime: N<=8r AND 6r<=N},
  D={2r:r in R}.
Thus P lies in [N/16,N/12], Q in [N/4,N/3], and
R in [N/8,N/6], with D in [N/4,N/3].
The map r->2r is injective, so |D|=|R|.

For sufficiently large J, the true original EMPTY PRIME BANK
has no high-smooth terminal collar because its only positive
smooth divisor is one and the original cutoff Q_j>=1 on each
selected terminal shell, as documented by the exact preceding
empty-bank highSmooth theorem and an elementary real cutoff.

For the three box families, their integer gaps and coprimality
are source-exact, not random model masks. In particular
  q-p>=N/6,   2r-p>=N/6,   r-p>=N/24.
For J>=8, N/24>K (proved by the elementary eventual
comparison exp(T)/24>exp(sqrt T); checking the J=8 base
and monotonicity in J gives the claimed uniform cutoff).
Thus (p,q), (p,2r), and (p,r) and their reversed orientations
are genuine unmodified original FAR pairs, including the
full original gcd-reduced gap and exclusion of short ratios.

These prime intervals are pairwise disjoint at the relevant
source indices (p<r,q), and for large J all selected primes
are odd. Genuine Möbius arithmetic gives
  mu(p)=mu(q)=mu(r)=-1,
  mu(2r)=mu(2)*mu(r)=+1,
  mu(p)*mu(q)=mu(p)*mu(r)=+1,
  mu(p)*mu(2r)=-1.                         (3)

## 3. Fully source-original physical-time Gram lower, not a model kernel

For u in the complete ORIGINAL physical subinterval
  [T-1/2,T]
and p in P, q in Q, r in R, we have p<=N/12,
q<=N/3, 2r<=N/3, so all responses are actually BORN.
The original exact response is
  pickupResponse(n,u)=2/sqrt N *
     (sqrt(N/n)-exp((T-u)/2)).

Use the elementary strict comparisons
  exp(1/4)<4/3, sqrt12>3, sqrt3>5/3,
  sqrt6>12/5, sqrt3<7/4.
The square-root comparisons reduce to squaring positive
rational numbers. The exponential inequality follows from
  log(1+x)>x/(1+x) for x>0, at x=1/3.

Then throughout this true physical subinterval:
  pickupResponse(p,u)>10/(3sqrt N),
  pickupResponse(q,u)> 2/(3sqrt N).
The actual kernel is positive at every u>=0 and hence
  K_T(p,q)> (1/2)*(10/(3sqrt N))*(2/(3sqrt N))
         =10/(9N)>1/N.
The same applies to K_T(p,2r). No imaginary/negative-time
interval, synthetic gram, or coefficient substitution occurs.

For the P,R matched prime-vs-double pair, actual response
monotonicity is GLOBAL:
  pickupResponse(r,u)>=pickupResponse(2r,u)
for every u>=0, by the preexisting source antitonicity.
On [T-1/2,T], both are after birth and
  pickupResponse(r,u)-pickupResponse(2r,u)
     =2*(1-1/sqrt2)/sqrt r
     >=2*(sqrt6-sqrt3)/sqrt N
     >13/(10sqrt N).
Consequently
  K_T(p,r)-K_T(p,2r)
   =int_0^T pickupResponse(p,u)*
      (pickupResponse(r,u)-pickupResponse(2r,u))du
   >(1/2)*(10/(3sqrt N))*(13/(10sqrt N))
   =13/(6N)>2/N.                               (4)
This direct inequality is exact ORIGINAL physical source
work and requires no PNT or arithmetic averaging.

## 4. PNT gives explicit true eventual population constants

The classical PRIME NUMBER THEOREM states
  pi(x)~x/log x, x->infinity.
For fixed proportions 0<a<b, prime counts in [aN,bN]
are asymptotic to (b-a)*N/log N. Thus
  |P|~N/(48T), |Q|~N/(12T), |R|~N/(24T),
and |D|=|R|.
For ONE sufficiently large integer J0 (not a separate cutoff
for each prime pair), all J>=J0 satisfy
  |P|>=N/(96T),
  |Q|>=N/(24T),
  |D|>=N/(48T).
This uses ONLY the accepted classical PNT and the exact
finite box definitions. No RH, Chowla, zero-free fixed half-plane
or Mertens power hypothesis enters this prime-population fact.

Let positiveFarMass(J) be the actual full sum of positive
original far terms, negativeFarMass(J) the absolute magnitude
of the actual negative original far terms. They are BOTH
nonnegative by genuine physical Gram positivity.
Every selected P x Q pair contributes >=1/N to the first;
every selected P x D pair contributes >=1/N to the second.
Even using ONLY one ordered orientation gives

  positiveFarMass(J)>=|P||Q|/N
                    >= N/(2304*T^2),
  negativeFarMass(J)>=|P||D|/N
                    >= N/(4608*T^2).             (5)

Therefore for all J>=J0 the SAME explicit positive constant
  c=1/4608
works for both:
  positiveFarMass(J),negativeFarMass(J)
                  >=c * 2^J/(J log 2)^2.         (6)

This discharges the PREVIOUS
FarBothSignsLargePNTTarget in ordinary mathematics. In the
LEAN source, it is given a new genuine proof-body consumer
far_both_signs_PNT_of_prime_boxes from exactly TWO separately
named unported inputs:
 - PrimeBoxesEventualPNTProductCountsTarget:
     only PNT finite prime-cardinality products;
 - PrimeBoxesOriginalSourceLowerTarget:
     only true original pair membership, Möbius signs and
     original causal Gram>=1/N.
Their independence is testable and neither is an RH-equivalent
signed-balance assumption. No bare research axiom is introduced.
The standard PNT itself is not available as a checked theorem
in the pinned local Mathlib closure in this session.

### Paired prime-doubling does NOT close the signed imbalance

Pair the positive terms (p,r) and negative terms (p,2r).
The complete ORIGINAL one-orientation paired source is
  Σ_(p in P,r in R)[mu(p)mu(r)K_T(p,r)
                    +mu(p)mu(2r)K_T(p,2r)]
    =Σ_(p,r)[K_T(p,r)-K_T(p,2r)].
By (4) and the same PNT counts it is
  >=(2/N)|P||R|
  >=N/(2304*T^2),                             (7)
a POSITIVE order-N/log²N packet. This is an explicit
counterweight to the plausible but FALSE shortcut that
each original prime and twice-prime orbit already balances.
A global cancellation must include further original sources.

The Lean file names the independent
PrimeDoublingOriginalPairLowerTarget and proves a candidate
finite source-sum consequence. This does not prove that the
whole far signed difference is positive or large.

## 5. Complete FAR upper: actual reachable noncircular envelopes

Let B:J->PrimeBand be ANY original finite true-prime family
with |B_J.primes|<=floor(sqrt J), as required by the
unchanged high-smooth collar. The three previous, proper
original-source packets have unconditional ordinary mathematical
absolute upper bounds
  |collarIncident(B_J,J)|<=U_I(J)=exp(o(T_J)),
  |shortRatio(B_J,J)|<=16T_J(1+T_J)exp(sqrt(T_J)/2),
  |reducedClose(B_J,J)|<=8T_J(1+T_J)^2exp(sqrt T_J).
The collar has the separately documented explicit
growing-bank sqrt J formula. All these are rate-independent
source selections. Their EXACT pinned-Lean numerical targets
remain unproved with compilation intentionally deferred.

### Unconditional classical quantitative-Mertens route (rate ONE)

Classical zero-free-region analytic number theory proves
  |M(x)|<=C_A*x/(1+log x)^A for every fixed A>=1.
This requires the quantitative classical zero-free/Perron
supply and is stronger than merely M(x)=o(x).
Original-source finite Abel summation with nonnegative genuine
pickupResponse drops transfers this bound to
  pickupEnergy(T)<=C'_beta*exp T/(1+T)^beta
for every fixed beta>=1, after increasing the Mertens
logarithmic-power parameter. It is already recorded in the
repo as ClassicalMertensLogPowerInput and the exact
OriginalBalancedPNTLogPowerTarget. These are classical
ordinary results, but their pinned-Lean proof import/calculus
closure remains UNPROVED, and is an explicit hypothesis in
our new Lean consumer.

From the exact unchanged source identity (1), for EVERY
fixed beta>=1 and eta>0 there exist C_beta,D_eta>=0
UNIFORM across all admissible banks such that

  farReducedOrLongCross(B_J,empty,J)
    <= C_beta * exp(T_J)/(1+T_J)^beta
       + D_eta * exp(eta*T_J).                 (8)

The two terms have importantly different asymptotic rates:
the first is still exponential rate ONE; logarithmic savings
must NEVER be silently promoted to every fixed epsilon>0.
The new Lean source contains an actual conditional proof body
far_complete_PNT_logpower_plus_subpower_of_source_gates,
using the preexisting quantitative PNT bridge and THREE
independent elementary proper-packet numerical targets.
It does not hypothesize or prove any signed FAR estimate.

### External 7/8 zero-free route (strict fixed sub-one, NOT all rate)

The previously published grwtsk source retains, explicitly,
  PublishedOAISevenEighths,
  ZeroFreeToMertensPowerBridge,
  PickupVelocityPowerEnergyTransfer
as distinct external-source, classical-contour and physical-
calculus hypotheses. Given exactly these plus the independent
elementary proper-packet bounds, the new source also gives
for every fixed rho>3/4 a single C_rho, independent of J and
all admissible bank families:
  farReducedOrLongCross(B_J,empty,J)
       <= C_rho * exp(rho*T_J).                 (9)
This is a conditional local Lean theorem body, NOT a proof
of the imported OAI theorem, the actual Perron bridge, any
rho<=3/4, or RH. The stronger PR103 external claim has a
separate incomplete independent imported-closure assurance
and is not silently substituted for this result.

### Precise unsolved all-positive-rate boundary

The desired target is
  FOR ALL epsilon>0, there exists C_epsilon>=0 such that
    FOR ALL J>=1,
      farReducedOrLongCross(emptyPrimeBand,empty,J)
        <=C_epsilon*exp(epsilon*T_J).
This is FarOriginalEveryPositiveRateUpperTarget.
With the maintained fixed-grid return and ordinary
independent proper-packet estimates, it is equivalent to
the original RH-strength signed endpoint inequality.
No estimate in (8) or (9) proves it. Even strong positive
and negative PNT population lower bounds (6) and paired
source credit (7) prove NO asymptotic balance between the
entire two populations P_J,N_J. A new genuinely arithmetic
cancellation result would be needed.

## 6. Finite original-source diagnostics; NOT certification

A locally recomputed true Möbius sieve and ORIGINAL closed
physical Gram evaluated the finite prime boxes for J=8..14.
The following rows report original one-orientation counts
and minima of N*K(p,q) and N*(K(p,r)-K(p,2r)):

   J     |P|   |Q|   |R|     min N*Kpq   min N*(Kpr-Kp2r)
   8       2     5     2        4.5494         9.5398
   9       2     8     5        4.2427         8.8333
   10      5    14     8        4.1276         8.6900
   11      8    26    14        4.0715         8.5700
   12     14    46    26        4.0010         8.4667
   13     26    89    46        3.9663         8.3917
   14     46   157    89        3.9640         8.3330

Every tested pair was in the exact original FAR mask with
empty bank and correct Möbius signs. All minima exceed the
claimed thresholds 1 and 2 by wide margins.
These finite tests are NONCERTIFYING numerical checks, not
an interval-arithmetic proof, and certainly not a PNT proof.

External classical references:
- NIST DLMF 27.2 Eq. 27.2.3, https://dlmf.nist.gov/27.2
  for the prime number theorem pi(x)~x/log x.
- Fields Institute: Nicol Leong (2024), "Explicit Mertens
  estimates", https://www.fieldsinstitute.ca/talks/Explicit-Mertens-estimates
  for unconditional classical Vinogradov-Korobov-style Mertens
  bounds; this is not a theorem imported into pinned Lean.
- Existing GRWTSK MoebiusCausalMertensSquareBridge.lean for
  the exact original arithmetic finite-Abel identity and
  explicit classical Mertens log-power port targets.
- Existing GRWTSK MoebiusSevenEighthsSupercriticalRates.lean
  for the conditional fixed-power original endpoint package.

## 7. Verification, license and status

Two strictly additive Lean source modules:
 MoebiusFarPrimeBoxPNTMass.lean
 MoebiusFarCompleteUpperTransfer.lean
plus this mathematical review and a passive exact-source target.
No root imports, existing Lean sources, pins or original Möbius
kernel definitions are modified. Authored source theorem
proof bodies have no sorry/admit/axiom/unsafe/native_decide.
The full imported closure and native Lean compilation have
NOT been checked. Pinned Lean v4.34.1 and Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.

At user's instruction, compilation DEFERRED; parser,
elaboration, expected theorem types, kernel replay and
transitive axiom/opaque/native/unsafe audit NOT_RUN.
No CI or Noe worker/scheduler run. Ordinary mathematical
PNT population proof completed at the stated scope; the
complete FAR all-rate upper and the canonical Riemann
Hypothesis remain OPEN.
