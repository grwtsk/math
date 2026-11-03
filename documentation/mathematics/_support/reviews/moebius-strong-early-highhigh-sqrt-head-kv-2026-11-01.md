# Strong Möbius source: exact high–high localization and square-root-head Mertens transfer

Local mathematical attribution: grwtsk contributors.
Research date: 2026-11-01 (America/Los_Angeles).
Disposition: analytically established elementary finite bounds and exact original signed-source partition at their stated scope; source formalization PROOF CANDIDATES, compilation / expected types / fresh kernel / transitive axiom audit **NOT_RUN**. No new all-positive-rate estimate or RH conclusion.

## 1. Original object and exact sign ledger

Use the unchanged source from \`GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean\`, the original \`endpointIndex T=Finset.Icc 1 (floor (exp T))\`, the original real causal \`pickupResponse n u\` with birth \`log n\`, real \`pickupResponseGram T m n\`, \`moebiusReal n=(ArithmeticFunction.moebius n : ℤ)\`, \`pickupDiagonal(T)=D(T)>=0\`, \`pickupCross(T)=X(T)\`, \`pickupEnergy(T)=E(T)\`, and \`endpointSum(T)\` with the already source-proved quarter-unit readout error.

Previously published \`MoebiusEnergyMatchedArithmeticTube.lean\` assigns every original integer n its own real EuclideanSpace R (Fin 2) cylinder of rational stereographic direction \`((n²-1)/(n²+1),2n/(n²+1))\`, true disk shading radius \`sqrt(d_n(T))\`, and real shading pair area \`pi*min(d_m(T),d_n(T))\`. This SOURCE geometry only selects original ordered Möbius kernel terms. In \`MoebiusEnergyMatchedWeakResidual.lean\`, after paying original Putnam additive gap A_H={1,..,H}, the exact long-gap NEAR ANGLE signed packet is zero for collar sigma=2(H+1)/(N²+1); the full weak-area signed packet W satisfies

  |W(T,H)| <= N² sqrt(q_N D(T)),
       N=floor(exp T), q_N=(N+1)^(-6), D(T)<=2T².

The existing true strong signed packet \`originalEnergyStrongCross H T\` from \`MoebiusStrongPacketEnergyReturn.lean\` therefore satisfies
  X(T)=G_H(T)+W(T,H)+S_H(T)
without replacing an arithmetic sign by a nonnegative tube mass. Both ordered pair orientations and the source diagonal exclusions are retained.

## 2. Newly source-formalized universal rectangular collar

For ANY finite source index set S, any original ordered signed kernel k(i,j), any selected relation R (not assumed symmetric), any early-index predicate L(i), and any nonnegative source weights w_i and B with

  |k(i,j)| <= B*w_i*w_j,

the full selected ordered packet with i in L OR j in L obeys

  |X_(R∩((L×S)∪(S×L))|
     <= 2*B*(sum_(i in S∩L) w_i)*(sum_(j in S) w_j).   (1)

Proof: take the absolute value AFTER assembling the complete ordered packet. A selected edge must lie in its left rectangle or its right rectangle; majorize its absolute entry by the corresponding nonnegative rank-one budget, retaining both orientations. Overlap L×L is deliberately overcounted (safe), not subtracted twice. Sum each rectangle separately, use finite commutation of sums for the right rectangle, then factor the rank-one weights. No cancellation, PNT, positivity of k, or Kakeya theorem is used.

New general source candidate: \`GRWTSK/Combinatorics/GraphTheory/FiniteSignedRectangularCollar.lean\`, blob \`0fb1781ee3ea5a0e3ffc0f66a02d1e92912a3dfb\`.

## 3. Original causal kernel source, and strict sub-one early height saving

The existing \`MoebiusEndpointGapLocalization.pickupResponseGram_le_four_time_invSqrt\` proves, for T>=0 and original m,n>=1,

  0 <= pickupResponseGram(T,m,n) <= 4T / sqrt(m*n).

The one-bounded actual Mathlib Möbius coefficient \`ArithmeticFunction.abs_moebius_le_one\` therefore gives, without RH or PNT,

  |mu(m)mu(n)pickupResponseGram(T,m,n)|
    <=4T / sqrt(m*n).                                      (2)

For the REAL original strong-selected relation, define E_(H,M)(T) to contain those strong source pairs with m<=M OR n<=M; define C_(H,M)(T) to contain strong source pairs with m>M AND n>M. An explicit pointwise pair partition proves

  S_H(T)=E_(H,M)(T)+C_(H,M)(T),                      (3)

not merely a residual DEFINED by subtraction.

The original reciprocal-root sums obey
  sum_(n=1)^K 1/sqrt(n) <=2sqrt K.
Combining with (1)-(2):

  |E_(H,M)(T)|<=8T A_M A_N<=32T sqrt(MN),            (4)

where A_M is the real source-weight sum over original positive indices <=min(M,N) and A_N the complete sum up to N=floor(exp T). This holds for ALL finite H,M, all T>=0, all original squareful and squarefree labels, and both orientations. There is no PNT or RH premise.

For M=floor(exp(alpha*T)), 0<=alpha<1, the elementary floor and square-root comparison gives

  |E_(H,M)(T)| <= 32T exp((1+alpha)T/2).             (5)

The exponent is STRICTLY below one. More generally the generic theorem applies to any selected ORIGINAL source relation using the same causal Gram, not just the energy-matched strong mask.

The previous \`MoebiusTwoPrimeRateFrontier.lean\`, Git blob \`025e9343e5c4c819321706d49bc81a56aa68d960\`, already **states the same low-index analytic rate** \`32T exp((1+a)T/2)\` as part of a source-complete paper estimate, while its broad \`ParametricOriginalEndpointUpperTarget\` remains an unproved Lean Prop. Thus (4)-(5) are **NOT claimed as novel mathematical inequalities or a completed proof of that broader target**. The advance is the explicit reusable finite signed-rectangle Lean proof candidate and its exact original energy-matched strong source return, without assuming the other prime-cube/gcd filters.

New source candidate: \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusStrongEarlyIndexCollar.lean\`, blob \`5667a895c4f8225a49f45cda4872a133adf7cc30\`, with:
- \`strong_eq_early_add_highHigh\`;
- \`actual_sourceKernel_abs_le_root\`;
- \`arbitraryOriginalEarlyCross_abs_le_32_sqrt\`;
- \`earlyStrongCross_abs_le_32_sqrt\`;
- \`pickupCross_eq_gap_weak_early_highHigh\`;
- \`endpointSum_le_rateHighHigh_and_paid\`.

In particular the SAME original endpoint observable obeys, with H=floor(exp(epsilon*T/2)), N=floor(exp T),

  endpointSum(T) <= (32/epsilon²)exp(epsilon*T)
    +N² sqrt(D(T)/(N+1)^6)
    +32T sqrt(MN)
    +C_(H,M)(T)+1/4.                                    (6)

The strong signed high-high remainder is now an explicit sum over original m,n>M, not a favorable numerical choice. The other rates are **not all-positive-rate**: in particular an early collar bound at rate >=1/2 cannot alone prove an RH-facing bound at every epsilon>0, even if C_(H,M) vanished. This is a rate-one frontier localization, not an RH reduction to one automatically all-rate-paid source.

## 4. Sharper FINITE actual Mertens-Abel head: K to 2 sqrt(K)

The preexisting exact \`PickupMertensAbel.sampleResidue_abel\` identity is

  sampleResidue(N+1)
   =sum_(k=0)^(N-1) M(k+1)*Delta_k,
  Delta_k=1/sqrt(k+1)-1/sqrt(k+2)>=0.

The earlier \`MoebiusStrongMertensAbel.lean\` (blob \`9956bfdb2c7e677c7feafeaf16cfb125da2e56b7\`) proved that for any K∈N and δ>=0 such that

  ActualMertensTailAt K δ :
    forall n>=K, |M(n)|<=δ*n,

  |sampleResidue(N+1)| <= K+2δ sqrt N.

The integer-weighted positive Abel head actually obeys the stronger finite bound

  sum_(k<N, k+1<K)(k+1)*Delta_k
     <=sum_(k<K)(k+1)*Delta_k<=2 sqrt K,

since the exact original weighted first moment is bounded by its reciprocal square-root series and then by 2sqrt K. The tail still costs only δ times the full positive weighted Abel first moment, <=2δ sqrt N. Hence

  |sampleResidue(N+1)|<=2sqrt K+2δ sqrt N.             (7)

This does not invoke any PNT theorem: it is an **elementary conditional finite transfer** consuming the actual named Mertens tail, not an assumed strong-packet conclusion.

The same original repository theorem \`wholePickup(log n)=2 sampleResidue(n)\`, the floor(exp u) cutoff, and the already proved interpolation error |wholePickup(u)-sampledPickup(u)|<=exp(-u/2) for u>=0 yield

  |wholePickup(u)|<=4sqrt K+1+4δ exp(u/2).            (8)

Integration of the original squared physical-time waveform, with K and δ FIXED over every inner u∈[0,T], then gives

  pickupEnergy(T)<=2(4sqrt K+1)^2*T
                  +32δ²(exp T-1).                    (9)

The actual original complete signed strong packet therefore satisfies, for ε>0, T>=0,

  |S_(H_epsilon)(T)| <=2(4sqrt K+1)^2*T
       +32δ²(exp T-1)+2T²
       +(32/epsilon²)*exp(epsilon*T)
       +N² sqrt(D(T)/(N+1)^6).                        (10)

This improves the previously published 2(2K+1)²T early Mertens head for large K, leaving the original signed kernel, both orientations, diagonal, Putnam and weak packets unchanged. All theorems explicitly keep the Mertens-tail premise and are NOT a PNT proof.

New Lean candidates:
- \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusStrongMertensOptimalHead.lean\`, blob \`56f97813b2b9d44bd7e5f95330bd2b9c3e6e3cdd\`;
- \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusStrongSqrtHeadEnergy.lean\`, blob \`136431f434eb2210db40001c066eb47359756db9\`.

## 5. External 2026 Korobov–Vinogradov Mertens theorem: exact versioned scope

Primary reference: Ethan Simpson Lee and Nicol Leong, *New explicit bounds for Mertens function and the reciprocal of the Riemann zeta-function*, **arXiv:2208.06141v5**, last revised **2026-09-09**, DOI https://doi.org/10.48550/arXiv.2208.06141, https://arxiv.org/abs/2208.06141v5.

The v5 abstract states a Korobov–Vinogradov-form upper bound
  |M(x)| << x*(log x)*exp(-c*(log x)^(3/5)/
                                      (log log x)^(1/5)),
with c>0 in its valid range. The multiplicative log x factor is SOURCE-RELEVANT. The previous 2024 v4 abstract states a form without that displayed prefactor. The **present source review uses v5 and retains log x until its absorption is analytically justified**, rather than silently equating versions.

Let Phi(t)=t^(3/5)/(log t)^(1/5) for sufficiently large t (say t>e), which is eventually increasing and satisfies log t=o(Phi(t)). For all sufficiently large t,
  t*exp(-c Phi(t))<=C1*exp(-(c/2)Phi(t)).
Hence, by v5, there exists a C2 and T0 so for every T>=T0, set
  K_T=ceil(exp(T/2)),
  δ_T=C2*exp(-(c/2)*Phi(T/2)).
For EVERY integer n>=K_T, log n>=T/2 and the actual classical bound yields
  |M(n)|<=δ_T*n.
This is exactly the \`ActualMertensTailAt K_T δ_T\` proposition required by the newly written finite source theorem (10), with no RH premise. It is an **external classical theorem application**, not a formally available proof term at the pinned Lean Mathlib revision.

For T sufficiently large,
  sqrt(K_T)<=sqrt(2)*exp(T/4),
so the head term in (10) is O(T exp(T/2)), while the δ_T² contribution is
  O(exp T * exp(-c*Phi(T/2))).
Since Phi(T/2) is comparable to Phi(T), this gives for any fixed ε∈(0,1):

  |S_(H_epsilon)(T)|
   << exp(T) * exp(-c' T^(3/5)/(log T)^(1/5))           (11)

for some c'>0 and sufficiently large T. The other original source costs in (10) are strictly smaller asymptotically.

Equation (11) is the already known **classical KV rate-one saving**, now with a sharper SOURCE FINITE K cutoff interface; it is not a new number-theoretic theorem. It does not imply exp(ηT) growth for arbitrary small η>0 and therefore does not settle RH. The source scripts do not import or assert the external KV/PNT theorem in Lean.

## 6. Hostile checks, prior art, computation, and verification

- M=0: the early selected pair packet is zero, and the high-high packet retains the complete original strong source. M>=N: all original strong pairs may be selected early, but (4) is still valid, though its paid rate is no better than one.
- Repeated source coordinates, squareful μ(n)=0, reversed orientations and diagonal exclusions remain untouched.
- Both rectangles L×S and S×L are paid. Dropping one orientation or subtracting L×L without source-specific sign information is invalid.
- The root mass is the actual finite n^{-1/2} sum, not the signed Mertens sum; this is an absolute-rate method and cannot imply arithmetic cancellation by itself.
- The separate existing two-prime \`profileCore\` has a different mask with cube-base, gcd and distance restrictions. The generic rectangular inequality can be applied to its source-selected early subset, but no equality between the profile and the present strong packet is asserted.
- The v5 external Mertens theorem includes a logarithmic prefactor; its absorption requires increasing Phi and log t=o(Phi(t)). It cannot be promoted into the pinned Lean environment just by citing the paper.
- A signed kernel k(i,j)=B*w_i*w_j for all selected pairs shows rectangular counting alone provides no better sign cancellation; a dense positive kernel is a hostile control, not an actual Möbius counterexample.
- A separate deterministic Python Fraction diagnostic, fixed seed 20261101, checked **18,000 exact rational assertions** over 6,000 finite arbitrary signed rank-one-bounded mask fixtures (complete ordered partition, rectangular price and both orientations), all PASS. Five real-original-Möbius causal Gram numerical fixtures at 60 decimal digits confirmed the exact selection split and early bound for N=10,16,24,35,50. These use approximate transcendental arithmetic with no certified enclosure, and do not prove the universal theorem or execute Lean.

No Lean executable or Lake is available in the current local sandbox. No native verifier, remote CI, independent kernel replay, transitive axiom audit or exact public type verification was run. Mark ALL such facets NOT_RUN. New source files contain no literal \`sorry\`, \`admit\`, \`axiom\`, \`unsafe\` declarations by static scan only, which does not audit dependencies or elaboration.

Nearest prior results: existing \`MoebiusTwoPrimeRateFrontier.lean\` already states the same early exponent as a paper source; \`MoebiusStrongPNTEnvelope.lean\` already records the rate-one classical-PNT transfer with cruder head 2K+1; \`MoebiusCausalMertensSquareBridge.lean\` provides a different exact finite response-drop Abel identity and a conditional log-power energy return; Lee–Leong v5 supplies the external classical Mertens rate. This contribution supplies a reusable source-bound rectangular **Lean candidate** with exact strong-packet source return and improves the finite Abel head to its square-root scale. It is not an independent proof of PNT, KV, prime-cube source, or RH.

Next genuine arithmetic obligation: prove sign cancellation in the full high-high original strong core, and strengthen the already explicit early source estimate below its absolute exponent 1/2 where required by every-positive-rate RH. Any such theorem must preserve the actual complete ordered Möbius source, the fixed good-scale quantifiers, and all mixed prime/rough orientations.
