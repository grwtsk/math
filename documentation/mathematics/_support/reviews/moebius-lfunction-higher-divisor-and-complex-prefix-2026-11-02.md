# L-function Möbius continuation: complete higher-divisor Hermitian return, finite complex Abel, and precise single-birth source calculus

Date: 2026-11-02 (America/Los_Angeles).
Research basis: latest grwtsk/math main source and issue #1566 before publication.
Status: mathematically source-exact finite identities; newly authored Lean PROOF CANDIDATES. Parser, expected types, full dependency compilation, fresh independent kernel and transitive axiom audit NOT_RUN. Signed every-positive-rate Dirichlet arithmetic and GRH OPEN.

## 1. Original source, unchanged

For a normalized L-family F with actual Dirichlet-convolution inverse b(n)=mu_F(n), retain the original REAL birth-gated source
  r_n(u) = if log n <= u then 2*(n^(-1/2)-exp(-u/2)) else 0,
  K_T(m,n)=integral_0^T r_m(u)r_n(u)du.
The Hermitian pair must be
  b(m)*conj(b(n))*K_T(m,n).
Both ordered orientations, squareful zero coefficients for Dirichlet χ, all birth supports and the diagonal are retained. The universal real classical gcd sieve coefficient
  c_D(d)=sum_(k|d,k<=D) mu_classical(d/k)
has no dependence on the chosen L-family and satisfies c_D(1)=1 and c_D(d)=0 for 2<=d<=D (D>=1).

Verified existing source blobs:
- MoebiusLFunctionHermitianPickup.lean: 0643134718a73f65f1ca01f2db0804b4883676b4.
- MoebiusLFunctionFamilySieveBridge.lean: 50b874689f0b5eab0bc1d30da71494ca752ba644.
- MoebiusLFunctionComplexGramClosure.lean: ff96f81e0e164f00e99ad903171af01f33816ff7.
- MoebiusLFunctionHermitianSieveClosure.lean: afa18a6c4213eccfb7616fd69683f39bb7468864.
- MoebiusLowGcdSieveTargetClosures.lean: 644f7ce39711b520d3bad6d26ba107d6ef4f0171.
- MoebiusCausalMertensSquareBridge.lean: be156509d9679a22b52b32d087f87d8449a047ef.
- MoebiusCompleteHighGcdDivisorCover.lean: 354af0c431832b883974a3157e1000eb4f046a1f.
- MoebiusCompleteHighGcdElementaryClosure.lean: 918952c6edc614291bad983f253366d7cb31a18f.
All these older sources have unverified pinned import/axiom status; new code does not elevate that.

## 2. Higher-divisor Hermitian return — exact and genuinely full

For D>=1 and T>=0, let N=floor(exp T). The already authored family sieve identity says
  LowGcdFull_F(D,T) = sum_(d<=N)c_D(d)*E_(F,d)(T)
where E_(F,d)=integral_0^T |sum_(n<=N,d|n)b(n)r_n(u)|²du>=0.

At d=1, E_(F,1)(T) is the original FULL Hermitian Gram, not its offdiagonal component. Splitting that full ordered Gram by gcd<=D versus gcd>D, and using c_D(1)=1 and c_D(2..D)=0, proves
  sum_(D<d<=N)c_D(d)*E_(F,d)(T)
    = - HighGcdFull_F(D,T),                         (1)
  HighGcdFull_F(D,T)
    := Re sum_(m,n<=N,gcd(m,n)>D) b(m)conj(b(n))K_T(m,n).

The diagonal terms m=n>D are included in HighGcdFull_F. Replacing this by the previously defined OFFDIAGONAL familyHighGcdCross would be FALSE. This is the complete previously named FamilyHigherDivisorHermitianReturnTarget, now with an authored proof body in MoebiusLFunctionHigherDivisorReturn.lean.

Mathematical implication: all higher-divisor coefficients together merely reconstruct the negative original high-gcd FULL source. Their individual sign changes cannot alone cancel an arbitrarily large d=1 positive energy.

## 3. Dirichlet characters: a full high-gcd absolute bound, not only offdiagonal

For actual Mathlib DirichletCharacter chi, b(n)=mu(n)*chi(n), so |b(n)|<=|mu(n)|. The complete positive high-gcd cost obeys the literal source comparisons
  |HighGcdFull_chi(D,T)|
   <= sum_(m,n<=N,gcd(m,n)>D)|b(m)||b(n)||K_T(m,n)|
   <= sum_(m,n<=N,gcd(m,n)>D)|sourceKernel T m n|
   <= highGcdDivisorCoverCost(D,T)
   <= 16*T*N/D,                                     (2)
for T>=0,D>=1.

The third comparison counts every selected pair at least once using the common-divisor witness g=gcd(m,n)>D; the positive divisor cover includes BOTH ordered orientations AND the diagonal. The last comparison uses the previous elementary reciprocal-root and inverse-square source proof candidate. Nothing in (2) requires a GRH, Mertens, PNT or signed cancellation assumption.

