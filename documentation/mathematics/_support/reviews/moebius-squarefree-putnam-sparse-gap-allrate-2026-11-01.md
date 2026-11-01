# The exact Möbius squarefree sparse-gap bound, and the remaining dense long-gap RH frontier

Local attribution: grwtsk contributors.
Research date: 2026-11-01.
Mathematical status: complete elementary argument for a noncircular, all-positive-rate sparse-gap subproblem. The full all-positive-rate signed bound for the surviving squarefree Möbius correlations (rough/mixed/matched) is OPEN. Lean files are SOURCE_PROOF_CANDIDATES; compilation, fresh kernel, and transitive axiom audit are NOT_RUN.

## The original theorem requested

Fix a single set of nonnegative logarithmic scales G and a coverage certificate

  AffineFrequent G

with fixed constants chosen before the exponent. The requested original signed source is

  X(T) = pickupCross T
       = sum_(1<=m,n<=floor(exp T), m!=n)
           mu(m)*mu(n)*pickupResponseGram T m n.

The original prime-channel routing, squareful cancellation and elliptic trace comparison establish an EXACT identity with this X, not a smaller error term. After the squareful matched sector is removed, the untouched rough/rough, BOTH rough/matched orientations, and squarefree/squarefree matched pairs still sum to X. The target is SubexponentialOn pickupCross G, with EVERY epsilon>0. The existing consumer

  GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion.riemannHypothesis_of_cross_good_scales

