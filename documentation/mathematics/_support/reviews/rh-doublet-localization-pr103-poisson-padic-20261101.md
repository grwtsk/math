# RH continuation: signed dyadic doublet localization, integer-cleared 2-adic tube, and a stronger PR103 Poisson zero frame

Local attribution: grwtsk contributors. Date: 2026-11-01 (UTC).
Classification: analytically derived, unconditional finite arithmetic results; a conditional improved zeta-zero sampling frame; four local Lean source proof candidates. No canonical RH, unconditional all-positive-rate Liouville energy, effective cofinal numerical zero inventory, actual prismatic cohomology return, or source-bound Lean acceptance is asserted.

## 1. Current source atlas and frozen mathematical identities

The investigated math source base is grwtsk/math/main at 57f6c134f177c4c97cb178a6cb42b0d5805e68da, with complete-tree publication to follow after a refreshed expected-head lease. AGENTS.md blob 1abf89543f6f82c9623732f3a7389e1f65e969ed, Lean toolchain v4.34.1 blob ba8ebf2dbaf6a668cd2a0e086186d6d569b69ff5, Lake Mathlib revision d13f23b723b8a846827a245b89c10fc7d3f11612, and lake-manifest blob c8044c56be77c58e6f41cca024b25237c59e8c79 are unchanged.

The ORIGINAL arithmetic source is GRWTSK.NumberTheory.LiouvilleCausalEnergy.coefficient n = the integer Mathlib ArithmeticFunction.liouville n cast to the reals, LiouvilleCausalEnergyTarget.lean blob a00aaa07c067b4c88203372870b5d5d151de0de4. The unchanged all-positive-rate objective is LiouvilleWeightedPrefixSquareCriterion.WeightedPrefixSquareAllRate in LiouvilleWeightedPrefixSquareCriterion.lean blob d62ab5b81eb8cec7b95964c88f875d3c2ef1f244:

    J_lambda(T) = integral from 1 to exp(T) of L(x)^2/x^2 dx;
    for every eta>0, exists A_eta>=0, for every T>=0,
       J_lambda(T) <= A_eta exp(eta*T).

For positive integer N the finite ORIGINAL source is

    J_N = sum_{1<=k<=N} L(k)^2/[k(k+1)]
        = sum_{1<=m,n<=N} lambda(m)lambda(n) K_N(m,n),
    K_N(m,n) = 1/max(m,n)-1/(N+1).

The last equality is a complete elementary finite telescoping/Fubini identity; its corresponding existing Lean proposition WeightedPrefixSquarePairFormIdentity (LiouvilleWeightedPrefixTwoAdicChains.lean, blob 64d18220eda5e09966c52cf222060652d878f431) is still an explicit qualification gate, NOT kernel accepted. The original doubling lambda(2m)=-lambda(m) is in LiouvilleWeightedPrefixDoubling.lean blob d3e65086541a95b27edf6faad3d47a956dce92c7. The previous complete signed q,2q,3q,6q panel is LiouvilleTwoThreeCornerPacket.lean blob 8735d32385d7e69657849febc9b5ae1b7106263e.

The original actual nontrivial zeta-zero subtype and analytic multiplicity are GRWTSK.RiemannHypothesis.CanonicalZeroDivisor.ZeroPoint and multiplicity (CanonicalZeroDivisor.lean blob 68178fd4b3342993981858930aa4440f57bd4052). PositiveHeightCountDeficit.lean blob e439289a4605b5c05f94286075477efea0b95473 and CofinalTwoUnitNumericalReflectionGap.lean blob b32437383f21a4d44f23b4f56f843c0e19725927 retain the complete positive-height count and strict reflected-pair consumer.

