# Rate-independent sublinear masks for the actual compensated Möbius endpoint

Local mathematical attribution: grwtsk contributors.
Research date: 2026-11-02 (America/Los_Angeles).
Status: exact source-ledger and endpoint-consumer Lean proof CANDIDATES; mathematically justified subexponential scalar reduction; the finite numerical gcd reindex, mask/cardinality/weak scalar APIs, native Lean compilation, fresh kernel and transitive axiom audit remain NOT_RUN. The complete signed core and RH remain UNPROVED.

## 1. Immutable original source

Let N(T)=floor(exp T), T>=0. The actual source is the original ordered off-diagonal Möbius causal Gram

  X(T)=sum_(1<=m,n<=N(T),m!=n) mu(m)*mu(n)*K_T(m,n),

with BOTH ordered orientations, K_T(m,n)=integral_[0,T] r_m(u)*r_n(u) du and original birth-gated r_n. It is not an arbitrary signed matrix, a Liouville surrogate, or a prime-modulus reindexing. Keep the original high-high strong mask, physical energy threshold, squareful zeros and original diagonal.

The prior published source `MoebiusCompensatedPrimitiveEndpoint.lean` (blob `95879b75037cca9b4fafabd517df2a988eedc2af`) gives an exact partition for EVERY natural H,D:

  X(T) = G_gap(H,T)+W_weak(H,T)
       + C_signed(H,0,T)+I_incomparable_gcd<=D(H,0,T)
       + I_incomparable_gcd>D(H,0,T).

The endpoint quadrature has |E(T)-X(T)|<=1/4. The actual previous positive large-gcd absolute price is `largeGcdIncomparableAbsoluteCost` and is never silently replaced by a signed cancellation theorem. Its quantitative root-tail bound is a PINNED UNPROVED Lean target even though its finite arithmetic derivation is elementary.

## 2. Select both masks BEFORE epsilon

For every T>=0 put

  H_*(T)=floor(exp(sqrt T)),
  D_*(T)=max(1,floor(exp(T-sqrt T))),
  C_*(T)=C_signed(H_*(T),0,T)+I_incomparable_gcd<=D_*(T)(H_*(T),0,T).

These are deterministic, depend on neither the requested epsilon nor on observed mu signs. The exact original source identity is

  X(T)=G_gap(H_*,T)+W_weak(H_*,T)+C_*(T)+I_gcd>D_*(H_*,0,T).

The exact one-sided endpoint inequality is

  E(T)<=4*card(shortGapSet(H_*))*T^2
       +card(endpointIndex(T))^2*sqrt(q_N(T)*pickupDiagonal(T))
       +C_*(T)+largeGcdIncomparableAbsoluteCost(H_*,0,D_*,T)+1/4.

No extra arithmetic hypothesis is needed for these exact ledgers, beyond acceptance of their imported source constructions. New proof bodies are authored candidates only.

## 3. Source-specific quantitative payments

(a) Putnam: shortGapSet H is the finite positive additive-distance interval through H, so card(shortGapSet H)<=H. The original genuine Young/diagonal argument gives

  |G_gap(H_*,T)|<=4*H_*(T)*T^2<=4*T^2*exp(sqrt T).

(b) Weak: endpointIndex(T) has N entries; q_N=(N+1)^(-6); original diagonal <=2*T^2. Therefore

  N^2*sqrt(q_N*pickupDiagonal)
  <=sqrt(2)*T*N^2/(N+1)^3<=sqrt(2)*T.

No sign, frequency or geometry-only model has been inserted.

(c) Large gcd: the prior genuine squarefree/incomparable gcd reindex gives the elementary bound

  absoluteCost(H,0,D,T)<=16*T*N/D, D>=1.

For T>=4, exp(T-sqrt T)>=exp 2>2, so
  D_*(T)>=exp(T-sqrt T)/2, N<=exp T,
  N/D_*(T)<=2*exp(sqrt T).

Thus the ORIGINAL large-gcd absolute bill is <=32*T*exp(sqrt T). This holds for arbitrary original gap height H and after the same original strong physical mask; the proof drops the mask only to obtain an absolute upper. The gcd reindex/root-tail proof itself remains the existing UNPROVED Lean target.

Combining (a)-(c) for every T>=4:

  E(T) <= C_*(T) +
    (4*T^2+32*T)*exp(sqrt T) + sqrt(2)*T + 1/4.      (A)

The fixed source C_* is IDENTICAL for every epsilon.

## 4. Explicit all-positive-rate scalar theorem

Given any delta>0 and T>=max(4,4/delta^2), sqrt T <= delta*T/2. Elementary exp-series inequalities give

  T^2*exp(sqrt T) <= (8/delta^2)*exp(delta*T),
  T*exp(sqrt T)   <= (2/delta)*exp(delta*T),
  T               <= (1/delta)*exp(delta*T),
  1               <= exp(delta*T).

Consequently the positive remainder in (A) has the explicit bound

  (4*T^2+32*T)*exp(sqrt T)+sqrt(2)*T+1/4
     <= [32/delta^2 + (64+sqrt(2))/delta + 1/4]
        *exp(delta*T).                                 (B)