At the previously chosen SINGLE cutoff D_*(T)=max(1,floor(exp(T-sqrt T))), for T>=4:
  |sum_(d>D_*(T))c_(D_*(T))(d) E_(chi,d)(T)|
   <=32*T*exp(sqrt T).                              (3)
The loss has every positive exponential rate without a rate-dependent cutoff. MoebiusLFunctionDirichletFullGcdReturn.lean contains the actual finite positive-cover and final bound proof candidates. The full-diagonal difference is paid explicitly.

## 4. Family Mertens-prefix reconstruction: reduced to ONE birth integral

For every n>=1 and u>=0, the original source has the elementary exact one-variable calculus identity
  integral_0^u 1_(log n<=v)*exp(-v/2) dv
    = if u<log n then 0
      else 2*(n^(-1/2)-exp(-u/2))
    = pickupResponse n u.                            (4)

The proof on paper is direct: log n>=0, integrate exp(-v/2) on [log n,u] if the interval is nonempty, otherwise the source is zero. This is an EXACT scalar identity about the maintained source, with no family coefficients. However, a PINNED Lean proof of (4) plus its complex-cast interval-integrability is **NOT yet supplied**. The new source names this missing finite-calculus input OriginalSingleBirthComplexIntegralTarget, not as an axiom but as a transparently unproved Prop.

For any complex generalized Mobius function b and 0<=u<=T, the true family prefix
  M_F(exp v) = sum_(1<=n<=floor(exp v))b(n)
equals the original fixed-inventory finite sum
  sum_(1<=n<=floor(exp T),log n<=v)b(n)
throughout [0,u]. This is exact finite Nat.floor/log arithmetic.

Interchange this finite sum with its source interval integral and use ONLY (4). Then
  familyWholePickup F u
   = integral_0^u exp(-v/2)*M_F(exp v) dv
   = sum_(n<=floor exp T) b(n)*pickupResponse n u
   = familyFiniteResponse F T u.                    (5)

New candidate theorem familyPrefixResponseReconstruction_of_singleBirth consumes exactly the explicit scalar (4) to construct the earlier FamilyPrefixResponseReconstructionTarget; familyCumulativeEnergy_eq_fullGram_of_singleBirth then links the genuine cumulative family prefix-wave energy to the original complete Hermitian finite Gram. There is NO RH-strength arithmetic hypothesis in this transfer. To declare the prefix target kernel-closed, FIRST complete and replay the one-index integral proof and its imported dependencies. Do not erase this remaining check from the manifest.

## 5. Exact complex finite Abel identity, and source magnitude budget

The preceding original REAL source already has a telescoping finite Abel formula and source responseDrop(k,u)>=0. The NEW complex source retains the same terminal (N+1)-response and proves by finite induction, for arbitrary complex b and real w:
  sum_(j<N) b(j+1)w(j+1)
   = M_b(N)*w(N+1)
      +sum_(k<N)M_b(k+1)*(w(k+1)-w(k+2)).           (6)

At the actual N=floor(exp T), the original terminal response r_(N+1)(u)=0 for all u<=T. Thus
  familyFiniteResponse F T u =
    sum_(k<N)M_F(k+1)*responseDrop(k,u),             (7)
  |familyFiniteResponse F T u| <=
    sum_(k<N)|M_F(k+1)|*responseDrop(k,u).           (8)

The norm is applied AFTER summing original complex arithmetic coefficients into true prefixes. The weights remain the original nonnegative real response drops. MoebiusLFunctionComplexPrefixTransfer.lean authors the finite complex Abel identity and original terminal-drop formula. MoebiusLFunctionComplexAbelBudget.lean authors the range-to-Icc identification and genuine prefix/drop pointwise upper. This is an important source-exact route FROM arithmetic prefix bounds TO energy bounds; (8) is not a proof of the inverse energy-to-prefix bound or Dirichlet GRH.

## 6. Independent finite diagnostics actually executed

At 55 decimal digits (mpmath) using the actual complex character chi mod 5 given chi(2)=i, actual original mu(n), and exact birth-gated real K_T(m,n) formula, three completely finite tests were performed. The family E_(chi,d)(T) were independently integrated cell-by-cell across real logarithmic birth cells, not reconstructed from Gram sums.

Cutoffs D=4,5,8 at N=20,32,48 respectively are ARBITRARY finite source test cutoffs; these horizons have T=log N<4 and MUST NOT be cited as tests of the fixed-cutoff asymptotic bound (3).

N=20,D=4:
  full Hermitian Gram real / E_(chi,1) ~= 4.14789599615383;
  signed FULL gcd>D ~= +0.10908568447851237;
  higher-divisor signed sum = minus that packet to residual 1.02e-56;
  full Gram vs independently integrated E1 residual 1.63e-55;
  low-gcd FULL sieve identity residual 8.16e-56;
  independently integrated family velocity prefix vs finite response residual 2.04e-56;
  FULL positive high-gcd abs cost ~=0.11807961856;
  full positive common-divisor cover ~=0.11902677572.

