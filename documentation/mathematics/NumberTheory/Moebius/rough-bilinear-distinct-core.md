# Larger-core extraction and a paid thin strip of the actual interaction

Attribution: grwtsk contributors.

## Status and scope

The full estimate R_(P_j)(T_j) <= C 2^(7j/8) is NOT proved. No such
witness, source mass, or new research axiom is introduced. This increment
supplies an unconditional mathematical bound for a proper thin strip and
an exact prime-first extraction for the remaining distinct-core sum.
It identifies one fully explicit UNPROVED arithmetic prefix inequality
which, by the written source-specific variation/Abel argument below, would
prove the requested full fixed exponent with a constant independent of j.

The two new Lean modules are SOURCE_PROOF_CANDIDATE. Compilation, fresh
kernel replay and transitive axiom audit are NOT_RUN. The variation and
two-variable Abel return in sections 5–6 are complete written arguments,
not claimed as new Lean declarations or kernel-accepted facts. Their
finite diagnostics do not replace their eventual formalization.

Initial source inspected: 221e7d379d54259d41f056bea1bb7e9bebbe779f.
Preserve the source-only mass interfaces at 059c2324 and the four growing-stage
modules at 7218e197. No existing mathematical module, root import, toolchain,
or dependency revision is edited. No external execution is dispatched.

## 1. Freeze the source and separate the prime sets

For j >= 0 fix

    T = T_j = j log 2,  N = N_j = 2^j,  L = L_j = floor(sqrt N),
    P = P_j = {primes <= j},  a(n) = mu(n) 1_(all p in P do not divide n).

The outer horizon T and the CLOSED cutoff N are frozen throughout every
inner sum, quotient reindexing, prefix, and integration below. Set

    K(m,u) = K_(P,N)(m,u),
    G(m,n) = integral_0^T K(m,u) K(n,u) du.

These are the existing blocks and Gram; no model kernel is substituted.
G is symmetric but need not have nonnegative off-diagonal entries. The
actual ordered distinct-core interaction is

    R = sum_(1<=m,n<=N, m!=n) a(m)a(n)G(m,n)
      = 2 sum_(1<=m<n<=N) a(m)a(n)G(m,n).

The selected-prime stage P does NOT change during extraction. The separate
exhaustive extraction inventory is

    Q = {primes p: j < p <= N},
    w(n) = #{p in Q: p divides n}.

In Lean, `freshPrimes P N` is all primes <= N not in the list P;
`freshPrimes_stages` identifies it exactly with Q. The denominator is the
number of DISTINCT selected divisors of the ORIGINAL larger index.

## 2. Exact extraction, including the repeated-prime correction

For p in Q and q >= 1, genuine rough Mobius multiplicativity gives

    a(pq) = -a(q) + 1_(p divides q) a(q).

Define c(p,q) = a(q) - 1_(p divides q) a(q). For 1 < n <= N,

    a(n) = -(1/w(n)) sum_(p in Q, p|n) c(p,n/p).

Real division by zero is used only in the zero-count case. In that case a(n)
is independently proved zero: a nonunit n has a prime divisor <= n <= N;
if none lies in Q, it lies in P. Thus there is NO unproved unsifted remainder.
The n=1 case is not covered by this identity and is not discarded: its
larger-index triangular weight is exactly zero.

For any F with F(1)=0 the resulting finite identity is

    sum_(1<=n<=N) a(n)F(n)
      = - sum_(p in Q) sum_(1<=q<=floor(N/p))
            F(pq) [a(q)-1_(p|q)a(q)] / w(pq).                 (E)

The denominator is not w(q), a prime average independent of q, or an
unconditional 1+w(q). The quotient cutoff is floor(N/p), not N; a prefix
Y additionally imposes pq<=Y. The original closed endpoint stays present.

Let U(F) and V(F) be the same prime-first sum with numerator a(q) and
1_(p|q)a(q), respectively. The corrected bilinear is U(F)-V(F), so the
source identity is -U(F)+V(F). Both terms may be nonzero at a prime square.
For example j=6,N=64,p=q=7,m=11 is an actual rough-core repeated-prime
fixture: a(49)=0, a(7)=a(11)=-1, and the unrestricted quotient contribution
is canceled by the identical repeated contribution. Dropping the latter
creates a term not in the source.

For the complete source use

    F(n)=sum_(1<=m<n) a(m)G(m,n).

For the complementary large-core region use

    F_hi(n)=sum_(L<m<n) a(m)G(m,n).

In both cases BOTH orientations appear in R as the factor 2. No occurrence
of D_old-D_new, stage credit, or total internal-transfer variation is used
as a saving in these identities.

## 3. An unconditional 7/8-rate bound for the smaller-core strip

