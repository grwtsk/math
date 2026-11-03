# RH divisor radical transform: exact inverse and noncircular scale frontier

Mathematical research date: 2026-11-01 (America/Los_Angeles). Local attribution: grwtsk contributors; analysis and Lean source candidate assistance: OpenAI ChatGPT. This is an ordinary mathematical argument plus source-level Lean CANDIDATES. It does not prove RH or establish Lean kernel acceptance.

## 1. Exact source and unchanged definitions

The original real coefficient mu, causal response r_n(u), integrated Gram K_T(m,n), complete ordered pickupCross, and physical observation semantics remain unchanged. Predecessor exact source: MoebiusDivisorCausalGramCollapse.lean, Git blob 6216cb9c8bc590a2dfe84132b8267c90a6622148. Radical candidate: MoebiusDivisorPNTTransfer.lean, blob 3aed2ced84fd353f4738dee414b1bc77e6f225d1. Pinned compiler Lean 4.34.1 and Mathlib revision d13f23b723b8a846827a245b89c10fc7d3f11612.

Set C(n)=sum_(d|n)mu(d)/sqrt(d)=prod_(p|n)(1-p^(-1/2)); h(n)=1/sqrt(rad(n)), h(1)=1, h(p^k)=a_p=p^(-1/2), k>=1; b(n)=mu(n)C(n). The preceding ordinary mathematical prime-power calculation establishes b=mu*h. The Lean source explicitly retains this as the unproved named coefficient bridge OriginalWeightedRadicalConvolution; none of the proof bodies in this revision covertly assumes it.

## 2. EXACT Dirichlet inverse

Because h(1)=1, there is a unique Dirichlet convolution inverse g=h^(-1), with g(1)=1. The prime-power generating functions for every genuine prime p are

 H_p(z) = 1 + a_p*z/(1-z) = [1-(1-a_p)z]/(1-z);
 G_p(z) = 1/H_p(z) = (1-z)/[1-(1-a_p)z].

Thus for all k>=1,

 g(p^k) = -a_p*(1-a_p)^(k-1).

Both h and g are multiplicative on positive integers. Since 0<a_p<1, for EVERY n>=1,

 |g(n)| = product_(p^k||n) a_p*(1-a_p)^(k-1)
        <= product_(p|n) a_p = h(n).

At n=0 both arithmetic-function carriers vanish.

The source constructs g using the EXACT pinned ArithmeticFunction.dirichletInverse and proves finite algebraic identities as Lean source candidates:
 g*h=1, h*g=1, g*(h*mu)=mu.
This construction uses no spectral, elliptic, hardware, analytic or RH assumption.

## 3. Complete TWO-WAY finite original integer prefix

Let M(N)=sum_(1<=n<=N)mu(n), A(N)=sum_(1<=n<=N)b(n). Pinned Mathlib sum_Ioc_mul_eq_sum_sum yields, for every N>=0 with all original quotient floors and n=1,

 A(N)=sum_(1<=d<=N)h(d)*M(floor(N/d)),
 M(N)=sum_(1<=d<=N)g(d)*A(floor(N/d)).

Before the coefficient bridge receives Lean proof, the second identity holds unconditionally for the exact radial convolution prefix ~A(N)=sum_(n<=N)(h*mu)(n). The Lean candidate proves this unconditional inverse and the signed triangle bound

 |M(N)| <= sum_(d<=N)|g(d)|*|~A(floor(N/d))|.

The source-literal version with b(n)=mu(n)C(n) is proved in Lean candidate form CONDITIONALLY on the prior explicit OriginalWeightedRadicalConvolution Prop. This is not a new axiom, not an admitted coefficient theorem, and does not alter the original pickup kernel.

## 4. Absolute summability and RH-scale equivalence

For theta>1/2, the positive radical Dirichlet series satisfies

 H_theta = sum_(n>=1)h(n)/n^theta
         = product_p[1+p^(-theta-1/2)/(1-p^(-theta))] < infinity,

since every Euler increment is O_theta(p^(-theta-1/2)). The inverse kernel satisfies

 G_theta = sum_(n>=1)|g(n)|/n^theta
         = product_p[1+p^(-theta-1/2)/
                        (1-(1-p^(-1/2))*p^(-theta))]
         <= H_theta.

The coefficientwise inequality |g|<=h is stronger than mere convergence. Suppose theta>1/2 and for all n>=1, |M(n)|<=C*n^theta. The forward exact finite convolution and floor(N/d)<=N/d imply

 |A(N)| <= C*H_theta*N^theta.

Conversely, if |A(n)|<=C*n^theta for all n>=1, the FINITE inverse identity gives

 |M(N)| <= C*G_theta*N^theta <= C*H_theta*N^theta.

Finite initial exceptions can be absorbed in C. Therefore, for EVERY fixed theta>1/2,

 M(N)=O(N^theta) if and only if A(N)=O(N^theta).

The same inversion and dominated-convergence argument with H_1,G_1 proves the PNT-level equivalence M(x)=o(x) iff A(x)=o(x).

