# The exponential negative prime-star packet forces positive composite compensation

Local attribution: grwtsk contributors, 2026-11-01.
Formalization assistance: OpenAI ChatGPT.
Exact ORIGINAL Möbius signed causal Gram; no replacement coefficients.

## The source-specific arithmetic question

`MoebiusDensePrimeStarCancellation` proved on paper that for
any fixed 0<epsilon<2, the true original dense ordered packet
through edges (1,p),(p,1), with p ranging over primes and
gap p-1 outside the exact Putnam short band, satisfies

  P_epsilon(T) <= -c exp(T/2)/T
eventually, c=(2-log 4)(e-1)exp(-2)>0.

A negative subpacket does not imply that the entire signed
dense source has the same saving: it may be compensated by
positive interactions. This review derives an independent
quantitative compensation forced by the actual Möbius
function and *classical* unconditional zero-free-region
estimates, not by RH.

## Complete original m=1 row and its exact three sectors

For every T>=0, put N=floor(exp T), A=A_epsilon(T).
The COMPLETE original ordered off-diagonal unit row is

  R_1(T)=2 sum_(2<=n<=N) mu(n) K_T(1,n),

since mu(1)=1 and K_T(1,n)=K_T(n,1).
Do not drop the original n=1 diagonal term when
reexpressing this through a full waveform.

Partition by the literal original gap n-1 and primality:

  P_epsilon(T)=2 sum_(2<=p<=N, p prime, p-1 notin A)
                       mu(p) K_T(1,p),
  C_epsilon(T)=2 sum_(2<=n<=N, n composite, n-1 notin A)
                       mu(n) K_T(1,n),
  S_epsilon(T)=2 sum_(2<=n<=N, n-1 in A)
                       mu(n) K_T(1,n).

Thus the EXACT signed relation is

  R_1(T) = P_epsilon(T)+C_epsilon(T)+S_epsilon(T).

Here `n composite` means n>=2 and not prime, so the
original μ=0 squareful terms are retained as actual zeros,
not deleted from the source. These are all original indices;
every term is explicitly both ordered pair orientations.

The new Lean source candidate includes
`completeUnitRow_eq_prime_add_composite_add_short`,
`unitRowTerm_eq_two_original_orientations`,
`densePrimeUnitRow_nonpos` and
`denseCompositeUnitRow_ge_of_independent_bounds`.
No free signed residual is substituted for the composite row.

The relation of the earlier double-sum primeStarPacket to
the single-row P_epsilon is a finite two-orientation
reindexing, given by the source's explicit prime incidence
and K symmetry. This particular bridge is explained
mathematically here but has not been given a separate
checked Lean theorem.

## Classical quantitative Mertens upper for the whole unit row

Write M(x)=sum_(n<=x) mu(n). Classical unconditional
Vinogradov-Korobov zero-free-region estimates imply,
for some constant C>0 and all x>=1 after enlarging C,

  |M(x)| <= C x/(1+log x)^3.

This is MUCH WEAKER than an RH-strength square-root Mertens
bound. It is stronger than the bare qualitative M=o(x)
consequence of PNT; the quantitative zero-free-region
input must be identified rather than silently attributed
to the plain PNT alone. The classical result is already
noted, independently of this prime-star work, in
grwtsk/math#1555.

For u>=0 the ORIGINAL signed physical-time waveform is

  F(u)=sum_(n<=e^u) mu(n) r_n(u)
      =integral_(1)^(e^u) M(x)x^(-3/2) dx.

The latter identity follows from the exact causal birth
derivative r_n'(u)=e^(-u/2) beyond log n, the zero birth
value, and finite Abel/interval interchange. This is the
source's `wholePickup`, not a replacement wave.

Splitting the x integral at e^(u/2), the trivial
|M(x)|<=x on the first half, and the quantitative
log-cubic bound on the second half, gives

  |F(u)| <= 2 exp(u/4)
    +2C exp(u/2)/(1+u/2)^3.

We also have the trivial |F(u)|<=2exp(u/2) for u>=0.
The EXACT original unit row satisfies

  R_1(T)
   = 2 integral_0^T r_1(u)[F(u)-r_1(u)]du
   = 2 integral_0^T r_1(u)F(u)du
     -2 K_T(1,1).

