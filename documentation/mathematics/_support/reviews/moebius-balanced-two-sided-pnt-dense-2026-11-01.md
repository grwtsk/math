# Two-sided unconditional PNT cancellation in all balanced squarefree dense Möbius sectors

Local attribution: grwtsk contributors. Research date: 2026-11-01.
Formalization assistance: OpenAI ChatGPT. The mathematical statement
below is proved from the classical unconditional Mertens bound. Lean
source compilation and native kernel/axiom acceptance are NOT_RUN.

## Problem and exact original source

The unchanged arithmetic source is the integer Möbius function
`moebiusReal n`, actual nonnegative causal response
`pickupResponse n u`, and symmetric physical-time Gram
`pickupResponseGram T m n = ∫_0^T r_m(u) r_n(u)du`.
The Putnam mask remains
`putnamRateGapSet ε T = Finset.Icc 1 floor(exp(εT/2))`.
The original signed dense source retains BOTH ordered orientations and
the m!=n diagonal exclusion. The previous `MoebiusPNTDyadicBilinearBlock`
only recorded a ONE-sided PNT bridge; this new argument uses signed
cancellation in BOTH independent arithmetic coordinates.

For a finite prime bank P (all members prime), define
  c_R(n)=mu(n) if every p in P fails to divide n, else zero,
  c_M(n)=mu(n)-c_R(n).
This is exactly the zero/nonzero `firstSelectedDivisor P n` split in
`MoebiusEndpointLeastPrimeTypeII`; no proxy or alternate residue
address is used. Note c_R(n)+c_M(n)=mu(n). Non-squarefree n has mu(n)=0
even if the bank contains a prime that divides it.

For positive integers M,N and T≥0 let
  I_M(T)=(M,2M]∩[1,floor(exp T)]
  I_N(T)=(N,2N]∩[1,floor(exp T)].
For labels a,b in {R,M}, form the literal two-variable signed rectangle
  B_ab(M,N;T)=Σ_(m∈I_M,n∈I_N)c_a(m)c_b(n)K_T(m,n).
The dense subrectangle is
  D_ab(M,N;T,ε)=Σ_(m∈I_M,n∈I_N,m!=n,
                    dist(m,n)>floor(exp(εT/2)))
                   c_a(m)c_b(n)K_T(m,n).
The two mixed orientations RM and MR are distinct summands. The
original COMPLETE signed masked rectangle equals RR+RM+MR+MM exactly.

## Theorem I: the explicit all-bank two-variable estimate

The classical unconditional Korobov-Vinogradov Mertens theorem implies
for every integer A≥1 there is an absolute constant C_A≥1 such that
  |M(x)| <= C_A x/(1+log x)^A, x>=1,
where M(x)=Σ_(n<=x)mu(n). The constant depends on A, NOT on P,M,N,T.

For arbitrary finite prime bank P define the two finite Euler factors
  W_P=∏_(p∈P)(1-1/p)^(-1),
  V_P=∏_(p∈P)(1-p^(-1/2))^(-1).
These are >=1 and are finite for every finite prime P.
Let
  H_(P,A)(X) =
     4 C_A(1+2^A W_P)*X/(1+log X)^A
       + 2^(7/4)*V_P*X^(3/4).

For each label a in {R,M} and every integer X≥1, all truncated
signed prefixes in the original dyadic block satisfy

  max_(X<=y<=2X) |Σ_(X<n<=y) c_a(n)| <= H_(P,A)(X).

This is UNIFORM in X, and the dependence on an arbitrary, possibly
X-dependent P is fully visible in W_P and V_P.

The LITERAL two-variable weighted rectangle then satisfies
  |B_ab(M,N;T)| <= H_(P,A)(M) H_(P,A)(N) K_T(M+1,N+1)
                 <= 4*(T-log max(M,N))_+
                      *H_(P,A)(M)H_(P,A)(N)/sqrt(M*N).
No diagonal is deleted in this bound; it concerns the complete
rectangular signed response with BOTH signed factors.

Writing H=floor(exp(εT/2)), the actual dense subrectangle obeys
  |D_ab(M,N;T,ε)| <=
    4*(T-log max(M,N))_+
          *H_(P,A)(M)H_(P,A)(N)/sqrt(M*N)
    + (4H+2)*T^2.

The LAST term is the paid original diagonal (<=2T²)
and selected short-gap abs packet (<=4H T²) from true
integrated Young and degree counting. It is not a replacement
signed kernel, not a free remainder and does not assume Chowla.

These inequalities hold for every finite prime P, even one that
depends on X and T. Constants C_A are universal; the actual
size of W_P,V_P must be retained if P grows.

## Proof I: exact finite P-smooth arithmetic convolution

