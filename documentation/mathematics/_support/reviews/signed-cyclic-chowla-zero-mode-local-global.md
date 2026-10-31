# Signed cyclic-walk zero mode and the full growing-shift Chowla gate

Local mathematical attribution: grwtsk contributors.
Mathematical status: finite identities with complete analytical derivations;
Lean: SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. No new cancellation estimate, RH proof,
external source-to-zero result, or probabilistic independence theorem.

Source baseline: grwtsk/math main at
a50d44327f7ffb046fd539e60ac787d6ba911bae
(2026-10-31, checked before source publication).

## 1. Exact objects: ordinary versus cyclic correlations

Fix any N>=1 and any a(1),...,a(N) in {-1,0,+1}. For the actual
Möbius source choose a(n)=mu(n), retaining squareful zeros. For the
actual Liouville source choose a(n)=lambda(n), all nonzero and
completely multiplicative. Define

    S_N = sum_(n=1)^N a(n),
    D_N = sum_(n=1)^N a(n)^2,

    U_N(h) = sum_(n=1)^(N-h) a(n)a(n+h), 1<=h<N,

    C_N(h) = sum_(n=1)^N a(n)a(1+((n-1+h) mod N)),
                                      0<=h<N.

All source labels in the finite packet are EXACT; C_N is the
cyclic *readout of the original prefix*, not a claim that the
infinite Möbius/Liouville source is periodic. Finite cyclic
transport uses the additive group Z/NZ.

For each 1<=h<N, split roots at n=N-h:

    C_N(h) = U_N(h) + U_N(N-h).                      (1)

Proof: n<=N-h is an unwrapped ordinary pair of gap h.
For n>N-h write m=n+h-N (1<=m<=h);
then a(n)a(m)=a(m)a(m+N-h), the ordinary pair of
gap N-h. Both orientations are retained.

Thus summing all nonzero shifts gives

    sum_(h=1)^(N-1) C_N(h)
       = 2 sum_(h=1)^(N-1) U_N(h).

The zero shift is C_N(0)=D_N. Every ordered pair appears
exactly once when (n,h) runs over the complete cyclic array,
so

    sum_(h=0)^(N-1) C_N(h) = S_N^2
    S_N^2 = D_N + 2 sum_(h=1)^(N-1) U_N(h).        (2)

Equation (2) is the original signed square-minus-diagonal
identity, now matched EXACTLY to the complete cyclic
Chowla packet. No boundary term is lost: the wrap is the
opposite orientation, not an error, *when all shifts are
reassembled*.

For Mobius, D_N is exactly the square-free count
sum mu(n)^2 = (6/pi^2)N + O(sqrt N).
For Liouville, D_N=N.

The new Lean candidate
GRWTSK/ProbabilityTheoryAndStochasticProcesses/
SignedCyclicWalkPacket.lean implements the finite
commutative-group equation

    sum_(h in G) sum_(n in G) a(n)a(n+h)
       = (sum_(n in G) a(n))^2,

the zero-shift diagonal, nonnegativity of the complete
signed packet, a one-sided budget consumer, and source
instantiations using the ACTUAL ArithmeticFunction.moebius
and ArithmeticFunction.liouville at positive labels n.val+1
on ZMod N. The additional split (1) is analytically proved
here, but was not separately Lean formalized in this increment.

## 2. The exact strengthening needed beyond fixed Chowla

For each FIXED h, ordinary two-point Chowla would give

    U_N(h) = o(N),  N -> infinity with h fixed.

It does not permit summing over h=1,...,N-1.
If one first bounds |U_N(h)| and sums, all cancellation
between growing h, including mixed parity sectors,
can be destroyed. The genuine one-sided requirement for
a square-root-level bound is

    for every eps>0, exists C_eps >=0, for every N>=1,
    D_N + 2 sum_(h=1)^(N-1) U_N(h)
        <= C_eps N^(1+2eps).                        (3)

This is *not a proved estimate*: by (2) it is exactly
S_N^2<=C_eps N^(1+2eps). For the actual Liouville
source, an all-eps version is an RH-strength one-point
summatory target. This exposes logical circularity if
(3) is repackaged as a new spectral/entropy/sofic
certificate without arithmetic proof.

The published causal delay transport
grwtsk/math@4a618bac15ae5b8e8ada382dfcd376c5998afbac
identifies all-positive-rate Liouville and Mobius
ENERGY targets, and the earlier exact weighted source
retains 00,01,10,11 and curvature. No implication
from (2) alone to the required subpolynomial energy
is claimed.

## 3. Fixed-shift seam versus all-shift exact transport

For fixed h the wrap contribution U_N(N-h) contains
exactly h products and has |U_N(N-h)|<=h.
Therefore C_N(h)/N and U_N(h)/N have the same
limit for each fixed h. This does not hold uniformly
across h of order N.

However, treating the seam as an absolute error on
the full shift family would cost
sum_(h=1)^(N-1) h = N(N-1)/2. That cost overwhelms
a desired N^(1+2eps) packet for small eps.

The correct remedy is the exact counterpart pairing
h <-> N-h in (1), not a tiny uniform seam claim.
This is the precise arithmetic/sofic connection:
complete, signed, two-orientation transport has
zero *aggregate* seam defect even though individual
growing-shift seams are large.

## 4. One-coordinate Bernoulli TV is already an arithmetic bound