Relevant competing and complementary constructions: PadicPrimeLogarithmicDensity, PadicMobiusPrimeWindowSeam, PadicMobiusHighPrimeFixedPower; LiouvilleWeightedCyclicEnergy and LiouvilleOddPrimeWeightedPrefixAbscissa; GodelObserverMetricVorticity / GodelObserverRootTransport / GodelPickupDilationTransport (#1543/#1547); DyadicPadicDelta.lean blob 53d5f46e7613933bb3a946d540163b8588aedda5, DyadicPadicResidueTower.lean blob 38428c91dd4624e73c8ab3348e8ed3d4882c38de, DyadicSignedTwoTermCohomology.lean blob 418fe814340faa40c763fcc7252833ab80cd65d6 (#1524/#1525); TypedEllipsoidAtlas and ThreePhaseEllipsoidQuadratic.lean blob 942cf33f238a7f4ff4776da19214049969c58aad (#1496-#1500); IntegerPoissonZeroFrame/OptimalAbscissa.lean blob fb241b8ba0713360a74519ccb4db517a8303f20a and IntegerPoissonZeroFrame/SevenEighthsStrip.lean blob f3cbc82122fd38a387d77cdd7042345832a3ce21.

## 2. A genuinely finite signed localization theorem for all positive q,r

Fix N>=2*max(q,r), q,r>=1. In the ORIGINAL real weighted pair kernel form define the one-orientation four-term cross packet

    C_N(q,r) =
      lambda(q)lambda(r)K_N(q,r)
      +lambda(q)lambda(2r)K_N(q,2r)
      +lambda(2q)lambda(r)K_N(2q,r)
      +lambda(2q)lambda(2r)K_N(2q,2r).

The other full ordered orientation is C_N(r,q)=C_N(q,r), not an independent random variable. The exact source doubling sign gives the POLARIZED expression

    C_N(q,r) = lambda(q)lambda(r)
       [K_N(q,r)-K_N(q,2r)-K_N(2q,r)+K_N(2q,2r)].

For q<=r, calculate the four literal maxima. If r>=2q, then K_N(q,r)=K_N(2q,r) and K_N(q,2r)=K_N(2q,2r). Hence C_N(q,r)=0, with zero terminal loss. If q<=r<2q, the common N+1 terminal charges cancel and the ordered cross equals

    C_N(q,r) = lambda(q)lambda(r) [1/r -1/(2q)].

For q=r the 4-term same-doublet packet is 1/(2q), because lambda(q)^2=1. ALL signs and both ordered orientations in the full Gram survive this proof. The coefficient of the local overlap is nonnegative, but the actual arithmetic sign may be positive or negative. Exact hostile cases: C_N(3,4)=-1/12, C_N(3,5)=1/30 and C_N(3,6)=0 for valid N. The previous 2-by-3 quartet is the direct sum of the q- and 3q-doublet self packets: their mixed packet is zero for all q, and 1/(2q)+1/(6q)=2/(3q).

For integer cutoff k, the signed TRUE prefix of one block is the compactly supported pulse

    lambda(q)1[q<=k] + lambda(2q)1[2q<=k]
      = lambda(q)1[q<=k<2q].

Consequently the weighted inner product of two such pulses is the literal overlap sum

    lambda(q)lambda(r)
      sum_{k=max(q,r)}^{min(2q,2r)-1} 1/[k(k+1)],

provided both doublets are in the N-inventory. If there is no overlap the sum is zero; otherwise telescoping supplies the formula above. This is an EXACT one-dimensional interval-incidence/weighted-ellipsoid Gram representation with its original signed diagonal phase, not an unsigned replacement of the arithmetic covariance.

For each positive q and K>=0, the complete selected collection of genuine labels {(4^j q,2*4^j q):0<=j<K} consists of disjoint index pairs with mutually nonoverlapping pulses. If N includes their last doubled index, their full selected ordered weighted Gram, including every internal and cross orientation, is therefore

    E(q,K)=sum_{0<=j<K} 1/(2*4^j q)
          =(2/(3q))(1-4^{-K}) <= 2/(3q).

This is a nontrivial ALL-K UNCONDITIONAL signed energy bound on a growing actual Liouville subsource, independent of random behavior, prime distribution and any zeta nonvanishing assertion. The new Lean source LiouvilleDyadicDoubletLocalization.lean proves the pulse identity, four-term signed kernel, separated zero interaction, overlapping exact formula, self credit, both-ordered zero, prime-three zero, selected four-adic zero mode, and a finite geometric scalar identity/allowance as SOURCE PROOF CANDIDATES. The all-K finite reindexed Gram return is analytically proved here; it is not promoted to a locally compiled Lean theorem without the full Finset reindexing bridge.

For comparison with the FULL original source, every positive integer n=2^a m (m odd) belongs to the unique doublet based at b=4^j m when a=2j or 2j+1, except when the upper member 2b>N. The incomplete bases are exactly

    O_N={b: N/2<b<=N, v_2(b) is even}.

At k=N all complete doublets cancel, giving the exact signed original endpoint identity

    L(N)=sum_{b in O_N} lambda(b).

This is the already familiar two-adic channel frontier in a sharper interval notation, not a novel RH return. The number of such unmatched bases is LINEAR, not a negligible edge error. Let F(N)=#{n<=N:v_2(n) is even}. Parity decomposition gives F(N)=N-F(floor N/2); writing F(N)=2N/3+e(N), the recurrence is e(N)=((N mod 2)/3)-e(floor N/2), proving e(N)=O(log(N+1)). Therefore #O_N=F(N)-F(floor N/2)=N/3+O(log(N+1)). Generic absolute-value control of this remaining signed endpoint does not yield a fixed energy exponent below one. The source-specific prime-two-only model lambda_2(n)=(-1)^{v_2(n)} has ALL positive orphan signs and L_2(N)=#O_N, so a proof based only on doubling and pulse orthogonality cannot produce RH strength.

## 3. Fejer/Putnam and moving-prime arithmetic impact

The original complete cyclic Liouville window energy remains V_N(H)=NH+2 sum_{1<=h<H}(H-h)C_N(h), with BOTH signed shift orientations. Fourier positivity supplies a zero-mode LOWER bound H^2L(N)^2<=N V_N(H), not the missing diffusive upper bound. Each selected complete dyadic doublet has literal zero-mode mass lambda(q)+lambda(2q)=0, and the arbitrary four-adic selected family retains that cancellation; the full zero mode is precisely the unmatched signed L(N), not zero. The full V_N(H)<=A_eta N H at growing near-full H remains UNPROVED (#1530).

The actual moving-prime formula lambda=a_y-2b_y, mu=U_y-2V_y retains all positive prime exponents before squarefree filtering, the signed high-prime V_y and the complete finite-prime mean delta_y. The earlier moving cutoff error A_y(N)-delta_y N=O(sqrt N exp(16 sqrt y)) is independent of the RH-strength high-prime centered balance. The giant-prime cofactor sector remains exactly counted only under its cutoff restrictions and has a POSITIVE top-prime layer on the order Y/log Y; this cannot be paid by an absolute square-root error. The medium-prime multifactor sector and interactions remain signed and unresolved. The new compact multiplicative doublet overlap does not supply those estimates, since 2-adic neighbor incidence is not equidistribution of odd-prime parity. The PNT window still uses the original mu*log=Lambda, all prime powers, and the exact floor carry dK+(X+H)%d=H+X%d.

## 4. A source-faithful, quantitative finite 2-adic stage with all denominator loss paid

The previously constructed complete coefficient prism candidate is A=Z_2, ideal I=(2), Frobenius phi=id and delta(x)=(x-x^2)/2. Its signed Möbius cochains and full compatible residue tower are distinct original-source modules, not interchangeable with Liouville. The newly authored LiouvillePadicSignFidelity.lean uses the ORIGINAL integer Liouville coefficient before real casting. Every positive coefficient is in {+1,-1}. In ZMod 2 these signs coincide; in ZMod 4 they differ, and reduction modulo four is INJECTIVE ON THIS RESTRICTED SIGN SET. This does not imply injection for arbitrary integers: 1 and 5 have the same residue modulo four. The exact integer lemma mod 64 injective on [-16,16] quantifies a separate finite signed-packet carry budget.

For the actual 2-by-3 panel q,2q,3q,6q (N>=6q), put D=6q(N+1) and sign vector s=a(1,-1,-1,1), a=lambda(q), a^2=1. The four source reciprocal max weights, in sorted order, have integer factors u=(6,3,2,1). Clearing the REAL original kernel entrywise produces the INTEGER matrix

    W_ij = D K_N(n_i,n_j)
         = (N+1) u_{max(i,j)} - 6q.

This is an exact equality: no variable denominator has been rounded and no terminal term is lost. All W_ij are nonnegative for N>=6q. Both ordered orientations survive the 4-by-4 full sum. The source-preserving integer Gram is

    S= sum_{0<=i,j<4} s_i s_j W_ij
      =4(N+1)
      =D * P_N(q),
    P_N(q)=2/(3q).

The new LiouvilleTwoThreePadicClearing.lean expands all ten distinct weighted entries with their correct ordered multiplicities, proves the integer alternating identity, transports the actual q,2q,3q,6q integer signs, identifies the integer-cleared observation with the original real weighted packet, and defines each source-actual residue shadow in ZMod(2^(k+1)). Its complete source and local APIs remain uncompiled SOURCE PROOF CANDIDATES.

For independent finite-certificate recovery, DO NOT use the already-known signed cancellation as an a priori upper bound. Regardless of the assignment of four signs in {+1,-1}, the triangle inequality and the exact ordered weight count 1,3,5,7 give

    |S| <= sum_ij W_ij
        = (6+3*3+5*2+7*1)(N+1)-16*6q
        =32(N+1)-96q <=32(N+1).

Thus a finite modulus B=2^k strictly exceeding 64(N+1) uniquely recovers the entire INTEGER S from its residue and the a priori interval [-32(N+1),32(N+1)]. This is a SOURCE-PRESERVING finite 2-adic SHADOW comparison with a complete bound on its carry/ambiguity loss. The precision index must grow at least logarithmically in N; a fixed mod-2 or mod-4 stage is not an honest complete signed-energy certificate.

The clearing denominator has exact 2-adic valuation v_2(D)=1+v_2(q)+v_2(N+1). It is NOT a unit in Z_2. Division by D at a finite residue stage is illegal without a further lift and paid 2-adic precision loss. The real target value is recovered by FIRST reconstructing the exact bounded integer S, THEN dividing by the positive integer D in the real/rational source. There is no claimed natural map from all Q_2 to R preserving this interpretation. No derived completeness comparison, Nygaard filtration, prismatic cohomology RΓ, zero-to-class injection, target vanishing or RH trace inequality is supplied. Modulo-reconstruction algebra is not prismatic cohomology (#132, #1524, #1525).

## 5. Stronger external threshold and independent zero-side Poisson frame

The strongest inspected merged external Dirichlet L nonvanishing is QuasiRiemannTracker PR103, merged 2026-11-01, candidate head cae2e523d4ec22c05ea91ff44d68efb8fd02293f, merge commit 8b1a0167c8e324099884152181e3fb2206510e88, Candidate/Main.lean blob 808d04cec892449707d23e81f94179e2738fdf1a. Its verify (closest-fraction-contact), admission and qrh/pr-admission checks succeeded externally. The exact rational bound is just above the limit (777-sqrt(1081))/852; its approximate value is 0.873381966613207519929026778642. The earlier PR99 and PR102 are also merged. No new native local import, axiom audit or theorem acceptance is inherited. The underlying proof employs exact rational/Bernstein covers, tiny positive reserve and conductor fees, five-count-window return and source-controlled analytic obligations; it is a Dirichlet L result, NOT independently a local completed zeta or Liouville energy theorem.

The local PR103 working theta_w=0.87338196661320751992903 and exponent alpha_w=2theta_w-1=0.74676393322641503985806 remain explicitly conditional on the classical zero-free-to-summatory/Perron transfer. For a numerically friendlier but still STRONGER-than-7/8 zeta strip, choose theta_R=4367/5000=0.8734. The exact rational comparison theta_PR103<theta_R is an elementary candidate in the new PR103RationalStripFrame.lean. To use it for the true zeta carrier, one still needs the source-exact q=1 Dirichlet L to riemannZeta equality, external theorem import/acceptance and critical reflection. This is the separately visible RationalPR103SymmetricStrip:

    for EVERY actual nontrivial zeta zero rho,
    633/5000 <= Re(rho) <= 4367/5000.

On this supplied strip, choose sigma=281/250=1.124>1. For any beta in that interval, a=sigma-beta lies in [1253/5000,4987/5000]. The closest integer sample has d^2<=1/4. With kappa=801/1000, define g(a)=a-kappa(a^2+1/4). At the two rational endpoints

    g(1253/5000)=1172791/25000000000>0,
    g(4987/5000)=7744631/25000000000>0.

More strongly, for l=1253/5000,u=4987/5000,

    g(a) = g(l)+kappa(a-l)(u-a)+(44/125000)(a-l),

so g(a)>=g(l)>0 for all a in [l,u]. Therefore the EXACT positive Poisson sample satisfies

    (sigma-beta)/[(sigma-beta)^2+d^2] >= 801/1000 > 4/5.

This is an independently proved finite REAL scalar inequality, stronger than the existing seven-eighths bound. Summing actual analytic multiplicities at the source nearest bins, using each bin's integer mass M<=M^2 and preserving every collision, gives the new frame

    641601 * unknownMultiplicityDeficit(Z,known)
      <= 1000000 * rationalPR103PoissonEnergy(Z,known).

The previous seven-eighths frame had coefficient 16/25=0.64; the new coefficient 641601/1000000=0.641601 is STRICTLY LARGER. Thus a complete arithmetic sample energy below 641601/500000=1.283202 suffices for the genuine one-uncredited-unit conclusion, compared with the former 32/25=1.28. With the EXISTING exact primeWindowFamilyEnergy=4*centeredPacketFamilyEnergy identity and a SEPARATELY PROVED domination rationalPR103PoissonEnergy<=primeWindowFamilyEnergy, the sufficient centered signed allowance is

    centeredPacketFamilyEnergy < 641601/2000000=0.3208005,

a strict gain of 1601/2000000 over 8/25=0.32.

The new Lean source IntegerPoissonZeroFrame/PR103RationalStripFrame.lean contains the exact rational external comparison, scalar inequality, nearest-bin bound, complete multiplicity frame and conditional consumer with all premises left visible. This is a genuine new stronger CONDITIONAL finite count inequality, NOT a numerical certificate, actual upper energy estimate, zero-to-prime source identity, cofinal family or RH conclusion. It uses the original ZeroPoint and analytic multiplicity, not an abstract replacement.

A concurrent source increment must be respected: IntegerPoissonZeroFrame/CompletedResidualDirichlet.lean, blob 0c79867cfa219a56b125a0c3b459f298ec78c09c, now constructs a COMPLETE residual on the OLD seven-eighths line sigma=9/8 by subtracting only the known certified zeros from the completed zeta logarithmic derivative. Every other nontrivial zero, including the first outer collar and remote tail, stays inside a positive residual rather than being discarded. It connects the finite centered von Mangoldt polynomial to actual unit-window coefficients and proves a finite perturbation estimate, but the full Hadamard domination and explicit tail suppliers are still separately named source propositions (its review blob 28696f6400d78e199356de7df086975ebb790388). Thus the earlier first-collar omission is paid conceptually on the OLD sampling line; it must NOT be counted as an independent unresolved collar error or treated as an unconditional completed source acceptance.

For the NEW rational line sigma=281/250 the same ordinary Hadamard argument yields the positive full completed residual R_k^sigma=Re(xi'/xi)(sigma+ik)-sum_known m(rho) P_sigma(rho,k), with P_sigma_unknown<=R_k^sigma, provided the canonical completed-product identity is established at this line. The OLD 9/8 finite completed residual is not definitionally the NEW 281/250 residual, and its domination and tail cannot simply be reused by rewriting a numerical threshold. The new absolute Dirichlet tail has delta=sigma-1=31/250 (rather than old 1/8), with elementary majorant for N>=3:

    sum_{n>N} Lambda(n)n^{-sigma}
      <= N^{-31/250}((250/31)log N + (250/31)^2),

using 0<=Lambda(n)<=log n, monotonicity of log(x)/x^sigma for x>=3 and the integral test. The phase n^{-ik} has absolute value 1. After the centered-prime truncation, the complete finite energy perturbation still costs a factor two and 2(Z+1) times the square of the uniform tail, not zero. This identifies a precise additional analytic/source-adapter step needed to consume the stronger frame. The previous #135 three-semantic-edge rectangle count remains missing: independent rational real enclosures of normalized bottom/right/left edges must strictly isolate ONE genuine complete integer zero count, with correctly combined width bottom.width+(right.width+left.width)/2. Neither an asymptotic percentage nor a noncomputable complete set is such a certificate.

Anthropic formal-math zeta23 (README blob 302fa9094863279d0ec83fca012d2b7bf59d5ccd, Statement.lean blob b8a95eb20cbade61a33f165004c34d1ce1674947, separate Lean v4.33.0-rc2/Mathlib pins) supplies asymptotic >two-thirds simple-line and >five-sixths distinct proportions. These still permit two uncredited units arbitrarily far out and cannot replace a STRICT cofinal U_H<C_H+2 count gap.

## 6. Gödel vortex, signed ellipsoid, contact incidence and geometric losses

The proved doublet pulse map is a finite typed arithmetic observation into the real weighted k-coordinate space with weights 1/[k(k+1)]. The positive geometric overlap kernel G(q,r) is the weighted intersection of supports [q,2q) and [r,2r). The ACTUAL arithmetic matrix is lambda(q)lambda(r)G(q,r), i.e. signed diagonal conjugation D_lambda G D_lambda. This preserves PSD of the whole selected Gram AND preserves negative off-diagonal entries, rather than erasing them. The exact mixed sign cannot be inferred from positivity of G alone. The hostile q=3,r=4 and q=3,r=5 cases have opposite signs.

Via x=log q the support becomes a length-log(2) interval. The Gödel observer's genuine chart shift by log 2 preserves its spatial metric/vorticity while the original Möbius pickup response obeys its independently established 1/2 Gram dilation; the physical Gödel Levi-Civita connection is torsion-free despite nonzero vorticity. These separate maps do not identify Liouville doublet pulses with Gödel covariant derivatives, actual finite integer k weights with spacetime volume, or Möbius pickup with the Liouville weighted source. A full typed intertwiner, kernel normalization, torsion/residue transfer and complete signed residual remain missing; the 1D overlap calculation is a source-aligned incidence observation, not a new physical isometry theorem (#1547).

The three-phase ellipsoid Q(z)=3||mean(z)||^2+||a||^2+||b||^2+||a+b||^2 is the existing positive quadratic source, with exact phase/rank and containment types. A complete proposed comparison would have to construct a map from the original arithmetic signed k-coordinate carrier into the actual three-phase atlas and fourth-witness/Cech overlaps and prove an exact identity for every mixed kernel. Even a positive definite ellipsoid enclosing the finite observations does NOT give a positive Weil zeta form. The remaining defect is the complete signed overlap covariance, plus unmatched/orphan and terminal/boundary sectors. None is set to zero by a geometric analogy (#1496-#1500).

## 7. Evidence, hostile checks, and first missing theorem

Three independent finite reference diagnostics were run, with source SHA256s and exact check domains kept outside the mathematical repository:
- rh_doublet_local_diagnostic.py SHA256 7fae2808849868828192ee6b14c535a8eee09838b4f3206fa031deb8e465bf42: 111686 exact assertions for q<=104, all q<=r<=3q+1, arbitrary correct terminal N, pulse identity, all four signed kernel terms and 4-adic packets.
- rh_prismatic_cleared_panel_preflight.py SHA256 53a2c4ea294650cc9be7b0ffab1e03abbf16d5253e4a0b68a1f19ca1b5e2c4a9: 21712 integer/rational checks for exact denominator clearing, all 16 terms, full a priori bound, modular reconstruction and hostile sign panels.
- rh_pr103_rational_frame_preflight.py SHA256 519eef10e805601b2f6bccb5cd0ba18afc706ba9abe8a1b1a7170c718deda40f: 18006 rational checks for the scalar strip, positive endpoint margins, stronger kappa and integral multiplicity square payment.

These are bounded exact arithmetic diagnostics, NOT Lean parsing, compilation, expected type, fresh kernel, axiom, or unbounded analytic proof acceptance. No native Lean/lake/elan executable is available in the local runtime, and no unauthorized remote executor, CI workflow, scheduler or publication authority beyond the explicit direct-main source publication is used.

Current delivery classifications:
- Doublet support, kernel localization, fourth-power selected energy and integer cleared panel: COMPLETE ordinary finite analytical proofs, corresponding Lean SOURCE_PROOF_CANDIDATES; exact main-branch publication and blobs to be recorded in issue.
- Rational stronger nearest-bin Poisson frame: COMPLETE elementary conditional mathematical argument; Lean SOURCE_PROOF_CANDIDATE; external symmetric-strip supplier and local Dirichlet L to zeta transport remain visibly unproved in this repository.
- Arithmetic ALL_RATE, complete Fejer diffusive estimate, moving high-prime signed remainder, actual zero-to-prime energy domination, certified cofinal two-unit count, genuine prismatic RΓ map/vanishing, three-phase Weil comparison and canonical RH: UNPROVED.
- COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

The first decisive remaining independent supplier is cancellation of the WHOLE original signed overlapped doublet and orphan packet at subpower rates, or equivalently a valid noncircular uniform V_{logY} signed-window estimate; the stronger Poisson frame reduces the numerical allowance but still requires explicit source-correct prime-window energy domination below 641601/2000000 and independently complete cofinal count certificates. A fixed-width zero-free theorem alone cannot contract the strip to Re=1/2. No conclusion is promoted without these supplies.