The bounded initial T interval may be absorbed in the rate-dependent constant. All of these positive payments are classical elementary analysis, NOT a proof of the remaining signed Möbius estimate.

For dyadic T_j=j*log 2, the fixed source condition

  for every delta>0 there exists C_delta>=0 such that
  C_*(T_j)<=C_delta*exp(delta*T_j) for ALL j>=0       (C)

would imply the previous one-sided endpoint good-scale criterion using (A)-(B) and the unchanged dyadic coverage T<=T_j<=T+log 2. The existing endpoint-to-RH return must also pass its independent actual-source compilation, fresh kernel, expected-types and transitive axiom audit.

No single fixed-power Mertens estimate, favorable unbounded subsequence, sign-of-comparable heuristic, or assumption of (C) is claimed to establish it. Statement (C) is the sole still-unproved RH-strength arithmetic witness for this new fixed partition.

## 5. A strictly sharper optional causal-time root tail

For g>D, the actual original dilation covariance is
  K_T(ga,gb)=g^(-1) K_(T-log g)(a,b).
For an included original pair g<=N, t_g=T-log g>=0. The true response upper is
  0<=K_t(a,b)<=4*t/sqrt(a*b).
With a,b<=N/g, sum_(a<=N/g) 1/sqrt(a)<=2*sqrt(N/g), so the original pairwise absolute cost at gcd g is <=16*t_g*N/g^2. Since g>=D+1,
  t_g<=max(0,T-log(D+1)).
The elementary inverse-square tail sum_(g>D) g^(-2)<=1/D therefore proves, in ordinary finite arithmetic,

  absoluteCost(H,M,D,T)
     <= [16*N/D]*max(0,T-log(D+1)).                   (D)

This strengthens the old T-factor bill without discarding the physical source or changing its arithmetic signs. At D=D_*(T) and T>=4, it gives

  absoluteCost <= 32*(sqrt T+log 2)*exp(sqrt T).       (E)

The Lean source records (D) as `ShiftedLargeGcdRootTailTarget` (UNPROVED); it is NOT consumed as a certified fact in theorem (A). It will require the prior exact finite gcd reindex, verified causal Gram time shift, reciprocal-root sum and inverse-square sum at the pinned toolchain.

## 6. Comparison and honest boundary

The previous rate-INDEPENDENT cutoff floor(exp T/(1+T)) paid a polynomial 32*T*(1+T) high-gcd bill, but retained g up to about exp T/T in the unpaid core. The new cutoff exp(T-sqrt T) is asymptotically smaller by a factor about (1+T)*exp(-sqrt T), while its high-gcd absolute bill is still at EVERY positive exponential rate. This is not necessarily less difficult: the smaller rate-independent short-gap mask shifts more source pairs into the core than an epsilon-dependent exponential gap mask would.

More generally, any fixed nonnegative phi(T)=o(T), with T-phi(T) eventually >=log 2, allows H=floor(exp phi(T)), D=max(1,floor(exp(T-phi(T)))) and positive bills O(T^2 exp phi(T)) and O(T exp phi(T)). The concrete sqrt schedule is chosen for a simple pinned Lean interface and explicit constants.

Numerical sanity checks using the ORIGINAL analytic causal Gram but DROPPING the original strong physical mask (thus a larger testing superset): for T=4,5,6 the new integer D are 7,15,34, versus former 10,24,57; the absolute squarefree incomparable high-gcd ordered-pair totals were approximately 0.00717851, 0.06323085, 0.12466449. Every case satisfied the source-agnostic 16*T*N/D bound and 32*T*exp(sqrt T). These floating computations are not interval-certified, asymptotic proof or Lean evidence.

## 7. Formal and verification obligations

New source `MoebiusFixedSublinearCompensatedEndpoint.lean`:
- definitions `fixedGapHeight`, `fixedGcdCutoff`, `fixedCompensatedCore`;
- candidate exact lemmas `pickupCross_eq_fixed_compensated_ledger`, `endpointSum_le_fixed_with_real_gcd_bill`, `fixedGapHeight_le_exp`;
- conditional source-numeric theorem `endpointSum_le_fixed_numeric_of_elementary`;
- explicit still-unproved elementary targets `FixedGapCardTarget`, `FixedWeakPaymentTarget`, `FixedGcdRatioTarget`, `FixedScalarEveryRateTarget`, `ShiftedLargeGcdRootTailTarget`;
- explicit UNPROVED signed witness `FixedCompensatedEveryRateDyadic`.

No research axiom, no sorry/admit, no synthetic source, no root import, no altered source identity, no changed Mathlib/Lean pins or force-ref update is intended. All compilation, exact-interface elaboration, fresh replay and transitive axiom auditing remain NOT_RUN. This does not resolve canonical Riemann Hypothesis.

Prior direct arithmetic source: `MoebiusCompensatedPrimitiveEndpoint.lean` blob `95879b75037cca9b4fafabd517df2a988eedc2af`; `MoebiusStrongIncomparableGcdStrata.lean` blob `d974d231d2b555484046684072f4e68d4892c3dc`; `MoebiusCausalGcdTimeShift.lean` blob `db0052901eca3050ed0ce812d3e0e7675c8fab05`. Program issue: grwtsk/math#1566; terminal RH problem grwtsk/math#15. Toolchain Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
