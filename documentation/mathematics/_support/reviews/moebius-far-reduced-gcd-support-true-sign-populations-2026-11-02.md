# The true far Möbius Gram: exact gcd restriction, two large signed populations, and the RH obstruction

Research date 2026-11-02. Local mathematics attributed to grwtsk contributors; source formalization assistance by OpenAI ChatGPT.
Classification: independent ordinary mathematical arguments and Lean source proof candidates, not a proof of RH.
The user explicitly deferred Lean compilation; no parser, elaborator, kernel, CI, or transitive axiom audit ran.

## 1. Exactly which source is at issue

Use the PREEXISTING original
GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusCollarResidualGcdReducedGap.lean,
Git blob 48081c7e32d41455ef7fc7d02c006588bd9b36b7.
Let J>=1, T=J log 2, N=2^J=floor(exp T), and
K=floor(exp(sqrt T)).
The genuine farReducedOrLongCross(B,A,J) is the ORIGINAL ordered
Mobius pair sum over m,n in lowIndices B J, m!=n and
Nat.dist m n not in the UNCHANGED finite original mask A, with
both already paid predicates excluded:
 (i) shortRatioPair J m n, genuine integer multiplier <=K, and
 (ii) reducedClosePair J m n, genuine INCOMPARABLE gcd-reduced gap <=K.
The summand is still mu(m)*mu(n)*pickupResponseGram(T,m,n)
with both orientations and the actual physical birth event. All
squareful zero values, n=1, endpoint clipping and true diagonal
exclusion remain unchanged.

The earlier terminal high-smooth incidence, comparable short-ratio
and gcd-reduced-close packets have mathematical absolute every-rate
bounds, but their numerical Lean targets remain unproved in the
deferred-compilation repository. Nothing in those transfers is a
proof of the remaining far bound.

## 2. NEW exact quantitative support theorem

For each surviving original pair m,n, let
  g=gcd(m,n), a=m/g, b=n/g.
These are positive naturals with m=g*a, n=g*b and gcd(a,b)=1.
There are two disjoint exhaustive cases.

CASE A: m|n or n|m. One of a,b equals 1; the other equals
the genuine integral proper quotient k>=2. If k<=K, the pair
satisfies the ALREADY EXCLUDED shortRatioPair. Therefore k>K,
and max(a,b)>K.

CASE B: m and n incomparable. By the PREEXISTING source
reducedClosePair definition, exclusion of that predicate means
  |a-b|>K. Hence max(a,b)>=|a-b|>K.

Both cases give the NEW UNIVERSAL true-source restriction
  max(a,b)>=K+1,
  g*(K+1)<=g*max(a,b)=max(m,n)<=N,                 (S1)
so
  gcd(m,n)<=floor(N/(K+1)).
This is an exact deterministic SUPPORT bound for EVERY prime
bank B, every finite gap mask A, and every surviving pair.
It uses NO Mertens, PNT, RH, source sign cancellation, or
Cauchy-Schwarz estimate. In particular, every pair with
g>N/(K+1) is ABSENT from farReducedOrLongCross.
Thus the high-gcd terminal-collar mechanism is already completely
paid in the two previous proper packets and cannot be used again
to make the far residual small.

A finite audit enumerated 631,964 distinct UNORDERED far pairs
across all J=1..10, N up to 1024, counting each J separately;
there were ZERO failures of (S1).
For J=10, K=13 and N=1024, the maximum observed gcd of a
far pair was 73, exactly floor(1024/14)=73.
These finite checks are NOT proofs of the universal statement.

## 3. Genuine previously unpaid source negative signs

Within the true FAR mask, two disjoint genuine Möbius classes
still carry a negative original Gram coefficient:

(A) Comparable LONG pairs with genuine odd-coprime quotient:
    n=m*k or m=n*k, gcd(m,k)=1, mu(k)=-1.
    The original mu(m)mu(n)=-mu(m)^2<=0.

(B) INCOMPARABLE squarefree originals with
    mu(m/g)*mu(n/g)=-1, g=gcd(m,n).
    Squarefreeness gives gcd(g,m/g)=gcd(g,n/g)=1,
    and the unchanged original arithmetic identity
      mu(m)mu(n)=mu(m/g)mu(n/g)=-1.

The PREEXISTING original birth-gated Gram is nonnegative at
nonnegative T. Therefore every genuinely selected source term
in these two classes is nonpositive; both orientations retain
their original signs and the original finite masks.