Since 0<=r_1<=2 for u>=0 and 0<=K_T(1,1)<=4T,
split the time integral at T/2. The first half costs
O(exp(T/4)); the second uses the displayed log-cubic
bound with 1+u/2>=1+T/4, giving

  |R_1(T)| =
   O(exp(T/4) + exp(T/2)/(1+T)^3 + T)
   = o(exp(T/2)/T).

No RH input, signed pair-conjecture or prime-fiber
representation theorem is used.

## The entire original short-gap unit row is negligible

The original gap set is A_epsilon(T)=Icc 1
floor(exp(epsilon*T/2)). For n>=2, n-1 in A implies
n<=1+floor(exp(epsilon*T/2)).
Because 0<=r_1(u)<=2 and 0<=r_n(u)<=2/sqrt(n),
the original K_T(1,n)<=4T/sqrt(n) for T>=0.
Therefore

  |S_epsilon(T)|
   <= 8T sum_(n<=1+floor(exp(epsilon*T/2))) n^-1/2
   <=16sqrt(2)*T*exp(epsilon*T/4).

For each FIXED 0<epsilon<2, this is
o(exp(T/2)/T), since epsilon/4<1/2.

## The actual noncircular forced-positive conclusion

The prime-star packet obeys
  P_epsilon(T) <= -c exp(T/2)/T
eventually by the source-exact response lower bound and
ordinary PNT prime counting. Exact signed algebra gives

  C_epsilon(T)=R_1(T)-P_epsilon(T)-S_epsilon(T)
  >=c exp(T/2)/T - |R_1(T)| - |S_epsilon(T)|.

Both error terms are o(exp(T/2)/T), so for every fixed
0<epsilon<2 there exists an R_epsilon such that

  C_epsilon(T) >= (c/2)*exp(T/2)/T
for all T>=R_epsilon.

This is a genuine POSITIVE source-specific dense
squarefree composite correlation of exponential
magnitude that compensates the negative prime-star.
It does not assert the whole dense signed source is
positive or small, and does NOT provide the missing
all-positive-rate upper estimate needed for RH.
It refutes a tempting inference that simply discarding
ever larger negative prime-indexed subpackets
automatically reduces the complete positive budget.

## Independent diagnostics and hostile boundaries

Finite actual-source diagnostic: N=8,16,32,64,
epsilon in {0.3,0.9,1.3}, 12 instances.
Every full unit row partitioned into prime-dense,
composite-dense and short parts; maximum float
identity residual <=1.78e-15. Uses the exact
elementary antiderivative for the original K_T
evaluated in floating point. Not a formal proof,
exact interval enclosure, or asymptotic check.

At small T, the composite positive bound need not
hold; it is EVENTUAL. At epsilon>=2, the dense
prime packet may be empty, so no conclusion is claimed.
For fixed epsilon<2, S is small only at the stated
rate epsilon/4; do not replace it by an arbitrary
rate-independent smallness estimate.

The all-positive coefficient countermodel c(n)=1
invalidates mu(p)=-1 and quantitative Mertens
cancellation. The result uses actual signed arithmetic
and not merely Gram positivity. The original diagonal
(1,1) is explicitly subtracted from the F-based row
identity. It must not be silently dropped.

## Source, literature and remaining acceptance

Local Lean source:
GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusDensePrimeStarForcedCompensation.lean

Underlying original identities:
MertensPrimitive.lean and
MoebiusDensePrimeStarCancellation.lean (original
prime-star), original rate gap sources and
GoodScaleEnergyCriterion.

External classical input: prime number theorem
(Hadamard and de la Vallée Poussin, 1896);
quantitative Vinogradov-Korobov/Walfisz-type Mertens
bounds, also referenced in grwtsk/math#1555.
Precise modern discussion: Ethan Simpson Lee and
Nicol Leong, arXiv:2208.06141v5, 2026-09-09,
subject to its own constant and source audit.
We do not claim the PNT/quantitative Mertens
prerequisites have been freshly compiled in Lean.

The new local source is a LEAN SOURCE_PROOF_CANDIDATE,
compilation/expected types/fresh kernel replay/
transitive axiom audit NOT_RUN. The large positive
composite magnitude is analytically proved here
from independently established classical inputs;
its input-to-source formalization remains open.
The COMPLETE surviving squarefree signed dense
long-distance upper estimate remains OPEN; RH OPEN.
