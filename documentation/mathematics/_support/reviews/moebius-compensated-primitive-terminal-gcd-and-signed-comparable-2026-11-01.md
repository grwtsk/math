# The compensated primitive Möbius frontier: genuine all-rate large-gcd payment and signed comparable Mertens transfer

Local mathematical attribution: grwtsk contributors.
Research date: 2026-11-01, America/Los_Angeles (the connected repository uses UTC commit timestamps on 2026-11-02).
Mathematical status: precise complete source ledger with direct finite proofs; unconditional elementary terminal support and cutoff estimates with full analytic arguments; conditional source-power improvement to the comparable signed packet; **THE USER'S REQUESTED ALL-HORIZON, ALL-GROWING-G, EVERY-POSITIVE-RATE ORIGINAL PRIMITIVE BOUND REMAINS UNPROVED.** New Lean source scripts are SOURCE_PROOF_CANDIDATES only. Compiler, expected types, fresh kernel, and full transitive axiom audit NOT_RUN.

## 1. Exact original source and nearest primary work

Original unchanged mathematical object, with complete ordered orientations and true squareful zero symbols:
  S_T={1,...,N}, N=floor(exp T),
  r_n(u)=2*max(n^(-1/2)-exp(-u/2),0), n>=1,
  K_T(m,n)=∫_(0)^T r_m(u)r_n(u)du,
  k_T(m,n)=mu(m)mu(n)K_T(m,n).
