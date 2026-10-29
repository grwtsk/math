# Growing prime-stage energy: the signed internal budget is paid

Local mathematical attribution: grwtsk contributors.

## Status

Written mathematical deductions with accompanying Lean source proof candidates.
Compilation, fresh kernel replay and transitive axiom auditing: NOT_RUN.
No source-only inverse-mass witness, new original-source energy exponent, or RH
proof is asserted. The analytic secondary-forcing obstruction is neither
re-proved nor promoted to kernel acceptance here.

The source-only interface inspected at 059c2324f0ef90dd165e95e26afed4bcbdcc9797
is unchanged. SourceMassComparison still tests only sourceCoordinates under the
actual forward map, and SourceInverseMassSubexponential still asks for one
positive sequence before the rate. This increment does not choose such a
sequence retrospectively from the unknown energy.

## 1. Same arithmetic source, exact block regrouping

Fix T>=0 and N=floor(exp T). A response with index n>N vanishes on [0,T].
For the finite algebra, define R_N(n,u)=r_n(u) when n<=N and zero otherwise.
This retains the closed inventory and its zero terminal birth.

For a list P of distinct primes, define

    a_P(m) = mu(m) if no p in P divides m, and 0 otherwise;
    K_empty(N,m,u) = R_N(m,u);
    K_(p::P)(N,m,u) = K_P(N,m,u) - K_P(N,p*m,u).

The code constructs the exact coefficient identity, for fresh prime p,

    a_P(n) = a_(p::P)(n) - 1_(p|n) a_(p::P)(n/p).

The quotient has the NEW roughness guard, so p-squared terms are treated
correctly. The two supports in this coefficient identity are disjoint.
Reindexing the complete finite divisor window proves

    F(u) = sum_(1<=m<=N) a_P(m) K_P(N,m,u),  0<=u<=T.

No positivity of K_P and no reconstruction premise are assumed.

## 2. The exact stage energy ledger

Let G_P(m,n)=integral_0^T K_P(m,u)K_P(n,u) du. Define the actual sums

    D_P(T) = sum_m a_P(m)^2 G_P(m,m),
    R_P(T) = sum_(m!=n) a_P(m)a_P(n)G_P(m,n),
    C_(P,p)(T) = sum_m a_(p::P)(m)^2 G_P(m,p*m).

Both orders of every distinct-core pair are retained. Finite expansion gives

    H(T) = D_P(T) + R_P(T).

The fresh-prime coefficient square split and block recurrence give

    D_(p::P)(T) = D_P(T) - 2 C_(P,p)(T),
    R_(p::P)(T) = R_P(T) + 2 C_(P,p)(T).

C_(P,p) is signed. A decrease in the block diagonal has exactly the opposite
change in the distinct-core sum; the same quantity cannot be credited twice.
Regrouping itself does not decrease H(T).

The initial state is D_empty=D, R_empty=X. Thus R_P differs from X by the
specific amount D-D_P, not a freely chosen remainder.

## 3. An independent quantitative bound, valid after block positivity fails

For p,m>=1, the prescribed causal response satisfies

    0 <= r_(p*m)(u) <= p^(-1/2) r_m(u).

If the dilated response is active, both births have occurred and the estimate
follows by factoring sqrt(p*m). If it is not active, its value is zero. This
covers the terminal cell and requires no differentiability across births.

Define the prescribed finite factor

    A(P) = product_(p in P) (1 + p^(-1/2)).

Induction in the literal signed block recurrence, with absolute value used
only for this auxiliary bound, gives

    |K_P(N,m,u)| <= A(P) r_m(u).

Consequently, for the actual arithmetic block diagonal,

    0 <= D_P(T) <= A(P)^2 D(T) <= 2 A(P)^2 T^2.                 (1)

The same argument retains the extra dilation saving in a stage overlap:

    |C_(P,p)(T)| <= A(P)^2 / sqrt(p) * D(T).                  (2)

Neither bound is an input supplied by the caller. The Lean scripts prove them
from the source formula, finite sums, genuine integrability and the inherited
original diagonal bound.

## 4. All primes up to the dyadic index: fixed before the exponent

At T_j=j log 2, select

    P_j = {p prime : p<=j}.

The arithmetic source cutoff remains N_j=2^j. The prime cutoff j must NOT be
silently replaced by 2^j. The code inserts each newly reached prime at the head
of a duplicate-free list and proves its primality and support bounds.

The elementary inequalities

    1/sqrt(n) <= 2(sqrt(n)-sqrt(n-1)),
    1+x <= exp(x)

