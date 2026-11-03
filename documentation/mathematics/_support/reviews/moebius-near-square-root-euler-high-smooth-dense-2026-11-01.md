# Near-square-root Mertens–Euler bridge and genuine high-smooth dense pairs

Local mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Research date 2026-11-01. This is a source-level Lean proof-candidate and mathematical-paper proof; new files have NOT been compiled, kernel-replayed or transitive-axiom audited.

## Scope and exact sources

Continuation from grwtsk/math main after 74b51de03a7131a34487aeda8cbfc4360793e27a. The current underlying source uses:
- original moebiusReal n, n=1, squareful zero values, genuine signed rough/matched taggedMoebius;
- original prime-smooth convolution from MoebiusPrimeSmoothFiniteConvolution.lean, with every positive smooth prime power;
- original physical-time pickupResponseGram T m n and balancedBlock X T / endpointIndex T;
- actual taggedDenseRectangle with both ordered mixed orientations and the literal m != n, Nat.dist m n notin A mask.

The new proof changes none of those definitions. It does not infer the global all-positive-rate bound, the endpoint subexponential criterion or RH.

## A. A stronger Euler-split cutoff with no RH-scale hypothesis

Fix any finite bank P of genuine primes; define W_P=product_(p in P)(1-p^(-1))^(-1), V_P=product_(p in P)(1-p^(-1/2))^(-1). They remain explicitly bank-dependent. For N>=1 let L=log N and Q=N exp(-2 sqrt L)>0. The EXACT old source identity is

  M_R(N)=sum_(1<=d<=N, P-smooth d) M(floor(N/d)),
  M_M(N)=M(N)-M_R(N).

For any integer A>=1, take an independently classical unconditional C_(2A)>=0 such that, at ALL real x>=1,

  |M(x)| <= C_(2A) x/(1+log x)^(2A).

The Lee–Leong paper arXiv:2208.06141v5 gives quantitative zero-free-region bounds stronger than arbitrary logarithmic powers, but no numerical constants or analytic proof are ported here. The quantified input is the existing QuotientMertensLogPower (2*A) C_(2A) at real quotient N/d and original integer cutoff floor(N/d).

For 1<=d<=min(N,Q), log(N/d)>=2 sqrt L. Since

  (1+2 sqrt L)^2 >= 1+L,

we have |M(floor(N/d))| <= C_(2A)*(N/d)/(1+L)^A. Summing the positive reciprocal P-smooth Euler mass gives SMALL <= C_(2A)*W_P*N/(1+L)^A.

For Q<d<=N, use only |M(floor(N/d))|<=N/d. Since d>Q,

  1/d <= Q^(-1/2)*d^(-1/2).

The P-smooth half-moment gives LARGE <= (N/sqrt Q)*V_P = sqrt N*exp(sqrt L)*V_P. No assumption on d being squarefree is made; d=1 is included in whichever piece its real cutoff dictates.

Therefore, unconditionally in ordinary mathematics, for every N>=1 and every finite genuine-prime bank P,

  |M_R(N)| <= C_(2A)*W_P*N/(1+L)^A + V_P*sqrt N*exp(sqrt L).

Because |M(N)|<=C_(2A)*N/(1+L)^(2A)<=C_(2A)*N/(1+L)^A,

  |M_M(N)| <= C_(2A)*(1+W_P)*N/(1+L)^A + V_P*sqrt N*exp(sqrt L).

This preserves arbitrary log-power savings while improving the old N^(3/4) Euler tail to N^(1/2+o(1)). Its classical constant is C_(2A), not the old C_A. There is NO square-root-scale bound for M(N) here.

The missing Lean-local mathematics is precisely the two elementary finite P-smooth moment inequalities

  sum_(1<=d<=N, smooth) 1/d <= W_P,
  sum_(1<=d<=N, smooth) 1/sqrt d <= V_P.

The pinned Mathlib source Mathlib/NumberTheory/EulerProduct/Basic.lean at d13f23b723b8a846827a245b89c10fc7d3f11612 contains
EulerProduct.summable_and_hasSum_factoredNumbers_prod_filter_prime_geometric.
The necessary port must establish bankSmooth B.primes d == membership in Nat.factoredNumbers B.primes for d>0, instantiate the completely multiplicative reciprocal/square-root real weight, compare a nonnegative finite prefix with its tsum, and normalize the two geometric prime factors. The external classical Mertens analytic proof remains a distinct missing port. FiniteSmoothEulerMoments and NearSquareRootEulerFormalizationTarget are explicitly PROPOSITIONS, NOT proved Lean theorems.

## B. A genuine original signed high/high pair sector

Fix an integer dyadic shell X>=1, N=2X, T=log N, and the same Q=N exp(-2 sqrt T). Retain the actual original source integer n, and define a P-smooth-factor support:

  S_P(X)={n in (X,2X]: exists d|n, d P-smooth, d>Q}.