Let D_P be the multiplicative monoid of all positive integers whose
prime factors belong to P, including 1 and all prime powers.
For every positive n the EXACT finite arithmetic identity is

  mu(n) 1_(forall p in P,p∤n)
       = Σ_(d|n, d∈D_P) mu(n/d).

Proof at each prime power p^k: if p∉P the only allowed
local divisor is 1, so its factor is mu(p^k).
If p∈P and k≥1, the local divisor sum is
mu(p^k)+mu(p^(k-1))+...+mu(1)=0.
At k=0 the factor is 1. Multiplicativity gives the
full statement including n=1, all squareful zeros,
repeated-prime powers and every original integer occurrence.

Summing n≤x and reindexing n=d r gives
  M_R(x)=Σ_(d∈D_P,d≤x) M(x/d).
Finite Euler products give
  Σ_(d∈D_P)1/d = W_P,
  Σ_(d∈D_P)1/sqrt(d) = V_P.

Split the sum at d=sqrt(x). When d≤sqrt(x),
  1+log(x/d)>=(1+log x)/2,
and the classical Mertens bound yields
  Σ_(d≤sqrt x)|M(x/d)|
   <= 2^A C_A W_P x/(1+log x)^A.

For d>sqrt x use the truly elementary |M(x/d)|≤x/d:
  Σ_(sqrt x<d≤x)|M(x/d)|
   <=x Σ_(d>sqrt x,d∈D_P)1/d
   <=V_P x^(3/4),
since 1/d <=x^(-1/4)/sqrt(d) on d>sqrt x.
Hence
  |M_R(x)| <= 2^A C_A W_P x/(1+log x)^A +V_P x^(3/4).

For the MATCHED signed prefix, M_M(x)=M(x)-M_R(x);
therefore both tags satisfy the common envelope
  |M_a(x)| <= C_A(1+2^A W_P)x/(1+log x)^A+V_P x^(3/4).

For each X≤y≤2X,
  Σ_(X<n≤y)c_a(n)=M_a(y)-M_a(X).
Both endpoints lie in [X,2X], where log t≥log X.
Bounding the TWO endpoints separately gives the exact
H_(P,A)(X) displayed above. No probability,
independence assumption, randomness or correlation
conjecture occurs in this proof.

## Proof II: genuinely two-sided Abel in the ORIGINAL Gram

For u>=0 the actual response r_n(u) is nonnegative and
nonincreasing in n>=1; this is already recorded in
LiouvilleDoubleAbelAnalyticGates. For any clipped dyadic
block (X,U] with X<U<=2X and class coefficients c_a,
write A_X(k)=Σ_(X<n≤k)c_a(n). The finite Abel identity is

  Σ_(X<n≤U)c_a(n)r_n(u)
    = A_X(U)r_U(u)
      +Σ_(X<k<U) A_X(k)[r_k(u)-r_(k+1)(u)].

The coefficients r_k-r_(k+1), r_U are nonnegative and their
total weight is EXACTLY r_(X+1)(u).
Since |A_X(k)|<=H_(P,A)(X), this proves the pointwise
SIGNED weighted bound
  |Σ_(n∈I_X(T))c_a(n)r_n(u)|
       <=H_(P,A)(X) r_(X+1)(u).

Repeat independently on the second integer coordinate.
The original Gram is a real finite integral of a separable
rank-one kernel. Finite summation/interchange gives
  B_ab(M,N;T)
   =∫_0^T [Σ_(m∈I_M)c_a(m)r_m(u)]
           [Σ_(n∈I_N)c_b(n)r_n(u)]du.

For T>=0 the two preceding pointwise estimates imply
  |B_ab|<=H_(P,A)(M)H_(P,A)(N)K_T(M+1,N+1).

The original causal responses vanish before their individual
births and satisfy 0<=r_n(u)<=2/sqrt(n). Consequently
  K_T(M+1,N+1)
   <=4*(T-log max(M,N))_+/sqrt(M N).
This proves the two-variable rectangle estimate. It has a
PRODUCT of two independent PNT-prefix savings: the older
one-sided estimate uses only one such factor.

## Proof III: original dense mask, both orientations and squareful zeros

For each ordered tag pair (a,b), the complete rectangular sum
splits EXACTLY into the dense mask, the additive short-gap
off-diagonal mask and the diagonal (if the two blocks overlap).
Every original pair lies in precisely one region.

The causal Gram-Young inequality gives
  2|mu(m)mu(n)K_T(m,n)|<=d_m(T)+d_n(T),
where d_n=mu(n)^2 K_T(n,n)>=0.
Each original m has at most 2H neighbors with
1<=dist(m,n)<=H. Therefore the sum of the ABSOLUTE
values over any subset of these ordered pairs is
<=2H*pickupDiagonal(T) <=4H T².
The diagonal absolute sum is <=pickupDiagonal(T)<=2T².
Because |c_a(m)c_b(n)|<=|mu(m)mu(n)|, these costs
also bound all FOUR tagged sectors individually,
including both RM and MR orientations.
This is precisely the (4H+2)T² allowance.

