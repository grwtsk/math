# A quantitatively large negative original Möbius prime-star packet

Local attribution: grwtsk contributors. Mathematical source date: 2026-11-01.
Formalization assistance: OpenAI ChatGPT.
Direct original-source research, not a geometry/smoothing representation.

## Exact object, source and new finite signed cancellation

The original object is
  X_mu(T)=sum_(m,n<=floor(exp T),m!=n) mu(m)mu(n) K_T(m,n),
where K_T(m,n)=integral_0^T r_m(u)r_n(u)du and the original
r_n(u)=2(n^-1/2-exp(-u/2)) for u>=log n, zero otherwise.

The actual Putnam dense complement removes only original
ordered pairs whose additive gap belongs to
A_epsilon(T)=putnamRateGapSet epsilon T.
No original coefficients, squareful zeros, prime powers, rough or
mixed elliptic sectors are changed.

For EVERY prime p, μ(1)=1 and μ(p)=-1. Hence each of the two
genuine ordered off-diagonal source pairs (1,p),(p,1) contributes
-K_T(1,p); their total is -2 K_T(1,p)<=0 for T>=0.
Unlike the already-published fixed-ratio (m,2m) and (m,3m)
negative packets, here p varies through ALL eligible prime
endpoints. Its terminal p>3 members are disjoint from the
old ratio-two and ratio-three families. The same original
response positivity yields a genuinely nonpositive signed
packet at every nonnegative T, even without using PNT.

The source defines `primeStarEdge A m n` with the exact
prime-incidence and NATURAL gap condition, and two literal finite
ordered sums: `primeStarPacket A T` and
`denseOutsidePrimeStar A T`. A finite partition theorem gives

  denseLongGapSource epsilon T
    = primeStarPacket (putnamRateGapSet epsilon T) T
    + denseOutsidePrimeStar (putnamRateGapSet epsilon T) T.

Every original ordered pair belongs to exactly one summand.
This is a true finite partition, not a freely assigned remainder.
The packet is <=0 and may be discarded for an upper bound, but
the other signed term remains completely present and unestimated.

## Independent quantitative magnitude, using only classical PNT

Fix ANY original sparse-rate epsilon with 0<epsilon<2. For T
sufficiently large depending on epsilon, let
  X=exp(T-3), U=exp(T-2)=e X.
For every prime p in the real interval X<p<=U,
the original source inventory contains 1 and p, and the
additive gap p-1 satisfies
  p-1>floor(exp(epsilon*T/2)).
Thus BOTH ordered source pairs lie INSIDE the dense complement,
with no reclassification of the threshold or prime modulus.

For any such prime p and u>=log(4p), the EXACT causal response
satisfies
  r_1(u)=2(1-exp(-u/2))>=1,
  r_p(u)=2(p^-1/2-exp(-u/2))>=p^-1/2.
Since p<=exp(T-2), the interval
  [log(4p),T] 
has length at least 2-log 4>0. Consequently

  K_T(1,p) >= (2-log 4)/sqrt(p)
              >= (2-log 4)*exp(1-T/2).

The classical UNCONDITIONAL prime number theorem gives
  pi(U)-pi(X) ~ (e-1)*exp(T-3)/T
as T tends to +infinity. In particular, for all sufficiently
large T, the prime count is >=(e-1)*exp(T-3)/(2T).

All other prime-star edges are also nonpositive. Summing
BOTH orientations over only the selected primes gives

  primeStarPacket(A_epsilon(T),T)
    <= -2*(2-log 4)*exp(1-T/2)
          *(e-1)*exp(T-3)/(2T)
     = -(2-log 4)*(e-1)*exp(-2)*exp(T/2)/T.

The constant
  c=(2-log 4)*(e-1)*exp(-2) ≈ 0.1427136610 > 0
is fixed independently of epsilon,T. Only the eventual
threshold R_epsilon depends on epsilon; no RH or RH-equivalent
Mertens estimate is used. This paper proof is a real
ORIGINAL-source quantitative signed saving of exponential
magnitude, not only strict negativity at one chosen finite edge.

