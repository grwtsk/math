# Literal causal convexity, positive integrated mixed differences and finite kernel telescope

Local mathematical attribution: grwtsk contributors.  Research date: 2026-10-31.

Source-level verification: `SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN`. No mathematical RH conclusion is asserted.

## Pinned source and scope

Original `GRWTSK.RiemannHypothesis.CCC.pickupResponse` in `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean`, blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`. Earlier source module `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleDoubleAbelCausalKernel.lean`, blob `b102b4af07b0a1001424b084101c2cc16077181a`. Unchanged signed source from `LiouvilleCausalEnergyTarget.lean`, blob `a00aaa07c067b4c88203372870b5d5d151de0de4`.

An additive Lean module supplies proof scripts for actual response positivity, discrete monotonicity, integer-index midpoint convexity, mixed integrand nonnegativity, integral linearity, integrated mixed kernel positivity, both terminal faces, and the literal `KernelTailIdentity` without any arithmetic supplier.

## 1. Actual response is discretely convex on positive source labels

For every real `u`, and positive integer `n`, the original birth rule is equivalent to

`r_n(u) = 2 max( 1/sqrt(n) - exp(-u/2), 0 )`.

For `a=sqrt(n)`, `b=sqrt(n+1)`, `c=sqrt(n+2)`, one has `2 b^2=a^2+c^2`, so `a+c<=2b` and `2ac<=b(a+c)`. Therefore `2/b<=1/a+1/c` by division through positive denominators. The maximum of this convex reciprocal-root sequence with a constant is convex; thus

`2*r_(n+1)(u) <= r_n(u)+r_(n+2)(u)` and `r_(n+1)(u)<=r_n(u)`, with `r_n(u)>=0`.

**Important exact-source constraint:** at integer zero, the imported `pickupResponse 0 u` is NOT the positive response: `log 0=0`, `(sqrt 0)^(-1)=0`, and for `u>=0` it evaluates to `-2 exp(-u/2)`. Consequently the generic convexity lemma must NOT be applied to the entire `n:Nat` array without an explicit positive-index restriction. The new mixed-integrand proof uses only its actual positive indices p,p+q,p+1; it does not assert a false theorem at zero.

## 2. Original integrated mixed difference

At positive p,q and any real time, the signed four corners of the actual response are

`I(p,q,u)=r_p r_(p+q)-r_(p+1) r_(p+q+1)-r_p r_(p+q+1)+r_(p+1) r_(p+q+2)`.

Writing `d_n=r_n-r_(n+1)` produces

`I(p,q,u)=d_p d_(p+q)+r_(p+1)(d_(p+q)-d_(p+q+1)) >=0`.

All products are original causal responses; continuous interval integrability justifies linearity of the four integrals. Therefore for T>=0,

`Omega_T(p,q)=integral_0^T I(p,q,u)du >=0`.

No artificial probability, prime independence or spectral positivity premise is inserted.

## 3. Closed double telescope with zero terminal faces

For any abstract real kernel `K(p,q)` on positive integer pairs and m,g<=N, the full forward mixed difference obeys

`sum_{p=m}^N sum_{q=g}^N [K(p,q)-K(p+1,q)-K(p,q+1)+K(p+1,q+1)] = K(m,g) - K(N+1,g) - K(m,N+1)+K(N+1,N+1)`.

For the actual causal `K_T(p,q)=W_T(p,p+q)` and T=log N, every response with index >N vanishes throughout [0,T]. Thus `K_T(N+1,q)=K_T(p,N+1)=0`, leaving exactly `K_T(m,g)`.

After changing the original `Finset.Icc 1 N` filtered product tail to two closed intervals, this discharges the *named* previous `KernelTailIdentity N` and removes that analytic premise from `positiveGapAggregate_eq_rectangles` (source proof candidate, NOT_RUN). The original signed triangular support is retained separately through the `signedPair` mask; no term on the terminal face contributes.

## 4. A simpler polynomial kernel moment bound, still pending Lean proof

The earlier source review gave a sharper analytic estimate

`sum_{p,q} sqrt(pq)*Omega_T(p,q) <= T^3/3+4T^2+7T`.

A less intricate *fully analytic* argument supplies another polynomial suitable for the all-positive-rate consumer:

`sum_{p,q} sqrt(pq)*Omega_T(p,q) <= 4T(1+T)^2`, T=log N, N>=2.

Proof: all Omega weights are nonnegative. For each positive p,

`sqrt(p) <= sum_{m=1}^p 1/sqrt(m)`

because each summand is at least `1/sqrt(p)` and `p/sqrt(p)=sqrt(p)`. Multiply for p and q, then exchange the finite sums. The exact zero-terminal double telescope yields

`sum_{p,q} sqrt(pq)*Omega_T(p,q)
 <= sum_{m,g<=N} W_T(m,m+g)/(sqrt(m)*sqrt(g))`.

On the physical interval [0,T], the unchanged causal weights satisfy `0<=r_n(u)<=2/sqrt(n)`. Therefore

`W_T(m,m+g) <= 4T/(sqrt(m)*sqrt(m+g)) <= 4T/(sqrt(m)*sqrt(g))`.

It follows that the double sum is at most

`4T (sum_{n=1}^N 1/n)^2 <=4T(1+log N)^2=4T(1+T)^2`.

This polynomial bound has the same crucial **no-power-of-N** property as the previous sharper polynomial and requires only standard finite-sum Fubini, zero boundaries, response bounds and the Mathlib harmonic theorem `harmonic_le_one_add_log`. It does not use Chowla or any correlation assumption. **The new Lean module has not encoded or proved either polynomial moment bound; it retains `PolynomialKernelMoment` as an open `Prop` and a conditional consumer.** A subsequent formal increment must prove the coarse polynomial first, then the sharper constant if useful. The analytical argument is not claimed as Lean acceptance.

## 5. Remaining exactly arithmetic supplier

After the unconditional analytic structure has been checked, one still needs an arithmetic upper bound for the *complete signed* `Omega`-weighted rectangle average. A uniform square-root bound on every rectangle is not a weak substitute: the p=1 and p=3 Liouville rows recover both signs of the RH-strength Liouville summatory bound, as established in the previous source review. The desired new method must exploit joint weighted cancellation without granting that premise.

## Evidence and authority

New declarations use the original source and do not add axioms, `sorry`, `admit`, new probability laws, local Git changes, or native verifier dispatches. All source proofs are **candidate scripts**, not kernel-accepted terms. The local shared Git lock and user-local `LiouvilleWeightedCyclicEnergy.lean` remain untouched and uninspected. The mathematical source, verification gate and any future arithmetic estimate retain separate identities and status.