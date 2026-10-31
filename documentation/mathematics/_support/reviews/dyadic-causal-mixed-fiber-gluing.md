# Two-coordinate causal fiber gluing with original signed arithmetic

Local mathematical attribution: grwtsk contributors.
Research date: 2026-10-31.
Status: ANALYTICALLY EXACT FINITE TELESCOPING /
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. No Riemann Hypothesis claim.

## Source identity and the concrete connection

The current original source is
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleDoubleAbelCausalKernel.lean`,
Git blob `b102b4af07b0a1001424b084101c2cc16077181a`.
It defines `causalKernel`, `causalOmega`, the complete signed
`rectangularPrefix`, the finite Abel/Fubini identity and the
still-conditional `KernelTailIdentity N`.
The underlying signed coefficient is the actual Mathlib
`ArithmeticFunction.liouville`, as fixed by
`LiouvilleCausalEnergyTarget.lean` (blob
`a00aaa07c067b4c88203372870b5d5d151de0de4`).
The real response is the original `CCC.pickupResponse` from
`MertensPrimitive.lean` (blob
`45e06c371d67bcf8c939d20a95fcbc63570546fa`).

New additive source:
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleCausalMixedTailTelescoping.lean`,
Git blob `8dcbd4d6aeb85e9f55e76ebf4d38ba225d845547`.
It specializes a two-coordinate finite-difference reconstruction to the
ACTUAL `causalKernel` and `causalOmega`, and encodes the two literal
zero-face lemmas at `T=log N`. It neither modifies the older source
nor proves the unsupplied arithmetic estimate.

## Exact finite proof: two directed fibers

For any real-valued function K on nonnegative integer pairs, define

    Delta K(p,q) = K(p,q) - K(p+1,q)
                   - K(p,q+1) + K(p+1,q+1).

First telescope in q:

    sum_(q=g..N) Delta K(p,q)
      = (K(p,g)-K(p+1,g))
        - (K(p,N+1)-K(p+1,N+1)).

Now telescope in p:

    sum_(p=m..N) sum_(q=g..N) Delta K(p,q)
      = K(m,g)-K(N+1,g)-K(m,N+1)+K(N+1,N+1).       (A)

This holds for 0<=m,g<=N, with EMPTY sums at zero width. All
four boundary signs are essential. The new
`sum_range_forward_difference`,
`mixedDifference_rectangle`, `causalOmega_eq_mixedDifference`, and
`causalOmega_rectangle` are source-level Lean proof candidates for
this argument, using range coordinates p=m+i and q=g+j.

## Prove the original causal zero faces

The literal source response is

    r_n(u) = 2*(n^(-1/2)-exp(-u/2)) if log n<=u, else 0.

For N>=1, n>N, and u<=log N,
the strict inequality `log N < log n` forces r_n(u)=0;
no need to evaluate the equality-at-birth formula.

At T=log N, the source kernel is

    K_T(m,g) = integral_(0..T) r_m(u)*r_(m+g)(u) du.

Therefore, for EVERY q,p>=0,

    K_T(N+1,q) = 0
    K_T(p,N+1) = 0.

The latter follows because p+N+1>N. These are exactly the faces
retained in (A). Substituting them gives

    K_(log N)(m,g)
      = sum_(p=m..N) sum_(q=g..N) Omega_(log N)(p,q)
                                                      (B)

for m,g<=N. In the source candidate, the theorems
`pickupResponse_zero_above_cutoff`,
`causalKernel_zero_upper_base`,
`causalKernel_zero_upper_gap`, and
`causalKernel_eq_glued_rectangle_at_log`
attempt these identifications with the literal real integral.

Identity (B) is the finite gluing: the two coordinate directions
have a common mixed difference, and their original scalar readout
is reconstructed by summing it. It is NOT a transfinite bundle,
a homeomorphism, a holomorphic extension, or a zero-counting theorem.

## What is not yet an accepted Lean bridge

The original source `KernelTailIdentity N` is expressed through a
product lattice `(Finset.Icc 1 N).product (Finset.Icc 1 N)`,
`prefixLE`, and `tailOfOmega`. Equation (B) is written instead as
two `Finset.range` sums. Their exact coordinate conversion,
including the lattice's 1-based lower bounds and the zero/empty
N=0 case, still needs a separate Lean theorem before
`positiveGapAggregate_eq_rectangles_of_tail` can be invoked WITHOUT
its currently explicit `KernelTailIdentity N` hypothesis.