For a=b and intersecting blocks, actual diagonals
are paid, not silently removed. For a≠b each diagonal
is identically zero, because rough and matched tags
are disjoint. Non-squarefree indices have the actual
zero Möbius coefficient; they are kept in the finite
source until their individual terms vanish.

## Corollary: uniform arbitrary-log-power saving on balanced dense shells

Set M=N=X>=2 and T=log(2X). The original endpoint set is
exactly {1,...,2X} and I_X(T)={X+1,...,2X}. The weighted
kernel support length is at most log 2. The result specializes to

  |D_ab(X,X;log(2X),ε)|
  <= [4 log2 / X] H_(P,A)(X)^2
      +(4 floor((2X)^(ε/2))+2)*(log(2X))².

For FIXED P and ANY target beta>0, choose integer A>beta.
The first term is
  O_(P,A)(X/(log X)^(2A)
          +X^(3/4)/(log X)^A+X^(1/2))
  =O_(P,beta)(X/(log X)^beta).
For FIXED 0<ε<2, the paid sparse term is
  O_ε(X^(ε/2)(log X)²)
  =o(X/(log X)^beta).
Enlarge the constant for the finitely many small X.
Thus UNCONDITIONALLY, for all X>=2 and a,b∈{R,M},

  |D_ab(X,X;log(2X),ε)|
     <= C_(P,beta,ε) X/(1+log X)^beta.

Both mixed orientations are included and can be summed
without changing the exponential strength. A single
balanced shell X<n<=2X with X>=2 contains no (1,p)
prime-star edge and no ratio-two or ratio-three original
negative edge; those have already been analyzed elsewhere
and are NOT recycled as the new estimate. The new control
is for a genuinely remaining balanced squarefree dense
population.

This is an exponent-ONE estimate with log-power savings:
X/(log X)^beta = exp(T) / T^beta up to constants.
It is NOT O(exp(δT)) for every δ>0. The RH-facing
DenseLongGapAllRateOn on a fixed affine-frequent G remains OPEN.
The fixed-bank log-power corollary cannot be applied with
a scale-dependent prime bank P_X without keeping W_(P_X),
V_(P_X) in the bound. The repository's tuned initial
prime band may make those factors enormous and the
corollary ineffective. This limitation is explicit.

## Independent finite diagnostics and hostile controls

Using original integer Möbius values, and genuine finite prime
banks P={2,3} and P={7,19}, the P-smooth divisor convolution
was verified by exact integer arithmetic at n=1,...,256:
512 exact input checks PASS. The original causal Gram was
evaluated from its elementary closed antiderivative on shells
X=16,32,64 at T=log(2X), ε=0.6. All 24 tagged
full-rectangle results obeyed the product-of-measured-prefix
Abel bound; both signed mixed orientations and RR/MM were
included. The sum of four independently evaluated dense
tagged terms matched the direct original μ-dense rectangle
with maximum floating difference 8.7e-19. This is finite
diagnostic, NOT interval-certified real arithmetic or Lean.

Hostile failure boundary: replace μ(n) by +1 everywhere,
and its Mertens prefix is X rather than O(X/log^A X);
the arbitrarily large logarithmic gain is unavailable.
Likewise a prime set chosen with X is not automatically a
fixed P. Dropping the diagonal or one mixed orientation
violates exact source accounting. Source response
monotonicity is not an assertion that the SIGNED Gram itself
is monotone.

## Formal scope, provenance, next supplier

Current source baseline: resolve exact grwtsk/math/main at
publication, read back its commit/tree/file SHA. Prior
source modules include
MoebiusPNTDyadicBilinearBlock.lean
(blob 90d214fe5c00ec8ffb8c33c6a0b55fb25a39e90a)
and MoebiusEndpointLeastPrimeTypeII.lean
(blob fb77710105395da0394c930ef702b893f2f87f),
plus LiouvilleDoubleAbelAnalyticGates.lean
(blob b4bd9a83c83603faa5eff5326d9a99ec35dae2d4)
and MoebiusEndpointPutnamSparseGapAllRate.lean
(blob 2ccedc75331c8ec88956923f896083727d49ec4f).

External primary quantitative arithmetic:
Ethan Simpson Lee and Nicol Leong,
*New explicit bounds for Mertens function and the reciprocal of the
Riemann zeta-function*, arXiv:2208.06141v5 (2026-09-09),
https://arxiv.org/abs/2208.06141.
Classical source Walfisz, *Weylsche Exponentialsummen in der
neueren Zahlentheorie* (1963), Section V.5 Satz 3.
The classical quantitative input is unconditional and
weaker than RH, but the external proof and dependency are
NOT yet imported, compiled and audited in local Lean.

