# Shared centers, sieve refinement, winding return, and exact arithmetic words

Local mathematical attribution: grwtsk contributors.

Initial inspection: grwtsk/math@d294ca01d06d190b1f07702a546050cc84f1301b.
Publication base reconciled to concurrent main 85e0cd7ff2e366efbe5dce9f55b1a259954080fe.
Lean: leanprover/lean4:v4.33.0. Mathlib: db584cd6d46c92f209a44c0f1c829460d327499d.
New native compilation, fresh kernel replay and transitive axiom audit: NOT_RUN.
Historical evidence is retained at its original source pins, not reset by this increment.

## 1. The center is not a barycenter

The existing CenteredAdditiveMobiusPair has fields (m,h,r), left endpoint 2m+r,
right endpoint 2m+r+2h, and center label c=2m+h. Its actual reflection center is
c+r. The authentic center amplitude sums every admissible half-shift at that
center with the literal signed product mu(c-h+r) mu(c+h+r).

AnchoredAuthenticCenteredDefectComparison already identifies an anchored
coefficient as one term of the actual amplitude, with all other shifts in an
explicit signed defect. AnchoredPairGreenCoefficientBridge already transports
these anchored coefficients through a finite divisor transform to Lambda(n)
on X<n<=2X, retaining all prime powers. This increment APPLIES those proofs.
A density-weighted midpoint, one anchor alone, or the mean of the amplitudes
is not substituted for the full centered fiber.

The concurrent MovingCenterTransport source also retains an entire Hodge
center P(x) and its complement x-P(x). Under U its defect UP-QU occurs with
opposite signs in those two channels. That existing proof remains unchanged;
a shape/norm argument is not used in place of the signed readout.

## 2. Exact modular return with retained winding

For the actual pair x, the code is

    (r, h, c mod q, floor(c/q)).

Decode c=(c mod q)+q floor(c/q), then m=(c-h)/2. The source proves decode(encode(x))=x.
The inverse is claimed on actual codes; arbitrary four-tuples need not be valid.
The integer identity is total, while the finite residue interpretation uses q>0.
Recharting is encode_new composed with decode_old. Its composition law is exact;
a round trip returns the original code. All scalar or other source readouts
therefore survive, not only a norm or a midpoint.

The concurrently published CenteredResidueReturn.chartEquiv retains the gcd
stratum and reduced residue for a chosen origin, including every nonunit.
CenteredSieveRecovery now uses THAT equivalence inside StratumCenterCode,
and additionally retains winding, parity and half-shift. This constructs exact
integer return without the older center<q restriction. Both modulus and
origin may change. The actual existing von Mangoldt transform is instantiated
after this return by stratum_anchor_recovers_vonMangoldt.

No q/phi(q), prime-distribution, or reciprocal-prime-mass hypothesis is required
for this recovery. That avoids a representation loss from discarding nonunit
strata. It does not invalidate a genuine mass hypothesis of an independent
expander estimate, nor supply an asymptotic cancellation rate.

## 3. Changing partitions are constructed

For any sequence of actual primes p_k, let q_0=1 and q_(k+1)=q_k p_k^2.
No distinctness, enumeration of all primes, or density theorem is needed.
The source proves q_k divides q_(k+1) and q_k>=k+1. Thus

    (r,h,c mod q_(k+1)) -> (r,h,c mod q_k)

is an actual coarsening square in the existing DynamicRefinement carrier.
The complete history separates original centered pairs. If a stage's winding
is retained, recovery is already exact at that stage. If only residues are
retained, the result concerns the entire separating history, not recovery from
one collided statistic. The actual pairs (1,3) and (3,5) coincide in residue
modulo one and separate modulo four with the same parity/half-shift.

This constructs changing finite quotients and their compatibility, not a new
unproved homeomorphism of a zeta-zero space. The observation contains r and h;
on an unbounded source those coordinates remain unbounded. Finite carriers
are asserted only after the explicit arithmetic cutoff below.

## 4. Sieve supports change without losing signed arithmetic

Survives(P,n) means no p in the finite prime set P has p^2 dividing n.
The actual squarefree definition proves a rejected coefficient mu(n) is zero.
Consequently sieveCoefficient(P,n), equal to mu(n) on survivors and zero on
rejected positions, equals the actual mu(n) everywhere.

This is NOT an algorithm computing the signs from squarefree support. The
survivors still carry their original Mobius values. In particular 1 and 2
both survive these square tests but have opposite signs.

At each authentic center, survivingShifts filters the existing support by
both endpoint tests. Enlarging P shrinks this support. Nevertheless the full
signed amplitude, total pair mass, exact center mean and centered variance
are unchanged: every deleted summand is exactly zero. No renormalization by
the number of surviving primes or pairs is introduced.

The old complete identity is retained with this new support:

    signedWrap = nonzeroFrequencyEnergy + meanInflation - 4*centerVariance.