Define farNegativeCross to select these two classes WITHIN the
PREEXISTING far mask, and farOtherCross its exact complement.
Then the exact finite signed identity and nonpositivity are
  farReducedOrLongCross=farNegativeCross+farOtherCross,
  farNegativeCross<=0.                                  (S2)
No earlier short-ratio, reduced-close or high-smooth negative
credit is subtracted twice. (S2) supplies a one-sided inequality
farReducedOrLongCross<=farOtherCross; it is NOT an all-rate bound
for farOtherCross. The large negative mass may be essential to
cancel substantial positive source terms.

## 4. The EMPTY genuine-prime bank leaves the far target RH-strength

Let B0 be the actual PrimeBand with B0.primes=empty. For any
positive integer d, bankSmooth(empty,d) implies d=1, since any
d>1 has a genuine prime divisor.
For the previously fixed original near-square-root divisor cutoff
Q_j=2^j exp(-2 sqrt(j log2)), one has
  Q_j>=1  iff  j log2 >=4                      (j>=1).
Indeed log Q_j=t-2sqrt t and t>0; t-2sqrt t>=0
iff sqrt t>=2.
The rigorous positive numerical fact log2>2/3 follows, for example,
from the convergent positive Taylor expansion
  log2=2*(1/3+1/(3*3^3)+1/(5*3^5)+...)>2/3.
Hence for every j>=6, j log2>4 and Q_j>1.
Also the integer function jmin(J)=max(1,J-floor(sqrt J))
is nondecreasing for J>=1, and jmin(8)=6.
So for EVERY J>=8 and every
 j in terminalShells J=[jmin(J),J], Q_j>=1.
The actual highSmoothBlock B0 on every selected shell is EMPTY:
a B0-smooth positive divisor would have to equal 1, but the
strict original threshold requires d>Q_j>=1.

Therefore the entire original high collar is EMPTY for B0,
all J>=8:
  terminalHighCollar(B0,J)=empty.
For those J,
  lowIndices(B0,J)=terminalInventory(J),
  collarResidualCross(B0,empty,J)=pickupCross(T_J).
Exact original source partition gives
  pickupCross(T_J)
    =shortRatioCross(B0,empty,J)
      +reducedCloseCross(B0,empty,J)
      +farReducedOrLongCross(B0,empty,J).         (S3)

The first two complete signed packets have unconditional elementary
ordinary-mathematical absolute exp(o(T_J)) allowances already
recorded, with their Lean numerical proofs still uncompleted.
Thus an EVERY-positive-rate one-sided estimate for far
EVEN FOR THE FIXED EMPTY BANK B0, with constants independent of J,
would give it for pickupCross on THE SAME original fixed
affinely frequent dyadic grid. The preexisting source
PickupEndpointQuadrature.endpoint_subexponential_iff and
GoodScaleEnergyCriterion energy/good-scale theorem
then give the canonical RH. Conversely RH's classical Mertens
sqrt+epsilon consequence pays the actual energy and the
signed source, so under the elementary proper-packet prices,
the same far one-sided every-rate statement is also
an RH-equivalent arithmetic formulation.

**The missing far upper estimate is not established here.**
Requiring it under a differently named hypothesis is logically
circular. It would be a new proof of a currently open problem,
not a finite bookkeeping consequence of (S1)-(S3).

## 5. A rigorous PNT lower bound defeats ANY absolute-only attack

This is a distinct unconditional mathematical obstruction, NOT
an estimate of the signed difference. Let N=2^J ->infinity,
T=log N, and use the FIXED empty bank B0 so the exact far source
uses all positive original indices for sufficiently large J.

Define the genuinely positive-prime and negative-prime-semiprime
test families
 P = {primes p : N/16<=p<=N/12},
 Q = {primes q : N/4<=q<=N/3},
 R = {primes r : N/8<=r<=N/6}.
All these intervals are nonempty and contain asymptotically
positive multiples of N/log N primes by the classical PRIME
NUMBER THEOREM. In particular there are constants cP,cQ,cR>0
such that for all sufficiently large N,
 |P|>=cP*N/log N, |Q|>=cQ*N/log N,
 |R|>=cR*N/log N.

For p in P and q in Q, p,q are distinct primes, gcd=1,
mu(p)mu(q)=+1 and q-p>=N/6>K. Thus every (p,q), AND its reverse,
is in the genuine unchanged FAR original source with POSITIVE
Möbius Gram coefficient.
For p in P and r in R, n=2r lies in [N/4,N/3], p is an
odd prime distinct from r, gcd(p,2r)=1, n-p>=N/6>K,
and mu(p)mu(2r)=(-1)*(+1)=-1. Thus all (p,2r) and reverse
are genuine FAR original terms with NEGATIVE coefficients.