For a true positive-index Liouville prefix, sample one
root uniformly from {1,...,N} and record its sign.
Let p_N = #{n<=N:lambda(n)=+1}/N. The empirical
singleton law is (p_N,1-p_N), the fair law is
(1/2,1/2), and total variation (event supremum) is

    tau_N = |p_N-1/2|
          = |sum_(n<=N)lambda(n)| / (2N).           (4)

Thus tau_N->0 is only the qualitative
Liouville prime-number-theorem rate o(N);
tau_N=O_eps(N^(-1/2+eps)) is equivalent to the
square-root Liouville walk budget. Calling the
latter "Bernoulli TV" does not create a new proof:
its quantitative rate IS the unresolved arithmetic
information.

The inherited GRWTSK finite-Walsh source provides
exact source pattern moments and Bernoulli TV
comparisons:
- ProbabilityTheoryAndStochasticProcesses/
  FiniteWalshPatterns.lean, blob
  b69548272d63523659710130ee46e4a5426a3f76;
- FiniteWalshBernoulliTV.lean, blob
  57623c7339c949576e601378f2696b54a47e6475;
- FiniteChowlaUniformEnvelope.lean, blob
  6bc164f9b00226548d9970518a092c16f10cd5ef;
- FiniteCyclicWalshBoundary.lean, blob
  d1f3b705be61fa5ac732bcfdfa07c8d9954f9b6c.

The existing finite-sample support witness
chowla-sofic-finite-sample-support-obstruction-630.md
already shows that all-order Walsh energy for a
k-coordinate empirical sample of N roots satisfies
E >= max(0, 2^k/N -1). It is not re-proved here.
Arbitrary large k cannot be treated as an empirical
fair-coin law at small N without paying this floor.

## 5. A rigorous qualitative-vs-uniform counterexample

The standard Bernoulli sign process almost surely
has fair frequencies for every fixed finite window.
It also almost surely has initial sums O(N^(2/3))
(by independent bounded-sign concentration and a
Borel-Cantelli argument). Fix a deterministic
realization with both properties. At sparse,
superexponentially separated scales N_j, replace
a disjoint block of floor(N_j^(3/4)) signs ending
near N_j by +1. Choose scales fast enough that
the total set of altered positions has density
zero.

Every fixed-window frequency remains unchanged
in its limit: a density-zero set of altered root
labels contributes at most a fixed multiple of
its relative count for a fixed finite shift
window. Yet the new prefix sums have excursions
of order N_j^(3/4) along an infinite subsequence,
since the unaltered background contributed at
most O(N_j^(2/3)) and the altered +1 block has
order N_j^(3/4) positive contribution (one can
arrange blocks so that the original background
block sum is not comparably positive; a bound
O(N_j^(2/3)) on background prefixes suffices).

This demonstrates that full fixed-window Bernoulli
genericity does not imply an all-horizon
square-root walk bound. The constructed sequence
is NOT completely multiplicative and is not a
candidate alternate Möbius or Liouville function.
The construction refutes only the unsound generic
inference from fixed-local statistics to the
desired quantitative arithmetic rate.

## 6. Complex phase is NOT an additional missing datum

The ACTUAL signed real causal Möbius waveform has
its own complex Laplace transform. On its initial
region of absolute convergence, its established
source formula is

    integral_0^infty exp(-z u)F_mu(u)du
       = 1/[z(z+1/2) zeta(z+1/2)].

The factor exp(-i Im(z)u) detects every oscillatory
time-frequency; retaining the full real waveform
does not mean retaining only its magnitude.
The existing EnergyAbscissa analytic return
consumes all-positive-rate positive-damping
energy to obtain zero exclusion. No independently
constructed two-dimensional phase process is
necessary, although other spectral representations
may be useful if they yield a new arithmetic bound.

## 7. Exact remaining consumer and proof status

Distinct source identities have now been aligned:

    Complete original finite sign walk
          | exact all-shift signed Chowla packet
          | exact cyclic-to-unwrapped two orientations
          v
    Finite signed square-minus-diagonal source
          | causal weights, class aggregation, curvature
          v
    Original Mobius / Liouville energy
          | all-positive-rate estimate OPEN
          v
    Existing conditional RH analytic return

This increment proves finite combinatorial identities
and a counterexample to a proposed GENERIC statistical
inference. It does not prove a nontrivial correlation
saving or a claim about primes behaving independently.

Next genuinely new arithmetic task: control the
complete signed zero-mode correlation packet (or the
original causally weighted counterpart) without
replacing it by termwise absolute values, fixed-shift
little-o estimates, or a rate-dependent choice of
uncontrolled growing windows. A prospective supplier
must state one constant uniform in the full active
shift inventory and all dyadic heights, preserve
the mixed-parity sectors, and return to the
original causal energy.

Independent exact integer diagnostic: all N=1,...,100,
for both actual arithmetic sources; 10,500 assertions
checked the full cyclic packet, zero-shift diagonal,
per-shift unwrapped+opposite-gap identity, and complete
twice-unwrapped off-diagonal equality. These are
FINITE_REFERENCE_EVIDENCE, not Lean kernel approval,
large-N arithmetic evidence or an RH proof.

No native Lean runtime was available to this session.
No new mathlib dependency, global root import,
external source assumption, or verification execution
has been added. All formal verification facets NOT_RUN.
