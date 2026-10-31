# Exact selected-prime partition and Liouville causal delayed covariance

**Attribution:** grwtsk contributors. **Date:** October 31, 2026.
**Status:** complete mathematical one-prime delay derivation; finite-band Lean source candidate; conditional integrated covariance Lean candidate. Full Lean proof of `PrimeDivisorWaveformIdentity` and the finite delayed-integral interchange remain **OPEN**, and compilation, expected types, fresh kernel and axioms remain **NOT_RUN**. No RH or all-positive-rate cancellation claim.

**Main source:** `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvillePrimeDelayIntegratedReturn.lean`.
**Upstream:** `LiouvilleGrowingPrimeBandIdentity.lean` blob `477ca1d19b634a09e8d5c1e38e8035798bb0ef37`; `LiouvilleCausalPhysicalGramIntegrability.lean` blob `e23f62fc60ce5867e4c183117162c59ff4989b6f`; `LiouvillePrimeOverlapReconstruction.lean` blob `47228aca1eb9cdacae84d90974f2b2245674725e`; literal `CCC.pickupResponse` in `MertensPrimitive.lean` blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`.

## 1. Exact one-prime identity, mathematical proof

Let `p` be prime, `u` any real number, `k>=1`.
Original weight: `r_n(u)=2 max(n^(-1/2)-exp(-u/2),0)`, equivalently the repository's exact piecewise response.

The birth inequalities are *exactly* equivalent:

    log(pk) <= u  iff  log k <= u-log p,

because `p,k>0` and `log(pk)=log p+log k`. On the active half-line,

    r_(pk)(u)=2((pk)^(-1/2)-exp(-u/2))
             = p^(-1/2) * 2(k^(-1/2)-exp(-(u-log p)/2))
             = p^(-1/2)r_k(u-log p).

Before birth both sides are zero, including the case `u<log p`. At birth both sides equal zero. No additive collar cost appears.

For actual completely multiplicative Liouville, `lambda(pk)=-lambda(k)` for **all k>=1**, without a condition `p ∤ k`; hence `k=p^a m` retains all repeated prime powers. The finite index map `k↦pk` is a bijection between positive `k` with `pk<=floor(exp u)` and positive integers `n<=floor(exp u)` divisible by `p`. The source conversion `pk<=exp u iff k<=exp(u-log p)` holds for any real u. At any integral birth, the terminal response is zero on both sides. Thus:

    sum_(1<=n<=floor exp u, p|n) lambda(n)r_n(u)
      =-1/sqrt(p) * F_lambda(u-log p).       (P)

This is a mathematical proof, **not** an assertion that the named Lean `PrimeDivisorWaveformIdentity` has yet been discharged.

## 2. Exact finite weighted band identity

Let `P` be any finite set of selected primes, `w` arbitrary real weights (no positivity needed for the identities) and define

    D_P(n)=sum_(p in P,p|n) w_p,
    U_P(n)=sum_(p in P,p∤n) w_p,
    W=sum_(p in P)w_p.

For every positive integer, including squareful integers and `n=1`,

    D_P(n)+U_P(n)=W.

Finite Fubini, with overlapping selected primes counted in both tags, gives

    G_P(u)=sum_n lambda(n)D_P(n)r_n(u)
          =sum_(p in P)w_p primeDivisorWaveform(p,u).

Using (P), the exact source identity follows:

    W F_lambda(u)+sum_(p in P)w_p/sqrt(p) F_lambda(u-log p)
      = R_P(u),

where `R_P` is the *complete signed uncovered waveform*. Nothing is taken termwise absolute, and all unsifted integers remain.

The new Lean source candidate provides `selected_add_uncovered_eq_bandMass`, `primeDivisorWaveform_eq_filter`, `selectedWaveform_eq_primeSum` and `growingBandWaveform_of_primeDelay`. The latter is intentionally conditional on the original open `PrimeDivisorWaveformIdentity`.

## 3. Complete integrated covariance, with explicit Lean bridge

For `T>=0`, let `K_T(n,m)=integral_0^T r_n r_m` and `G_P(u)=sum_n lambda(n)D_P(n)r_n(u)`. From (P) and finite sum integration,

    C_P(T)=sum_(p in P)w_p/sqrt(p)
                 integral_0^T F_lambda(u)F_lambda(u-log p)du
          =-integral_0^T F_lambda(u)G_P(u)du
          =-[M_diag(P,T)+M_off(P,T)],

where

    M_diag = sum_(n<=floor exp T)lambda(n)^2 D_P(n)K_T(n,n),
    M_off = sum_(n,m<=floor exp T,n!=m)
               lambda(n)lambda(m)D_P(m)K_T(n,m).

This is a **mixed** Gram, not the squared selected-prime Type II norm. Both ordered orientations and all repeated prime powers remain.

The predecessor `mixedPhysicalGram` now contains the source-level physical-time integral comparison. The new Lean theorem candidate `weightedDelayedCovariance_eq_negative_complete_mixed` consumes explicit `hPrime : PrimeDivisorWaveformIdentity`, `hP : ∀p∈P, Nat.Prime p`, and `hInt` (the complete weighted delayed covariance / finite integral interchange identity). Neither `hPrime` nor `hInt` is proved by this theorem, and neither is an axiom. In the mathematical proof, finite continuity and bounded-time integrability justify the interchange. In Lean, the precise fixed/dynamic support reindexing and this integral conversion remain formalization obligations.

## 4. Hostile checks and research use

For `P=∅`, `D_P=U_P=W=0`; all equalities reduce to zero. For `n=1`, all prime divisibility sums vanish, preserving the unit term in the uncovered waveform. For `n=p²k`, the prime tag is counted once (divisibility, not valuation), while complete multiplicativity retains `lambda(p²k)=lambda(k)`. For `p,q∈P` distinct and `n=pqk`, both tags occur, as required for the positive diagonal in the squared shifted-packet decomposition. There is no coefficient-level prime independence or squarefree deletion.

The finite partition and full covariance identity expose a precise analytic source return. They do not prove a signed Type II, rough-complement, Omega-weighted rectangle, or all-positive-rate bound. In fact the previously proved uniform band norm comparison shows that a residual-norm estimate alone is no simpler than the original energy target.

**Next bounded proof obligation:** close the actual `PrimeDivisorWaveformIdentity` in Lean from (i) the scalar `r_(pk)` scaling and (ii) the finite multiple-index bijection, then prove the finite `weightedDelayedCovariance` interchange using the literal response's interval-integrability already supplied by the predecessor. Verify exact interfaces and source dependencies only with separately authorized replay.
