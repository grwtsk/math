# L-function family Möbius translation: exact Dirichlet inverses, local Euler polynomials, complex causal energy and ideal norm grouping

Research date: 2026-11-02 (America/Los_Angeles).
Repository: grwtsk/math; all new source is additive on existing main.
Attribution: grwtsk contributors; canonical Mathlib and upstream authorship/licenses remain unchanged.
Mathematical status: elementary coefficient and Euler-factor identities, family-specific interfaces and finite diagnostics. All new Lean bodies SOURCE_PROOF_CANDIDATES; pinned parsing/elaboration, imported closure, expected types, fresh kernel and transitive axioms audit NOT_RUN. NO global GRH/RH theorem claimed.

## 1. Repository sources actually examined

Pinned Mathlib in current lake-manifest.json: d13f23b723b8a846827a245b89c10fc7d3f11612; lean-toolchain: leanprover/lean4:v4.34.1.

- Mathlib.NumberTheory.ArithmeticFunction.Defs contains the ACTUAL Dirichlet convolution ring, dirichletInverse, self_mul_dirichletInverse, dirichletInverse_mul_self and isUnit_iff_isUnit_apply_one (no invented generic inverse).
- Mathlib.NumberTheory.ArithmeticFunction.Moebius supplies ordinary mu and coe_zeta_mul_coe_moebius.
- Mathlib.NumberTheory.LSeries.Dirichlet already proves DirichletCharacter.isMultiplicative_toArithmeticFunction, mul_convolution_distrib, convolution_mul_moebius, LSeries.mul_mu_eq_one for Re(s)>1; the exact mathlib character rather than a model class is used.
- GRWTSK/NumberTheory/DirichletCharacterBasic.lean, blob 6026d444ad49c14c802f1e21b30646c8a2595056, has the conductor, IsPrimitive and level interfaces.
- GRWTSK/NumberTheory/DirichletLSeries.lean, blob 110bdfb26f239bda5757ddb342f083ee00973ae1, has right-half-plane Euler products.
- GRWTSK/NumberTheory/LFunctionPublic.lean, blob 9995dc693a71fb7685eef934df0b0978f7519f7b, is a modular-form Mellin/L-function source.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MathlibLFunctionAdaptersPublic.lean, blob 377eab4d5de0f5d158b9c3d8f2fec3b50f10c967, preserves character completed L, pole removal and gamma factor.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrimitiveFamilyPublicPrimitiveCharacterDataFamilyGRH.lean, blob d0b5331a21bb6392e6082dbb6994040347fd2bcb, is a proposition quantifying over all positive moduli and primitive complex characters, not a proof.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/AssemblyPublicPrimitiveCharacterHalfPlusEpsilonFamilyImpliesDirichletGRHOfMelli.lean, blob ea306c06d65cca3f640c3b94120b16029cd1e802, exhibits conditional local Mellin/explicit-formula interfaces and distinguishes characterwise vs hybrid-uniform estimates.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusGeneralizedFiberObserver.lean, blob 6ca04b2685cd422a363cc0146f8ac65b59e0c870, is a source-preserving elliptic TRACE observer, NOT an equality of elliptic Hasse-Weil coefficients with ordinary Mobius.
- GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean, blob 45e06c371d67bcf8c939d20a95fcbc63570546fa, defines the unchanged original real-Mobius causal source.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusCompleteHighGcdElementaryClosure.lean, blob 918952c6edc614291bad983f253366d7cb31a18f, is the previous UNVERIFIED positive elementary source for ordinary real mu.

These actual source boundaries govern what can and cannot be carried to each L family.

## 2. Universal coefficient inverse, all normalized L-series

Let a:ArithmeticFunction Complex with a(1)=1. Define
  mu_a := ArithmeticFunction.dirichletInverse a.
Then
  a * mu_a = mu_a * a = delta_1,
as source-level theorem candidates directly consuming pinned Mathlib. No Euler product, analytic continuation, functional equation or GRH hypothesis is inserted. The corresponding raw LSeries values are defined via the genuine mathlib LSeries; they do not imply analytic continuation beyond their summability domain.

Product family:
  a_(A*B) = a_A * a_B; mu_(A*B) = mu_A * mu_B.