This is a FILTER OF ORIGINAL INDICES, not an artificial convolution coefficient. Hence for each rough/matched pair a,b, and for ANY additive-gap mask A, the actual signed high/high source is

  D_HH,ab(X;A)=sum_(m,n in S_P(X), m!=n, |m-n| notin A)
       taggedMoebius(P,a,m)*taggedMoebius(P,b,n)*pickupResponseGram(T,m,n).

The companion high/low, low/high and low/low source packets use the complementary original source indices, and these FOUR packets sum exactly to the old taggedDenseRectangle P a b A X X T. Every original index, squareful zero, sign, orientation, physical birth, diagonal exclusion and mask survives. The new Lean source attempts that finite double-sum identity directly.

A union bound over REAL positive integers and exact finite divisor/multiple accounting gives

  #S_P(X) <= sum_(d>Q,P-smooth) floor(N/d)
           <= N*sum_(d>Q,P-smooth) 1/d
           <= N/sqrt Q * V_P
           = sqrt N * exp(sqrt T) * V_P.

This inequality does not use any cancellation assumption about mu. Each original |taggedMoebius|<=1. For m,n in (X,N] and 0<=u<=T, 0<=pickupResponse(n,u)<=2/sqrt n<=2/sqrt X. Therefore

  0<=pickupResponseGram(T,m,n)<=4*T/X.

Because the arbitrary mask only removes terms, finite triangle inequality now proves the FULL signed high/high estimate

  |D_HH,ab(X;A)| <= (#S_P(X))^2 * (4T/X)
                  <= 8*T*exp(2 sqrt T)*V_P^2.

This is valid for all source tags a,b and all finite A; it works for BOTH mixed orientations even when one or more of those actual packets vanishes. It also bounds the complete unmasked high/high rectangle. No averaging of signs, no pair independence and no alteration of the causal kernel are involved.

For any FIXED P, V_P is a constant, so 8*T*exp(2 sqrt T)*V_P^2 = exp(o(T)). For a scale-dependent bank P_X with V_(P_X)=exp(o(log X)), the same estimate is uniformly X^(o(1)). In particular the prior SOURCE-REVIEWED near-critical condition P_X subset primes <=Y_X, Y_X=(1+log X)^2*(log(1+log X))^alpha, fixed alpha<2, yields this moment growth from the classical prime-counting bound and partial summation; its Lean port remains NOT_RUN. There is no bank-uniform claim when V_P can grow arbitrarily.

For large enough X, Q>=1. Then every d>Q has d>=2, hence a prime divisor in P, and the original rough tag vanishes on S_P(X). Thus the nonzero high/high packet can only be matched/matched on those scales; the general all-four-orientations statement is nevertheless valid without assuming Q>=1.

CRITICAL LIMIT: This removes only a genuine high/high support sector. The original low/low and both mixed high/low packets remain, as do cross-shell packets and complete global energy accounting. The high/high saving does NOT establish the full original taggedDenseRectangle all-positive-rate bound. In contrast to a formal split of rough/matched CONVOLUTION COMPONENTS, this is a genuine source-index partition: no fictitious component cancellation is counted as new arithmetic progress.

## C. Finite diagnostics and verification boundaries

Independent finite diagnostic script tested five banks: empty, {2}, {2,3}, {2,3,5}, {2,3,5,7}; N=1..200 in each bank. 1,000 exact-integer rough prefix/convolution and head/tail decomposition comparisons passed, along with sample numeric refined envelopes calibrated only to that finite range. At X=16,32,64,100,150 across the five banks, 100 masked original signed Gram comparisons and moment-cardinality bounds passed, using the original causal response closed-form integral. These are finite diagnostics, NOT classical-constant certification and NOT Lean verification. Zero/empty high-support cases were retained.

The source proof candidate includes explicit near-square-root cutoff, W_P and V_P cost definitions, a proved-by-script algebraic rough/matched envelope identity, literal high/low source Finset partition, and a finite double-sum partition returning taggedDenseRectangle. The quantitative Euler and high-smooth-count/Gram statements remain named Props, not Lean theorems. No sorry, research axiom or unsafe declaration was intentionally authored.

Pinned toolchain: Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612, not migrated. Actual compilation, expected-type checks, fresh independent kernel replay, transitive axioms and native/unsafe auditing all NOT_RUN. The preexisting source files are also unverified at their stated scope. No Noe worker/controller, scheduler, GitHub CI or remote compiler was invoked.

Acceptance tasks in order: prove the finite smooth Euler moments in the pinned Mathlib environment; prove the near-square-root Mertens cost transfer from old exact convolution; prove high-support finite multiple-count and high/high Gram bound using original response; replay source double-sum partition and all dependencies; import the separate true unconditional classical quantitative Mertens theorem; audit transitive axioms. Global all-positive-rate dense source and RH remain OPEN.
