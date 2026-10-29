# Frozen rough Möbius decomposition and its counting remainder

Local mathematical attribution: grwtsk contributors.

This is a written mathematical derivation, not an elaborated Lean declaration.
Compilation, fresh kernel replay and transitive axiom auditing: NOT_RUN.
It does not prove a power saving for the complete Möbius sum or pickup energy.

Source conversation: `6ae02348-86d4-83e8-b3e6-e5e06e1e920e`, assistant message
`e1835e9e-9a11-4b92-b5e9-48a671dc1988`, rendered-text SHA-256
`a9503e68fb917c2c81c1986709a43f6d0a6818ce9bcb576beafe92d248cbc33b`.
The existing coefficient is
`GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource.rough (stages j)`;
inspection base `112c806978c3a96ff1f947f4f86a6c0b5e6740bb`.
The paper reference below supplies context for the finite decomposition method;
the rough specialization and counting estimate are derived explicitly here.

## Finite identity with a frozen prime set

Let j be a natural number, N=2^j, L=floor(sqrt N), and P the primes at most j.
All arithmetic functions below have positive integer arguments. Set
b(n)=1 if no prime of P divides n, and b(n)=0 otherwise; put a(n)=μ(n)b(n).
Fix integers L<=M<Y<=min(2M,N) and U=floor(M^(1/8)). Then M>=1,
1<=U<=M and U²<=M. The set P stays fixed throughout this interval.

With Dirichlet convolution, a*b is the convolution unit: complete
multiplicativity of b gives (a*b)(n)=b(n) sum_(d|n) μ(d).
Put f(n)=a(n)1_(n<=U), g=a-f. Expanding g*g*b gives

    a = 2f - f*f*b + g*g*b.

The 2f term is zero for n>M. Define

    β(v) = sum_(d|v,d>U) a(d)b(v/d),
    R(t) = sum_(1<=n<=floor t) b(n).

Here β(v)=0 for v<=U. For v>U the convolution-unit identity gives
β(v)=-b(v) sum_(d|v,d<=U) μ(d). Exact finite reindexing yields

    sum_(M<n<=Y) a(n) = II-I,
    I = sum_(r,s<=U) a(r)a(s)[R(Y/(rs))-R(M/(rs))],
    II = sum_(U<u<=floor(Y/(U+1))) a(u)
           sum_(max(U,floor(M/u))<v<=floor(Y/u)) β(v).

Every sum starts at a positive integer. Empty intervals contribute zero.
There is no coprimality restriction between u and v: for a prime p>max(j,U),
the coefficient at p² in each of I and II is 1, so their difference is zero.
Removing the u=v=p contribution would corrupt the original source.

## A uniform bound for the counting error only

Write Q=product_(p in P) p, k=card(P), ρ=product_(p in P)(1-1/p).
Inclusion-exclusion gives, for every real t>=0,

    R(t)=ρt+Δ(t),
    Δ(t)=sum_(d|Q) μ(d)[floor(t/d)-t/d],   |Δ(t)|<=2^k.

Consequently I=ρ(Y-M)θ²+E, where θ=sum_(d<=U) a(d)/d and

    E=sum_(r,s<=U) a(r)a(s)[Δ(Y/(rs))-Δ(M/(rs))].

Triangle inequality, applied only to E, gives |E|<=2^(k+1)U².
Apart from 2,3,5, each prime lies in one of the eight invertible residue
classes modulo 30. Complete blocks and at most eight residual candidates give
k<=11+8 floor(j/30)<=11+4j/15. Thus 2^(k+1)<=4096 N^(4/15).
Since N<(L+1)²<=(M+1)²<=4M² and U²<=M^(1/4),

    |E| <= 4096*4^(4/15) M^(8/15+1/4)
         <= 8192 M^(47/60).

This constant is independent of j,M,Y in the stated ranges. It is a genuine
counting-error bound. It bounds neither I nor the full interval sum: the
retained main term ρ(Y-M)θ² has not been shown small.

## The unresolved signed quantity

Define C=II-ρ(Y-M)θ² using the exact coefficients and cutoffs above. Then
the original interval sum is C-E. The sufficient arithmetic estimate is

    exists B>=0, for every j,M,Y in the stated ranges,
      |C| <= B M^(7/8).

This estimate is UNPROVED. It would pay the interval sum because 47/60<7/8;
partial summation and a geometric dyadic partition would then control the
weighted rough prefix. It is not asserted as a theorem or supplied axiom.
Even that fixed-rate route is weaker than the every-positive-rate RH target.

For t>=U there is also an exact identity

    sum_(v<=t) β(v)=1-ρtθ-sum_(d<=U) a(d)Δ(t/d).

To check it, sum β=a*b-f*b, using β(v)=0 for v<=U and a*b equal to
the convolution unit. Inserting this identity at the two row endpoints of II
cancels the constant 1, but independently bounding all remaining discrepancies
costs order 2^k Y rather than 2^k U². Quotient grouping alone therefore does
not provide the missing signed cancellation.

## Literature and acceptance boundary

Ben Green and Terence Tao, *Quadratic uniformity of the Möbius function*,
arXiv:math/0606087v2 (22 September 2007), Lemma 4.1, is a reference for
the Vaughan Type I/II decomposition with positive parameters UV<=N.
[Source](https://arxiv.org/abs/math/0606087v2).
No analytic cancellation theorem from that paper is imported or instantiated.
No new Lean declarations, finite computation receipts or kernel-verified
bridges are claimed here. The precise missing bridge is the uniform bound on
C above, followed eventually by an every-positive-rate complete energy bound.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c932e06eed04ac6fbd664f07d069653ea3efa71794a315f413fd25940aefa21f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