Convolution-power family: a_(zeta^k) = 1^(*k); mu_(zeta^k) = mu^(*k).
In particular mu_(zeta^2)(p)=-2, mu_(zeta^2)(p^2)=1; a global |mu_L(n)|<=1 is ALREADY FALSE for zeta^2.

Concrete classical family:
  a_zeta(n)=1 for n>0, mu_zeta(n)=ordinary mu(n).
Concrete Dirichlet family for q>=1, any (including imprimitive) mathlib character chi:
  a_chi(n)=chi(n), mu_chi(n)=mu(n)*chi(n).
At q>1 the PRINCIPAL chi has missing local factors at p|q, and its L(s,chi) is NOT zeta(s) without correcting those factors.
The pinned Mathlib right-line theorem LSeries.mul_mu_eq_one gives
  L(s,chi)*L(s,mu_chi)=1 only for Re(s)>1.
No analytic critical-strip reciprocal is claimed from this equality.

## 3. Local reciprocal Euler polynomials, prime powers and normalization

For an actual Euler-product L function, write L_p(s)=P_p(p^(-s))^(-1) (on the half-plane of convergence). The true arithmetic inverse is defined by
  mu_L(p^r) = coefficient of X^r in P_p(X).
Prime-local reciprocal polynomial degree dictates the maximal nonzero prime-power exponent.

Families and exact formal parameterization:
- zeta: P_p(X)=1-X, mu(p)=-1, mu(p^r)=0 for r>=2.
- Dirichlet chi: P_p(X)=1-chi(p)X, mu_chi(p)=-chi(p), mu_chi(p^r)=0 for r>=2. At p|q, chi(p)=0 and P_p=1.
- zeta^k: P_p(X)=(1-X)^k; mu(p^r)=(-1)^r*binomial(k,r) for r<=k, 0 for r>k.
- General GL2: P_p(X)=1-lambda_p X+omega_p X^2, with omega_p possibly zero at bad primes.
- Classical elliptic E/Q at GOOD p: P_p(X)=1-a_p X+p X². Thus mu_E(p)=-a_p, mu_E(p²)=p, and 0 for r>=3. BAD p: P_p(X)=1-a_p X (where a_p=0,1,-1 according to bad reduction).
- UNITARY centered elliptic family L(E,s+1/2): P_p(X)=1-a_p/sqrt(p) X+X² at good p; at bad p P_p(X)=1-a_p/sqrt(p) X. Thus mu_E,unit(p²)=1 at good p, 0 at bad p. Do NOT identify L(E,s) center 1 with a Re(s)=1/2 function without this shift.
- Weight-k holomorphic modular form normalized to center 1/2: use the classical coefficients divided by n^((k-1)/2), and record actual nebentypus/ramified factors; a generic quadratic polynomial alone does not identify the particular modular eigenform.
- Artin: P_p(X)=det(I-X*Frob_p | V^(I_p)), inertia invariants at ramified p, with degree dim(V^(I_p)). This is a genuinely complex matrix polynomial, not just the scalar trace.
- Symmetric powers and Rankin-Selberg: their authentic local parameter representations and conductor/gamma factors must be supplied. The polynomial/determinant structure accommodates finite-degree local factors but does NOT identify arbitrary formal matrices with these analytic L functions.

The new local Euler source code exposes EulerPolynomialFamily with a required global-at-prime-powers compatibility field; no unsupported named family automatically inhabits that field.

## 4. Global synthesis from finite Euler local factors

Given P_p(X), coefficient 0 equal 1 for all rational primes p, define
  mu_P(0)=0, mu_P(1)=1,
  mu_P(n)=prod_(p|n) coefficient_(v_p(n)) P_p(X), n>0.
This is a TOTAL global integer function using pinned Nat.primeFactors and Nat.factorization, including arbitrary prime-power exponents and zero coefficients.

Define a_P as the unique arithmetic-function Dirichlet inverse of mu_P, using pinned dirichletInverse again. Therefore the formal global identity
  a_P * mu_P = delta_1
