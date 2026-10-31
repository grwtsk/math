# Exact signed residue waveform, Abel increments and four-sector energy

Local mathematical attribution: grwtsk contributors.

Status: SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. Exact finite rational reference tests
are NOT Lean acceptance and do not prove the open energy bound.

## Source constraint and local-file boundary

The previously stated local-only artifacts were:
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/SignedWaveformEnergyTarget.lean
- documentation/mathematics/_verification/targets/signed-waveform-energy.json
- documentation/mathematics/_support/reviews/weighted-parity-growing-shift-uniformity.md

Their local /Users/think/Desktop/math bytes were not mounted, not found
on public main, and not inspected. The present publication uses a NEW
additive file name; it never replaces these uninspected local artifacts.

The exact established RH-side source is wholePickup(u), its original
Möbius coefficients and causal response r_n(u), pickupEnergy(T),
PickupDyadicEndpoint.dyadicTime(j)=j log 2, and the published
conditional riemannHypothesis_of_energy_good_scales.
The source imports are unchanged and no new research axiom is added.

Earlier grwtsk/math signed square-modulus work:
- issue #625 / PR #626: same-parity signed convolution with
  class coordinate floor(m/2)+floor(n/2) mod d²,
  retaining square-minus-diagonal cancellation.
- issue #629 / PR #631: exact strict-pair shift n=m+2h,
  with source midpoint 2floor(m/2)+h mod d².
- issue #623: positive residue-variance-plus-diagonal
  majorant has an explicit large-modulus lower-floor obstruction.
- commit 1bcefcfe64ee00654f4d4e18c35deb63ce7f9aea,
  DyadicWeightedResidueClasses.lean blob
  621dd0c0856301a8049e4e63f987579c4cea4596,
  retains all four parity sectors in the real-weighted
  original off-diagonal crossDensity, including 01/10.

## Primary mathematical argument: cancellation BEFORE squaring

Choose any positive integer d. Every positive source label n has
exactly one pair of coordinates

  r(n) = n mod 2 in {0,1},
  a(n) = floor(n/2) mod (d*d).

At geometric cutoff N=2^j, for each parity r and additive residue a
define the SIGNED, REAL, original causal class wave

  W_{j,d,r,a}(u)
    = sum_{1<=n<=N, r(n)=r, a(n)=a}
        mu(n) pickupResponse(n,u).

This is not the earlier off-diagonal signed-pair bucket;
it is a SOURCE-FAITHFUL LINEAR observation BEFORE forming a square.
Every integer n, including squareful zero coefficients and all nonunit
classes, appears exactly once. No class probability, absolute value,
partial prime sieve, or modulus-dependent replacement weight is used.

Direct finite partition proves

  sum_{r=0,1} sum_{a mod d²} W_{j,d,r,a}(u)
    = sum_{1<=n<=2^j} mu(n) pickupResponse(n,u).

For 0<=u<=j log 2, the original existing
wholePickup_fixed_inventory theorem identifies the right
side with wholePickup(u). This is an exact equality with the
ORIGINAL real waveform, not a proxy or a new sample.

Squaring AFTER reassembly gives four complete parity channels.
If W_r=sum_a W_{j,d,r,a}, then

  wholePickup(u)² = W_0² + W_0W_1 + W_1W_0 + W_1².

The mixed sectors cannot be discarded. Equivalently,

  pickupEnergy(j log 2)
    = integral_0^(j log 2) (sum_{r,a} W_{j,d,r,a}(u))² du.

The previously published full signed pair source and curvature
remains a distinct exact decomposition; this identity does
not add an unpriced curvature term to the ENERGY.

## Independent exact Abel transport inside EVERY residue class

For each fixed d,r,a and source cutoff N, retain the exact signed
Mertens and reciprocal-root prefixes

  M_{d,r,a}(N)
    = sum_{n<=N in class} mu(n),
  A_{d,r,a}(N)
    = sum_{n<=N in class} mu(n)/sqrt(n).