give, without a prime-counting theorem,

    sum_(p in P_j) 1/sqrt(p) <= 2 sqrt(j),
    A(P_j)^2 <= exp(4 sqrt(j)).

Thus the genuinely growing-stage diagonal is paid independently:

    D_(P_j)(T_j) <= 2 T_j^2 exp(4 sqrt(j)).                  (3)

For delta>0, completing a square yields

    4 sqrt(j) <= (delta/2) T_j + 8/(delta log 2).

Using 2 T_j^2 <= 16 delta^(-2) exp((delta/2)T_j), an explicit written constant is

    D_(P_j)(T_j)
      <= (16/delta^2) exp(8/(delta log 2)) exp(delta T_j).   (4)

The Lean theorem uses the existing proved diagonal-subexponential supplier at
delta/2 rather than rebuilding its scalar exponential-series estimate.
There is no rate-dependent change in P_j and no unproved arithmetic budget.

## 5. The complete absolute internal-stage variation is also paid

For any ordering of a valid finite prime set, let V(P,T) be the sum of
2|C_(prefix,p)(T)| over its successive insertion stages. Positivity of the
factors and (2) give

    V(P,T) <= 2 A(P)^2 (sum_(p in P) p^(-1/2)) D(T).

At the fixed schedule above,

    V(P_j,T_j) <= 8 sqrt(j) T_j^2 exp(4 sqrt(j)).             (5)

This is stronger than just bounding the net difference D_P-D: it pays all
internal upward and downward transfers in absolute value. Since
sqrt(j)<=exp(sqrt(j)), another useful envelope is

    V(P_j,T_j) <= 4 exp(5 sqrt(j)) D(T_j).

The corresponding all-positive-rate theorem is proved in the new source with
an explicit half-rate split. A possible written constant is

    (64/delta^2) exp(25/(2 delta log 2)).

This estimate does not impose or infer a sign on any individual transfer.

## 6. The prime-5 sign failure is part of the formalization

The frozen block [5,3,2] at N=10,m=1,u=log(10) is identified with

    2(1-1/sqrt(2)-1/sqrt(3)-1/sqrt(5)+1/sqrt(6)+1/sqrt(10)).

The 15 and 30 terms vanish before birth; their omission is not a cutoff guess.
The following rational inverse-square-root certificates prove strict negativity:

    707106/1000000 <= 1/sqrt(2),
    577350/1000000 <= 1/sqrt(3),
    447213/1000000 <= 1/sqrt(5),
    1/sqrt(6) <= 408249/1000000,
    1/sqrt(10) <= 316228/1000000.

Each follows by squaring nonnegative rational endpoints. The resulting upper
bound on the displayed expression is -899/62500 < 0. The formal proof does not
use floating-point evaluation or native_decide.

The period-36 estimate from the other chat is not imported as a checked theorem
or promoted to a better exponent. The bounds in (3)-(5) concern actual block
components; they are NOT comparisons of the whole energy with exp(o(T)).

## 7. Exact remaining arithmetic and the original return

The independent result is

    H(T_j) <= R_(P_j)(T_j) + 2 T_j^2 exp(4 sqrt(j)).           (6)

The complete ordered distinct-core quantity R_(P_j) is explicitly defined from
rough Mobius coefficients and the original response blocks. Its every-positive-
rate upper bound is equivalent to the unchanged DyadicBirthBound, because its
diagonal partner is supplied by (4) and is nonnegative.

This increment proves the growing-stage diagonal and internal-transfer bounds.
It does NOT prove an upper growth estimate for the remaining distinct-core
interaction, produce an admissible inverse-mass sequence, or establish any fixed
exponent <1 for H. A full-vector coercivity hypothesis is not introduced.

The unresolved terms are correlations between different cores m!=n, both free
of primes <=j. They cannot be removed by the cancellation already charged in
C_(P,p). Future estimates must act on their complete signed aggregate, including
both pair orientations and the original horizon.

## 8. Formal and operational scope

The four additive modules are PickupPrimeBlockSource, PickupPrimeBlockEnergy,
PickupPrimeBlockTransfer, and PickupGrowingPrimeStages. No old theorem, source definition, root import,
toolchain, package revision, or historical receipt is changed. Concurrent work,
including FiniteDivisorFloorDiscrepancy and its separate source-identification
scope, is preserved.

Local exact finite algebra checks and separately labeled high-precision actual-
response diagnostics are not native Lean acceptance or asymptotic evidence.
Required source-pinned compilation, fresh checking and complete transitive axiom
inspection are listed in the passive verification manifest. No remote execution
or workflow dispatch is authorized by this publication.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=125e151614ba1aed205bf051b65cc2a5567f7b0519d4c1180f4aa22d6e8d73d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