is fully algebraic, with no external Euler product/analytic continuation claimed. The Lean source exposes source-matching candidates that identify this formal synthesized a_P with a genuine elliptic, Dirichlet, Artin, tensor, symmetric-power or automorphic L function only after its actual local-factor equivalence is supplied. The elementary synthesized prime-power identity is a separate named proof target, not a kernel theorem yet.

## 5. Complex Hermitian pickup and the family-dependent absolute tail

For arbitrary mu_L in Complex, define
  M_L(x) = sum_(n<=x)mu_L(n),
  v_L(u)=exp(-u/2)*M_L(exp u),
  W_L(T)=integral_0^T v_L(u)du,
  E_L(T)=integral_0^T |W_L(u)|² du>=0, T>=0.
At original endpoint N=floor(exp T),
  R_(L,T)(u)=sum_(1<=n<=N) mu_L(n)*pickupResponse(n,u).
The correct signed complex pair is
  H_(L,T)(m,n)=mu_L(m)*conj(mu_L(n))*pickupResponseGram(T,m,n).
The full ordered Hermitian Gram is the finite integral square in mathematics; the formal source marks this as FamilyHermitianFiniteGramTarget and the prefix/response equality as FamilyPrefixResponseReconstructionTarget. No wrong un-conjugated product is used for nonreal χ.

The previous ordinary root-tail estimate needs |mu_L(n)|<=1. This is true for Dirichlet χ because |χ(n)|<=1. The new DirichletHermitianHighGcdTransfer.lean authors proof candidates:
  familyWeightedHighGcdCost(chi,D,T)
    <= plainHighGcdAbsoluteCost(D,T)
    <= highGcdDivisorCoverCost(D,T)
    <=16*T*N/D.
Thus for the SAME D_*(T)=max(1,floor(exp(T-sqrt T))),
  <=32*T*exp(sqrt T) for T>=4,
and this bill has every positive exponential rate by the prior scalar candidate.
This is an actual arithmetic family extension, NOT a GRH proof.
For GL2, ζ^k, Dedekind, Artin, modular and other families,
  |mu_L(n)| can exceed one;
the family's own weighted absolute/diagonal and high-gcd estimates
must be proved. The general source defines genuinely quantified,
NONVACUOUS high-gcd budget targets, rather than assuming an arbitrary
finite B exists.

The remaining signed source is the Hermitian low-gcd cross:
  sum_(m!=n,gcd(m,n)<=D_*)Re(mu_L(m)conj(mu_L(n)) K_T(m,n)).
Its all-rate one-sided control does not follow from the ordinary
fixedPlainLowGcdCross target. The analytic return requires separate
family continuation, completion, pole/gamma/normalization and zero
correspondence, not just positivity of a square integral.

## 6. Genuine norm-fiber ideal data for Hecke and Dedekind

For a number field K, ideals a and norm N(a), the original ideal
Dirichlet series has coefficients psi(a) and inverse mu_K(a)psi(a).
The INTEGER Dirichlet coefficient after norm pushforward is
  a_(K,psi)(n) = sum_(N(a)=n) psi(a),
  mu_(K,psi)(n) = sum_(N(a)=n) mu_K(a)*psi(a).
They are NOT generally mu(n)*chi(n). The module
MoebiusLFunctionIdealNormFamilies.lean defines exact typed finite
norm fibers, coefficient/reciprocal norm pushforward, actual
squarefree-prime-ideal sign/omega vocabulary, and a mandatory
NormPushforwardConvolutionTarget. Only when that norm-compatible
ideal factorization bridge is supplied does the grouped inverse
equal the universal ArithmeticFunction.dirichletInverse. No ideal
norm multiplicativity or prime splitting is fabricated.

Concrete class example (classical identity):
  zeta_(Q(i))(s) = zeta(s) L(s,chi_-4).
Its integer inverse is mu * (mu*chi_-4).
It satisfies mu_(Q(i))(2)=-1, mu_(Q(i))(3)=0,
mu_(Q(i))(5)=-2, mu_(Q(i))(9)=-1,
mu_(Q(i))(25)=1. Hence the integer generalized Mobius
is clearly not ordinary mu, even for a degree-two Dedekind zeta.