Define the exact signed sampled flux

  Q_{d,r,a}(N) = A_{d,r,a}(N) - M_{d,r,a}(N)/sqrt(N).

The newest endpoint coefficient contributes to both prefixes, so
it CANCELS IN THE DIFFERENCE, giving the unconditional identity

  Q_{d,r,a}(N+1)-Q_{d,r,a}(N)
    = M_{d,r,a}(N) *
      (1/sqrt(N)-1/sqrt(N+1)).

This is actual summation by parts, with no probabilistic or
unverified arithmetic asymptotic. Summing the class fluxes
returns the PREEXISTING sampleResidue(N) exactly. The old
wholePickup_log_eq_sampleResidue therefore gives

  wholePickup(log N) = 2*sum_{r,a} Q_{d,r,a}(N), N>=1.

This retains signs and the entire Mertens prefix; it is not
a proof that the prefix is small, that the classes decouple,
or that sampled energy has the requested all-positive-rate bound.

## Source-specific conditional terminal consumer

The new AllRateResidueEnergy(d) explicitly requires

  for ALL epsilon>0, exists C_epsilon>=0, for ALL j,
  integral_0^(j log2) (sum_{r,a} W_{j,d,r,a}(u))² du
      <= C_epsilon * exp(epsilon*j*log2).

The new riemannHypothesis_of_allRateResidueEnergy theorem
is CONDITIONAL, uses exactly the published energy equality,
the existing affine dyadic coverage, and the existing
riemannHypothesis_of_energy_good_scales. It asserts no new
estimate or external source-to-zero result.

The strength of the premise is not disguised:
because the complete class wave is exactly the original
wholePickup, AllRateResidueEnergy(d) is mathematically
the ORIGINAL unsupplied all-rate energy growth obligation
in a different exact coordinate system. The new proof
scripts supply the source-faithful, per-class Abel mechanism
required for future attempts to derive it, not that attempt's
missing uniform cancellation.

## Cross-check and counterexamples

Independent Python reference:
 /mnt/data/signed_residue_waveform_reference.py
 SHA-256 18277d043711bb6a4fed638998eb14325c9473b3e339567654a85b14a419a080
 passed 65,976 exact rational/integer assertions at cutoffs
 1,2,4,8,16,32,64,128 and moduli 1,2,3,4,5,8,11.

The tests verify unique residue-class coverage, exact signed
waveform reconstruction, all four sectors and complete ordered
off-diagonal/diagonal accounting, and per-class Abel endpoint
cancellation with arbitrary exact rational weights.
They do NOT compute original irrational square-root weights
or full transcendental integrals, and the reference program
is NOT a Lean kernel acceptance receipt or a mathematical
proof of the all-height uniform rate.

Hostile mathematical boundaries:
- Classes may have different signs and large individual
  contributions. Bounding each |W_{r,a}| before aggregation
  may lose the only cancellation that matters.
- When d is larger than the active half-index range,
  most classes have at most one source point; a naive
  positive residue-class variance creates no saving.
- Same-parity shifted Chowla estimates alone omit the
  01 and 10 mixed terms.
- Original coefficient residue precision (mod 2^(k+1))
  is independent of this additive arithmetic modulus d*d.
  Mod-two cannot recover mu signs, and a completed
  Z_2 coefficient has no automatic nonzero continuous
  additive return to the real waveform.
- A Mertens-prefix rate or classwise asymptotic must be
  proved in its exact quantified scope, not imported by
  analogy from a fixed-shift result.

## Mathematical completion and verification

One genuine next supplier would bound the COMPLETE SIGNED
aggregate of the classwise Mertens-Abel increments and
all four cross-channel interactions uniformly over the
growing cutoff and the chosen residue moduli, including
the original causal weights. An O(N/(log N)^c) fixed-shift
saving is insufficient for every desired N^delta rate.

Noe/Lean native tasks have not been dispatched. Source files
and static targets cannot be promoted to accepted mathematical
theorems until a clean pinned Lean build, fresh kernel replay,
expected-type audit and transitive axiom check actually succeed.