N=32,D=5:
  E1 ~=5.767723224269362;
  signed FULL gcd>D ~=+0.2953553784610751;
  higher-divisor signed return residual 1.53e-56;
  full Gram/E1 residual 4.08e-55;
  full low-gcd sieve residual 4.08e-55;
  prefix/response residual 5.10e-56;
  full positive high-gcd abs cost ~=0.38334337273;
  common-divisor cover ~=0.39513978205.

N=48,D=8:
  E1 ~=7.453189312369421;
  signed FULL gcd>D ~=+0.16645351960869004;
  higher signed return residual 1.27e-56;
  full Gram/E1 residual 7.34e-55;
  full low-gcd sieve residual 5.71e-55;
  prefix/response residual 3.68e-56;
  full positive high-gcd abs cost ~=0.23411235831;
  common-divisor cover ~=0.24292692830.

In all three tests the full high-gcd absolute cost did not exceed the complete positive common-divisor cover. The conservative root-tail bound 16*T*N/D is much larger. These are floating diagnostics of finite formulas, NOT rigorous interval certification, native Lean verification, or asymptotic arithmetic cancellation.

## 7. A Dirichlet LOW-gcd versus positive-energy sandwich

The preceding source identities additionally give an exact family ledger
  familyFiniteResponseEnergy(F,T)
    = familyLowGcdCross(F,D,T)
      + familyLowGcdSourceDiagonal(F,D,T)
      + familyHighGcdFullGram(F,D,T), T>=0.

For each Dirichlet character chi, |mu(n)chi(n)|<=|mu(n)|.
Hence, at any D>=1 and T>=0,
  0<= familyLowGcdSourceDiagonal(chi,D,T)
    <= pickupDiagonal(T) <=2*T².
At D=D_*(T), the NEW FULL high-gcd source bound from section 3
is <=32*T*exp(sqrt T) in absolute value when T>=4.

Thus the genuine original complex family signed low-gcd packet
is SUBEXPONENTIALLY close to its nonnegative causal square energy:
  |familyLowGcdCross(chi,D_*(T),T)
     - familyFiniteResponseEnergy(chi,T)|
      <= 2*T²+32*T*exp(sqrt T), T>=4.

In particular,
  familyLowGcdCross(chi,D_*(T),T)
    >= -(2*T²+32*T*exp(sqrt T)).
The NEGATIVE excursions are already paid; the POSITIVE upper
excursions remain the GRH-strength signed arithmetic problem.
There is no assertion that the family energy itself is small.

The fifth new module
`MoebiusDirichletLowGcdEnergySandwich.lean` authors candidate
proofs of the exact full energy ledger, truncated character
diagonal payment, two-sided energy sandwich and lower bound.
No extra arithmetic cancellation theorem is inserted.

## 8. Acceptance and next mathematical frontier

New module candidate list:
- MoebiusDirichletLowGcdEnergySandwich.lean: exact family full-energy ledger and subexponential Dirichlet low-gcd positive-energy sandwich.
- MoebiusLFunctionHigherDivisorReturn.lean: FULL complex source partition, d=1 energy, signed higher-divisor exact return.
- MoebiusLFunctionComplexPrefixTransfer.lean: original birth indicator, one-index pending scalar source, exact finite cutoff, conditional complex prefix reconstruction and cumulative energy-to-full Gram; unconditional finite complex Abel and terminal-drop identities.
- MoebiusLFunctionDirichletFullGcdReturn.lean: positive full-gcd character source and fixed all-rate absolute higher-divisor payment.
- MoebiusLFunctionComplexAbelBudget.lean: actual complex Mertens-prefix/real response-drop pointwise bound.

Next acceptance tasks:
1. Compile all four modules and prior import closures with pinned Lean 4.34.1 / Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612; check exact declaration types, kernel and transitive axioms separately. NOT_RUN.
2. Prove the single-index piecewise real exponential integral (4) in pinned Lean, including integrability of the complex cast; use it to close FamilyPrefixResponseReconstructionTarget unconditionally.
3. Use (5)-(8) in a genuinely characterwise causal energy-to-Mertens-prefix argument; the previous PrimitiveDirichletCausalToPrefixBridgeTarget remains an OPEN proposition.
4. Prove the signed characterwise low-gcd all-positive-rate bound PrimitiveDirichletFamilyLowGcdEveryRate (GRH strength). No proof provided.
5. Connect the authenticated primitive character prefix to the actual Mellin/explicit-formula interface, gamma/conductor/poles and existing Dirichlet GRH predicate. NO Dirichlet GRH conclusion.
6. For higher-degree families, provide actual Euler/local-to-global identification and magnitude-dependent high-gcd bills before generalizing the root-tail.

Verification statuses: parser NOT_RUN, expected_types NOT_RUN, complete_import_compilation NOT_RUN, fresh_kernel NOT_RUN, transitive_axiom_audit NOT_RUN, native execution NOT_DISPATCHED. No existing files/toolchains/root imports changed; no new sorry/admit/axiom/unsafe declarations.
