# Source-exact distinct-prime overlap and physical-time covariance reconstruction

**Attribution:** grwtsk contributors.
**Disposition:** proved mathematical identities; source-level Lean candidate for finite arithmetic and Gram reconstruction; the actual physical-time integral identifications remain explicit open premises. Compilation, expected-interface checks, fresh kernel replay and transitive axioms: NOT_RUN. No arithmetic gain or RH completion.

**Source:** `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvillePrimeOverlapReconstruction.lean` (published candidate; source blob bound by verification target).
**Imports:** `LiouvilleSignedBuchstabTypeII.lean`, blob `c2de5cb221f03ff5792de4d29b104912e79d4771`; inherited `LiouvilleGrowingPrimeBandIdentity.lean`, blob `477ca1d19b634a09e8d5c1e38e8035798bb0ef37`, and original `LiouvilleCausalEnergyTarget.lean`, blob `a00aaa07c067b4c88203372870b5d5d151de0de4`. The original causal response is `CCC.pickupResponse` in `MertensPrimitive.lean`, blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`.

## 1. Exact overlap parametrization

Let p and q be distinct primes, a,b nonnegative integers and p a=q b. Since gcd(p,q)=1, Euclid's lemma gives q|a, so a=qk. Substitution and cancellation of q>0 yields b=pk. Conversely every k gives equality.

    p*a=q*b  iff  exists k>=0: a=q*k and b=p*k.

On the original positive-index domain, k>=1. If pa=qb<=N, then pqk<=N, exactly k<=floor(N/(pq)); for N<pq this is empty. All k divisible by p or q remain included. Hence the distinct-prime p!=q shared-index diagonal is

    sum_(1<=k<=floor(N/(pq)))
      w_p w_q lambda(qk)lambda(pk) K_T(pqk,pqk)
      = w_p w_q sum_(1<=k<=floor(N/(pq))) K_T(pqk,pqk),

because lambda(qk)lambda(pk)=lambda(p)lambda(q)lambda(k)^2=+1.
This holds even for p^r q^s | pqk and arbitrary other squareful factors. No squarefree restriction, coprimality condition on k, or deletion of birth endpoints is allowed.

The published Lean source contains a candidate `distinct_prime_shared_index` using `Nat.coprime_primes`, Euclid's lemma and natural-number cancellation, and `shared_index_sign` referencing the existing original Liouville multiplicativity candidate. The finite floor-parametrized summation equality has not yet been discharged in Lean.

## 2. Two different covariances must not be conflated

Fix T>=0 and N=floor(exp T), a finite prime band P with nonnegative w_p, W=sum_p w_p, and original causal response r_n(u). Define

    F(u)=sum_(1<=n<=N) lambda(n) r_n(u)
    D_P(n)=sum_(p in P,p|n) w_p
    G_P(u)=sum_(1<=n<=N) lambda(n) D_P(n) r_n(u).

For u in [0,T] the fixed cutoff N equals the full dynamic birth-limited sum because r_n(u)=0 when n>exp u; at u=log n the weight is zero. This holds for every n>=1, including n=1. The response is 0 for u<log n. The source theorem `pickupResponse_before_birth` states the strictly-before-birth case. Uniform-in-u cutoff and endpoint equality remain Lean verification obligations.

The original prime-delay identity gives

    sum_(p in P) (w_p/sqrt p) F(u-log p) = -G_P(u).

The source's `weightedDelayedCovariance` is a MIXED quantity

    C_P(T)=sum_p (w_p/sqrt p) integral_0^T F(u)F(u-log p)du
          =-integral_0^T F(u)G_P(u)du
          =-[M_diag(P,T)+M_off(P,T)],

where

    M_diag=sum_(n<=N) lambda(n)^2 D_P(n) K_T(n,n),
    M_off=sum_(n,m<=N,n!=m) lambda(n)lambda(m)D_P(m)K_T(n,m).

This identity retains every ordered signed mixed term. M_off is generally NOT a symmetric weighted packet termwise; only the symmetric full integral permits pair interchange. The Lean theorem `originalMixedGram_eq_diagonal_add_offDiagonal` is the finite algebraic split. Its integrated return `weightedDelayedCovariance_eq_negative_mixed_of_bridges` visibly consumes `hDelay` and `hGram`. Neither premise is an axiom or independently established Lean theorem.

The squared selected-prime packet is a distinct object:

    ||G_P||² = D_shift(P,T)+T_II(P,T),

where

    D_shift=sum_(n<=N) lambda(n)^2 D_P(n)^2 K_T(n,n),
    T_II=sum_(n,m<=N,n!=m)
                   lambda(n)lambda(m)D_P(n)D_P(m)K_T(n,m).

Expanding D_P(n)D_P(m) recovers the complete p,q-tagged ordered sum with pa!=qb. The p=q and distinct p!=q shared indices are ALL in D_shift. For p!=q the diagonal has the k-parametrization above. The Lean source supplies the finite original-index reconstruction and `tagOverlapDiagonal_eq_divisorDiagonal`, which sums all (p,q) label overlaps, but does not yet prove the full shifted-pair Finset.sum_bij equality.

Combining the exact waveform relation R_P=W F-G_P with these packets gives

    uncoveredEnergy(P,T) =
      W² H_lambda(T) + 2 W C_P(T) + D_shift(P,T) + T_II(P,T).

No covariance is independently bounded in this equality.

## 3. Causal support, boundary and integrability argument

For every positive integer n,

    r_n(u)=2 max(n^(-1/2)-exp(-u/2), 0).

This is a continuous function of u: its two branches meet at u=log n, where its value is exactly 0. Its support is contained in [log n,infinity). For T>=0 and n>floor(exp T), u<=T implies u<log n, hence r_n(u)=0. Thus the finite sum at N and the original dynamic waveform agree throughout [0,T], including the last zero-width birth cell when exp T is integral. A shift F(u-log p) vanishes for u<log p; repeated prime powers are still present after reindexing m=pn.

Finite products r_n r_m are continuous and interval-integrable on [0,T]. Consequently multiplying finite sums and interchanging finite sums with physical-time interval integration is valid. The exact finite Gram kernel is

    K_T(n,m)=integral_0^T r_n(u)r_m(u)du.

The full source identities above therefore follow mathematically with no auxiliary regularization or exceptional collars. The Lean source additionally supplies `integrate_finite_double_sum`, `finite_mixed_integrand_expand`, and `finite_mixed_integral_eq_originalGram_of_integrable`; these prove the actual finite mixed-gram interchange once interval-integrability of each displayed response product is supplied. However, the Lean file only proves strictly-before-birth response by unfolding the literal conditional, and retains the fully quantified `PhysicalTimeGramBridge` and `PrimeShiftSquareBridge` as named open propositions. Its final mixed-covariance theorem is conditional on two explicit analytic premises `hDelay` and `hGram`. There is NO fresh Lean acceptance for cutoff equality, response continuity, interval-integrability itself, the candidate finite-sum interchange theorem, or exact time-shift reindexing at this source revision.

## 4. Exact paid costs and open arithmetic

For T>=0 the original diagonal D(T)<=4T+2T², and nonnegative weights give

    0<=D_shift(P,T)<=W² (4T+2T²).

The mixed diagonal has a sign *minus* in C_P=-M_diag-M_off and obeys
0<=M_diag<=W (4T+2T²). These allowances are independently subexponential after normalizing by W or W², provided W>0.

The rough/source terms and repeated-prime sector of the first-selected-prime Buchstab partition remain as in the predecessor review. In particular the unsifted absolute energy allowance 16(exp T-1) is too large to infer all-positive-rate growth. The full signed mixed M_off and squared T_II packets are distinct. Bounding one by Cauchy--Schwarz from H_lambda would be circular and no positive arithmetic saving is supplied by this decomposition.

A direct signed arithmetic supplier must control the actual weighted off-diagonal packets with cutoffs, prime-band coverage, and uniform constants proved independently of the original energy target. It may not infer a Type II estimate from the inverse-band norm comparison. The finite-prime and reciprocal-summable-prime countermodels block replacing actual arithmetic cancellation by complete multiplicativity and delay signs alone.

## 5. Independent check and remaining bridge

A hostile all-positive multiplicative source preserves the same combinatorial shared-index identity but yields no signed cancellation, proving that the new finite algebra is not itself an arithmetic saving. No claim that fixed-shift Chowla or entropy decrement provides the missing uniform source estimate is made.

**Single next bounded proof obligation:** prove interval-integrability for each literal `pickupResponse n * pickupResponse m` product and apply the candidate `finite_mixed_integral_eq_originalGram_of_integrable` with the original fixed/dynamic-cutoff support identity to discharge `PhysicalTimeGramBridge`. Then discharge `PrimeShiftSquareBridge` and the integrated mixed prime-delay equality with exact p,q support. Full kernel/axiom verification stays NOT_RUN until actual receipts exist.