The repository HeckeRingDefsPublic.lean at blob
738c107f82e5c55ce06ce6b76c3b17d26e9f81ea
concerns Hecke double cosets, not an accepted ideal norm pushforward.
It is not used as false ideal-factorization authority.

## 7. Finite tests performed (neither interval-certified nor Lean-accepted)

Using an independent exact-integer Möbius sieve and complex character
samples, check Dirichlet convolution inverse at EVERY n<=120 for:
- χ mod4, real nonprincipal;
- χ mod5, a primitive complex order-four character.
Max convolution residual was exactly 0 in both cases under
complex numbers with entries 0, ±1, ±i.

The zeta and zeta² inverse convolution checks at n<=80 also
returned exact residual 0. Zeta² gave prime-power coefficients
mu_(zeta²)(p)=-2, mu_(zeta²)(p²)=+1.

Q(i) grouped integer inverse coefficients were computed by the
convolution formula above at n<=120 and produced the stated
p=2,3,5,9,25 distinctions.

For E: y²=x³-x, direct finite F_p point enumeration:
  p=3 #E(F_p)=4, a_p=0;
  p=5 #E(F_p)=8, a_p=-2;
  p=7 #E(F_p)=8, a_p=0;
  p=11 #E(F_p)=12, a_p=0;
  p=13 #E(F_p)=8, a_p=6.
These are local examples of 1-a_p X+pX²; do not
constitute an Hasse-Weil analytic continuation, conductor
certificate, modularity theorem, or global RH/GRH input.

## 8. Formal acceptance matrix and next program

Proposed Lean modules:
  MoebiusLFunctionFamilyInverse.lean
  MoebiusLFunctionLocalEuler.lean
  MoebiusLFunctionEulerSynthesis.lean
  MoebiusLFunctionHermitianPickup.lean
  MoebiusLFunctionIdealNormFamilies.lean
  MoebiusDirichletHermitianHighGcdTransfer.lean

Available exact algebra supplier: pinned Mathlib self_mul_dirichletInverse,
dirichletInverse_mul_self, DirichletCharacter.convolution_mul_moebius
and LSeries.mul_mu_eq_one, but their use in these new GRWTSK files still
needs full Lean elaboration.

Open finite/interface targets:
  SynthesizedPrimePowerCompatibilityTarget,
  DirichletEulerSourceIdentificationTarget,
  EllipticClassicalSourceIdentificationTarget,
  FrobeniusSourceIdentificationTarget,
  NormPushforwardConvolutionTarget,
  FamilyHermitianFiniteGramTarget,
  FamilyPrefixResponseReconstructionTarget.
Open family-specific magnitude/analytic targets:
  FamilyWeightedHighGcdEveryRate for non-Dirichlet sources,
  FamilyLowGcdEveryRateDyadic for every family,
  actual completedL/gamma/conductor/pole and zero correspondences.
The original ordinary PlainLowGcdEveryRateDyadic remains open.
Dirichlet family GRH as defined by existing repository
PrimitiveCharacterDataFamilyGRH remains open.
For wider automorphic/Artin families, the generalized GRH
target additionally requires analytic normalization/pole handling.
No family target is asserted from its definition alone.

The mathematical milestone is a uniform algebraic DEFINITION
of generalized Mobius coefficients across L families, with actual
Dirichlet-character conjugation and norm-fiber/degree-correct local
models. It is NOT an unconditional theorem that the former RH
method proves any GRH.

Verification facets for all six sources:
  SOURCE_PROOF_CANDIDATE;
  Lean parser/elaboration NOT_RUN;
  expected declaration types NOT_RUN;
  pinned full import compilation NOT_RUN;
  fresh independent kernel NOT_RUN;
  transitive axiom/sorry/unsafe audit NOT_RUN;
  root import NOT_ADDED; native runner NOT_DISPATCHED.
Pinned Lean 4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.

External mathematical references consulted for definitions only:
  https://dlmf.nist.gov/25.15
  https://mathworld.wolfram.com/Hasse-WeilL-Function.html
  https://openmaths.org/courses/NT-CFT/artin-l-functions-conductors-and-discriminants.html
  https://docs.magma-maths.org/GlobalFields/DirichletAndHeckeCharacters/introduction.html
No external source was treated as a kernel proof.
