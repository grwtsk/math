# Source-exact quantitative Mertens → prime-bank Euler → two-coordinate causal Abel

Local mathematical attribution: grwtsk contributors, 2026-11-01.
Formalization assistance: OpenAI ChatGPT.
Source proof candidates; no unperformed Lean/kernel certificate is asserted.

## Exact arithmetic source and the independent premise

The original source remains
\`GRWTSK.RiemannHypothesis.CCC.moebiusReal\`,
\`pickupResponse\`, \`pickupResponseGram\`, integer index n>=1,
and \`taggedMoebius B.primes true/false\` under
\`MoebiusBalancedTwoSidedPNTDense.lean\`. The previous original-source
finite identity \`original_rough_prefix_eq_primeSmooth_Mertens\`
is unchanged. It uses the smooth divisors d>=1 with all prime
factors in a finite true-prime bank P, INCLUDING d=1 and all
repeated powers.

Independent unconditional mathematics: for every integer A>=1,
there exists C_A>=0 such that for all x>=1,

    |M(x)| <= C_A x/(1+log x)^A,

where M(x)=sum_(1<=n<=floor x) mu(n). Classical
Vinogradov–Korobov zero-free-region bounds imply this.
Ethan Simpson Lee and Nicol Leong, *New explicit bounds for
Mertens function and the reciprocal of the Riemann
zeta-function*, arXiv:2208.06141v5 (2026-09-09),
https://arxiv.org/abs/2208.06141, provides a modern
explicit route, but its numerical constants and range were
NOT independently ported. \`QuotientMertensLogPower A C\`
is the EXACT source specialization: integer N/d inside
the partial-sum cutoff, REAL (N:real)/(d:real)
inside the majorant. This is a displayed external
arithmetic theorem premise in the new Lean source,
not a proved local theorem and not an RH premise.

## Independent signed finite Mertens/Euler combination

At any integer N>=1, the verified mathematical identity is

   M_R(N) = sum_(d<=N, d P-smooth) M(floor(N/d))
   M_M(N) = M(N) - M_R(N).

For 1<=d<=N, use both independent bounds

   |M(floor(N/d))|
      <= C_A (N/d)/(1+log(N/d))^A,
   |M(floor(N/d))| <= N/d,

where all ratios in bounds are real, the sum is integer.
The MINIMUM of the two, called \`quotientMertensCost\`,
is crucial: for large smooth divisors d>sqrt N, replacing
the trivial arm by the Mertens bound need not give the
claimed square-root Euler tail.

Define \`roughPrimeSmoothMertensCost\` by summing
that minimum over ALL original P-smooth d<=N.
The source proves as Lean proof CANDIDATES:

  |M_R(N)| <= roughPrimeSmoothMertensCost B A C N,

  |M_M(N)| <= C_A N/(1+log N)^A
                      + roughPrimeSmoothMertensCost B A C N.

These use only old exact convolution, ordinary finite
triangle inequality, explicit external \`hM\` and original
|mu(n)|<=1. The script additionally proves the exact
interval identity over (X,y], retaining both endpoints:

  sum_(X<n<=y)c_a(n)=M_a(y)-M_a(X).

### Two finite Euler factors

For an arbitrary finite bank P of genuine primes define

  W_P = prod_(p in P)(1-1/p)^(-1),
  V_P = prod_(p in P)(1-p^(-1/2))^(-1).

The complete positive P-smooth monoid has geometric-series
masses W_P at exponent 1 and V_P at exponent 1/2.
Split the exact finite d-sum at d=sqrt N.
For small d, log(N/d)>=log N/2 and
  1+log(N/d) >= (1+log N)/2.
For large d the trivial second arm gives
  (N/d) <= N^(3/4)/sqrt d.
The geometric masses therefore yield, for all N>=1,

  |M_R(N)| <= 2^A C_A W_P N/(1+log N)^A
                   + V_P N^(3/4),

  |M_M(N)| <= C_A(1+2^A W_P)N/(1+log N)^A
                   + V_P N^(3/4).

The exact \`originalEulerMertensCost\` stores the RHS
for the rough class, \`taggedEulerCost\` for both classes.
\`FiniteSmoothEulerSplit\` is a named, mathematically
elementary finite-divisor/geometric-Euler proposition.
Its Lean derivation from the positive smooth monoid
geometric series is STILL NOT_FORMALIZED. The new
\`rough_prefix_abs_le_Euler\`,
\`matched_prefix_abs_le_Euler\`, and
\`tagged_interval_prefix_abs_le_Euler\` preserve this
explicit prerequisite. They do not add a global
signed-dense-cancellation axiom.

For ANY prime bank P even depending on N, W_P/V_P
remain as factors. No import of Tau Ceti's
\`HasCancellation\` for a completely multiplicative
unitary weight is allowed, since mu(p^2)=0.
The near-critical bank upper estimates of the
previous review are separate ANALYTIC computations,
not new Lean proof terms here.

## Completely finite two-coordinate signed Abel

For ANY arithmetic coefficients c(n), weights w(n) and
natural X<U, define A_X(k)=sum_(X<n<=k)c(n).
Pinned Mathlib \`Finset.sum_range_by_parts'\`, applied
to the coefficient zero-masked at n<=X, yields the
EXACT finite identity

  sum_(X<n<=U)c(n)w(n)
    = A_X(U)w(U)
      + sum_(X<k<U) A_X(k)[w(k)-w(k+1)].

The source module \`MoebiusTwoCoordinateCausalAbel\`
implements the actual lower and terminal endpoints,
the zero initial prefix, a finite telescoping proof,
and the following signed lemma:

If |A_X(k)|<=H for X<k<=U,
w(U)>=0, and w(k)>=w(k+1) for X<k<U, then

  |sum_(X<n<=U)c(n)w(n)|<=H*w(X+1).

This is NOT termwise absolute summation of mu(n):
the signed prefix is bounded BEFORE the monotone
response variation is paid. The mass of the
variation, including the terminal weight, is
EXACTLY w(X+1); no extra cardinality factor
is inserted.

Use the ORIGINAL causal response \`r_n(u)\`:
\`pickupResponse_nonneg_positive\`,
\`pickupResponse_antitone_positive\`, and
\`pickupResponse_continuous\` are pinned existing
GRWTSK source theorem candidates. Let

  E_a(P,A,C;X,k)
   = taggedEulerCost(P,A,C,a,X)
      +taggedEulerCost(P,A,C,a,k),

and define H_a(X,U) as
  max(0, max_(X<=k<=U) E_a(P,A,C;X,k)).
This is a FINITE function of the actual original
cutoff and finite Euler factors, not a free
unproved uniform all-rate bound. The old exact
prime-smooth prefix and displayed \`hM\` and
\`hEuler\` imply for each real u

  |sum_(X<n<=U)c_a(n) r_n(u)|
    <= H_a(X,U) r_(X+1)(u).

Apply INDEPENDENTLY to arithmetic coordinate
X<m<=U and coordinate Y<n<=V, keeping a,b
arbitrary in {rough,matched}. Since the
original Gram K_T(m,n)=integral_0^T r_m r_n,
the complete finite real integral interchange
gives the source-correct theorem

  |sum_(X<m<=U,Y<n<=V)c_a(m)c_b(n)K_T(m,n)|
    <= H_a(X,U) H_b(Y,V) K_T(X+1,Y+1)

for all 1<=X<U, 1<=Y<V, T>=0.
This is the combined TWO-COORDINATE inequality
attempted by \`taggedIntervalGram_abs_le_twoEulerAbel\`.
It involves both orientations RM and MR and
keeps original diagonal/squareful entries
in the complete rectangle. No fixed-good-scale
or RH conclusion follows from the displayed
finite bound.

The source uses actual finite interval interchange:
each individual r_m r_n term is continuous at
its original causal birth and interval-integrable.
Finite double summation may exchange with the
interval integral; no unjustified infinite sum,
stationary Gram approximation, or time smoothing
is introduced.

## Return to the original dense mask

The all-pairs rectangle above is EXACT. For
a balanced same-shell consumer X<m,n<=2X
at T=log(2X), the previous original Putnam
source pays the omitted short additive-gap
pairs and the original diagonal separately.
The resulting original signed masked
bound, with both orientations and every
squareful zero, is the previous explicit

  |D_ab| <= 4 log(2) H_a(X,2X)H_b(X,2X)/X
         + (4 floor((2X)^(epsilon/2))+2) T^2.

The new Lean increment does NOT provide this
final masked corollary as a fresh checked theorem.
The earlier existing source's sparse/diagonal
bounds, and the separate near-critical bank
growth comparison, remain independent
acceptance facets. This increment advances the
Mertens-prefix and unmasked two-coordinate
analytic core with source-index exactness.

## Hostile checks and proof status

1. The Mertens source bound is LOG-POWER, not
   M(x)=O(x^(1/2+delta)). The latter would
   be RH-level, not an allowed input.
2. The d=1 smooth divisor and n=1 unit
   remain; repeated smooth prime powers are
   NOT reduced to squarefree d.
3. Matched class = original mu - rough mu;
   no completely multiplicative weight
   substitution or unitary ideal port.
4. If the response weights are nonmonotone
   or negative at their terminal, the
   monotone Abel certificate is inapplicable.
5. If the rectangular kernel is not exactly
   the causal separable integral, two scalar
   prefix estimates do not suffice; here
   that equality is explicitly supplied.
6. For X=U or Y=V a rectangle is empty;
   the main theorem uses strict X<U,Y<V
   and leaves no false terminal term.
7. If the bank varies with the scale,
   W_P,V_P and the finite maximum budget
   may grow. No tuned-bank uniform rate
   is asserted by this finite theorem.
8. A positive constant-sign model lacks
   the genuine Mertens premise; one
   cannot infer the two signed savings
   from source positivity alone.

Independent finite preflight:
- 64 exact-rational assertions on the Abel
  decomposition and telescoped variation,
  32 random finite (X,U) fixtures.
- 7,200 numerical real comparison assertions
  of exact original Mobius convolution,
  quotient minimum costs, Euler split,
  and matched source costs across six
  prime banks and N=1..300 (the
  arithmetic source values themselves
  are exact integers; inequalities
  use ordinary floating-point arithmetic).
- 36 actual original Gram rectangle
  comparisons with numerically integrated
  signed-wave products, three banks,
  X=4,8,16 and all four orientations.
  Maximum reported absolute discrepancy
  6.392456008974534e-16.
The sample C_A=3.9328147510612514 was
chosen against N<=300 ONLY, and is
NOT a universal Mertens constant.
None of these finite diagnostics is a
Lean or rigorous real-interval certificate.

No Lean/Lake/elan installed locally at
publication, and no native Noe verifier,
runner, scheduler, CI or remote compiler
was dispatched. Each new source contains
candidate proof scripts with no deliberately
authored sorry/axiom, but parsing,
elaboration, expected types, fresh
kernel replay, transitive axiom and
unsafe audit are ALL NOT_RUN.
The earlier imported modules also remain
subject to their own acceptance records.

Exact local source pins:
- original convolution baseline blob
  21f38bfe752ab389fc83a7546504509df01ec438;
- pinned original two-coordinate consumers
  MoebiusBalancedTwoSidedPNTDense.lean;
- pinned response monotonicity
  LiouvilleDoubleAbelAnalyticGates.lean;
- pinned finite continuity/interchange
  LiouvilleCausalPhysicalGramIntegrability.lean.
Mathlib pin d13f23b723b8a846827a245b89c10fc7d3f11612;
Lean v4.34.1.
No root imports/toolchain/foreign repository is changed.
Global cross-scale original dense every-positive-rate
estimate and RH OPEN.

The NEXT ONE mathematical formalization obligation is to
discharge \`FiniteSmoothEulerSplit\` by a source-correct
finite Euler/geometric-series proof and import the
independent classical Mertens quantitative theorem
with its actual real cutoff and constants. Only then
can the two-coordinate theorem be promoted from an
explicitly conditional source candidate to a
replayable unconditional logarithmic-saving theorem.
