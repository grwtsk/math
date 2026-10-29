# A harmonic-tail bound with rational resonances retained

Local mathematical attribution: grwtsk contributors.

Written mathematical proof, not a new Lean declaration. Compilation, fresh
kernel replay and transitive axiom audit: NOT_RUN. This note bounds a complete
frequency tail of the frozen rough-source decomposition, not the full source.
No scalar Möbius cancellation theorem is used in the tail argument.

Source chat `6ae02348-86d4-83e8-b3e6-e5e06e1e920e`, assistant message
`fe70dfa9-d52b-4d87-bb1b-ca85a0a84188`, rendered-text SHA-256
`0172f6f57952a7418288857ebb3a50b10c21ad8908abedb7793cb488a3d2e42c`.

## Inventory and the finite harmonic estimate

Fix N=2^j, Q=product of primes at most j, and a(n)=mu(n)1_(gcd(n,Q)=1).
Let integers floor(sqrt N)<=M<Y<=min(2M,N), with M>=8. Put
U=floor(M^(1/3)), V=floor(Y/(U+1)), I_Y=(U,V], and
I_M={u in I_Y:uU<=M}. All arithmetic indices are positive integers.
Partition u into (D,2D], D=2^s U, and d into [E,2E), E=2^t,
clipping to u in I_Z, 1<=d<=U at endpoint Z=M or Y.

For B>=1 and integer H>=1, the complete tail in an endpoint box uses

    A_Z(r)=floor(rDEB/Z)+1,
    s(A,H;Z/q)=(1/pi) sum_(A<=h<=H) sin(2pi hZ/q)/h,
    q=rud, r|Q.

The sum is zero when A>H. If q divides Z, every sine term is zero.
Otherwise define delta_q=min_(l in Z)|Z-lq|>0. Finite geometric summation
and Abel summation give

    |s(A,H;Z/q)| <= min(4, q/(2pi A delta_q)).             (1)

Here a consecutive exponential sum is at most 1/|sin(pi Z/q)|; summation
by parts against 1/h costs at most its bound divided by A. Finally
|sin(pi Z/q)|>=2delta_q/q. For a uniform bound, write theta=||Z/q||
in (0,1/2]. A sine prefix up to 1/(2theta) costs at most pi, by
|sin(2pi h theta)|/h<=2pi theta. Its remaining part costs at most 1
by geometric/Abel summation. Dividing by pi and subtracting two prefixes
gives a bound less than 4. The constant is deliberately enlarged here.

Since u<=2D and d<2E, q/A_Z(r)<4Z/B. Terms satisfying
A_Z(r)delta_q<=q are called near resonant; (1) is still valid there,
and they have 0<delta_q<4Z/B. No such terms are discarded.

## Count rational near resonances using the actual rough support

If a(u)a(d) is nonzero, gcd(ud,Q)=1. Because Q is squarefree,

    r=gcd(rud,Q)=gcd(q,Q).

Thus r is determined by q, even when u and d share primes. For each q
there are at most tau(q/r)<=tau(q) choices of the ordered pair (u,d).
If q<=2Z and q does not divide Z, a nearest positive multiple gives
lq=Z-delta_q or Z+delta_q, with 1<=delta_q<=Z. At prescribed delta,
the total multiplicity is at most

    d_3(Z-delta)+d_3(Z+delta),                            (2)

omitting d_3(0). Indeed sum_(q|n) tau(q)=d_3(n).

For every epsilon>0 there is a finite C_epsilon with
d_3(n)<=C_epsilon n^epsilon. One elementary proof uses
d_3(p^a)=binomial(a+2,2)<=3^a. Primes p>=3^(1/epsilon) need no
additional factor; for each of the finitely many smaller primes the
supremum of binomial(a+2,2)p^(-epsilon a) is finite. Multiply these
finitely many suprema. This proof does not use cancellation of mu.

Equations (1)-(2) bound the q<=2Z near-resonant terms in one box by
32 C_epsilon(2Z)^epsilon Z/B. All the other q<=2Z terms cost at most

    (4/pi) C_epsilon(2Z)^epsilon (Z/B) sum_(n<=Z) 1/n.

For q>2Z the nearest multiple is zero, so delta_q=Z. Equation (1)
then bounds each term by 2/(pi B). This region retains its complete
divisor count and costs at most

    2 tau(Q) |I_Z intersect (D,2D]| |[1,U] intersect [E,2E)| /(pi B).

These three bounds cover every denominator size and every resonance case.

## Pay every endpoint and box

Let F_(>B) be the signed sum of the endpoint-box tails, with coefficients
mu(r)a(u)a(d), taking the Y contribution minus the M contribution.
The two endpoints use their own A_Z(r) and clipped inventories. If K_D,K_E
are the numbers of boxes, the preceding bounds give, with an absolute C,

    |F_(>B)| <= C C_epsilon (4M)^epsilon (M/B)
                   K_D K_E (1+log(2M))
                + C tau(Q) M/B.                         (3)

For the last term the boxes partition their inventories and VU<=Y<=2M.
The estimate is uniform in H: no log H, sigma_1(Q) or period-size cost
is hidden in (3). The small-denominator count has no tau(Q) multiplier,
because r was uniquely recovered before the absolute count.

For completeness, tau(Q)=M^o(1) uniformly on these frozen scales.
The elementary central-binomial bound for the product of primes in (n,2n]
gives theta(j)<=4j log 2 by dyadic summation. Separating primes below
sqrt j gives pi(j)<=sqrt j+8j log 2/log j for j>1. Since
j log 2<2log(M+1), pi(j)=o(log M), and tau(Q)=2^pi(j)=M^o(1).
Also K_D,K_E=O(1+log M). Absorbing these costs into arbitrarily small
powers in (3) proves, for every epsilon>0,

    |F_(>B)| <= C'_epsilon M^(1+epsilon)/B.              (4)

The constant is independent of j,M,Y,H,B in the stated ranges. In particular,
B=M^(1/6), epsilon=1/48 gives an M^(41/48) bound, below M^(7/8).

## Precise limitation

This is a bound on the COMPLETE harmonic tail with hZ/(rDE)>B in each
endpoint box. It does not bound arbitrary subsets of those frequencies.
The Fourier decomposition's remaining low/middle modes, their different
endpoint masks and the retained Type I arithmetic main term still require
a joint signed bound. Neither (4) nor a sawtooth reconstruction supplies it.
No full interval M^(7/8) estimate, complete pickup-energy exponent improvement
or every-positive-rate RH bound is proved here. Formalization and source-bound
native acceptance of this written tail proof remain outstanding.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ad5fbfe7ddf8c7b3b945e20888cfaae60be33ef799316f9a414661290192cb6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
