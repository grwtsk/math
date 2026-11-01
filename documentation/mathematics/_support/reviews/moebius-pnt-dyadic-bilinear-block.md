# Actual Möbius signed causal dyadic bilinear estimate from PNT

grwtsk contributors — 2026-10-31. This is a complete mathematical argument for a relative o(1) block saving using the established Prime Number Theorem, not RH. Lean scripts remain source candidates; three source bridges are OPEN and all native acceptance facets NOT_RUN by user deferral.

## Original object and arithmetic input

The unchanged source is mu(n)=(ArithmeticFunction.moebius n : Z), the literal causal pickupResponseGram K_T(m,n), and full signed ordered block

B_(M,N)(T)=sum_(M<m<=2M,N<n<=2N,m,n<=floor exp T) mu(m)mu(n)K_T(m,n).

All squareful zero coefficients and birth cutoffs are retained. The independent established PNT is equivalent to M(x)=sum_(n<=x)mu(n)=o(x). The direct primary sources are Manuel Eberl's formal theory Moebius_Mu_Sum, https://isa-afp.org/browser_info/current/AFP/Prime_Distribution_Elementary/Moebius_Mu_Sum.html and Andrew Granville, The prime number theorem, Theorem 1.10, https://dms.umontreal.ca/~andrew/PDF/Pretentious010611.pdf . No verified Mathlib PNT transfer is claimed here.

Define eta(N)=(1/N) max_(N<=y<=2N)|sum_(N<n<=y)mu(n)|. PNT gives eta(N)->0, uniformly over dyadic prefix endpoints, by subtracting two o(N) Mertens prefixes.

## Exact kernel Abel proof

For each positive m and T>=0, K_T(m,n) is nonnegative and nonincreasing in positive n by the unchanged response positivity and index antitonicity. Finite Abel summation of the inner block, including the clipped terminal cutoff, yields

|sum_(N<n<=min(2N,floor exp T))mu(n)K_T(m,n)| <= eta(N)*N*K_T(m,N+1).

The proof expands the weighted sum as the last Möbius prefix times the last kernel value plus partial prefixes times successive nonnegative kernel differences. Their total weight is the first kernel value. No signed term is absolutized before that Abel rearrangement.

The original estimate is K_T(m,n)<=4T/sqrt(mn), stated in MoebiusEndpointGapLocalization.pickupResponseGram_le_four_time_invSqrt. Since |mu(m)|<=1 and there are at most M outer indices, the complete real signed rectangle satisfies

|B_(M,N)(T)| <= 4*eta(N)*T*sqrt(M*N).     (B1)

This holds for every M,N>=1 and T>=0. The rate loss eta(N)->0 is genuine independent arithmetic cancellation from PNT, not a geometric count, but is much weaker than the RH-strength square-root exponent and does not settle the global endpoint energy.

## Residual exclusions paid explicitly

Define residualRectangle by keeping the same original ordered block only when m!=n, its gap is not in the predetermined sparse A, and the pair is neither a doubling nor tripling edge in either orientation. Relative to the full block, each fixed m excludes at most:
- one diagonal n=m;
- two neighbors per distance in A (2|A|);
- two ratio-two neighbors n=2m or 2n=m;
- two ratio-three neighbors n=3m or 3n=m.

Thus at most 2|A|+5 removed neighbors per row. The literal Gram bound and |mu(n)|<=1 price the entire deleted signed packet in absolute value by 4T(2|A|+5)sqrt(M/N). Consequently,

residualRectangle(A;M,N;T)
 <=4 eta(N) T sqrt(MN)+4T(2|A|+5)sqrt(M/N).   (B2)

The original diagonal is not discarded for free. Both orientations and all terminal births are retained and paid. In balanced blocks M=N=X, the bound becomes 4 eta(X)TX+4T(2|A|+5), which has a relative saving when X tends to infinity and |A|/X tends to zero. For the fixed dyadic gap schedule |A(T)|<=T+1, this holds along X>>T; there is no uniform saving for small X.

## Verification, nonclaims, and next obligation

The Lean source MoebiusPNTDyadicBilinearBlock.lean names OriginalMobiusPNTBilinearBridge, DyadicMobiusPNTDecay, and ResidualRectangleExclusionCost as OPEN propositions. The conditional final transfer is not an unconditional Lean proof of PNT, Abel summation or excluded-edge counts. Mathematically (B1)-(B2) follow from an established PNT and the stated exact kernel inequalities. Compilation, expected interfaces, fresh replay and axiom audit remain NOT_RUN, no native jobs dispatched.

No all-positive-rate full covariance bound or RH proof follows. Summing all dyadic blocks may still incur an exponent-one loss; a global block cover and complete signed complementary accounting are not claimed. The original endpoint quadrature error remains exactly +1/4.

Single next proof task: formalize the Abel/PNT bridge with a pinned source of M(x)=o(x), then source-prove the finite 2|A|+5 excluded-edge count; only after both can a fully costed original global block cover be attempted.
