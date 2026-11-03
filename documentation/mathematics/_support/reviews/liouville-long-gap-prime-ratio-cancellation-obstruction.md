# Prime-ratio signed cancellation in the actual interior long-gap Liouville source

Local mathematical attribution: grwtsk contributors. Investigation: 2026-10-31.

## Verdict and trust boundary

**The unresolved arithmetic theorem \`InteriorLongGapAllRate\` is NOT PROVED.
The Riemann Hypothesis remains OPEN.** This note records a noncircular
arithmetic contribution, a quantitative cancellation obstruction, and an
externally sourced fixed-exponent partial estimate for one genuine subfamily
of the original signed correlation sum. No step below upgrades a partial
theorem to the needed all-positive-rate upper bound.

The additive Lean module contains uncompiled SOURCE PROOF CANDIDATES for
the literal prime-dilation sign, original causal-kernel positivity,
nonpositive prime-ratio sector, and exact signed scalar accounting.
The PNT lower bound and two-parameter interval-summation estimate in
this review are mathematical derivations, NOT Lean-certified results.
Compilation, expected types, fresh kernel replay, and transitive axiom
auditing are NOT_RUN. No verifier is dispatched.

## 1. Pinned unchanged source

Read original \`LiouvilleCausalEnergyTarget.coefficient\` from
\`LiouvilleCausalEnergyTarget.lean\`, blob
\`a00aaa07c067b4c88203372870b5d5d151de0de4\`,
and literal \`CCC.pickupResponse\` from \`MertensPrimitive.lean\`,
blob \`45e06c371d67bcf8c939d20a95fcbc63570546fa\`.

For positive m,n and T>=0,
  r_n(u)=2 max(n^(-1/2)-exp(-u/2),0),
  K_T(m,n)=integral_0^T r_m(u)r_n(u)du.

The original source is represented in
\`LiouvilleDoubleAbelCausalKernel.causalKernel T m g\`
with n=m+g; blob \`b102b4af07b0a1001424b084101c2cc16077181a\`.
The exact unresolved arithmetic theorem is
\`LiouvilleInteriorLongGapRH.InteriorLongGapAllRate\`,
source blob \`e9b68f4106b3e2d648ba0803f75dc5e3b4dccbd9\`.
The previous complete birth-collar algebra and analytic review remain
pinned at \`f84ed4a5ae39da68d6403e1f7e0d55e484d6dc19\` and
\`79907f446d14b66907df69426b190746905edfcf\`.

For every j>=1, set
  N=2^(5j), R=N-2^(4j), G=j^2, T=5j log 2=log N.
The exact outstanding long-gap sum is
  P_j=sum_(1<=m<n<=R,n-m>G)
        lambda(m)lambda(n)K_T(m,n).
No positive or negative terms are discarded.

## 2. Actual negative prime-multiplier sector

Let
  A_prime(j) = sum_(p prime,m>=1,pm<=R,(p-1)m>G)
     lambda(m)lambda(pm)K_T(m,pm).

The pair (m,n=pm) occurs once, because its integer ratio p is unique.
It corresponds exactly to original base m and positive gap
g=(p-1)m. The cutoff pm<=R<N keeps the original source's
strict m+g<N mask, so it neither creates nor loses endpoint terms.

Complete multiplicativity of ACTUAL Liouville and lambda(p)=-1 give
  lambda(m)lambda(pm)=-lambda(m)^2=-1 (m>=1).
The second equality is from the actual ±1 Liouville source.
For every nonnegative T, the literal positive-index responses
are nonnegative; thus K_T(m,pm)>=0. Consequently,
  A_prime(j)= -sum_(p,m as above) K_T(m,pm) <=0.        (A1)

This is a real arithmetic sign theorem, not independence, an average,
an axiom, or a random-sign replacement. The Lean source candidate
\`primeRatioLongGapSector_nonpos\` is grounded in exactly this object.
At j=1 the pair m=1,p=3 occurs, so the sector is not vacuous.

## 3. Forced sizable negative prime mass

For all sufficiently large j, every prime
  N/16<=p<=N/8
occurs in the prime sector with m=1 and g=p-1>j².
The latter follows from exponential N=2^(5j) versus j².

On the physical-time interval
  T-log 2 <=u<=T
we have exp(-u/2)<=sqrt(2/N). Since N>=32,
  r_1(u)=2(1-exp(-u/2))>=1.
For p<=N/8, 1/sqrt p>=2 sqrt(2/N), hence
  r_p(u)>=1/sqrt p.
Therefore the ORIGINAL integral kernel obeys
  K_T(1,p)>= (log 2)/sqrt p.

By the ordinary prime-number theorem there is a fixed c0>0
and a fixed j0 such that
  #{p prime:N/16<=p<=N/8}>=c0 N/log N
for all j>=j0. Consequently there is c1>0 such that

  A_prime(j) <= -c1 sqrt(N)/log N, j>=j0.     (A2)

No RH assumption or quasi-RH strengthening is needed for (A2).
The PNT is an unconditional external standard theorem; the
relevant prime-count lower bound is not Lean formalized here.

## 4. Complete positive compensator is NECESSARY, not optional

Let A_rem(j)=P_j-A_prime(j), preserving ALL the non-prime-ratio
signed pairs. No approximation is made by this definition.

The complete original bulk Gram identity gives
  H_bulk=D_bulk+2 A_short+2 P_j>=0.
Its original diagonal and short-gap allowances satisfy
  0<=D_bulk<=4T(1+T),
  |A_short|<=4G T(1+T).

Therefore UNCONDITIONALLY
  P_j>=-(2+4G)T(1+T).                           (A3)

Combining (A2), (A3) and A_rem=P_j-A_prime gives

  A_rem(j) >= c1 sqrt(N)/log N
                   -(2+4j²)T(1+T), j>=j0.     (A4)

Since N=2^(5j), the first term dominates the polynomial
allowance. Thus for sufficiently large j,

  A_rem(j) >> sqrt(N)/log N > N^epsilon
for every fixed epsilon<1/2 (after the usual eventual reading).

This is an unconditional lower bound on a SIGNED original-source
complement, not a sign-free simulation. In particular the seemingly
natural strategy 'throw away the negative prime-ratio contribution
and prove the remaining sector is N^o(1)' is mathematically impossible.
A successful upper-bound proof must retain and control compensation
between the negative prime sector and its large positive complement.

P still requires the distinct UPPER estimate
  P_j=A_rem(j)+A_prime(j)<=C_epsilon exp(epsilon T)
for every epsilon>0; (A4) does not prove it.

## 5. Further exact reverse incidence on divisible pairs

Consider the full divisible-endpoint sector
  A_div(j)=sum_(m>=1,d>=2,dm<=R,(d-1)m>G)
       lambda(m)lambda(dm)K_T(m,dm).

Again n=dm uniquely determines d=n/m and m, so no pair is
double-counted. Complete multiplicativity and lambda(m)^2=1 give

  A_div(j)=sum_(m>=1,d>=2,dm<=R,(d-1)m>G)
              lambda(d)K_T(m,dm).               (A5)

This is **genuine arithmetic information**: the long-gap pair
correlation has become a one-variable Liouville sum in d with a
positive, slowly varying physical kernel weight.

For fixed m, the weight
  w_m(d)=K_T(m,dm)
is nonnegative and nonincreasing in d, since the actual
response r_(dm)(u) is nonincreasing in its positive integer index.
The original response envelope gives
  0<=w_m(d)<=4T/(m sqrt d).                     (A6)

A direct geometric bound, WITHOUT arithmetic cancellation, gives
  |A_div(j)|<=8T sqrt R sum_(m>=1) m^(-3/2)
             =O(T sqrt R).                      (A7)

This already reflects sparseness of multiplicative-ratio pairs
compared to the complete O(N^2) pair inventory.

## 6. Arithmetic improvement from actual Liouville prefix cancellation

Suppose there is a real exponent s with 1/2<s<1 and a constant
C_s such that the ACTUAL Liouville summatory function satisfies
  |L(x)|=|sum_(1<=d<=x)lambda(d)|<=C_s x^s, x>=1.

**This is a separate explicit arithmetic premise**, NOT the
unproved all-positive-rate theorem. At present, the externally
checked fixed zero-free half-plane from
https://github.com/GTimG/QuasiRiemannTracker/pull/99
plus its classical summatory-function transfer supplies such an
s for every s>theta_* = 0.8733819666133. No theorem at s=1/2
or all s>1/2 is inferred.

On any integer interval a<=d<=b<2a, partial summation gives
  |sum_(d=a..b)lambda(d)w_m(d)|
       <=2 C_s(2a)^s w_m(a)
       <=8 C_s 2^s (T/m) a^(s-1/2).           (A8)

This follows because the partial sum from a to x is a difference
of two L(x) values, and the variation of the nonincreasing
positive weight is at most its initial value. Partition the
moving range
  max(2, floor(G/m)+2)<=d<=floor(R/m)
into dyadic blocks. Because s-1/2>0, the block bounds
sum as a geometric progression dominated by the final block.
Uniformly in both m and the moving gap cutoff,

  |sum_(d as above)lambda(d)w_m(d)|
       <=C'_s (T/m)(R/m)^(s-1/2).             (A9)

Sum over m>=1. Since s+1/2>1, the p-series converges:

  |A_div(j)|
      <=C'_s T R^(s-1/2) sum_(m>=1)m^(-s-1/2)
      <=C''_s T N^(s-1/2).                    (A10)

Choosing s just larger than theta_* and absorbing T=log N
into a small positive exponent yields the source-specific
partial estimate

  |A_div(j)| = O_epsilon(
      N_j^(0.3733819666133+epsilon)).          (A11)

This is a genuine ARITHMETIC improvement over the geometric
power 1/2 for the whole ORIGINAL signed divisible-ratio sector.
It depends on the checked external zero-free theorem and the
not-yet-local-Lean-checked analytic summatory transfer. It is
NOT an all-positive-rate estimate for the complete P_j.

## 7. Independent finite diagnostics, strictly limited scope

Using the literal closed positive-index response and an
independent high-precision closed-form integral kernel, the
following finite values were obtained:

j=1: N=32, R=16, G=1;
  P_j=-1.1313977302817143494508;
  A_prime=-5.671448119029 (approx);
  A_rem=+4.5400503887473 (approx);
  A_div=-3.0771210342689 (approx);
  A_nondiv=+1.9457233039872 (approx).

j=2: N=1024, R=768, G=4;
  P_j=+5.6083427715196 (approx);
  A_prime=-95.216670584376 (approx);
  A_rem=+100.8250133559 (approx);
  A_div=-31.673991597633 (approx);
  A_nondiv=+37.282334369153 (approx).

Separately, finite N=16,32,64 tests of the original signed
half-Gram against its gcd-coprime reindexing matched to
high-precision rounding error. The gcd identity is not
the arithmetic estimate sought; its Euler product still
contains reciprocal zeta factors and retains the same
potential off-critical zero obstruction. It is not
promoted into this Lean source.

These finite calculations are diagnostics, NOT all-j proofs,
kernel replay or certified interval computations.

## 8. Exact failure of the attempted P proof and next target

The true outstanding theorem remains the ORIGINAL \`P\`:

  for every eps>0, exists Ceps>=0 such that for all j>=1,
  P_j<=Ceps exp(eps*T_j).

What has been proved mathematically in this review:
- the actual negative prime-ratio arithmetic sector (A1);
- unconditional prime-count negative mass (A2);
- forced positive complement (A4);
- exact divisible-pair Liouville reverse count (A5);
- unconditional sparse geometry bound (A7);
- fixed-exponent arithmetic saving (A11), conditional only on
  the externally checked zero-free input and standard transfer.

What has NOT been proved:
- all-positive-rate control of the COMPLETE signed remainder
  after simultaneously accounting for prime and composite
  ratio contributions and nondivisible pairs;
- a new zero-free region reaching Re(s)=1/2;
- \`InteriorLongGapAllRate\` or the Riemann Hypothesis.

The negative prime sector and positive complement are each
far too large for the desired N^o(1) upper bound to be inferred
by termwise triangle inequalities. A successful proof must
establish a NEW *joint* signed cancellation inequality; known
fixed zero-free half-planes do not supply that bound.

No independent Lean compilation or kernel check was performed.
No verifier, root-build modification, queue, schedule, unrelated
source edit or user-local shared Git lock is invoked.