Classical independent reference: Titchmarsh, The Theory of the Riemann Zeta-Function, Theorem 14.25(C), and Crandall-Pomerance, Prime Numbers, Theorem 1.4.3, identify RH with M(x)=O(x^(1/2+epsilon)) for every epsilon>0. Thus imposing A(x)=O(x^(1/2+epsilon)) for every epsilon>0 is already RH-equivalent. It is not a weaker arithmetic supplier. The new source records RadicalMertensPowerEquivalence as a TARGET Prop, not a Lean theorem.

The RH-facing original full signed pickupCross also includes all incomparable original integer pairs and their exact signed compensation. No RH-strength estimate on that source follows from this transform.

## 5. New explicit two-zone PNT-to-divisor bound

The previous SOURCE theorem radicalConvolution_prefix_twoZone consumes only the actual original Mertens tail |M(q)|<=delta*q for q>=K. Let K>=1, delta>=0, and choose ANY fixed 1/2<sigma<1.

For original q=floor(N/d) with q>=K, delta*q<=delta*N/d. Otherwise q<K and

 q <= K^(1-sigma)*q^sigma
   <= K^(1-sigma)*(N/d)^sigma.

Because h(d)>=0, finite summation gives the source-exact inequality

 |A(N)| <= delta*N*H_1 + K^(1-sigma)*N^sigma*H_sigma.

The Lean definition TwoZoneRadicalPowerEnvelope is the precise FINITE moment version; its real-power proof is an unproved Lean target. The mathematical calculation is independent of RH and of any fictitious free residual.

Apply the PREEXISTING genuine response-area Stieltjes identity from the earlier mathematical review: for B=exp(T) and n<=B,
 R_B(n)=integral_n^B t^(-3/2)*log(B/t)dt.
Hence S(B)=sum_(n<=B)b(n)R_B(n)
 =integral_1^B A(t)t^(-3/2)*log(B/t)dt.

Elementary integration, with alpha>0, yields
 integral_1^B t^(alpha-1)*log(B/t)dt
  = (B^alpha-1)/alpha^2 - log(B)/alpha
  <= B^alpha/alpha^2.

For T>=0, restore all original proper-divisibility ordered orientations, subtract the n=1 area, and pay the diagonal D(T)<=2T^2. The resulting **paper-proved conditional quantitative estimate** is

 |X_div(T)| <= 16*delta*H_1*exp(T/2)
   + 4*K^(1-sigma)*H_sigma/(sigma-1/2)^2
       *exp((sigma-1/2)*T)
   + 8*T + 4*T^2.

Each delta is paid by its real original Mertens cutoff K. Classical proved PNT supplies such a K for every delta>0, and therefore the previously published X_div=o(exp(T/2)) follows. Neither the current conditional bound nor PNT pays the full original incomparable-index sector.

## 6. Independently executed finite checks (not a proof)

For ACTUAL inverse radical coefficients, a separate float64 computation to N=4000 gives maximum absolute errors:
 - (mu*h)(n) versus b(n): 1.3877787807814457e-16;
 - (g*b)(n) versus mu(n): 4.440892098500626e-16;
 - (g*h)(n) versus one-at-n=1: 5.551115123125783e-17;
 - maximum (|g(n)|-h(n)): 0.

An independent EXACT rational combinatorial test replaces each prime-local a_p=1/sqrt(p) by a_p=1/(p+1), preserving the same convolution structure. Each of the three identities held as exact Fraction equalities for n=1..192, a total of 576 exact finite checks. This tests finite indexing, not the irrational real theorem or Lean.

At N=4000, finite H_theta versus G_theta sums:
 theta 0.60: H 8.741905, G 5.374324;
 theta 0.75: H 5.303813, G 3.602526;
 theta 1.00: H 3.008464, G 2.351498.
An additional finite two-zone fixture K=100, delta=0.2 and sigma=0.75 on n<=4000 had largest |M(n)|/n after cutoff 0.05263158, with finite two-zone inequalities passing at N=100,256,1000,4000. No global PNT threshold is asserted by finite fixtures.

## 7. Formal status and exact remaining gaps

Published new standalone candidate: GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusDivisorRadicalReversible.lean. The source has 8 Lean theorem scripts for the finite inverse and source-preserving conditional bridge; all are SOURCE_PROOF_CANDIDATE, not compiled or kernel accepted. Existing OriginalWeightedRadicalConvolution and RadicalDirichletKernelSummable are still explicit UNPROVED Lean Props.

New explicit UNPROVED Lean Prop targets: RadicalInversePrimePowerFormula, RadicalInverseCoefficientMajorant, TwoZoneRadicalPowerEnvelope, RadicalMertensPowerEquivalence. Their mathematical arguments are in this review. None is introduced as a research axiom.

Pinned toolchain Lean 4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Parsing NOT_RUN, actual elaboration/compilation NOT_RUN, expected types NOT_RUN, fresh kernel replay NOT_RUN, full transitive axiom audit NOT_RUN. No local Lean/Lake/elan executable present. No new authored sorry, axiom or unsafe declaration; static scan is NOT an axiom audit. No native runner, remote CI, scheduler, force push, or changes to original mathematical definitions.

The correct next mathematical problem is STILL the complete original signed pickupCross(T)=X_div(T)+X_incomp(T): produce a genuinely new one-sided all-positive-rate upper estimate on one fixed affinely frequent set of scales with the entire incomparable signed compensation. Exact invertible coefficient transforms cannot supply it automatically.
