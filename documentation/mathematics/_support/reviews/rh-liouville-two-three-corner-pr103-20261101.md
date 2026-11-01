# RH continuation: signed 2-by-3 Liouville corner and merged PR103 exponent

Local attribution: grwtsk contributors.
Date: 2026-11-01 UTC.
Research status: complete elementary finite argument and independently checked rational comparison; local Lean source PROOF CANDIDATE ONLY. No Liouville all-positive-rate estimate, global RH proof, or cofinal numerical zero-count gap is claimed.

## 1. Current source and dependency atlas

Inspected grwtsk/math main starting at 915dc1a8bd53d093204806283d453b0a141788df and refreshed after concurrent main changes. Root AGENTS.md is blob 1abf89543f6f82c9623732f3a7389e1f65e969ed; root Lean v4.34.1; Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612; lake-manifest blob c8044c56be77c58e6f41cca024b25237c59e8c79. This review must be read at its resulting publication commit; intermediate heads are not publication pins.

Original source paths under GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory:

- LiouvilleCausalEnergyTarget.lean, blob a00aaa07c067b4c88203372870b5d5d151de0de4: actual ArithmeticFunction.liouville coefficients and causal waveform.
- LiouvilleWeightedPrefixSquareCriterion.lean, blob d62ab5b81eb8cec7b95964c88f875d3c2ef1f244: weightedPrefixSquareMoment, true all-rate target and open continuous/discrete and shift-identity interfaces.
- LiouvilleWeightedPrefixDoubling.lean, blob d3e65086541a95b27edf6faad3d47a956dce92c7: lambda(2m)=-lambda(m), harmonic doubling credit, exact complete complement.
- LiouvilleWeightedPrefixTwoAdicChains.lean, blob 64d18220eda5e09966c52cf222060652d878f431: original terminal kernel, complete ordered weightedPairForm, same-core and distinct-core carriers, and explicit remaining reindexing gates.
- LiouvilleDyadicSignedChainGram.lean, blob ba73fdb409cfde62c7e5cee7613ff4bbee1a10b6: true signed two-adic powers and complete ordered Gram.
- LiouvilleOddPrimeWeightedPrefixAbscissa.lean, blob 6cd289c5fce4754eab5f310d3d72b36bef30f00e: exact odd-prime filter and unremoved half-scale cross term.
- PadicPrimeLogarithmicDensity.lean, blob 7764823b46a9eb47422a2e9036d888ca818ac775: moving small-prime mean and square-root-plus-epsilon counting error.
- PadicMobiusPrimeWindowSeam.lean, blob 027d24046d0563be5cd66e01d7ecf3235d99f801: exact divisor-floor carry and genuine Mobius/log window.
- PadicMobiusHighPrimeFixedPower.lean, blob f92b660f347f832cf05474ffbf01fc48eab368e1: previous PR99/PR102 rational data, squarefree signed V_y window seam and conditional fixed-power discussion.
- MobiusWeightedPrefixPNTReturn.lean, blob 84d9b0613e11335088936cf80d1f341749cdedad: true square-divisor Möbius/Liouville weighted return, with named source qualification gates.

The original analytic multiplicity carrier is GRWTSK.NumberTheory.Zeta.Riemann.CanonicalZeroDivisor in the MSC2020 path ending NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalZeroDivisor.lean. PositiveHeightCountDeficit and CofinalTwoUnitNumericalReflectionGap share that directory; review the actual direct declarations and their unchanged multiplicity conventions before any new import. The finite-cofinal numerical gap is tracked by math#106, #135, #330, #1231.

