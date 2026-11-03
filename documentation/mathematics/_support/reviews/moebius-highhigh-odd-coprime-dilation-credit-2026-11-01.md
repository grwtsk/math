# Original high–high strong Möbius core: complete odd-coprime dilation credit

Local mathematical attribution: grwtsk contributors.
Research date: 2026-11-01.
Disposition: full finite mathematical sign proof and exact signed packet partition; Lean **source proof candidates**, compilation / expected types / fresh kernel / full transitive axiom auditing NOT_RUN. Additional \`32T sqrt(N/M)\` ratio-thinness bound is proved analytically below but is deliberately an UNPROVED LEAN PROP target, never an axiom or an accepted Lean theorem. RH remains open.

## 1. Exact source: not a new geometric sign

The unchanged source in \`GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean\` and its later \`MoebiusEndpointLeastPrimeTypeII.lean\` and \`MoebiusFareyFaryKakeyaIncidence.lean\` is

  k_T(m,n)=mu(m)*mu(n)*K_T(m,n),
  K_T(m,n)=integral_0^T pickupResponse(m,u)*pickupResponse(n,u) du,

with ORIGINAL positive indices S_T={1,...,N}, N=floor(exp T), all squareful zero coefficients, exact birth windows, m!=n diagonal deletion and two ordered orientations. For T>=0 and m,n>=1, the literal causal responses are nonnegative so K_T(m,n)>=0 (\`MertensSignedPairDescent.responseGram_nonneg\`), not because a geometric overlap bit was asserted to equal a sign.

Earlier \`MoebiusEnergyMatchedArithmeticTube.lean\` constructs an actual index-typed Euclidean \`Tube 2\` family with genuine source energy-derived shading volumes. The already published \`MoebiusStrongEarlyIndexCollar.lean\` defines the exact strong selected predicate

  highHighSelector(H,M,T,m,n) =
    m!=n AND strongRelation(shortGapSet H, originalEnergyFamily T,
                            sourceCollarSigma H T,weakPhysicalThreshold T,m,n)
          AND m>M AND n>M.

Its genuine complete ordered signed packet is \`highHighStrongCross H M T\`. The original endpoint comparison already pays the Putnam short gaps, the weak-energy physical sector, the early-index packet and a single quarter-unit quadrature defect; **the high–high packet remains dense and signed**.

## 2. Algebraic coprime-odd quotient: every selected edge is nonpositive

Define, for the ORIGINAL integer m,n:

  OddDirected(m,n) iff
    exists k>1, coprime(m,k), mu(k)=-1, n=m*k.

  OddEither(m,n) iff OddDirected(m,n) OR OddDirected(n,m).

This is an exact divisibility and Möbius criterion, NOT a chosen sign guess. A k with mu(k)=-1 is squarefree with an odd number of distinct prime factors; it may be prime or composite. The coprimality guard is essential for the product equality (without it, the original product is squareful and its Möbius coefficient may vanish).

For n=m*k with coprime(m,k), the genuine Mathlib \`ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime\` gives

  mu(n)=mu(m)*mu(k)=-mu(m).

Therefore

  k_T(m,n)= -mu(m)^2*K_T(m,n) <=0.                    (A)

When m,n are reversed, the original source kernel satisfies k_T(m,n)=k_T(n,m) by the SAME real interval integral and original scalar product. This is not positivity from Gram symmetry: (A) uses the actual Möbius sign and positive physical-time real response functions separately. If mu(m)=0, (A) is exactly zero, not a fabricated negative saving. If T=0, K=0; if T<0 the nonnegative-integral argument does not apply, so the source theorem explicitly requires T>=0.

The relation is genuinely broader than the prior **single-prime** source \`MertensSignedPairDescent.PrimePair\`. For example m=7,k=30,n=210 has gcd(7,30)=1, mu(7)=-1, mu(30)=-1, mu(210)=+1. The quotient 30=2*3*5 is composite, so the pair is not a one-prime dilation; its source product is negative. It remains a true pair in the full proper-divisibility source of \`MoebiusDivisorCausalGramCollapse\`. These two different decompositions must NOT have their negatives both credited unless a disjoint-source partition is proved.

## 3. Exact original selected high–high packet and arithmetic credit

Let \`S_odd(H,M,T)\` be the original signed ordered sum over the previous high–high strong mask AND OddEither(m,n). Let \`R_nonodd(H,M,T)\` be the exact same original signed high–high source over the complement of OddEither. Finally set

  C_odd(H,M,T)=sum_(selected odd pairs) |k_T(m,n)| >=0.

The proof applies (A) independently to each original selected ordered pair (including both orientations and zero terms), giving the mathematical theorem

  S_odd(H,M,T)= -C_odd(H,M,T) <=0.                    (B)

The original high–high strong selected relation is exhaustively and disjointly partitioned by OddEither versus its negation BEFORE any absolute inequality. Thus

  S_strong(H,M,T)=S_odd(H,M,T)+R_nonodd(H,M,T)
                 =R_nonodd(H,M,T)-C_odd(H,M,T).       (C)

No signed pair is deleted. The remainder includes incomparable original source pairs, coprime even-quotient comparable pairs, and any other unselected original source term. Its sign is UNCONTROLLED; it is not asserted nonnegative, all-rate small, or equivalent to a positive physical shading mass.

By (B)-(C),

  S_strong(H,M,T) <= R_nonodd(H,M,T),

and the complete original endpoint gets the stronger exact signed inequality

  endpointSum(T) <= 4*|A_H|*T²
    +N² sqrt(q_N*D(T))
    +32*T sqrt(MN)
    +R_nonodd(H,M,T)-C_odd(H,M,T)+1/4,              (D)

where A_H={1,...,H}, q_N=(N+1)^(-6), D=pickupDiagonal(T)<=2T², and all original Möbius coefficients, birth cutoffs, signs and orientations remain. For H=floor(exp(epsilon*T/2)), the first term has the already published unconditional bound 32/epsilon²*exp(epsilon*T). The subtraction of C_odd is licensed by (B), not an independently guessed credit. A single selected strictly negative original edge gives a lower bound \`C_odd >= |k_T(m,n)|>0\`, showing the result can be genuinely stricter.

The new added module \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusStrongOddCoprimeDilation.lean\` contains Lean source proof candidates for the original multiplicative sign, prime inclusion, genuine divisor containment, both orientations, every selected term nonpositive, the exact disjoint partition, the paid positive credit, the original endpoint return, and the single-edge strictness criterion.

## 4. A second unconditional arithmetic bound: comparability is thin

The negative odd source credit cannot itself be exponentially dense at leading rate one. This is not a guess from signed arithmetic: it follows from the original true source kernel upper

  |k_T(m,n)| <= 4*T/sqrt(m*n)                     (T>=0),

already proved as a candidate in \`MoebiusStrongEarlyIndexCollar.actual_sourceKernel_abs_le_root\`.

For each unordered selected odd-coprime pair, orient it with smaller index m and larger n=m*k, k>=2, gcd(m,k)=1, mu(k)=-1, m>M and mk<=N. The ratio k is UNIQUE for any fixed m,n; at most two original ordered orientations represent this unordered pair. Therefore, without dropping any selected source sign,

  0<=C_odd(H,M,T)
      <=8*T * sum_(m=M+1)^N 1/m
                  *sum_(k=2)^floor(N/m) 1/sqrt(k).

For each positive m the elementary integral comparison gives

  sum_(k=2)^floor(N/m) k^(-1/2) <=2sqrt(N/m).

Hence

  C_odd(H,M,T)
      <=16*T*sqrt(N) * sum_(m>M) m^(-3/2).

For integers M>=1, the decreasing positive summand satisfies

  sum_(m=M+1)^infinity m^(-3/2)
     <= integral_M^infinity x^(-3/2)dx
     = 2/sqrt(M).

Thus, for every original T>=0, H>=0, M>=1,

  0<=C_odd(H,M,T) <=32*T*sqrt(N/M).                (E)

This is unconditional elementary mathematics at its exact scope. For M=floor(exp(alpha*T)), 0<alpha<1 and sufficiently large T, it has exponential rate (1-alpha)/2, STRICTLY below one-half. The prior \`MoebiusDivisorCausalGramCollapse.lean\` paper target controls the *complete* comparable source at a half-rate, while (E) is a sharper height-dependent estimate for its selected odd/strong high–high subpacket; the two sources are not disjoint and cannot be counted twice.

**Formal boundary:** the Lean module records (E) as \`HighHighOddCreditRootTailTarget : Prop\`, NOT a theorem, because the required full finite multiplier reindexing and the \`m^(-3/2)\` tail comparison have not been compiled against the pinned Mathlib. The exact sign/partition module is also still a source proof candidate until actual compilation. Do not cite this unproved Lean Prop as a kernel theorem.

## 5. Independent finite diagnostics and hostile tests

Executed an independent Python 3 standard-library \`fractions.Fraction\` diagnostic, fixed RNG seed 20261101: **286,546 exact rational assertions PASS** across 900 randomly generated original-index sets N in [2,24] with independent nonnegative three-feature rational source Grams; all original finite Möbius signs and the exact squared stereographic angular collars were used. Checks included the complete original ordered four-packet decomposition, near-angle empty outside Putnam, weak/strong energy-matched area threshold after cancellation of the common factor pi, exact high–high odd/nonodd partition, and nonpositive paid odd credit. In 287 synthetic cases the actual calculated paid odd credit was strictly positive. These Grams are illustrative finite positive source models, NOT the original causal interval integral and NOT Lean proof checking.

Separately, **five actual Möbius causal-response Gram numerical fixtures** at 75 decimal digits (N=12,24,48,64,80; varying H,M) verified the selected original-source ordered partition and positive odd-ratio credit:
- N=12,H=0,M=0: 18 ordered odd pairs, credit approximately 3.92572841562.
- N=24,H=1,M=2: 16, credit approximately 0.570574180771.
- N=48,H=2,M=4: 38, credit approximately 0.768234634263.
- N=64,H=2,M=6: 38, credit approximately 0.55464047468.
- N=80,H=3,M=8: 54, credit approximately 0.404607134012.

These checks used the analytically integrated ORIGINAL \`pickupResponseGram\` at T=log N (continuous elementary formula), not the synthetic rational Gram. Max observed finite decomposition residual was below 5e-74 at the chosen precision. Values have no certified interval enclosures and therefore are NUMERICAL DIAGNOSTICS only, not exact real proof or Lean certification.

A separate composite-quotient fixture at N=300,T=log 300,H=10,M=5 used m=7,k=30,n=210; the true projective gap was ≈0.27341152 versus source collar sigma≈0.00024444, and the exact-energy matched min diagonal was ≈6.31438e-5 versus threshold ≈1.34462e-15. Its actual signed causal kernel was ≈-0.00262113. This illustrates STRICT extension beyond prime-only ratio selection. The source-theoretic sign is exact; the numerical threshold and integral values are exploratory, not certified proof fixtures.

Hostile controls: the even squarefree quotient k=6 has mu(k)=+1 and may give a **positive**, not negative, original pair; it is correctly excluded. The non-squarefree k=4 has mu(k)=0, not -1; excluded. For shared-factor m=3,k=3, actual mu(9)=0 so the coprime sign identity must not be applied. Original n with mu(n)=0 remains a zero term, not a lost source ID. T=0 contributes zero integral. M>=N or H>=N may yield empty selected packets; identities remain valid without pretending a strict credit exists. An external theorem about general Kakeya overlaps does not imply (B); the sign comes ONLY from the actual Möbius multiplicativity.

The neighboring published \`MertensSignedPairDescent.lean\` covers true prime multiples and some source credits; \`MoebiusTwoPrimeSignedPacketCore.lean\` covers full 2/3 cube checkerboards and a different odd-base ORBIT aggregation; \`MoebiusDivisorCausalGramCollapse.lean\` addresses the complete comparable source by divisor Möbius convolution. The present relation is specifically **individual original source edges** with ANY coprime odd-Möbius multiplier, then source-preserved high–high **strong geometric** masking and an explicit paid credit. This is a reusable formalization/source-return improvement, not a claim of priority for the classical Möbius multiplication law or a proof of the two-prime cube source's broader targets.

## 6. Remaining mathematics and acceptance

The dense signed \`highHighNonOddCross\` remains open. Removing the entire odd-coprime comparable packet leaves all large incomparable source pairs and coprime even-quotient pairs, with no noncircular \(e^{\varepsilon T}\) cancellation theorem for every ε>0. Even a negative credit that is strictly positive at some finite horizons does not establish an all-positive-rate estimate. The unconditional thinness bound (E) also shows this source-negative part alone is too small to pay a rate-one dense core; future work must prove cancellation in the remaining incomparable signed correlations.

The exact new Lean source, status targets, review and full source hashes are pinned in the passive verification manifest. Pinned Lean v4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. No local \`lean\`/\`lake\` executable was available. No remote compiler, CI, scheduler, foreign repository mutation, root-import promotion, source-credential change or native proof replay was authorized/launched. \`COMPILATION_NOT_RUN\`, \`EXPECTED_TYPES_NOT_RUN\`, \`FRESH_KERNEL_NOT_RUN\`, \`TRANSITIVE_AXIOM_AUDIT_NOT_RUN\`. Static source scan is not a transitive audit.
