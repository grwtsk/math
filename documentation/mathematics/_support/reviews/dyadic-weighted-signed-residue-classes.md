# Actual signed residue-class return for the weighted dyadic Möbius source

Local mathematical attribution: grwtsk contributors.

Status: SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. No RH cancellation estimate is claimed.

## Established route, not recreated

The predecessor is issue #625 / merged draft PR #626, signed SAME-PARITY
square-modulus residue convolution at immutable PR head
6f91233ddc4397f87eeef1e94e248e31c67e9929, with historical
ParitySignedResidueConvolution.lean blob
e7c8d45eec00682311d43c66b99e32f6e4943bf8.

Issue #629 / merged draft PR #631, immutable PR head
6d2674d6b8a7315aefe9298dfddc03ef35b0128a,
reindexes strict same-parity pairs n=m+2h and retains the exact
residue coordinate 2*floor(m/2)+h modulo d*d, with historical
SignedResidueConvolutionShiftAffine.lean blob
1b34328f97cc3d099439909566fbf9f86a051af8.
These historical files were inspected at their PR heads;
the new source does not assume those historical import paths
are present in the current MSC2020 main tree.

Issue #623 / merged PR #624 records a critical obstruction:
replacing the signed square-minus-diagonal term by positive
residue-variance and squarefree diagonal terms has a
large-square-modulus floor. Issue #592 also proves
that nonunit classes can carry nonzero signed Möbius terms,
so pure multiplicative Dirichlet characters are insufficient.

## New actual source consumer

Previously published DyadicWeightedCorrelationInterface.lean
(blob e22fd380494d853c38208a7d67aa91d75d6d06be)
uses the ORIGINAL real causal pair response, not an
unweighted arithmetic substitute.

At height j and exact N=2^j, put

  contribution(m,n,u)
    = μ(m)μ(n)pickupResponse(m,u)pickupResponse(n,u)
      when m != n, otherwise 0.

For d>0, r,s in {0,1} and a modulo d*d, define

  B(j,d,r,s,a,u) =
    sum over ALL ordered 1<=m,n<=2^j of
    1_(m%2=r) 1_(n%2=s)
    1_(floor(m/2)+floor(n/2) == a mod d*d)
    contribution(m,n,u).

The new source candidate DyadicWeightedResidueClasses.lean
defines this as weightedResidueBucket with exactly the existing
square-modulus additive coordinate. Its central exact return is

  crossDensity(j log 2,u)
     = sum_{r=0,1} sum_{s=0,1}
         sum_{a mod d*d} B(j,d,r,s,a,u).

This is the point missing from the unweighted historical
same-parity route: the ACTUAL weighted pickup has FOUR parity
sectors 00/01/10/11. Both opposite-parity sectors must
remain, not only the old 00/11 Fourier squares.
All original squareful indices, signs, orientations,
nonunit residues, source weights and diagonal exclusions survive.

The existing historical signed residue path is used for
the SAME-PARITY sector and growing-shift phase;
the new leaf supplies the full original weighted
source return that its historical theorem did not assert.

The further theorem dyadicBirthSum_eq_integral_residueBuckets
substitutes this exact FOUR-sector residue return into the
PREEXISTING RH-facing dyadicBirthSum and carries the COMPLETE
signed endpoint curvature without changing its source
normalization, terminal zero-width cell or error allowance.
It is a substantive source-identical return rather than a
new assumption or an arithmetic growth estimate.

The new crossDensity_le_of_residueBucket_upper consumes
ONLY a proved genuine signed upper bound for EVERY complete
bucket; it does not take absolute values first or supply an
analytic upper estimate on its own.

## Independent coefficient precision: lift when needed

The existing complete 2-adic coefficient towers
DyadicTwoPowerTower.lean (blob
b57545f9cb026c8ba8821ba7260b7be3acea946c)
and DyadicPadicResidueTower.lean (blob
38428c91dd4624e73c8ab3348e8ed3d4882c38de)
already define muLevel(k,n) from the ACTUAL signed integer
Möbius source and reduceLevel between successive positive
2-power precision levels.

The new coefficientResidue(k,m,n) is exactly the product
muLevel(k,m)*muLevel(k,n). Its source proof candidate
reduce_coefficientResidue proves compatibility with the
EXISTING ring reduction. No new coefficient model is used.

Keep THREE independent indices:
  j is the geometric cutoff N=2^j;
  d is the arithmetic square modulus d*d;
  k is the coefficient precision modulo 2^(k+1).

Modulo two merges +1 and -1. Modulo four distinguishes the
three individual Möbius coefficient values, but longer signed
sums and cochains may require higher precision. A single
finite coefficient residue does not reconstruct the real
time-dependent response or the entire completed p-adic state.

## Connection to the external mathematical perspectives

OpenAI Math family 007, Ordinary two-point correlations of
multiplicative functions, September 24 2026,
https://github.com/openai/math/tree/4eaee87548250b2682affda7d05d947c05554bae
is relevant to the historical same-parity shifted expression

  2 sum_{h>0} sum_{m: m%2=r, m+2h<=N}
     mu(m)mu(m+2h) response(m,u)response(m+2h,u)
     1_(2*floor(m/2)+h == a mod d*d).

However fixed-affine-form theorems are not a uniform
growing h,d,k and u estimate. In addition the 01/10
parity channels must be separately bounded in the
complete weighted pickup. No external OAI theorem is
imported, and no growth estimate is inferred by name.

Anthropic's Zeta23 rank-trace argument (Alpöge-Furman,
arXiv:2608.13637, https://github.com/anthropics/formal-math)
is a zero-side precedent only. The existing GRWTSK
DyadicMarkedSignGauge source (blob
413bf03bc5f9de0bcb350b4010f5758e6d0c0be7)
proves why unmarked incidence spectral data do not
recover source signs. These original REAL signed residue
buckets must survive until a genuine source-to-zero
comparison is proved.

## Exact RH-facing consumer and stopping point

The endpoint remains the existing

  E_j = integral_0^(j log 2) crossDensity(j log 2,u) du
        + signedCurvature(j).

The new complete residue identity substitutes exactly
inside this integral. The original source curvature,
endpoint, and the all-positive-rate RH criterion
remain unchanged. A genuinely new arithmetic theorem
must establish the complete integrated one-sided bound

  forall delta>0 exists C_delta>=0 forall j,
    E_j <= C_delta * 2^(delta*j).

The old positive variance replacement is obstructed
at large square moduli (#623). Replacing the four-sector
signed convolution by sums of absolute bucket values
could also destroy the required cancellation.

Next: source-faithful growing-shift reindexing of the
REAL-WEIGHTED same-parity sector, plus a separate
complete opposite-parity contribution and a NEW
uniform arithmetic estimate over all active shifts,
residue classes, times and scales. Do not claim this
estimate has been supplied by finite reindexing.

## Independent finite evidence and verification boundary

An independent exact rational reference model checked
11,102 assertions on actual Möbius coefficients at
N=1,2,4,8,16,32,64,128, d in {1,2,3,4,5,8,11},
all FOUR parity sectors, all d*d residues,
all ordered pairs, and coefficient reductions
modulo successive positive powers of two.
The rational weights validate the algebraic
regrouping, not transcendental pickup integrals.

All new Lean declarations remain SOURCE_PROOF_CANDIDATE
and NOT_RUN for compilation, fresh kernel replay,
expected types and transitive axiom audit.
No new RH, Navier–Stokes PDE, automorphic cusp,
or complete prismatic cohomology is asserted.