Partition the literal ordered sum into

    R_lo = 2 sum_(1<=m<=L, m<n<=N) a(m)a(n)G(m,n),
    R_hi = 2 sum_(L<m<n<=N) a(m)a(n)G(m,n),
    R = R_lo + R_hi.                                      (S)

The thin strip is a proper subset of the original interaction, not a
post-hoc remainder or a diagonal change. The inherited amplitude supplier is

    A(P) = product_(p in P)(1+p^(-1/2)),   A(P_j)^2 <= exp(4 sqrt j).

Since |a(n)|<=1 and |K(m,u)|<=A(P)r_m(u)<=2A(P)/sqrt m,

    |G(m,n)| <= 4 T A(P)^2 / sqrt(mn).

The elementary telescoping inverse-square-root estimate gives
sum_(1<=m<=M) 1/sqrt m <= 2 sqrt M. Therefore, independently of all
correlation cancellation,

    |R_lo| <= 32 T A(P)^2 sqrt(LN)
           <= 32 T A(P)^2 N^(3/4).                        (L)

There is one j-independent payment for the remaining scale cost:

    4 sqrt j <= T/16 + 64/log 2,
    T <= 16 exp(T/16),
    T A(P_j)^2 <= 16 exp(64/log 2) exp(T/8).

Consequently

    |R_lo| <= 512 exp(64/log 2) 2^(7j/8).                  (L7)

The constant is deliberately elementary, not optimized. This bound is
unconditional, but applies ONLY to the displayed strip. The full R remains
unbounded at a fixed exponent below one in this increment.

## 4. One explicit kernel-free bilinear inequality still to prove

For integer 1<=X,Y<=N define

 B_j(X,Y) = sum_(p in Q) sum_(1<=q<=floor(N/p), pq<=Y)
              sum_(L<m<=X, m<pq)
       a(m) [a(q)-1_(p|q)a(q)] / [w(pq) sqrt(m) sqrt(pq)].   (B)

Every factor is prescribed by the source. Equivalently the q sum has the
additional guard p does not divide q, but (B) keeps the canceled repeated
channel visible. The primes, P, denominator w, and N still belong to the
frozen outer scale j; X,Y are prefix cutoffs, not new horizons.

The exact arithmetic content is

 B_j(X,Y) = - sum_(L<m<=X, m<n<=Y)
                   a(m)a(n) / sqrt(mn).                  (B-id)

The proposed independent supplier is the following single inequality:

 THERE EXISTS B>=0 SUCH THAT FOR EVERY j>=0 AND EVERY 1<=X,Y<=2^j,

                  |B_j(X,Y)| <= B 2^(3j/4).              (BIL)

B must be independent of j,X,Y. This is UNPROVED. It is not installed as
an axiom, asserted by a test, or hidden in the definition of a mass or energy
ratio. It is stronger than the one-sided weighted estimate strictly needed
for R, but has no pickup kernel, energy, inverse mass, or analytic-return
hypothesis in its statement.

The elementary absolute bound gives order N rather than N^(3/4). In
particular (B-id) and sum 1/sqrt n <= 2 sqrt N give |B_j(X,Y)|<=4N.
There is no power saving from this triangle inequality.

One diagnostic for the strength of (BIL) is useful. Put

 S_j(x)=sum_(L<n<=x) a(n)/sqrt n,
 Q_j(x)=sum_(L<n<=x) a(n)^2/n,  H=min(X,Y).

Exact finite expansion gives

 B_j(X,Y) = (S_j(H)^2+Q_j(H))/2 - S_j(H)S_j(Y).             (P)

Thus the new bilinear presentation does NOT secretly prove cancellation.
On X=Y it already asks for control of the squared actual weighted rough
Mobius prefix, up to its explicit diagonal Q_j. This diagonal is not the
previous block-diagonal credit. Formula (P) is an identity, not a new use of
D_old-D_new. Both the prime-first form (B) and this diagnostic are retained.

## 5. Written source-specific normalized variation lemma

The following proof is written mathematics, not yet a Lean declaration.
For an auxiliary dilation d>=1 and fixed P,N,u define

 b_(P,d)(m,u) = sqrt(m) K_(P,N)(dm,u),
 V_(P,d)(u) = sum_(m=1)^N |b_(P,d)(m,u)-b_(P,d)(m+1,u)|.

The same frozen cutoff N is used on every dilated term. The bound is

                         V_(P,d)(u) <= 2 A(P)/sqrt d.     (V)

Proof. For P empty, the sequence is

 1_(dm<=N) 2 max(d^(-1/2)-sqrt(m)exp(-u/2),0).

It is nonnegative and decreasing for m>=1, with value zero at m=N+1.
Its total variation therefore telescopes to its value at m=1, at most
2/sqrt d. At a fresh stage p, the ACTUAL block recurrence gives

 b_(p::P,d) = b_(P,d) - b_(P,pd).