The actual positive causal Gram is uniformly bounded BELOW
by 1/N on BOTH families for all sufficiently large J.
To check this directly, take the ORIGINAL physical-time subcell
  u in [T-1/2,T],
whose entire length is 1/2 and is after both actual births
because m<=N/12 and n<=N/3.
The genuine source formula on that subcell is
  r_m(u)=(2/sqrt N)*(sqrt(N/m)-exp((T-u)/2))
  r_n(u)=(2/sqrt N)*(sqrt(N/n)-exp((T-u)/2)).
Using the elementary strict inequalities
  exp(1/4)<4/3, sqrt12>3, sqrt3>5/3,
we obtain
  r_m(u)>=10/(3sqrt N),
  r_n(u)>= 2/(3sqrt N).
Hence the exact ORIGINAL physical integral satisfies
  pickupResponseGram(T,m,n)
       >=(1/2)*(10/(3sqrt N))*(2/(3sqrt N))
       =10/(9N)>1/N.                         (S4)
No substituted kernel, random-sign model, or arbitrary cutoff
approximation enters the proof.

The original far POSITIVE weighted source mass is therefore
  >=2|P||Q|/N >= c_plus*N/(log N)^2,
and its original NEGATIVE magnitude mass is
  >=2|P||R|/N >= c_minus*N/(log N)^2.         (S5)
With c=min(c_plus,c_minus)>0, both are >=c*N/log²N.

Thus the sum of absolute original far terms is at least
c*N/log²N for all large J, which CANNOT be
O(exp(epsilon*T)) for any fixed epsilon<1.
The required *SIGNED* difference might still be small, but
only if its opposing genuine arithmetic populations cancel.
No triangle inequality or generic PSD bound can pay (S5).

Finite original-source checks of (S4): at J=8..13,
the test intervals contained 3,262 positive ordered base
prime-prime pairs and 1,726 negative base prime-semiprime
pairs (before doubling their reverse orientations).
All were true source far pairs and all had
actual closed-form causal Gram >=1/N, PASS.
The series/prime-counting asymptotics are independent,
classical PNT statements and are NOT imported Lean theorems here.

An especially clear direct signed obstruction already occurs at
J=8, N=256, K=10, B=B0:
  (m,n)=(101,149) is far, gcd1, original mu product +1,
     actual K_T≈0.0006772535206762166 >0;
  (m,n)=(101,6) is far, gcd1, original mu product -1,
     actual K_T≈0.024793179222994576 >0.
Both source indices are born at the unchanged time. Neither
termwise positivity nor termwise negativity can prove the
full all-positive-rate signed upper.

## 6. Exact remaining arithmetic obligation

Let F_J=farReducedOrLongCross(B0,empty,J) and split it by the
TRUE signs of the original source coefficients:
  F_J=P_J-N_J,
where P_J,N_J>=0 are original causal Gram masses and
both are at least c*2^J/J² eventually by (S5).
The already available elementary global residual lower
(conditional only on unported elementary numeric Lemmas)
is F_J>=-exp(o(T_J)), meaning
  N_J <= P_J + exp(o(T_J)).
The RH-facing missing upper bound is the OPPOSITE direction:
  for every epsilon>0: P_J <= N_J+C_epsilon*exp(epsilon*T_J),
  on the ONE original fixed dyadic grid.
There is currently NO noncircular proof of this for the full
source. All relevant prior bridge hypotheses to known zero-free
power regions have a STRICTLY POSITIVE exponent, not every rate.

## 7. Publication and exact acceptance boundary

Additive Lean candidate:
  GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/
    MoebiusFarReducedStructuralFrontier.lean.
Written source includes finite far gcd-max support proof candidate,
correct original far negative packet and exact complement,
source-level empty-bank highSmoothBlock elimination under Q>=1,
and explicit UNPROVED numerical/PNT and final RH-strength Props.
It does NOT contain the missing every-rate theorem proof,
nor any authored sorry/axiom/admit/unsafe/native_decide.

Pinned Lean v4.34.1 / Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
Lean compilation remains explicitly DEFERRED by the user.
Parsing, elaboration, expected types, fresh kernel replay and
complete transitive axiom/opaque/native checks NOT_RUN.
Original source definitions, signed coefficients, terminal
cutoff, root imports, toolchain and external repositories
were not changed. Source publication is NOT a kernel certificate.
Canonical RH remains OPEN.
