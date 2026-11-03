# Exact original Möbius causal gcd/time-shift and a uniform primitive correlation transfer

Local mathematical attribution: grwtsk contributors.
Research date: 2026-11-01 (America/Los_Angeles).
Disposition: mathematical proof of the literal response/Gram dilation covariance and finite source-mask transport, explicit arithmetic gcd reindex proof argument, finite signed uniform transfer and classical-PNT-level source estimate; new Lean SOURCE_PROOF_CANDIDATES with compilation, exact expected types, fresh kernel and complete transitive axiom audit all NOT_RUN. The full RH-strength primitive signed premise remains OPEN. No RH claim.

## 1. Exact pinned original sources

The original \`GRWTSK.RiemannHypothesis.CCC\` objects are unchanged:
- \`MertensPrimitive.lean\` Git blob \`45e06c371d67bcf8c939d20a95fcbc63570546fa\`: \`pickupResponse n u := if log n<=u then 2*((sqrt n)^(-1)-exp(-u/2)) else 0\`, original time-oriented \`pickupResponseGram T m n := ∫ u in 0..T, pickupResponse m u * pickupResponse n u\`, original \`pickupEnergy\`, original \`pickupCross\`, and literal integer Möbius signs.
- \`LiouvilleDoubleAbelAnalyticGates.lean\`, blob \`b4bd9a83c83603faa5eff5326d9a99ec35dae2d4\`: source \`pickupResponse_eq_positivePart\` with its original n>=1 boundary.
- \`LiouvilleCausalPhysicalGramIntegrability.lean\`, blob \`e23f62fc60ce5867e4c183117162c59ff4989b6f\`: source \`pickupResponse_continuous\` and actual time-integrable response product.
- \`MoebiusStrongIncomparableGcdReduced.lean\`, blob \`18cedc1e613147793d3efee64b39b69ca560044b\`: true squarefree original signed gcd factor removal \`mu(ga)mu(gb)=mu(a)mu(b)\`; it previously cautioned correctly that \`K_T(ga,gb)\` is NOT homogeneously \`g^(-1)K_T(a,b)\` with the SAME T.
- \`MoebiusStrongIncomparableGcdStrata.lean\`, blob \`d974d231d2b555484046684072f4e68d4892c3dc\`: complete original signed low-gcd/high-gcd strata including original high-high energy-matched physical mask and Putnam gap cutoff.
- \`MoebiusPrimitiveGcdPNTProfile.lean\` is the new consumer of existing \`MoebiusStrongSqrtHeadEnergy.lean\`, blob \`136431f434eb2210db40001c066eb47359756db9\`: actual Mertens-tail-to-original pickupEnergy theorem, NOT an unconditional local Lean PNT theorem.
- Pinned Mathlib \`Mathlib/MeasureTheory/Integral/IntervalIntegral/Basic.lean\`, blob \`2504147e2230a26eb804b0898004d0186c4e36a1\`, declares \`intervalIntegral.integral_comp_sub_right\` and \`intervalIntegral.integral_add_adjacent_intervals\`. This source uses those exact real-time substitution identities and source continuity, not a different integration normalization.

## 2. An exact new analytic source identity: common gcd becomes 1/g with a shifted time

Fix positive original integers g,a,b, with g>=1, a,b>=1, and arbitrary real u,T. Because log(ga)=log g+log a, the literal ORIGINAL birth condition \`log(ga)<=u\` is equivalent to \`log a<=u-log g\`. When born, the source response is

  r_(ga)(u)
    = 2*((ga)^(-1/2)-exp(-u/2))
    = g^(-1/2)*2*(a^(-1/2)-exp(-(u-log g)/2)).

When not yet born, BOTH sides are identically zero. Thus the exact real function identity (all u) is

  r_(ga)(u) = g^(-1/2) r_a(u-log g).                (R)

It has no RH, PNT or signed cancellation premise and uses the same source index n=ga as before. For all positive original indices a, \`r_a(v)=0\` for v<=0 because log a>=0. Multiply (R) for a,b and perform the exact real interval substitution v=u-log g:

  K_T(ga,gb)
    = (1/g) ∫_(0)^T r_a(u-log g)r_b(u-log g) du
    = (1/g) ∫_(-log g)^(T-log g) r_a(v)r_b(v) dv
    = **(1/g) K_(T-log g)(a,b)**.                  (K)

The omitted negative-time interval [-log g,0] has integrand exactly ZERO, not an unproved negligible boundary. Equation (K) even holds for oriented negative T as a real integral identity; the original physical-time endpoint consumers continue to require T>=0. In general \`K_T(ga,gb) != (1/g)*K_T(a,b)\`; the shift is essential. This improves the prior gcd sign-only transport without changing the actual source.

If both original ga,gb are squarefree, their genuine Möbius product satisfies \`mu(ga)mu(gb)=mu(a)mu(b)\` (already source candidate, using exact Nat squarefree multiplicativity). Therefore the actual original signed kernel obeys

  k_T(ga,gb)
    = (1/g)*mu(a)mu(b)*K_(T-log g)(a,b).           (S)

The diagonal also transports EXACTLY: with ga squarefree, \`d_T(ga)=(1/g)*d_(T-log g)(a)\`, with the original \`d_T(n)=mu(n)^2*K_T(n,n)\` (not a newly assigned amplitude). All source coefficients and squareful-zero original indices are preserved in the sum.

**New source candidate:** \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusCausalGcdTimeShift.lean\`, exact Git blob \`db0052901eca3050ed0ce812d3e0e7675c8fab05\`, namespace \`GRWTSK.NumberTheory.Moebius.CausalGcdTimeShift\`, declarations \`response_zero_of_nonpos\`, \`pickupResponse_mul_timeShift\`, \`pickupResponseGram_mul_timeShift\`, \`originalSignedKernel_gcd_timeShift\`, \`sourceDiagonal_gcd_timeShift\`.

## 3. Exact original physical mask becomes a shifted arithmetic-energy mask

For T>=0, N=floor(exp T), q_N=(N+1)^(-6), and original m,n∈endpointIndex T, distinct, the previous source energy-matched genuine Euclidean \`Tube 2\` shadings satisfy the TRUE 2D Lebesgue area equation

  physicalPairMass(T,m,n)=pi*min(d_T(m),d_T(n)).

The selected source projective threshold \`sigma(T,H)=2(H+1)/(N²+1)\` is AUTOMATIC when \`|m-n|>H\`, by the exact original stereographic direction gap theorem; the original strict long-gap condition is the same one paid by Putnam. Conversely, for m!=n, excluding distances in A_H=Icc 1 H and meeting the positive angular threshold FORCES |m-n|>H. Thus the original source \`originalStrongRelation H T m n\` is precisely

  |m-n|>H AND min(d_T(m),d_T(n))>=q_N.           (M1)

For squarefree m=ga,n=gb, the literal diagonal shift (K) becomes

  physicalPairMass(T,ga,gb)
       = pi/g * min(d_(T-log g)(a),d_(T-log g)(b)).
Therefore (M1) is exactly

  g*|a-b| > H   AND
  min(d_(T-log g)(a),d_(T-log g)(b)) >= g*q_N. (M2)

This comparison does not equate q_N with q_(floor exp(T-log g)): the original physical threshold depends on the ORIGINAL N, and the factor g is essential. The source projective angle does not require a uniform positive global separation and cannot be replaced by a different stereographic chart. The source \`primitiveOriginalMask\` retains the exact original index membership and full geometric/energy mask.

**New source candidate:** \`MoebiusPrimitiveGcdOriginalMask.lean\`, blob \`68c753cea187a51647a5213e7bea30b7ecdbdd5c\`, namespace \`GRWTSK.NumberTheory.Moebius.PrimitiveGcdOriginalMask\`; declarations \`strong_iff_far_and_true_diagonals\`, \`physicalMass_gcd_shifted\`, \`original_strong_gcd_mask_iff_shifted\`. They are Lean proof candidates, NOT compiled.

## 4. Exact gcd-reduced original small-gcd signed primitive sum

For fixed original T,H,M,D and each positive gcd g≤min(D,N), define \`primitiveGcdPacket(H,M,T,g)\` as the TRUE ordered sum over positive integers a,b>=2, with coprime a,b, coprime g to each, ga,gb squarefree and present in the original endpointIndex T, and the original highHighSelector and incomparable mask STILL at the ORIGINAL pair (ga,gb). Its signed term is

  mu(a)*mu(b)*K_(T-log g)(a,b).

The ORIGINAL \`smallGcdIncomparableCross H M D T\` is an ordered sum over squarefree incomparable m,n with gcd(m,n)≤D. Every such original pair has the UNIQUE inverse

  g=gcd(m,n), a=m/g, b=n/g,

which satisfies a,b>1, gcd(a,b)=1, gcd(g,a)=gcd(g,b)=1. Conversely every such primitive tuple determines exactly the original m=ga,n=gb, and gcd(m,n)=g. Equation (S) then gives the mathematical **EXACT** finite identity

  I_smallGcd(H,M,D,T) =
    ∑_(1<=g<=min(D,N)) (1/g)*primitiveGcdPacket(H,M,T,g). (G)

No sign, original integer support, squareful zero, angular/area threshold or ordered orientation changes. The full finite double-to-triple reindex (G) is an elementary bijection, but its actual Lean \`Finset.sum_bij\` implementation and correct type elaboration have NOT been run. The new source deliberately marks \`ExactPrimitiveGcdReturnTarget : Prop\` as UNPROVED IN LEAN; no theorem of RH follows by declaring this interface.

**New source candidate:** \`MoebiusPrimitiveGcdUniformTransfer.lean\`, blob \`e373c0c6b638f19f5673e451738f11cb8b517d51\`, namespace \`GRWTSK.NumberTheory.Moebius.PrimitiveGcdUniformTransfer\`, has \`primitiveOriginalMask\`, \`primitiveGcdPacket\`, \`gcdWeightedPrimitiveCross\`, \`primitive_source_term_eq_shifted\`, unconditional finite \`abs_weighted_gcd_sum_le\` and \`gcdWeightedPrimitiveCross_abs_le\`, and exact \`UniformPrimitiveSignedAt\` / \`UniformPrimitiveSignedAllHorizons\` proof boundary.

## 5. NO EXPONENT LOSS in the positive gcd aggregation—IF the missing signed supplier exists

For any ε>0 and positive gcd g, the correct shifted-horizon source bound would take the form

  |primitiveGcdPacket(H(T),M(T),T,g)|
       <= B_ε exp(ε*(T-log g)),

with ONE B_ε independent of T, all g≤D(T), and each growing source cutoff. This all-horizon/all-g **UNIFORMITY** is essential. A family of fixed-g estimates with different B_g does not imply it; neither existing fixed-shift Chowla nor average logarithmic Chowla automatically fits the real g-dependent angular/energy mask.

Assuming that genuine UNPROVED signed input plus the exact reindex (G), the finite signed triangle gives

  |I_smallGcd| <= B_ε exp(εT)
                    ∑_(g<=min(D,N)) g^(-1-ε).

The positive scalar integral comparison, valid for ε>0 and any finite D, is

  ∑_(g=1)^D g^(-1-ε)
     <=1+∫_1^infinity x^(-1-ε) dx
     =1+1/ε.

Therefore

  |I_smallGcd(H(T),M(T),D(T),T)|
       <= B_ε(1+1/ε)exp(εT).                        (U)

This is a **lossless exponent transfer**, not a proof of its RH-strength premise. It crucially uses the TRUE 1/g factor PLUS the log g time shift; dropping either changes the arithmetic summation. The positive scalar power-sum bound is an unproved Lean target \`PositiveGcdPowerSumTarget\`; the full original gcd reindex is the unproved target above. \`smallGcd_abs_le_uniformPrimitive_of_gates\` and \`originalSmallGcd_allHorizonRate_of_uniformPrimitive\` prove the conditional transfer with all three inputs separately visible. The stronger "for every ε>0" uniform signed primitive premise remains OPEN and may be as difficult as RH itself.

## 6. A genuinely unconditional-at-classical-PNT-rate uniform estimate, not a hidden RH proof

An independent route uses the ORIGINAL complete energy, not the primitive pointwise assumption. At M=1 the exact preexisting signed source decomposition is

  I_smallGcd
    = pickupEnergy - pickupDiagonal - G_Putnam - W_weak
      - E_early - P_positiveComparable + C_odd - I_largeGcd.

No source term is dropped. Since \`pickupEnergy>=0\`, \`pickupDiagonal>=0\`, the comparable packet is nonnegative and odd credit nonnegative, taking absolute values gives an unconditional finite comparison in terms of the ACTUAL pickupEnergy and all the source-specific absolute bills. The elementary root-tail bounds for comparable, odd and large-gcd sectors remain **explicit UNPROVED Lean Props** inherited from preceding modules:
- comparable absolute (M=1) <=32 T sqrt(N);
- odd credit (M=1) <=32 T sqrt(N);
- early (M=1) <=32 T sqrt(N);
- large-gcd absolute <=16 T N/D for D>=1.

The existing authentic Putnam gap and weak-energy bounds are unchanged, so for any ε>0 and H=floor(exp(εT/2)), T>=0, D>=1,

  |I_smallGcd(H,1,D,T)| <= pickupEnergy(T)
      +2T²+(32/ε²)exp(εT)+N²sqrt(Diag(T)/(N+1)^6)
      +96T sqrt N +16TN/D.                           (P0)

This is an explicit SOURCE-EXACT finite energy estimate. Its Lean theorem \`smallGcd_abs_le_energyPower_and_paid\` consumes an arbitrary genuine \`pickupEnergy(t)<=C exp(theta*t)\` as a named premise, while \`smallGcd_abs_le_Mertens_and_paid\` consumes only the actual named Mertens prefix-tail \`ActualMertensTailAt K δ\` and the three identified elementary positive-bill Props. No hypothesis of the desired small-gcd signed conclusion is used.

Classically, the independently proved PNT gives M(x)=o(x). The earlier authentic source Mertens-Abel transfer says, for every δ>0, there is a K so

  pickupEnergy(T)
    <=2(4sqrt K+1)^2*T+32δ²(exp T-1).

Fix 0<ε<1 and 0<β<1. For any growing integer D(T)>=exp(βT) and D(T)<=floor(exp T), dividing (P0) by exp T makes the Putnam term, 2T², weak packet, 96T sqrt N and 16TN/D all vanish UNIFORMLY in D. The energy contribution has limsup <=32δ². Since δ>0 was arbitrary, the mathematically derived unconditional-classical corollary is

  sup_(ceil exp(βT)<=D<=N)
    |I_smallGcd(H_ε,1,D,T)| = o(exp T).             (PNT)

This is a TRUE uniform signed estimate for the ORIGINAL low-gcd incomplete source, but it is only at exponential RATE ONE, strictly weaker than RH-strength every-positive-rate cancellation. The classical Korobov–Vinogradov quantitative Mertens theorem gives the stronger rate-one stretched exponential saving, uniform for β>0, by replacing the energy input and absorbing the strict-rate source bills. The KV theorem is not imported into pinned Lean.

Separately, a genuine externally established energy rate theta, with 1/2<theta<1, would give from (P0) for D(T)>=exp(βT) and β>1-theta a bound at EVERY fixed rate r>max(theta,ε,1/2,1-β), with ONE constant uniform in D. This is explicitly conditional on the external original-energy theorem, not on an already obtained local Lean proof. The repository's separately named 2026 OpenAI 7/8 zero-free and PR103 fixed-power routes require their own nonnative contour/energy bridges and are NOT silently promoted into this module.

**New source candidate:** \`MoebiusPrimitiveGcdPNTProfile.lean\`, blob \`f19007882a47ebfba41a869480d4e6aab583804c\`, declarations \`smallGcd_eq_complete_energy_minus_paid\`, \`smallGcd_abs_le_energy_and_original_bills\`, \`smallGcd_abs_le_Mertens_and_paid\`, \`smallGcd_abs_le_energyPower_and_paid\`.

## 7. Hostile controls and independent computational evidence

1. g=1 gives identity shift log 1=0 and scale 1; the original causal response/Gram is unchanged. This checks normalization and the index-one boundary.
2. T<log g yields both original dilated responses zero on the oriented interval 0..T, while the reduced response is zero for shifted times below zero. The identity (K) still holds as an oriented integral, not a new physical measurement at negative time.
3. g=4 with a=3: K covariance still holds, but g*a is not squarefree, so an unguarded sourceDiagonal or Möbius sign transport would be FALSE. Squarefree restrictions are essential.
4. Source angular gap uses actual unorientated stereographic directions, and for selected original far positive index pairs the source-positive sigma is automatically satisfied. A different chart/growing angular packing cannot be substituted.
5. The original physical threshold is q_N=(N+1)^(-6) with N=floor exp T, not q_(N/g). Under shift it becomes g*q_N and must retain the original horizon.
6. Both (a,b) and (b,a) are original ordered terms, including sign symmetry; neither is identified by quotienting them.
7. Using a model positive Gram or independent random Möbius signs proves nothing about genuine source cancellation; the uniform signed primitive all-horizon premise is precisely the open arithmetic difficulty.
8. The unconditional PNT-rate-one result (PNT) does not imply O(exp(εT)) for ε<1; the absolute comparable/early costs already have exponent 1/2, so even a hypothetical all-rate primitive bound would not by itself solve RH without improving these fixed-rate payments.

**Executed finite diagnostics:**
- 568,819 exact integer original (m,n) gcd uniqueness reconstructions with positive coprime a,b;
- 223,195 exact integer squarefree original Möbius sign reductions;
- 197,534 exact integer incomparable squarefree/coprime support checks;
- 80 exact rational signed double-to-triple reindex equalities using synthetic rational kernel values (NOT actual causal integrals);
total 989,628 exact integer/rational assertions at tested finite scope.
- 1,400 actual analytic causal response covariance evaluations, 1,400 actual Gram covariance checks, 1,400 diagonal covariance checks, computed at 80+ decimal digits; each matched to <1e-67.
- Five full original causal Gram/gcd-selected-mask numerical double-versus-triple comparisons with N=16,24,35,48,64 and H=1,2,2,3,4, D=2,4,6,7,10 at 75 decimal digits, 58 to 1,126 selected original ordered terms. Each numerical discrepancy <1e-74.

These are mathematical diagnostics, NOT exact interval-certified real computations, not infinite-domain proof, not Lean/Lake compilation, and not an independent kernel acceptance receipt. The analytic derivation of (R)-(S), (G), (U) and (P0) is provided above with its exact hypotheses, independently of the samples.

## 8. Status, provenance, and remaining proof obligations

Local source proof candidates authored and published under the pure GRWTSK Number Theory tree, with no root import, Mathlib pin, toolchain, existing mathematical object or background process change. Static source check contains no authored \`sorry\`, \`admit\`, \`axiom\` or \`unsafe\` keyword declaration (this is NOT a full transitive audit).

Pinned Lean \`leanprover/lean4:v4.34.1\`, Mathlib Git revision \`d13f23b723b8a846827a245b89c10fc7d3f11612\`. Compiler/elaboration, exact declaration interfaces, fresh kernel replay and complete transitive axiom/sorry/unsafe audit all NOT_RUN; no native or remote Lean runner available or dispatched.

The four critical missing Lean tasks, separate from the much deeper arithmetic difficulty, are:
- compile and repair the direct source response/time translation and original physical mask;
- prove the unique original ordered gcd double-to-triple \`Finset.sum_bij\` with all original source masks and first/last indices, i.e. \`ExactPrimitiveGcdReturnTarget\`;
- prove the positive scalar \`PositiveGcdPowerSumTarget\` and finite comparable/odd/large-gcd root-tail Props from actual Mathlib APIs;
- supply a genuinely NONCIRCULAR all-horizon, growing-gcd, same-constant SIGNED primitive estimate below arbitrarily small positive rates and then remove the independent absolute comparable/early/gcd losses in the original complete RH-facing endpoint.

Closest known mathematical mechanisms: classical causal dilation covariance and real interval substitution, summation over g with convergent Dirichlet weight g^(-1-ε), original finite Möbius gcd/coprime multiplicativity, and classical PNT/Mertens zero-free-region bounds. This work is a source-preserving interoperability/reduction and uniform-quantifier clarification, not a new all-rate number-theory theorem or a proof of RH.