New Lean source candidate:
GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusBalancedTwoSidedPNTDense.lean
contains original indexed tag coefficients, source-exact
four-sector dense reconstruction, squareful-zero lemma,
two-independent-factor finite rank-one inequality, hostile
no-star/no-double/no-triple shell lemmas, explicit finite
Euler bank factors, and the precisely quantified
BalancedDenseLogPowerFormalizationTarget. The last
proposition is NOT a proved Lean theorem: needed remaining
formal steps are prime-smooth μ convolution, quantitative
Mertens bound port, finite one-dimensional Abel,
time-integral finite interchange, and counted sparse
absolute error. These must not be introduced as axioms.

Source proof candidate COMPILATION_NOT_RUN,
EXPECTED_TYPES_NOT_RUN, FRESH_KERNEL_NOT_RUN,
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. Actual dense all-rate
RH-strength bound and unconditional RH remain OPEN.

Nearest local previous result: one-sided PNT dyadic
Abel estimate; this is a two-sided signed
logarithmic-power improvement with both rough/mixed
orientations intact, not a discovery of RH cancellation.
No claim of new prior-art novelty outside this repository.

## Growing selected prime banks: a uniform log-power corollary

The preceding finite-Euler-factor estimate can be made UNIFORM
even when the chosen prime bank varies with the growing shell.
Fix 0<theta<2. For each integer X>=2, permit ANY finite bank
P_X of genuine primes satisfying
  p <= Y_X := (1+log X)^theta
for every p in P_X. (For very small X the bank may be empty.)
For any beta>0 and 0<epsilon<2 there is a constant
C_(theta,beta,epsilon) independent of X AND of P_X such that

  |D_ab(X,X;log(2X),epsilon)|
       <= C_(theta,beta,epsilon)*X/(1+log X)^beta

simultaneously for a,b in {R,M}. All original signed pairs and
both mixed orientations are still present.

**Complete elementary bank-factor proof.** For p>=2 and x=1/p<=1/2,
the elementary inequality -log(1-x)<=x/(1-x) gives
  -log(1-1/p) <= 2/p.
Summing over P_X, and bounding the primes by all integers,
  log W_P <= 2 sum_(2<=n<=Y_X) 1/n <= 2 log Y_X,
so W_P<=Y_X²=(1+log X)^(2theta).
Likewise x=1/sqrt(p)<=1/sqrt(2), and
1/(1-x)<=1/(1-1/sqrt(2))<4, hence
  -log(1-p^(-1/2)) <= 4/sqrt(p).
Since sum_(2<=n<=Y) n^(-1/2)<=2sqrt(Y),
  V_P <= exp(8 sqrt(Y_X))
       = exp(8(1+log X)^(theta/2)).
No prime-counting theorem is needed for these TWO
Euler-factor inequalities; they hold for arbitrary
subsets of primes below Y_X.

Because theta/2<1, for all sufficiently large X,
8(1+log X)^(theta/2) <= (1+log X)/8.
Thus uniformly over all eligible P_X,
  V_P <= exp((1+log X)/8) = e^(1/8) X^(1/8).
Substitute these two estimates in the earlier independently
proved explicit prefix envelope:
  H_(P_X,A)(X)
   <=4 C_A [1+2^A (1+log X)^(2theta)]
                 X/(1+log X)^A
       +2^(7/4)e^(1/8)X^(7/8).

For any desired gamma>0 choose integer A>gamma+2theta+1.
Then both terms are
  O_(theta,gamma)(X/(1+log X)^gamma),
with ONE constant independent of X AND bank P_X.
Choose gamma>beta/2. The TWO signed Abel factors
give |B_ab|=O_(theta,beta)(X/(1+log X)^beta).
Finally the original diagonal plus short-gap payment is
O_epsilon(X^(epsilon/2)(log X)^2), which is
o(X/(1+log X)^beta) because epsilon<2.
Enlarge the constant on the finitely many small X.
This completes the claimed uniform growing-bank corollary.

**Scope limit:** the bound is for prime banks with
max selected prime <=(1+log X)^theta, theta<2.
The repository's tuned first-prime cutoff of magnitude
exp((2/5)T), about X^(2/5), is MUCH larger and is
NOT covered. Its source-specific growing-bank
rough/mixed cancellation and the full global
all-positive-rate signed dense criterion remain OPEN.
This uniform polylog-bank consequence is analytically
proved here, but its additional Lean proposition
`PolylogGrowingPrimeBankDenseTarget` is NOT_FORMALIZED
as a proof term; the overall Lean verification is NOT_RUN.