Geometric and arithmetic alternatives remain separate: GodelObserverMetricVorticity.lean and GodelObserverRootTransport.lean in DifferentialGeometry; GodelPickupDilationTransport.lean and GodelPickupDilationExclusions.lean in the elementary number theory MSC hierarchy (#1543, #1547); DyadicPadicDelta.lean in CommutativeAlgebra (#1524); DyadicSignedTwoTermCohomology.lean (#1525); TypedEllipsoidAtlas.lean and ThreePhaseEllipsoidQuadratic.lean in ConvexAndDiscreteGeometry (#1496-#1500). Their distinct source and acceptance states are not overridden here.

## 2. A new exact finite mixed-prime packet

Fix a positive integer q and N>=6q. The four indices q,2q,3q,6q are distinct and belong to the ORIGINAL prefix inventory 1,...,N. Actual complete multiplicativity gives their true ordered signs

    (lambda(q), lambda(2q), lambda(3q), lambda(6q))
       = a (1,-1,-1,1), where a=lambda(q) and a^2=1.

No squarefree projection or replacement coefficient is used. Put

    K_N(m,n)=1/max(m,n)-1/(N+1).

The selected complete 4-by-4 *ordered* packet, with all sixteen entries, is

    P_N(q)=sum_{m,n in {q,2q,3q,6q}} lambda(m)lambda(n) K_N(m,n).

The six upper-triangle pairs appear with factor two. Let t=1/(N+1) and w=(1/q,1/(2q),1/(3q),1/(6q)). The diagonal and all twelve oriented off-diagonal contributions are exactly

    D_N(q)=sum_i (w_i-t)=2/q-4t,
    O_N(q)=-4/(3q)+4t.

Their sum is therefore the noncircular finite identity

    P_N(q)=D_N(q)+O_N(q)=2/(3q).

Proof: the ordered signed quadratic form for (a,-a,-a,a) is a^2(w1-w2+w3-w4); all terminal contributions cancel because the signed total coefficient is zero. The value is 1/q-1/(2q)+1/(3q)-1/(6q)=2/(3q). This uses only lambda(2q)=-lambda(q), lambda(3q)=-lambda(q), lambda(6q)=lambda(q), a^2=1 and elementary real algebra. Moreover N>=6q implies t<1/(6q), so O_N(q)<-2/(3q)<0: an explicit negative complete off-diagonal sector, not just a positive Gram restatement.

A direct independent exact-rational diagnostic tested all q=1,...,149 and N in {6q,8q,15q,20q}, including actual prime-factor Liouville signs, the sixteen source terms, D_N, O_N, and the strict negative bound. All 3,576 finite assertions passed. These checks are NOT Lean compilation or a proof for arbitrary q. The algebra above is the all-q mathematical argument.

The new Lean source LiouvilleTwoThreeCornerPacket.lean retains weightedPairKernel directly and supplies named candidates coefficient_three, coefficient_three_mul, coefficient_six_mul, fourCorner_alternating, twoThreeOrderedSource_eq_fourCorner, twoThreeOrderedSource_closed, twoThreeDiagonal_closed, twoThreeOffDiagonal_closed, weightedPairForm_eq_corner_add_complement. Its complementarySignedSource is defined as the unchanged complete weightedPairForm minus the quartet. In particular the exact source reconstruction is

    weightedPairForm(N) = 2/(3q) + complementarySignedSource(N,q),   1<=q, 6q<=N.

The complement includes every interaction with labels outside the quartet and every other distinct-odd-core covariance. Repeating quartets without a proved disjointness/reindexing theorem would double count entries; no such summation is asserted. Even a disjoint collection of O(log N)-size internal packets would not bound the complete mixed packet. The finite result makes one uncontrolled source sector explicit but does not improve the best global energy power by itself.

The exact weightedPrefixSquarePairFormIdentity relating weightedPairForm to the original J_N remains a named source qualification gate in the predecessor. Thus even after local compilation, no stronger identity than that actually proved should be inferred from it.

## 3. Refreshed, externally checked Dirichlet nonvanishing threshold

QuasiRiemannTracker PR99 merged at fc2f46afbfda62351055d3c12fcacd4f6916cc63 with theta=0.8733819666133. PR102 (head ad7b7edd47bee2fdff34165da5cc14cc0331db2c) subsequently merged on 2026-11-01, theta=0.87338196661320751993.

The strongest inspected, merged theorem is QuasiRiemannTracker PR103, head cae2e523d4ec22c05ea91ff44d68efb8fd02293f, merge commit 8b1a0167c8e324099884152181e3fb2206510e88. Its exact Candidate/Main.lean blob is 808d04cec892449707d23e81f94179e2738fdf1a, proving nonvanishing of DirichletCharacter.LFunction for all positive moduli and characters when Re(s) exceeds the rational T below, except the principal pole. The head's verify (closest-fraction-contact), admission, and qrh/pr-admission checks succeeded. These are external source-specific checks, not local GRWTSK acceptance.

    T =
    2804966284017490358030969257914123810640482798488248385236764587735806455694206308975383836842958115341512355256943573632654341
    /
    3211614609922119834694179379888743028634953588197852962423516288191911449231164741438582626063161096341458934143644085157872271.

T is strictly above (777-sqrt(1081))/852 and begins 0.873381966613207519929026778642.... It is NOT a proof of all-width contraction. The exact rational working threshold

    theta_w = 0.87338196661320751992903

satisfies T<theta_w<theta_PR102. Its corresponding working energy power

    alpha_w = 2 theta_w - 1 = 0.74676393322641503985806

is strictly smaller than the PR102 limit 0.74676393322641503986. The candidate module LiouvillePR103FixedPower.lean formalizes precisely these rational comparisons with norm_num; it imports no external theorem and does not disguise a foreign CI success as local checked mathematics.

For the *actual* Liouville source, a separate classical analytic return is required: zeta zero-free for Re(s)>theta_w, together with the corresponding reciprocal-zeta growth/Perron estimates, yields for every epsilon>0 L(x)=O_epsilon(x^(theta_w+epsilon)). Only under that supplied theorem does the unchanged integral satisfy

    J_lambda(T)=O_eta(exp((alpha_w+eta) T)), for all eta>0.

There is NO new unconditional proof of this analytic transfer in these files. The energy exponent is still strictly positive, so WeightedPrefixSquareAllRate remains open. No contraction with ratio q<1 from theta_w to 1/2 has been established. The reflected strip remaining possible under this input is 1-theta_w<=Re(s)<=theta_w.

The fixed-power gain is inherited from externally formalized Dirichlet nonvanishing, not from the finite quartet, Gödel geometry, or the prismatic stage.

## 4. Fejer, moving-prime, counting and the complete missing signed seam

The actual Fejer energy V_N(H), with both orientations of the cyclic covariance, has the exact finite identity V_N(H)=NH+2 sum_{1<=h<H}(H-h)C_N(h). Its zero mode gives H^2 L(N)^2 <= N V_N(H). The requested diffusive upper bound at H=ceil(N^(1-eta)) remains an unproved arithmetic theorem (#1530). Positive-semidefinite Fourier energy is a LOWER bound for V_N(H), not the missing upper bound.

The moving-prime decomposition preserves actual valuation parity:
lambda=a_y-2b_y, mu=U_y-2V_y, and the uniform squarefree signed V_{log Y} window balance needs error O_epsilon(Y^(1/2+epsilon)). The finite giant-prime cofactor identity is source-true when z^2>=Y and y<=z, but a positive giant-prime layer of order Y/log Y cannot be discarded. The medium-prime, repeated-prime and signed interaction terms must be kept in the complementary residual (#1548 and the prime-window reviews).

The terminal counting alternative is the strict cofinal inequality U_H<C_H+2 for complete actual zeta counts and certified critical-line multiplicity credit. The independent Anthropic formal-math zeta23 source (README blob 302fa9094863279d0ec83fca012d2b7bf59d5ccd, Statement.lean blob b8a95eb20cbade61a33f165004c34d1ce1674947, separate Lean 4.33.0-rc2 / Mathlib pins) supplies asymptotic two-thirds simple critical-line and five-sixths distinct proportions. They are not a cofinal strict two-unit bound. No finite set defined using the already existing zeros qualifies as an effective numerical certificate. #106/#135's total-count and interval-completeness obligations remain open.

## 5. Prismatic tube and Gödel/ellipsoid comparison attempts, with explicit losses

The actual existing complete 2-adic input is A=Z_2, I=(2), Frobenius phi=id and divided delta(x)=(x-x^2)/2. For a proposed degree-zero signed source C^0=A^4, a finite residue stage C_k^0=(A/2^k A)^4 (zero differential) has coefficientwise chain map r_k, commuting with r_{k+1,k}. Its induced H^0 kernel is exactly (2^k A)^4. Even at k=1, the original signed entries +1 and -1 are indistinguishable; r_1 is NOT injective. Completion may restore separated source coefficients only after proving the inverse-limit comparison. This degree-zero stage exercise is NOT the actual Bhatt-Scholze prismatic RGamma complex and does not establish a vanishing H^i target.

The REAL weighted source uses reciprocal weights at indices 2q and 6q. These reciprocals have negative two-adic valuation if q is odd, so the original real Gram is not simply an integral Z_2-valued pairing. Any true prism trace must pay denominator clearing, 2-power scaling, torsion, truncation, derived-completion and source-versus-target comparison defects, plus the missing map from a genuine off-line zeta multiplicity class. A surjection into a zero target group is insufficient; an injection and target vanishing are both still absent (#132, #1524, #1525).

The signed four-entry arithmetic source is the functional c=(a,-a,-a,a) on R^4 with the weighted kernel K_N. Its positive Euclidean diagonal is 2/q-4/(N+1), and its complete signed covariance is -4/(3q)+4/(N+1). These are NOT interchangeable. The current three-phase ellipsoid has Q(z)=3||mean z||^2+||u||^2+||v||^2+||u+v||^2. A typed map from that phase carrier into this arithmetic 4-entry carrier would need a specified rank, coefficients, phase transport, exact kernel intertwiner and the entire signed quadratic defect, with Čech overlap and fourth-witness errors. No such comparison or Weil-test-function return is supplied here (#1496-#1500).

The genuine Gödel observer has torsion-free Levi-Civita connection and nonzero vorticity. Its source shift by log(2) is an isometry and the separate causal pickup Gram has a proven dilation factor 1/2. These facts do not control the distinct-odd-core or mixed-prime regular covariance. The needed morphism would have to preserve the actual Liouville weights and exact support intervals; the upper-bound residual after transporting the quartet would still be the complete complementarySignedSource (and its cross terms), not zero (#1543/#1547). Hence neither geometric route is an independent weighted-energy supplier yet.

## 6. Proof comparison, evidence and the first missing theorem

The elementary 2-by-3 packet is unconditional as an ordinary finite argument. Its scope is four actual Liouville labels, not all arithmetic labels. A hostile all-ones sign fixture would give a different quadratic form and cannot reproduce the alternating packet; a model enforcing only lambda(2m)=-lambda(m) need not enforce lambda(3m)=-lambda(m). The new result genuinely uses both prime signs but is within the known family of finite prime-orbit cancellations; it is not claimed to be a novel global analytic estimate.

The PR103 improvement is external to grwtsk/math and uses finite rational and Bernstein certificates, conductor/source reserves, five counting windows, and checked real-analytic return. Its theorem concerns Dirichlet L functions, not a source-preserving automatic import of Liouville or RH into a different pinned Mathlib build. Source attribution and licenses remain with the external contributors.

Verification facets for BOTH newly written local Lean modules: SOURCE_PROOF_CANDIDATE; COMPILATION_NOT_RUN; EXPECTED_TYPES_NOT_RUN; FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN. The finite Python checks only verify sampled arithmetic. No native runner, scheduler, CI, new axiom, sorries, public root import, toolchain migration or Mathlib dependency edit is part of this increment.

The next mathematical obligation is a single independent signed bound for the COMPLETE remaining regular arithmetic covariance, at least better than the inherited fixed positive power, and ultimately

    for every eta>0, R_N <= C_eta (N+1)^eta,

where R_N is the original complete weightedPairForm minus a SOURCE-CERTIFIED and nonoverlapping family of paid prime-orbit packets. In particular merely selecting one quartet yields an equivalent all-rate missing bound: its exact 2/(3q) credit is bounded and cannot conceal the supplier. Alternatively find complete cofinal count certificates with U_H<C_H+2. Both terminal goals and canonical RH remain OPEN.