Its negative variance is not replaced by an absolute error or omitted positive
energy. The arithmetic square modulus d^2 of this identity remains its original
parameter. It is DISTINCT from the freely chosen representation modulus q.
No estimate is obtained by changing d without paying its original aggregate.

The same sieve substitution gives sievedCross(P,T)=pickupCross(T), with the
original complete ordered pair inventory. The earlier prime-pair negative
credit and its signedUpper bound therefore transfer without changing constants.
A time-dependent prime sieve may be used on the existing affinely frequent
outer-time regions. The source composes that equality with the existing RH
consumer; the required joint signed subexponential budget remains an input.
No new analytic-return obligation is introduced.

## 5. Actual finite languages, with zero letters retained

At a fixed X the vertices are the lifted anchored states for 1<=a<=2X.
There is an edge from a to a+1 when both are in the source inventory; its label
is the actual sieveCoefficient(P,a), including zero. This is a concrete
ScopedPresentation and its existing finite SoficGraph, not an abstract
assertion that a trace is admissible somewhere.

A path starting at a spells exactly

    [mu(a), ..., mu(a+length(word)-1)]

with a+length(word)<=2X. The source proves BOTH directions. Distinct positive
anchor indices cannot merge in the lifted code; residue-only graph splicing
is excluded. The final a=2X state has no outgoing edge under this convention.

All accepted words are preserved under changing modulus and prime-square sieve.
sourceWord_eq_unsieved keeps zero positions as letters; deleting those positions
would alter the language. finite_factor_iff_some_stage proves that the union of
these growing finite-stage languages is exactly the full finite-factor language
of the positive-integer Mobius sequence. It does not prove that this increasing
union stabilizes in one finite graph or that the infinite orbit closure is sofic.
The construction is lossless but does not claim a bounded state count or efficient
compression: the full finite inventory is retained.

chowla_word_product directly applies the existing ChowlaSoficObservations
readout: every finite offset product is identical after square-sieving. This is
not a proof that its ordinary or logarithmic average tends to zero; it preserves
the exact quantity to which a suitable correlation theorem would apply.

## 6. A phase-bearing popcorn comparison, rather than a barycenter

The cyclic samples are z*stdAddChar(j), j in ZMod q. Existing complete additive
orthogonality gives their k-th moment as z^k when q divides k and zero otherwise.
For q>1 the barycenter vanishes, but the q-th moment is z^q. Rotating the initial
point by an orbit character preserves that returned phase. For |z|=1, division
by q produces a phase-bearing circle of radius 1/q. At q=2, inputs 1 and i have
the same zero barycenter but distinct returned phases 1 and -1.

Contextual source: Anton Gorodetski and Alexandro Luna, Thomae's function and
the space of ergodic measures, arXiv:2206.13794v1 (28 June 2022), use the rational
orbit coordinate (p/q, exp(2*pi*i*q*y)/q) for the torus skew translation.
Only the elementary finite harmonic calculation is proved locally; their weak-*
topology/ergodic-measure theorem is not imported. Full additive frequencies are
not silently replaced by primitive Ramanujan frequencies.

## 7. Shape, zero heights and remaining applications

CompactSourceGramPositiveDefinite already proves positive definite Gram form
for distinct positive-label compact-source translates. Fixed positive-level
sets of such a finite form have the ellipsoidal interpretation. Repeated
labels can be degenerate, and a compensated signed form need not be definite.
An ellipsoid's shape does not restore coordinates discarded by a quotient.
Here recovery follows from the retained stratum/winding/phase data and exact
source proofs, not from the word 'ellipsoid'.

No actual zero-ordinate map, zero-height error bound, all-scale arithmetic budget,
or integer Chowla estimate has been established by these finite comparisons.
The new consumer applications are to the original centered fibers, literal
Lambda coefficients, ordered pickupCross, prime-pair credit, good-scale RH
return and complete finite-word language. They keep the original reflected
compact-source and pickup-energy families distinct. The already supplied
RadicalLogEntropy.sum_log_primeFactors is not reopened or used as cancellation.

## Verification

The external preflight command exited zero with 10,385 exact finite mathematical
assertions and three lexical checks. Tests used actual integer Mobius values,
source-centered integer coordinates, exact rational variance and formal
prime-log coefficient comparisons; finite cyclic phase tests used Gaussian
rationals at q=1,2,4. No numerical zeta zeros, infinite series, all-scale bound,
Lean proof execution, or transitive axiom audit was performed. Diagnostic center
supports were reconstructed independently, not evaluated by the imported Lean
function. Operational code/output stays outside this repository.

All three source files, their exact blob hashes, declaration roster, inherited
pins, required commands and proof-scope controls are bound in the passive
verification manifest and issue. Source publication does not transfer historical
acceptance to this changed closure. Git uses the connector's configured identity;
no custom author/committer override is claimed.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d14257cf3edc63ae628daf51040b184014b0d22eb9233c16c5e6d315a14f8403 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
