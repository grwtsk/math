# Equivariant prime/ellipsoid sandwich: source-faithful mathematical disposition

Local mathematical attribution: grwtsk contributors.

## Subsequent correction: local additive fusion and active paths

The original rotation sandwich below remains valid at its explicit
middle-relation invariance premise. It should NOT be interpreted as
requiring a single globally isomorphic group for every prime-cell
interface. The local-to-global mathematical distinction is reviewed
in [Local additive fusion and certified cellular growth](local-additive-fusion-and-certified-growth.md).

The newer source constructs the actual pushout of two additive groups
along a specified seam, with source-injectivity conditions and
seam-compatible rotations. Certified graph paths can carry additive
homomorphisms between nonisomorphic groups, with exact observation
return only when each transition supplies its own source comparison.
Neither operation automatically produces a new path or bounds the
signed Möbius dyadic endpoint sum. The finite birth-index reflection
remains a reindexing, not a group automorphism.


**Status:** analytical finite arguments and SOURCE_PROOF_CANDIDATES; Lean compilation
**NOT_RUN**, fresh kernel replay **NOT_RUN**, transitive axiom audit **NOT_RUN**.
No RH, Navier--Stokes regularity, prime-density, type-complete sofic trace,
`δ`-ring comparison or transfinite descent theorem is asserted.

## Exact-source increment

- Parent mathematics: `grwtsk/math@b0eec6b512bc635bcee3c00d8b14dc2e3afad05e`.
- Added source commit: `264cd3a7f1b04265c3fd37f627e86e32358ebe98`.
- `GRWTSK/Combinatorics/GraphTheory/EquivariantRelationSandwich.lean`,
  Git blob `1426db5e14adfa1e4b733eac557c542afa89039d`.
  Consumer: the EXISTING
  `GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich.Sandwich`.
- `GRWTSK/Combinatorics/GraphTheory/BufferedSieveSparseTypeObstruction.lean`,
  Git blob `0a995f93b20f13393d079a659bb9102542508a51`.
  Consumer: the EXISTING `GRWTSK.GraphSandwichDiffusion.ArithmeticSieveKernel.bufferedDiagonalKernel`
  and its `FiniteSieveMarkovKernel.typeMass`.

No existing source, root imports, toolchain pins or closed verification receipts
were edited. These source files are deliberately separate from Noe's execution
tools and certificates.

## 1. Actual graph symmetry, not a feature collision

Let `G` act on vertices `V`, and let `L ⊆ M ⊆ U` be the
existing graph sandwich. Require as an ACTUAL premise

    for every g, x, y: M(g • x, g • y) iff M(x,y).

Define

    L_G(x,y) := exists g, L(g • x,g • y)
    U_G(x,y) := for all g, U(g • x,g • y).

Then `L ⊆ L_G ⊆ M ⊆ U_G ⊆ U`.
Moreover `L_G` and `U_G` are invariant. For any invariant
relation `Q`, if `L ⊆ Q`, then `L_G ⊆ Q`; if `Q ⊆ U`,
then `Q ⊆ U_G`. Thus the refinement gives the least invariant
lower enlargement and the greatest invariant upper restriction.

**Primary argument:** rotate a lower-certified edge, pass it to `M`,
then use invariance to return to the original coordinates. To derive
the upper certificate, rotate the actual edge, use `M ⊆ U` and
retain the result for *every* orientation. Optimality follows from
the same invariance argument for an arbitrary invariant `Q`.

These facts are independent of the orbit's cardinality and do not
require a Markov kernel, a probabilistic coupling, or an ellipsoid.

**Hostile case:** a q=1 radical-weighted graph may admit the
permutation swapping 5 and 25 because their radicals coincide.
That permutation is NOT a Möbius-source automorphism:
`μ(5)=-1` whereas `μ(25)=0`. Applying `rotatedRefinement`
to an actual Möbius edge relation would require a NEW proof of
`ActionInvariant`; the radical graph witness does not supply it.
Equal group cardinality likewise does not imply group isomorphism:
`(ZMod 2)^2` and `ZMod 4` remain distinct in
`OrderedPrimeGroupAddress.repeatedTwo_not_addEquiv_compressed`.