The original source \`MertensPrimitive.lean\` blob \`45e06c371d67bcf8c939d20a95fcbc63570546fa\` has the if-at-birth definition; \`pickupResponse_eq_positivePart\` source \`LiouvilleDoubleAbelAnalyticGates.lean\` blob \`b4bd9a83c83603faa5eff5326d9a99ec35dae2d4\` gives the positive-part equivalence for n>=1. All original source terminal, integer support, birth boundaries, and Gram pair orientations are preserved.

Earlier exact source:
- \`MoebiusPrimitiveGcdUniformTransfer.lean\` blob \`e373c0c6b638f19f5673e451738f11cb8b517d51\` defines the full ORIGINAL strong physical/angular source-masked \`primitiveGcdPacket(H,M,T,g)\` and a finite weighted positive-gcd transfer from an EXPLICIT ALL-HORIZON SAME-CONSTANT primitive signed premise. \`ExactPrimitiveGcdReturnTarget\`, \`PositiveGcdPowerSumTarget\` and \`UniformPrimitiveSignedAllHorizons\` remain UNPROVED Lean Props.
- \`MoebiusCausalGcdTimeShift.lean\` blob \`db0052901eca3050ed0ce812d3e0e7675c8fab05\` provides original causal time-shift identity \`K_T(ga,gb)=g^-1 K_(T-log g)(a,b)\`, with true negative-time vanishing. This identity is source proven analytically but remains a Lean candidate.
- \`MoebiusStrongComparableIncomparable.lean\` blob \`4963bdb842fe0013ef6a54b87050c1b4678e6c0a\`, \`MoebiusStrongOddCoprimeDilation.lean\` blob \`6164a4de724f2a29ef4304304f87b48d3ec78b41\`: the selected comparable high-high source decomposes into NONNEGATIVE even/squareful residual and NEGATIVE odd-coprime credit, while incomparable signed source is preserved.
- \`MoebiusStrongIncomparableGcdStrata.lean\` blob \`d974d231d2b555484046684072f4e68d4892c3dc\`: elementary original high-gcd absolute source price \`|I_gcd>D|<=16*T*N/D\` is an UNPROVED Lean target; complete source partition and its honest absolute bill are candidate proofs.
- Existing \`MoebiusDivisorCausalGramCollapse.lean\`, blob \`6216cb9c8bc590a2dfe84132b8267c90a6622148\`, independently records full signed comparable divisor collapse. Do NOT subtract overlapping signed credits more than once.
- The original RH-facing \`riemannHypothesis_of_endpoint_good_scales\` requires one-sided every-positive-rate **complete** endpoint on ONE fixed affinely frequent family, not each source sector separately; requiring all primitive g separately to have one constant is a strictly stronger possible sufficient route, not necessary.

New module SHA pins appear in the passive target and final publication record.

## 2. A rate-INDEPENDENT moving gcd cutoff completely removes the fixed-rate high-gcd payment

The previous split chose D(T)=exp(beta*T) for fixed beta<1, leaving the absolute large-gcd term at exponential rate (1-beta). That choice is NOT forced by the source. Choose instead the SINGLE deterministic cutoff

  D_*(T)=max(1, floor(exp T/(1+T))).

For T>=3, the elementary real inequality exp T/(1+T)>=2 and floor x>=x/2 for x>=2 yield

  D_*(T)>=exp T/(2(1+T)),
  N/D_*(T)<=2(1+T).

The established positive reciprocal-root divisor/gcd ratio argument, still an UNPROVED pinned Lean target, therefore gives

  |I_gcd>D_*(T)(H,0,T)|
     <=16*T*N/D_*(T)
     <=32*T*(1+T),                    T>=3.      (A)

No Mobius cancellation, source mask change, external zero-free result, all-g signed primitive hypothesis, or RH is used. The finite horizon T<3 is a compact interval, so it is absorbed into any positive exponential rate constant. Since for every epsilon>0, \`T(1+T)=O_epsilon(exp(epsilon*T))\`, (A) is an all-positive-rate source payment. The source cutoff is SAME for all epsilon and all good-scale times.

The mathematical proof of the 16*T*N/D actual absolute bill reindexes true original squarefree incomparable m=ga,n=gb with unique g>D, then drops only the SOURCE mask for the purpose of an absolute upper; \`|k_T(ga,gb)|<=4T/(g sqrt(ab))\`. Two original reciprocal-root sums <=2sqrt(N/g) give 16*T*N/g² and the positive convergent tail \`sum_{g>D}g^-2<=1/D\`. This proof does not assert one-sided sign cancellation. Its exact finite triple reindex and inverse-power sum are still UNPROVED Lean Props; the new moving cutoff theorem consumes them only as explicitly named premises. They cannot be treated as kernel evidence until compiled.

Thus an artificial \`exp((1-beta)*T)\` cost is no longer a structural obstruction; its previous persistence was a cutoff-choice artifact.

## 3. An honest SAME-CONSTANT uniform primitive bound on the terminal gcd collar

Fix ANY L>=0 and T>=0. Let G_L(T) be the actual positive original gcd labels satisfying

  1<=g<=floor(exp T),  exp(T-L)<=g.

For each such g, write t=T-log g, so 0<=t<=L. Every original source primitive \`primitiveGcdPacket(H,M,T,g)\` uses a,b>=2 with ga,gb<=N, so a,b<=exp t<=exp L. By the genuine causal response bound \`0<=K_t(a,b)<=4t/sqrt(ab)\`, which is valid on each positive physical-time interval and not a model kernel, and by |mu(a)mu(b)|<=1,

  |primitiveGcdPacket(H,M,T,g)|
     <=4t*(sum_(a<=exp t) a^-1/2)^2
     <=16t*exp t
     <= **16 L exp L**.                                  (B)

This is uniform across ALL original H,M,T and ALL such growing g, with ONE constant depending ONLY on L. It is in particular a valid every-epsilon bound \`B_L*exp(epsilon*(T-log g))\` because t>=0 and the exponential factor>=1. No signed cancellation was needed: the shifted horizon is uniformly bounded by L.

The genuine original weighted-gcd sum over the ENTIRE terminal collar has

  sum_(g∈G_L(T))1/g <=1+L

by the positive harmonic integral comparison (if T<L, g starts from 1 but N<exp L and the same bound holds). Hence

  |sum_(g∈G_L(T)) g^-1 primitiveGcdPacket(H,M,T,g)|
       <= **16 L exp L (1+L)**.                          (C)

This is a constant independent of T,H,M,g and sign, rather than a rate-one estimate. It pays an entire real growing-gcd band, albeit NOT the interior all-g family required by the user. The \`1/g\` is EXACTLY the earlier causal time-shift, not an invented probability.

At L(T)=log(1+T), the band starts at g>=exp T/(1+T), precisely the same cutoff D_*(T) above, and the upper is

  16(1+T)log(1+T)*(1+log(1+T))
        =O(T(log T)^2),

which is all-positive-rate (and improves the O(T²) root-tail bound asymptotically). This time-dependent L version no longer has ONE per-g constant independent of T; the fixed-L statement above does.

A stronger discrete support observation has an authored Lean proof candidate: because the primitive reduced indices a,b>=2 are coprime, max(a,b)>=3. For any original g with 3g>N, ga,gb<=N is impossible and therefore

  **primitiveGcdPacket(H,M,T,g)=0**, for all original H,M,T.

No analytic input, kernel, model or sign is needed for this zero. It holds even before considering the physical mask.

New source: \`MoebiusPrimitiveTerminalGcdCollar.lean\`, blob \`67f997f4a6e152f64a6cdcdc111959bd948f161d\`. Its exact support-zero theorem and conditional terminal weighted summation have Lean proof candidate bodies. Full numerical (B), harmonic (C) are named \`TerminalPrimitiveSameConstantTarget\` and \`TerminalGcdHarmonicTarget\` UNPROVED Lean Props, not axioms or accepted proofs.

## 4. Remove the comparable half-rate *absolute penalty* from the signed ledger

Define the ORIGINAL comparable signed residual, rather than bounding its nonnegative part separately:

  C_signed(H,M,T) := P_evenComparable(H,M,T)
                     -C_oddCoprime(H,M,T).

Its source is the ORIGINAL complete signed causal kernel restricted to proper comparable pairs, and its previous split was exact. It can be positive or negative; no sign is assumed. For the previous high-high strong source,

  highHighStrong =
    C_signed + I_squarefreeIncomparable.                 (D)

Thus \`endpointSum\` can be compared with \`C_signed + I_incomparable\` rather than with \`48*T*sqrt N + I_incomparable\`. The fixed half-rate has been removed from the FORMAL SOURCE LEDGER, NOT from the unknown mathematical size of C_signed.

There is a genuinely applicable, noncircular CONDiTIONAL Mertens-power analysis that improves that size. Fix 1/2<theta<1 and assume the ACTUAL original Mertens-power bound

  |M(X)|<=C*X^theta,    every X>=1.                    (E)

This is weaker than RH if theta stays strictly above 1/2. It is not assumed to hold for every theta arbitrarily close to 1/2, and is NOT proved in the pinned Lean corpus. It follows classically from a corresponding sufficiently strong zero-free region by established contour methods, subject to the actual external theorem's scope.

For squarefree original m, a comparable pair n=m*k has nonzero Möbius product ONLY if gcd(m,k)=1 and k is squarefree; in that case

  mu(m)mu(mk)=mu(m)^2*mu(k).

For fixed m and real horizon T, the original positive weight \`w_(m,T)(k):=K_T(m,m*k)\` is NONINCREASING in k (the original r_n(u) is nonincreasing with n), and the source upper is

  0<=w_(m,T)(k)<=4T/(m*sqrt k).

With the original angle cutoff, \`|m-mk|>H\` is exactly \`m(k-1)>H\`. The true physical minimum diagonal test, when the nonzero \`mu(m)mu(mk)\` condition is respected, is equivalent to \`K_T(m,m)>=q_N\` and \`K_T(mk,mk)>=q_N\`; the latter is NONINCREASING in k. The endpoint membership mk<=N is an upper cutoff. Thus for each original m the nonzero selected multipliers k form an INTEGER INTERVAL, intersected with the genuine Möbius coprimality/squarefree coefficients. No sign-dependent selection occurs.

Define the genuine coprime Möbius prefix

  M_m(X)=sum_(1<=k<=X, gcd(k,m)=1)mu(k).

The exact ordinary arithmetic Dirichlet convolution identity is

  mu(k)*1_{gcd(k,m)=1}
       =sum_(d|k, every prime factor of d divides m)mu(k/d).

This is verified independently by Euler products on each prime power; it does not use a prime number theorem. Summing to X and using (E) yields

  |M_m(X)| <= C*X^theta * F_theta(m),
  F_theta(m)=prod_(p|m)(1-p^(-theta))^(-1).              (F)

The factor F_theta(m) is generally unbounded as m grows; claiming a completely uniform coprime prefix constant independent of m would be unjustified. Crucially, however,

  Z_theta :=sum_(m>=1) mu(m)^2*F_theta(m)/m^(theta+1/2)
            =prod_p (1+ p^(-theta-1/2)/(1-p^(-theta))) <∞,

because theta+1/2>1.

Finite Abel summation on the original selected k-interval (L_m,U_m] uses (F), monotone nonnegative w(k), and the true source upper w(k)<=4T/(m sqrt k). The discrete variation sum involves k^(theta-3/2), and since theta>1/2 it grows like U_m^(theta-1/2)/(theta-1/2). Thus, with an explicit positive finite C_theta independent of m,H,T,

  |sum_(k in selected interval, gcd(k,m)=1)
       mu(k)K_T(m,mk)|
    <= C_theta*C*F_theta(m)*(T/m)*(N/m)^(theta-1/2).

Paying BOTH ORIGINAL orientations and summing m with Z_theta then gives

  **|C_signed(H,0,T)| <= C_theta' C*T*exp((theta-1/2)*T)**.     (G)

This is a genuine conditional source-arithmetic improvement over the absolute 1/2 exponent: for each fixed 1/2<theta<1, the new exponent theta-1/2 lies strictly in (0,1/2). It does NOT deliver every positive rate from ONE fixed theta, and the Euler-product constant deteriorates as theta approaches 1/2. The proof neither assumes RH nor the desired full primitive signed bound, but it depends explicitly on a real Mertens-power input.

The exact signed comparable source identity and finite endpoint consumer are Lean PROOF CANDIDATES; the finite coprime convolution, source mask interval and weighted Abel/Euler-product estimates have not been elaborated and are separate UNPROVED \`CoprimeMertensConvolutionTarget\`, \`CoprimeMertensPowerTarget\`, \`SignedComparablePowerTransferTarget\` Props, NOT assumed unconditionally. \`ActualMertensPower theta C\` is the actual named external arithmetic hypothesis.

New source: \`MoebiusComparableSignedMertens.lean\`, blob \`c0df1c132b6dc96ea953d98b63da97dc837a8887\`.

## 5. The ONE uncompensated original signed source and lossless endpoint return

Choose the same original moving gcd cutoff for every horizon and every exponent:

  D_*(T)=max(1,floor(exp T/(1+T))).

Define the true source signed compensated core

  Comp(T,H) := C_signed(H,0,T)
               +smallGcdIncomparableCross(H,0,D_*(T),T).

The previous exact original ordered source identities prove

  pickupCross(T) =
      PutnamGap(H,T) + WeakPhysical(H,T)
      + Comp(T,H) + LargeGcdIncomparable(H,0,D_*(T),T).  (H)

Every signed term is present exactly once, including both ordered orientations, the genuine positive comparable-even terms, the genuine negative odd-coprime terms, all squareful zeros, the exact birth cutoffs, the source-specific physical mask and original diagonal subtraction. This is a strong improvement in LOGICAL TARGET CHOICE: no positive comparable half-rate term is introduced by the decomposition.

For the source's actual gap schedule H_epsilon(T)=floor(exp(epsilon*T/2)), and the genuine weak-energy threshold q_N=(N+1)^(-6), the original endpoint quadrature and previous root-tail estimates give the source-analytic inequality

  endpointSum(T) <= (32/epsilon²)*exp(epsilon*T)
     +N² sqrt(Diag(T)/(N+1)^6)
     +Comp(T,H_epsilon(T))
     +32*T*(1+T)+1/4.                               (I)

The 32T(1+T) bound requires the finite root-tail/gcd ratio reindex and cutoff floor comparison, which remain explicit UNPROVED Lean Props. The complete source-ledger (H) and endpoint with the true unestimated large-gcd absolute bill have Lean proof-candidate bodies without those extra numerical assumptions.

All positive extras outside Comp in (I) are all-positive-rate. The source weak term is <=sqrt(2)*T exp(-T) in the existing mathematical review; the quadrature constant 1/4 is original and unchanged.

Consequently a genuinely one-sided EVERY-POSITIVE-RATE upper estimate for **Comp on ONE fixed adequately covering scale family** is sufficient for the original endpoint RH return. This is an explicitly OPEN \`CompensatedPrimitiveEveryRateOnFixedGrid\` Prop, never a theorem or axiom in the source. It is NOT logically required that EVERY primitive packet individually be small with one common B; cancellation across the gcd fibers and the real comparable source is allowed and may be essential. Thus the earlier "all-growing-g same-constant" primitive criterion is a valid but potentially OVERLY STRONG sufficient route, not a necessary characterization of the problem.

A proof of Comp all-positive-rate would still be major new mathematics with RH-strength consequences under the previously documented endpoint-to-RH link. This contribution does NOT prove it.

New source: \`MoebiusCompensatedPrimitiveEndpoint.lean\`, blob \`95879b75037cca9b4fafabd517df2a988eedc2af\`, namespace \`GRWTSK.NumberTheory.Moebius.CompensatedPrimitiveEndpoint\`, declarations \`allRateHighGcdCutoff\`, \`compensatedPrimitiveCore\`, \`pickupCross_eq_gap_weak_compensated_largeGcd\`, \`endpointSum_le_rate_compensated_with_real_gcd_bill\`, and conditional numerical \`largeGcd_abs_le_polynomial_of_elementary\`. \`AllRateHighGcdCutoffFloorTarget\` and \`CompensatedPrimitiveEveryRateOnFixedGrid\` are UNPROVED Lean Props.

## 6. Hostile tests and quantitative evidence

### Real source comparable packet is NOT always nonpositive

For T=log 6+0.14, N=floor(exp T)=6 and H=4, the ONLY distinct far-gap ordered comparable pair is (1,6) and (6,1). The actual original Möbius signs mu(1)=mu(6)=+1. The true original source K_T(1,6)≈0.0047711193496476 is positive and the actual physical diagonal d_T(6)≈0.0001446961499914 exceeds q_N=1/7^6≈0.0000084998597523, so this pair passes the actual source strong mask. Therefore C_signed(H=4,M=0,T)≈+0.0095422386992952>0. Any alleged unconditional "comparableSigned<=0" would be FALSE. A proof must retain the true sign cancellation structure. (Transcendental decimal values are numerical diagnostics; the sign is supported analytically by the actual positive original response after its birth.)

### Genuine original causal and finite arithmetic diagnostics

Independent reproducible Python source diagnostics, not a Lean proof:
- Five original causal GRWTSK signed comparable reindex fixtures N=18,31,48,72,90, H=1,2,3,4,5 (mpmath 70 digits) verify the exact full ordered comparable source equals twice the true coprime-quotient sum and equals positive-even minus negative-odd credit. The observed signed net comparable values were about -3.2444, -3.5570, -5.4983, -3.6410, -7.7398 respectively; their sign is not a theorem for all masks.
- 6,010 integer coprime Mertens-prefix convolution checks over m=1..35 and X=1..45 (the source test loops are 324+961+1575+1575+1575=6010); all exact integer identities PASS.
- Seven further original high-gcd/low-gcd/Putnam/weak/compensated source complete ordered decompositions N=16,24,35,48,64,80,96 at mpmath 75 digits: numerical signed source ledger discrepancies <3e-74. Each source-terminal gcd g in g>=N/(1+T) satisfied the same-constant t<=L signed packet bound, and the weighted terminal aggregate bound; high-gcd original absolute bill price also held.
- Composite/gcd source masks are retained; synthetic independent random signs were NOT used as evidence about original Möbius cancellation. No certified interval real arithmetic is claimed.

Hostile limits: the full primitive g=1 lies OUTSIDE every fixed-L terminal collar when T grows and remains RH-strength. Fixing an epsilon or a power theta>1/2 does not imply all rates. The new comparable-Mertens Abel result requires a genuine coprime factor F_theta(m) and a convergent Euler-product sum; treating the coprime prefix constant as independent of m would be an unsupported step. The original geometric strong mask must be an integer multiplier interval *only after* squareful zero terms are handled; unrestricted source mask simplification can be false. The all-rate large-gcd cutoff shifts a large family of g into the still unpaid small-gcd compensated core; it has not annihilated the genuine number-theoretic difficulty.

## 7. Acceptance and continuation

Lean source candidates have been created for all three new modules; no direct or transitive kernel proof has been claimed. The following pending real steps are explicit:
- verify source APIs and compile the prior direct imports and these new declarations under pinned Lean v4.34.1 / Mathlib Git \`d13f23b723b8a846827a245b89c10fc7d3f11612\`;
- prove elementary finite unique original divisor/gcd reindex and positive reciprocal-root/gcd root-tail bounds in Lean; prove the real floor/exp moving cutoff and terminal harmonic;
- prove coprime-Mertens convolution, weighted monotone kernel Abel, and source selection interval, all of which have complete mathematical arguments conditional on the true Mertens power input;
- establish actual RH-strength ONE-SIDED signed cancellation in the complete compensated source (or the more restrictive uniform per-g primitive source with a compatible comparable supplier), on a fixed affinely frequent set, without assuming the desired conclusion.

No root promotion, Mathlib/toolchain change, CI, native/remote Lean verification worker, scheduler or historical verification receipt was authorized or dispatched. No new \`sorry\`, \`axiom\`, \`admit\` or \`unsafe\` declaration was written in the new source by lexical preflight, which is NOT an axiom audit.

## 8. Research references

- Pinned original GRWTSK sources and already published mathematical review links above. Upstream pinned Mathlib \`Mathlib/MeasureTheory/Integral/IntervalIntegral/Basic.lean\`, blob \`2504147e2230a26eb804b0898004d0186c4e36a1\`, for genuine causal time-shift substitution.
- OpenAI, *Ordinary two-point correlations of multiplicative functions* (September 24, 2026), public mathematics release: https://mathcommunity.github.io/oai-math-revised/papers/Ordinary-two-point-correlations-of-multiplicative-functions-September-24-2026/. It states fixed nonproportional affine-form Liouville correlation power-logarithm savings (and a corrected Elliott theorem). Those source hypotheses and logarithmic rates do NOT imply the growing-gcd, growing-shift, physically masked, uniform all-positive-exp-rate primitive correlation targeted here. No paper theorem is imported into the new Lean modules.
- Clay Mathematics Institute, Riemann Hypothesis Millennium Problem: https://www.claymath.org/millennium/Riemann-Hypothesis/. The full RH remains OPEN; source-level progress is not an RH resolution.