The new source's zero-face lemmas concern the physical kernel
and do NOT prove source-specific `causalOmega>=0`, the integrated
square-root moment bound, or the one-sided estimate for the
complete signed rectangle average. Those remain independent gates.
Compilation and kernel/axiom audits have NOT been run for the new
blob or its imported closure. A source proof candidate is not an
accepted Lean theorem.

## Hostile checks and independent comparison

1. Nonzero boundaries: K(p,q)=1 gives Delta K=0. A false
   boundary-free identity would assert 1=0. The FULL right side
   of (A) is instead 1-1-1+1=0, as required.
2. Actual smallest active Liouville gap at N=3:
   (m,g)=(1,1) has coefficient
   lambda(1)*lambda(2)=-1 and Omega_(log 3)(1,1)=
   K_(log 3)(1,1)>0. The signed aggregate is
   -K_(log 3)(1,1), not its absolute value or a positive square.
   All other positive-gap cells have vanishing kernel at N=3.
3. An independent exact-integer diagnostic evaluated (A) at
   1000 rectangular cutoffs and nontrivial polynomial kernels
   (20 samples at each N=0,...,49), including 0-width limits.
   It found no discrepancy. This finite test is not Lean
   compilation, kernel proof or verification of the physical
   integral identity.
4. The prior source already had a generic finite Abel/Fubini
   equality and an analytical derivation of face vanishing.
   This increment's distinct contribution is the ADDITIVE
   source-level range telescope and explicit literal
   zero-face candidates. No independent novelty beyond that
   local formalization is claimed.

## Relation to harmonic counting, the half line and two thirds

The proposed infinite-dimensional harmonic tube can have a precise
finite shadow here: each cutoff gives a rectangular grid of
base/gap fibers, whose two-sided mixed increments sum to the
original source. The half exponent in r_n is the fixed inverse
square root; it is NOT thereby identified with the critical
vertical line Re(s)=1/2. A cusp or an arc of length pi would need
a specified manifold, metric, bundle transition maps and a
proved analytic comparison. None is implicit in (A) or (B).

There is a separate, useful zero-side literature comparison.
Levent Alpöge and Ralph Furman, *More than two thirds of the
zeta zeros are simple and on the critical line* (2026),
https://arxiv.org/abs/2608.13637, use a finite compression of
Weil's Hermitian form with rank, trace, and inertia to prove
a >=2/3 proportion (optimized to 0.6725). Youness Lamzouri,
*A new proof that more than 2/3 of the zeros of the Riemann
zeta function are simple and on the critical line* (2026),
https://arxiv.org/abs/2609.02882, proves the optimized
proportion via a Hilbert-space inequality. The first paper
extends to primitive Dirichlet L-functions at its own scope.
Neither result gives a zero-exclusion theorem, an operator
identifying our causal mixed kernel with Weil's form, or the
complete signed all-positive-rate Mobius/Liouville bound.
These are external precedents compared, not imported theorems.

If "Putnam counting" means Putnam's inequality for hyponormal
operators, that is a self-commutator/planar-spectrum-area bound,
not a ready zero-counting or cusp identification. No operator
meeting its precise hypotheses and transporting the original
signed causal source has been constructed in this increment.

The existing source `DyadicMarkedSignGauge.lean` also warns
that unmarked spectral conjugation loses arithmetic sign labels.
Any spectral or bundle map must keep the original marks,
squareful zeros, full ordered cross interactions, and residuals.

## Exact remaining arithmetic target

For the original Mobius endpoint, the repository's
`PickupDyadicEndpoint.dyadicBirthSum` still requires

    for all delta>0 there exists C_delta>=0 such that
    for all j, dyadicBirthSum(j) <= C_delta*2^(delta*j).

The existing quarter-unit endpoint curvature allowance and
good-scale RH implication are separate source proof candidates.
For Liouville's double-Abel route, the complete
Omega-weighted SIGNED rectangular average likewise needs an
independently derived one-sided all-rate budget; pointwise
kernel positivity is not sufficient. The older review shows
that uniform rectangle sup bounds already encode two-sided
RH-strength Liouville summatory estimates through p=1,3.

Next formalization gate: derive `KernelTailIdentity` from (B)
by an exact `Finset` lattice/range conversion, and verify
the complete Lean source and imported dependencies. Next
arithmetic gate: prove cancellation on the COMPLETE weighted
signed source, not by imposing an unrestricted budget field.

Pinned toolchain: Lean v4.34.1;
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Root imports and dependency pins unchanged; no host runner,
scheduler, native verification or proof admission dispatched.