The orbit closure is an algebraic and relational theorem, not a
source-preserving operator on arithmetic signed contributions.
A next use must explicitly identify type labels, full multiplicity,
phase, signs, support, source pairing and the observation returned.

## 2. The *actual* buffered arithmetic kernel has an upper bound

In `GraphSandwichDiffusion.ArithmeticSieveKernel`, for `q=1`,
`N>=1`, and `1<=y<=N`, the existing raw weight is

    w_N(y) = N + radical(y).

The normalized edge weight retains its original diagonal boost

    b_x(y) = 2 if x=y, and 1 otherwise.

Since `N <= w_N(y) <= 2N` and `1 <= b_x(y) <= 2`,
every row normalizer is at least `N^2`, while any numerator
is at most `4N`. The NEW source-derived theorem consequently gives

    K_N(x,y) <= 4/N

for every source `x` and in-scope target `y`.
For nonnegative initial unit mass `a`, row stochasticity yields

    (K_N^(t+1) a)(y) <= 4/N

for all `t>=0`. Summing this exact upper bound across a
declared type fiber `T_N(t)` proves

    mass_N(t,timestep) <= 4 * |T_N(t)| / N

for all positive time steps.

**Crucial arithmetic specialization:** if `T_N` means
*prime integers among 1..N*, the bound reads

    prime_mass_N(timestep) <= 4 * pi(N) / N.

Classical prime-density zero (`pi(N)/N -> 0`) therefore
gives a VANISHING prime-type probability in this *chosen*
buffered kernel, uniformly in positive time. The asymptotic
step is a separate standard theorem, NOT included in the
new Lean source, and is not a statement about the distribution
of actual Möbius signs or zeta zeros.

This does not contradict the existing lower bound

    mass_N(t,timestep) >= |coprime survivors of type t|/(4N).

For sparse types both bounds can tend to zero.
Positive mass at each finite cutoff is not a uniform
positive-density theorem. The finite upper estimate is
the source-specific obstruction; an invented "uniform
positive fraction of primes" steering certificate must
not bypass it.

## 3. The correct ellipsoid and signed-source return

The existing `ThreePhaseEllipsoidQuadratic` identifies the
literal positive Gram form

    Q(z) = 3 * ||mean(z)||^2 + residualEnergy(z),

and its two-coordinate residual metric retains the mixed term
`|a+b|^2`. The existing `TypedEllipsoidAtlas` stores
omitted-source and added-carrier sets in opposite containment
directions. These are genuine geometrical source observations.

They are NOT identities for a signed arithmetic sum.
A rotated ellipsoid's interpolation error may control the
geometric observation but cannot be substituted for the
error in `PickupEndpointQuadrature.endpointSum` without a
source map and an explicit residual inequality.

The canonical RH pickup route already has:
- exact signed five-moment cell polynomials;
- all ordered off-diagonal interactions and diagonal subtraction;
- an endpoint-chord error at most one quarter;
- good-scale coverage and the conditional analytic return.

Its OPEN arithmetic supplier is the all-positive-rate one-sided
bound for the signed dyadic endpoint sum. The present positive
sieve-mass model gives no such cancellation. The repository
already contains `MobiusDilationPairSplit` and
`MobiusDoublingCredit`; do not duplicate their negative packet
without estimating its complete signed complement.

## 4. Compatible and incompatible automorphic chains

For an exact prime-indexed state, retain the dependent group fiber,
ordered prime occurrences and multiplicative arithmetic source
metadata. A graph action may permute those states, but certification
requires a source-exact equivariance or a transport formula for every
changed observation. A 3-cycle of `ZMod 7` is not a proof of
arithmetic primality invariance. A repeated-2 atomic group can admit
order-three symmetry even when the same-cardinality `ZMod 4`
does not. This is an automorphism-group obstruction, not a defect
that disappears under cardinality-only serialization.

A faithful lift to a larger or inverse-limit space cannot make
unequal maps equal. Instead, retain an explicit defect, orientation,
type action, and return ledger, then ask whether the defect can be
bounded from the ORIGINAL arithmetic source. An actual `δ`-ring or
prismatic comparison would additionally need the algebraic and
cochain hypotheses of grwtsk/math#132. Dirichlet-convolution
moment rings are different objects, not automatic prisms.

