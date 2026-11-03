# Actual Möbius odd-prime doubling: an unconditionally nonpositive dense covariance packet

**Byline:** grwtsk contributors. **Date:** October 31, 2026.
**Scope:** original Möbius coefficients, literal causal response Gram, the fixed dyadic sparse distance schedule, both ordered orientations, exact quarter-unit endpoint error. The mathematical packet sign is unconditional. Lean scripts are source-proof candidates with compilation, expected types, fresh kernel replay and transitive axiom audit NOT_RUN under user deferral. No RH claim.

## 1. Explicit nonzero prime-indexed dense subpacket

The preselected schedule is A(T)={2^j : 0<=j<=floor(max(T,0))}. For any odd prime p with 2p<=floor(exp T), the endpoints p and 2p belong to the unchanged endpoint inventory, and both are squarefree. Their additive gap equals p, never a power of two because p is an odd prime. Therefore both ordered pairs (p,2p) and (2p,p) lie in the original dyadic dense complement.

For general finite excluded-gap set A, the Lean source uses the exact finite selection:

    P_A(T)={p in endpointIndex(T) :
       Nat.Prime p, not (2 divides p),
       2*p in endpointIndex(T), p notin A}.

Define the original ordered signed packet

    N_A(T)=sum_(p in P_A(T)) [
       mu(p)mu(2p) K_T(p,2p)
       +mu(2p)mu(p) K_T(2p,p)].

For every odd prime p, complete multiplicativity of Möbius on coprime 2,p gives mu(2p)=-mu(p), with mu(p)=-1 and mu(2p)=+1. The original physical-time kernel is symmetric and nonnegative because each literal response r_n(u)>=0 and T>=0. Thus

    N_A(T) = -2 sum_(p in P_A(T)) mu(p)^2 K_T(p,2p)
            = -2 sum_(p in P_A(T)) K_T(p,2p) <= 0.    (P1)

This is a true source-specific sign saving for a GROWING number of nonzero signed correlations, not a finite fixed-pair bound. Its all-positive-rate upper allowance is exactly zero: for every epsilon>0, choose C_epsilon=0 and R_epsilon=0.

The packet is nontrivial: p=3 has gap 3 and endpoints (3,6). At every T>log 6, r_3(u) and r_6(u) are simultaneously strictly positive on a nonempty subinterval (log 6,T); hence K_T(3,6)>0 and this pair contributes strictly negatively. For T≥log6 the pair satisfies cutoff membership, with zero boundary at equality. The sign assertion does not require a pointwise cutoff supremum or an arithmetic estimate on other primes.

## 2. Exact separation and surviving complement

Let X(T)=pickupCross(T) and S_A(T)=endpointGapSetCross A T. The previous source proves X(T)=S_A(T)+C_A(T), with C_A(T)=signedGapComplement A T, including all original ordered off-diagonal pairs and actual Möbius coefficients.

Set

    R_A(T)=C_A(T)-N_A(T).

Then exactly, with no discarded terms,

    X(T)=S_A(T)+N_A(T)+R_A(T).                       (P2)

The remainder R_A is a signed packet, not assumed small. It represents all unestimated terms after removing the specifically enumerated prime-doubling ordered pairs. The current Lean source defines it by exact subtraction; a pairwise filtered-set bijection for this remainder is not separately proved. Because N_A≤0, the inherited exact quarter-unit endpoint comparison yields

    endpointSum(T) <= |S_A(T)|+R_A(T)+1/4.            (P3)

The packet's negative sign can be dropped ONLY in this one-sided upper comparison. No claim that N_A has small absolute value, that R_A is nonpositive, or that the full dense complement obeys an all-positive-rate estimate is made. For the specific dyadic A(T), its cardinality is already known to be subexponential; charging the previously proved sparse upper estimate still requires its explicit original diagonal and elementary exponential absorption premises. The original zero contribution from nonsquarefree endpoints remains zero, not moved into a signed saving.

## 3. Mathematical novelty and limitations

The sign mechanism is special to actual Möbius: mu(p)mu(2p)=-1 on odd primes. It fails for the all-positive multiplicative fixture. The original causal Gram is positive for overlapping births; using this positivity only on the chosen packet gives a negative semidefinite upper contribution and a **zero** all-rate bound for that portion.

This is nonetheless a geometrically selective saving, not the desired dense-core resolution. The rest of the squarefree-to-squarefree packet contains exponentially many potential ordered pairs. Its one-sided signed upper bound remains open, and the exact reduction P2 is not by itself less RH-strength than the original endpoint criterion unless R_A receives a genuinely independent arithmetic estimate. The calculation cannot be generalized to arbitrary ratios without accounting for Mobius zeroes, prime-coprimality and orientation overlap.

## 4. Source and verification

Direct sources:
- `MoebiusDenseSquarefulZeroPacket.lean`, observed blob `94e2e276ca071b5965d10e34476ccfda4e4c2180`, exact dense squarefree reconstruction.
- `MoebiusDenseSignedGapComplementFrontier.lean`, observed blob `61d626c267fa11f1b6e53a9837076cc4c6e039a0`, dyadic schedule and one-sided quarter-unit return.
- `MoebiusEndpointLeastPrimeTypeII.lean`, observed blob `fb77710105395da0394c930ef702b893f2f2f87f`, theorem `moebiusReal_prime_mul_of_not_dvd`.
- `LiouvilleDoubleAbelAnalyticGates.lean`, exact original `pickupResponse_nonneg_positive` for all positive indices.

New candidate: `GRWTSK.NumberTheory.MoebiusOddPrimeDoublingNegativePacket`, providing `oddPrimeDoublingIndices`, `oddPrimeDoublingPacket`, `moebius_two_mul_odd_prime`, `pickupResponseGram_nonneg`, `pickupResponseGram_symmetric`, `oddPrimeDoublingPacket_nonpos`, `remainingDenseSignedPacket`, `denseComplement_eq_negativePacket_add_remainder`, `endpointSum_le_sparse_and_remaining`, and `endpointSum_le_dyadic_remaining`.

No compilation, native test, expected-interface check, fresh kernel replay or transitive axiom audit has run. These statuses are NOT_RUN, not passed. The original kernel/cast APIs and all unestimated complementary terms are preserved. No dependency pin/root import change and no native job dispatched.

**Single next bounded arithmetic obligation:** extend the controlled negative packet from prime doubles (p,2p) to a disjoint family of coprime prime-factor transfers (n,2n), explicitly pricing the positive and negative Möbius signs and avoiding overlap with the dyadic sparse sector; retain an exact residual finite-pair partition and measure how many nonzero correlations can be controlled without reintroducing an RH-strength assumption.