**Formal boundary:** the new Lean source does NOT formalize
the classical PNT prime-interval asymptotic or the lower
real-interval integral inequality. The displayed exponential
bound is analytically proved in this review but NOT kernel
certified. The Lean SOURCE_PROOF_CANDIDATE proves finite
source-sign/partition identities and declares an explicit
terminalPrimeBand/terminalPrimeCredit for this next proof.

## Hostile controls and scope comparison

- T small: the terminal band can be empty. The exponential
  inequality is EVENTUAL, not asserted at all T.
- epsilon>=2: the original Putnam cutoff can cover EVERY
  positive gap. The dense prime-star claim is restricted to
  epsilon in (0,2); at larger epsilon a nonempty star is not
  implied. No rates are changed in the original RH objective.
- p=2,3: the finite sign packet remains correct, but these
  primes may fall into the short-gap sector and are NOT used
  in the eventual exponential lower proof.
- The diagonal (1,1) is not included: primes are >=2.
- All original prime-power and squareful indices remain
  in `denseOutsidePrimeStar` with their correct signed
  coefficients, including actual zeros.
- The old fixed-ratio doubling packet has at most a polynomial
  total magnitude at fixed ratio; this variable-prime packet
  has exponentially growing magnitude, so it is not a
  repetition of that fixed-ratio observation.
- PNT controls the NUMBER of selected primes. It cannot
  establish a bound for the enormous remaining dense
  squarefree rough/mixed and matched pair population.
- The positive countermodel `c(n)=1` fails
  `primeStar_coefficient_eq_neg_one`, showing that this is
  a genuinely Möbius-signed result, not generic Gram positivity.
- The continuum wave Kakeya theorem and physical observer
  codec are not used in this signed-source calculation.

Independent numerical diagnostic: direct original r_n product
integration, original μ(n), and all original ordered pairs at
N=8,16,32,64 and epsilon=0.3,0.9,1.3 (12 total cases).
The computed prime-star packet was nonpositive in all cases.
`dense = star + remaining` held with maximum float
discrepancy 1.43e-14. Computation used an exact-form real
antiderivative evaluated in floating point, not a certified
interval enclosure. It does not verify the PNT asymptotic or
Lean proof term.

## Consumer and certification requirements

The direct consumer is
`GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof.DenseLongGapAllRateOn`
and the unchanged conditional good-scale return to canonical RH.
This new signed saving removes a genuinely negative exponential
subpacket but leaves the complete residual open. There is NO
evidence that removing this packet controls the whole dense sum.

Lean source:
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusDensePrimeStarCancellation.lean`.
Previous matched source: `MoebiusEndpointDenseLongGapSource.lean`,
`MoebiusOddPrimeDoublingNegativePacket.lean`, and the
finite ordered complement from
`MoebiusSmoothBirthDenseSingleBudget.lean`.
Those imported candidates' verification does not transfer
from source publication or bounded numerical diagnostics.

Pinned environment Lean v4.34.1 and Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
New source: COMPILATION_NOT_RUN, EXPECTED_TYPES_NOT_RUN,
FRESH_KERNEL_NOT_RUN, TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
The exponential negative PNT magnitude is still NOT_FORMALIZED
IN LEAN. No changes to Noe native execution, scheduler, root
imports or pinned dependency versions; no experimental hardware.

Next mathematical priority: control the original signed
`denseOutsidePrimeStar` on one fixed affine-covering set of
scales. More negative extracted packets alone are not the
needed full positive-rate upper estimate.

## External mathematics and prior art

Classical prime number theorem (Hadamard and de la Vallée
Poussin, 1896); standard pi(x)~x/log x form. A full audited
Mathlib import of this classical theorem is not claimed.
Nearest repository prior: fixed-ratio negative prime
doubling/tripling packets and Putnam sparse source.
The method uses known classical arithmetic and elementary
causal-response inequalities; no external originality
assessment of the selected prime-star asymptotic is claimed.