## 5. Source-specific signed rotation now constructed

The additional source increment
[PickupSignedRotation.lean](https://github.com/grwtsk/math/blob/6b53d06c57c1b4acbf0e77733b53994bf62b86d9/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PickupSignedRotation.lean)
is published at commit 6b53d06c57c1b4acbf0e77733b53994bf62b86d9,
Git blob 7aa4f825a10d2b0d5bd9d57a5f96ccda6fe420d6.
Its actual consumer is
GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint.dyadicBirthSum,
not an abstract placeholder weighted graph.

Set n_j=2^j-1 and a(k)=birthExpression(k+1) from the original
five-moment signed source. The reflection on the finite original
indices is r_j(k)=n_j-1-k, for 0<=k<n_j. The exact sum is

    dyadicBirthSum(j)
      = (1/2) * sum_{0<=k<n_j} (a(k) + a(r_j(k))).

The source is the COMPLETE same birth inventory; no coefficient,
negative term, diagonal, event boundary, phase, or pair multiplicity
is removed or reweighted. The equality is elementary reindexing,
not source cancellation. It handles the empty j=0 and singleton
j=1 cases. The reflected index's range membership is explicit.

The existing one-sided RH-facing obligation can now consume
source-specific per-birth upper allowances U(j,k) satisfying

    a(k) + a(r_j(k)) <= U(j,k),

followed by an independently proved global all-positive-rate bound
on half of their complete sum. The conditional theorem
dyadicBirthBound_of_pairwise_budget preserves all premises and
uses the existing unchanged
riemannHypothesis_of_dyadicBirthBound consumer. No U with a
nontrivial source-derived growth estimate has been supplied.

The separate absolute allowance is

    |dyadicBirthSum(j)| <= (1/2) sum_{k<n_j}|a(k)+a(r_j(k))|.

A new hostile proof states that if each a(k)<=0 at a given
cutoff, the right-side numerator equals -2*dyadicBirthSum(j):
the reflection does NOT improve its absolute allowance at all.
This prevents a misleading claim of moire/rotational compression
based only on the change of coordinates.

**Finite checks, separate from the source-level candidate:** 25,604
exact-rational assertions on independently generated finite arrays
of lengths 0 through 64 checked reflection, the full signed identity,
the absolute bound, the local upper bound and sign-definite equality.
A separate 40-digit numerical diagnostic evaluated the literal
Möbius five-moment birth expression through N=1200, finding no
positive birth values on that *finite tested range*. These numerical
values are not rigorous error-enclosed intervals and do not prove
all-height sign behavior or RH. In the tested dyadic windows through
2^10-1 births, the absolute reflected allowance showed no gain
over the ordinary absolute-value sum.

## 6. The remaining mathematical task

Derive a genuine source-specific one-sided bound for the complete
pairwise signed allowances at every positive exponential rate.
A useful candidate must come from arithmetic (Möbius
multiplicativity, controlled proper-cofactor extraction,
character-sum estimates, or source-exact correlation identities),
not from a graph symmetry or an ellipsoid descriptor alone.
Keep the *existing* MobiusDilationPairSplit and MobiusDoublingCredit
negative packets and their COMPLETE complements instead of
repeating them with newly named proof wrappers.

Only after the full signed arithmetic estimate is independently
proved can the existing RH criterion be consumed. The prime-fiber
and ellipsoid interfaces still lack an exact mathematical map
from the signed source; they must not inherit the reflection's
reindexing identity as a full arithmetic automorphism.

**Evidence separation:** the finite diagnostics for the rotation
sandwich and buffered kernel are tests only, not compilation or
kernel replay. No quantitative RH or Navier--Stokes moment-gap
claim is upgraded by source publication.

**Analytic/past-work classification:** the orbit closure is elementary
group-action mathematics; the finite kernel upper bound is a
source-specific application of normalization and mass conservation.
A literature-level novelty comparison has not been completed.
Independent analytic identities were checked, but a separate
independent proof or formal verifier is not claimed.