proves this target plus AffineFrequent G implies the canonical RH proposition, using the unchanged positive energy and signed Laplace transform. The targeted all-rate statement therefore remains at least RH-strength. It has NOT been established here. Clay Mathematics Institute still lists RH as unsolved as of this research date (https://www.claymath.org/millennium-problems/).

The attached earlier RH proof-path review gives the same fixed-scale target and the explicit dyadic choice G={j log 2}; it is a historical snapshot pinned at 7a6f1142..., not a current-main verification receipt. The current source references below control the presently published statements.

## Noncircular theorem actually proved in mathematics

Let A be ANY finite set of natural distances, T>=0, N=floor(exp T), and define the actual signed gap subpacket

  X_A(T) =
    sum_(m,n in {1,...,N}, m!=n, Nat.dist m n in A)
      mu(m)*mu(n)*pickupResponseGram T m n.

This is precisely the preexisting endpointGapSetCross A T, not a newly invented correlation kernel. Its response is the original

  r_n(u) = 2*(1/sqrt(n)-exp(-u/2)) for u>=log n, else 0,
  pickupResponseGram T m n = integral_0^T r_m(u)*r_n(u) du.

Write f_n(u)=mu(n)r_n(u) and d_n(T)=integral_0^T f_n(u)^2 du. The complete original diagonal is D(T)=sum_n d_n(T), and the repository source proves 0<=D(T)<=2T^2.

**Integrated Young inequality.** For all original indices m,n and all real u,

  2*abs(f_m(u)*f_n(u)) <= f_m(u)^2+f_n(u)^2

by (abs(f_m)-abs(f_n))^2>=0. Since the actual responses are continuous on [0,T], the integrals are well-defined. The triangle inequality for integrals and termwise integration give

  2*abs(mu(m)*mu(n)*pickupResponseGram T m n)
     <= d_m(T)+d_n(T).

This uses the genuine signed kernel and diagonal, and introduces no positivity assumption about mu(m)mu(n).

**Actual neighbor count.** For a fixed original integer m and positive distance h, there are at most TWO possible partners n with Nat.dist m n=h: n=m+h and (if nonnegative) n=m-h. Consequently

  degree_A(m) <= 2 * card(A),

uniformly over the ORIGINAL finite inventory, all prime tags, and all residue/squarefree statuses.

**Finite Putnam argument.** Apply triangle inequality to the COMPLETE signed ordered gap sum only after it is formed. Pay each ordered edge (m,n) by (d_m+d_n)/2 from the integrated Young inequality. Both orientations are retained. Symmetry of the relation implies

  abs(X_A(T))
    <= sum_m degree_A(m)*d_m(T)
    <= 2*card(A)*D(T)
    <= 4*card(A)*T^2.                                  (1)

There is no omitted diagonal (the original m!=n exclusion remains), no uncharged mixed term and no fabricated arithmetic supplier. This is an unconditional mathematical proof at every T>=0.

For epsilon>0 choose exactly the original existing Putnam band

  A_epsilon(T) = Finset.Icc 1 (floor(exp((epsilon/2)*T))).

Its cardinality is at most exp((epsilon/2)*T). Since exp(z)>=z^2/2 for z>=0,

  T^2 <= (8/epsilon^2)*exp((epsilon/2)*T).

Putting these into (1) gives the explicitly quantified all-rate theorem

  abs(X_(A_epsilon(T))(T))
     <= (32/epsilon^2)*exp(epsilon*T)                  (2)

for EVERY epsilon>0 and EVERY T>=0, without restricting to favorable scales. Thus it holds on every fixed G, in particular the source's canonical dyadic scales.

Non-squarefree source indices have mu=0. Therefore replacing the selected gap packet by the same EXACT original double sum filtered to Squarefree m AND Squarefree n changes no term. The theorem (2) is consequently a true all-positive-rate bound for the surviving original squarefree correlations IN THE ENTIRE selected additive band. It includes the rough/rough, rough/matched BOTH directions and matched/matched prime-fiber routing cases whenever their original additive distance is in the band.

This is the specific complete partial arithmetic proof obtained. The old Putnam source declared the Gram-Young, neighbor count, gap energy and all-rate gap sector as Props but did not supply complete proof bodies. The new additive Lean sources contain explicit candidate proofs of these claims, preserving original definitions.

## Exact remaining dense long-distance source

Define

  R_long(epsilon,T) =
     pickupCross T -
       endpointGapSetCross (putnamRateGapSet epsilon T) T.

This is the original signed source minus the actual proved short-distance contribution. No elliptic projection, positive Gram or free residual coefficient is inserted.

From (2), for a FIXED set of scales G with the source's exact SubexponentialOn quantifiers,

  [R_long(epsilon,T) has all-positive-rate one-sided bounds on G]
    IFF
  [pickupCross T has all-positive-rate one-sided bounds on G].

Proof: if R_long(epsilon,T)<=C_epsilon exp(epsilon*T), add the signed short-gap packet and use its absolute bound (2). Conversely, if pickupCross T<=C_epsilon exp(epsilon*T), subtract the signed short-gap packet and use the SAME bound for its negative. In both directions enlarge the constant by 32/epsilon^2 and keep the same nonnegative starting time. This is an equivalence with the same fixed G, not a proof of its premises.

If the fixed G is AffineFrequent and the true dense-long-gap condition is supplied, the original good-scale theorem gives RH. That is a conditional return, and our work does NOT establish the dense-long-gap hypothesis. The long-distance packet contains the surviving squarefree correlations and all rough/mixed orientations for |m-n|>exp(epsilon*T/2). Its relative density is high for epsilon<2, so the sparse degree estimate cannot be extended to it without genuinely new signed arithmetic information.

## Hostile independent check

Replacing the original Möbius signs by the constant sequence +1 retains the same response functions, the same finite index/neighbor geometry and nonnegative Gram. That counterfeit sequence has summatory M(x)=floor x and pickup primitive of size exp(u/2); its COMPLETE energy is of order exp T, so a source-independent all-positive-rate estimate for the full dense packet is false. This is a counterexample to extending the sparse-band estimate through geometry alone, not a replacement for the original arithmetic function. Genuine Möbius cancellation must enter precisely in the complementary dense sector.

The original elliptic source bank at p=7 and 19 gives a second obstruction: its rank-one trace packet is positive quadratic in N and its signed residual has a forced negative quadratic main term. Bounding those pieces separately by absolute values cannot produce the requested rate, even though their exact sum is the original Möbius X. The current sparse-band proof does not discard that residual or use it as a source-free positivity input.

## Independent diagnostic and scope

The original r_n Gram integral admits an elementary closed form at T>=max(log m,log n), with L=max(log m,log n):

  G_T(m,n) = 4 [ (T-L)/sqrt(m*n)
              + 2*(1/sqrt m+1/sqrt n)*(exp(-T/2)-exp(-L/2))
              + exp(-L)-exp(-T) ].

Otherwise it is zero. The integrand source itself provides this integral; no new analytic assumption is used. Independent floating-point numerical checks at N=30,100,500,1000, choosing T=log N and corresponding epsilon=0.5,0.5,0.5,0.4, gave absolute short-gap packets respectively about 5.6205,11.7595,32.0797,30.6916, against coarse diagonal majorants 92.55,254.49,617.94,572.61. These tests are only diagnostics (ordinary floating-point, not interval-certified). They do not support any all-rate global claim.

A separate exact combinatorial check verifies the neighbor bound for each N<=100, m<=N, and A subsets selected from the first five distances; finite verification is not a Lean proof. The universal argument above is the proof.

## Source pins, declarations and verification

Current source baseline was read from grwtsk/math main at c737c20a4cb6c7cbc8758ab305efa8ef1f2898bd. The true source files are:
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointPutnamEnergyCounting.lean, Git blob e04dc68d2ca268d88d43725d0963c5414d216c6d (original endpointGapSetCross and four gap/Young/energy research Props);
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointLeastPrimeTypeII.lean, Git blob fb77710105395da0394c930ef702b893f2f2f87f (original complete rough/mixed/Type II split);
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEllipticSquarefulCancellation.lean, blob 1964bbca27852543adbd138272ee54b9f9956ccd (real squarefree/squareful source);
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/GoodScaleEnergyCriterion.lean, blob ca3ae4975b20cf796a167308a9e87546c6001c41 (true AffineFrequent and RH consumer);
- pinned upstream Mathlib/MeasureTheory/Integral/IntervalIntegral/Basic.lean, blob 2504147e2230a26eb804b0898004d0186c4e36a1 (real integrated monotone, Young and additive APIs);
- pinned Mathlib/Data/Nat/Dist.lean, blob ce87df40e68675f34ddacd742bba478b99719f22 (distance and two-neighbor arithmetic).

New additive Lean source candidate modules:
1. GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointPutnamSparseGapYoung.lean: source_gram_young, source_gram_young_all, gap_neighbor_card_le, gap_neighbor_count_all.
2. GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointPutnamSparseGapAllRate.lean: original_sparse_gap_abs_le, original_sparse_gap_quadratic, putnam_sparse_gap_all_rate, squarefreeSparseGapPacket, endpointGapSetCross_eq_squarefree_sparse, squarefree_sparse_gap_all_positive_rates, putnam_rate_gap_all_rate.
3. GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointDenseLongGapSource.lean: denseLongGapSource, DenseLongGapAllRateOn, denseLongGapAllRateOn_iff_crossOn, riemannHypothesis_of_dense_long_gap_good_scales.

Lean v4.34.1, Mathlib revision d13f23b723b8a846827a245b89c10fc7d3f11612. Source-only proof candidates: parsing NOT_RUN, compilation NOT_RUN, expected declaration types NOT_RUN, fresh independent kernel replay NOT_RUN, transitive axiom/sorry/unsafe audit NOT_RUN. No claim of a new proof of RH, BSD, or the dense long-gap arithmetic estimate. No new research axiom, sorry term, controller, scheduler, root import or foreign repository edits.

This elementary Putnam degree/energy method is not claimed as new mathematics. The source-local accomplishment is an explicit candidate formalization of the original unfinished sparse gap Props, plus a bounded source-preserving squarefree and RH-return comparison. Current related logarithmically averaged two-point Chowla estimates concern a different average and do not establish this complete signed natural-scale bound; see Scott D. Hughes, arXiv:2609.28526 (2026), for scope comparison. No equivalence to unweighted pointwise Chowla is presumed.

The single genuinely open arithmetic task is now the signed all-positive-rate estimate on the SAME fixed affinely frequent G for the dense long-distance packet R_long(epsilon,T) after the proven short-gap contribution is removed, for every epsilon>0. That would complete the requested RH-strength statement; it is NOT proved here.
