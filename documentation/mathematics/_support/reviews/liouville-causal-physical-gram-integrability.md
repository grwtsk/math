# Literal Liouville causal births, integrability and physical-time Gram

**Attribution:** grwtsk contributors. **Date:** October 31, 2026.
**Disposition:** complete primary mathematical argument and source-proof-candidate Lean scripts. The exact original all-positive-rate energy target remains open; no new arithmetic cancellation, RH result, or kernel-verified claim.

**New source:** `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleCausalPhysicalGramIntegrability.lean`.
**Direct predecessor:** `LiouvillePrimeOverlapReconstruction.lean`, observed blob `47228aca1eb9cdacae84d90974f2b2245674725e`.
**Original causal source:** `CCC.pickupResponse` from `MertensPrimitive.lean` (blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`). **Original Liouville coefficient:** `LiouvilleCausalEnergyTarget.lean`, blob `a00aaa07c067b4c88203372870b5d5d151de0de4`.

## 1. Birth continuity, with the original weights

For every positive integer n, the actual source is

    r_n(u)= if log n <= u then 2[(sqrt n)^(-1)-exp(-u/2)] else 0.

At u=log n, the two branches agree exactly:
exp(log n)=n, sqrt(exp(log n))=exp(log n/2), and
exp(-log n/2)=1/sqrt n. Hence r_n(log n)=0.
Each branch is continuous in u, and the agreement at the threshold
proves the ENTIRE original piecewise response continuous on R.
Neither a modified max response nor an almost-everywhere substitute
is used. For positive n,m, the product r_n*r_m is continuous on R,
therefore interval-integrable on every bounded interval [0,T].
Multiplying by the constant actual Liouville coefficients and selected
prime-divisor weights preserves integrability.

The Lean candidate names are `pickupResponse_birth_zero`,
`pickupResponse_continuous`, `pickupResponse_product_intervalIntegrable`
and `original_mixed_term_intervalIntegrable`. They use
`Real.exp_half`, `Real.exp_log`, `Continuous.if_le`,
`Continuous.intervalIntegrable` and `IntervalIntegrable.const_mul`.
Mathlib API references were inspected, but compilation has NOT_RUN.

## 2. Exact fixed/dynamic support and birth collar

Fix any real u<=T. Put N_u=floor(exp u), N_T=floor(exp T).
Monotonicity of exp and natural floor gives N_u<=N_T.
If a positive integer n lies in (N_u,N_T], then

    exp u < N_u+1 <= n,

by the strict natural floor inequality. Consequently
u<log n, so the ORIGINAL response r_n(u)=0.
It follows by finite sum inclusion that

    sum_(1<=n<=N_u) lambda(n)r_n(u)
       =sum_(1<=n<=N_T) lambda(n)r_n(u).

This proof works even if exp T is an integer, when the terminal
n=exp T has exactly zero response at u=T. No boundary collar,
squareful integer, repeated prime, negative Liouville sign, or
unsifted integer is removed.

The Lean source candidates `pickupResponse_zero_of_floor_lt`,
`waveform_eq_fixed_of_le`, and `causalCutoffIdentity` encode
the strict support inequality and the complete source equality.

## 3. Both Gram identities, at their different exact scopes

Let S_T={1,...,floor(exp T)}, a_n=lambda(n),
d_n=sum_(p in P,p|n)w_p, K_T(n,m)=integral_0^T r_n*r_m.
The selected-divisor waveform is G_P(u)=sum_(n in S_T)a_n d_n r_n(u).

The SQUARED identity is

    integral_0^T G_P(u)^2 du
      =sum_(n,m in S_T) a_n d_n a_m d_m K_T(n,m).     (S)

It is exactly the prior named `PhysicalTimeGramBridge` (whose original
RHS is a square of the selected waveform). The source derives (S)
through a finite double-sum interchange justified by termwise
continuous-product integrability, with no cutoff hypothesis.

The MIXED identity is different:

    integral_0^T F_lambda(u) G_P(u) du
      =sum_(n,m in S_T) a_n a_m d_m K_T(n,m).          (M)

The actual dynamic waveform F_lambda is replaced on [0,T]
by its exact fixed inventory from the preceding support theorem.
The source candidate `mixedPhysicalGram` derives (M) from
`original_fixed_mixed_integral_eq_gram` and the cutoff identity.
The finite sum interchange uses the already written predecessor
`integrate_finite_double_sum`.

No sign is changed in either identity. The original selected-prime
diagonal and complete ordered off-diagonal survive, and (M) is NOT
mistaken for the squared shifted-prime Type II packet (S).

## 4. Scope and remaining work

The mathematical proof establishes (S) and (M) for every finite prime
band P, arbitrary real weights, and T>=0. In fact, fixed-inventory
integration is valid for any real T; T>=0 is used when identifying
the original energy over physical nonnegative time. Neither theorem
needs a covariance estimate or an RH-strength arithmetic supplier.

The final prime-delay step is still open: in Lean prove for every
prime p the exact identity

    sum_(n:p|n,n<=exp u)lambda(n)r_n(u)
      =-p^(-1/2)F_lambda(u-log p),

including shift support and repeated powers. Integrating this identity
against F yields the *existing* `weightedDelayedCovariance`
and allows its full signed mixed-diagonal / off-diagonal return.

No claims are made that the new scripts have elaborated, compiled, passed
expected-interface checks, been freshly kernel replayed, or audited for
transitive axioms. All are NOT_RUN. The mathematical proof is independent
of source proof acceptance. No verification jobs were dispatched.