The triangle inequality for differences and the induction hypothesis give
2A(P)(d^(-1/2)+(pd)^(-1/2))=2A(p::P)/sqrt d. This proves (V).
No block positivity is assumed after a prime insertion.

For d=1 write b_m(u)=sqrt(m)K(m,u), Delta b_m=b_m-b_(m+1).
Then b_(N+1)=0 and sum|Delta b_m|<=2A(P). The terminal difference at m=N
is retained. At dyadic physical times its first term also vanishes, but
no summation convention depends on discarding it.

This is an A(P) variation budget, not 2^|P| or 4^|P| discrepancy. It makes
no assertion that |P_j|^2<=T_j. The other chat's discrepancy schedule is
not imported into the present P_j={primes<=j} schedule.

## 6. Written finite Abel return and exact constant for the full target

For any finite matrix c_mn and sequences b with b_(N+1)=0, expansion of
b_m=sum_(x=m)^N Delta b_x and exchange of finite sums gives

 sum_(m,n=1)^N c_mn b_m b_n
   = sum_(x,y=1)^N (sum_(m<=x,n<=y) c_mn) Delta b_x Delta b_y.

This is an elementary finite identity. Apply it with

 c_mn = -1_(L<m<n) a(m)a(n)/sqrt(mn),

whose rectangular prefix is exactly B_j(X,Y) by (B-id). There follows

 R_hi = -2 integral_0^T sum_(x,y=1)^N
                        B_j(x,y) Delta b_x(u) Delta b_y(u) du.  (A)

All functions are finite combinations of continuous causal responses, so
these exchanges and integrals involve no convergence or limit premise.
Signs of both differences and of B remain in (A). Only the sufficient
upper estimate now uses their absolute values.

If (BIL) is independently established, (V) gives

 |R_hi| <= 2 B N^(3/4) integral_0^T (sum|Delta b|)^2 du
        <= 8 B T A(P)^2 N^(3/4).

Together with (L), the full original interaction satisfies

 |R| <= 8(B+4) T A(P)^2 N^(3/4)
     <= 128(B+4) exp(64/log 2) 2^(7j/8).                  (R7)

In particular the requested one-sided bound follows with

                  C = 128(B+4) exp(64/log 2),

independent of j. The only new MATHEMATICAL supplier not established in
this written route is (BIL). The written variation/Abel argument still
needs its own future Lean implementation and acceptance; the existing
source proof candidates also remain NOT_RUN.

A fixed 7/8 exponent does not imply every positive rate. No bootstrap
from (R7) to the all-positive-rate source criterion is proved or asserted.
The earlier Euler-product/Laplace growth obstruction remains at its own
written scope, separate from its finite Lean reductions.

## 7. Comparison with the other chat's negative channel

The user reports a first negative channel for the [2,3] then 5 block in
exp(u)/16 < m < exp(u)/9, with an anchored M_30 Abel return and an inherited
negative tail above exp(u)/p at subsequent stages. These are taken only as
a source-specific comparison supplied by the user, not as accepted Lean
facts, a new estimate, or a premise of (E), (L7), (V), or (A).

Splitting K=K_plus-K_minus splits every distinct-core product into all four
sign channels. A bound on the minus-minus channel alone does not bound the
plus-plus channel or the signed mixed pair. Formula (A) contains the whole
signed block and hence all four channels. Its proof uses no localized
positivity claim and no assumption that a later negative tail vanishes.

## 8. Formal declarations and remaining acceptance obligations

New namespace PickupRoughBilinearExtraction contains the exhaustive prime
inventory, count/zero-count argument, coefficient identity, exact quotient
reindexing, unrestricted-minus-repeated identity, ordered symmetry factor,
actual interaction extraction, and kernel-free prefix identification.

New namespace PickupRoughCoreStrip contains the actual disjoint strip
partition, source Gram product bound, inverse-square-root sum, explicit
thin-strip bound, fixed amplitude payment, and thinInteraction_seven_eighths.

Neither file concludes RiemannHypothesis or defines a new all-rate wrapper.
No growth witness is assigned after observing the energy. Operational
preflights and audit driver remain outside mathematical source.

Source and verification pins are in the companion verification.toml and
passive issue. Finite exact arithmetic and rational-surrogate tests,
70-digit response checks, and static review are explicitly distinguished
from compilation, fresh kernel replay, axiom auditing and asymptotic proof.

## Next mathematical execution instruction

Prove (BIL) with one constant B independent of j,X,Y, beginning with the
long-prime region p>sqrt(N_j) and retaining its q=1 contribution and the
strict comparison L_j<m<pq; do not discard the complementary prime region.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be80b3392ba84b136c583015c03b780ebb37e6eb7ef80e9de69177c5ffa6cdb2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
