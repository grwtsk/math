# Finite self-convolution and complete two-dimensional Abel estimate

Local mathematical attribution: grwtsk contributors.

Written finite proof candidate. No new Lean declaration or analytic theorem is
imported. Compilation, fresh kernel replay and transitive axiom audit:
**NOT_RUN**. Prefix and reciprocal-mean allowances below are explicit premises;
no fixed exponent improvement, bound for a restricted signed sector, or RH
conclusion follows without additional arithmetic estimates.

## Source and scope

The response bytes were inspected at commit
`3c07c255edbb38ea4afb99f8e42ed60b9f54049c`, historical path
`GRWTSK/NumberTheory/Moebius/MertensPrimitive.lean`, blob
`45e06c371d67bcf8c939d20a95fcbc63570546fa`, declaration
`GRWTSK.RiemannHypothesis.CCC.pickupResponse`. This pin does not assert a
current-main path identity or a kernel receipt for this written deduction.

Written derivation: conversation `6ae172dd-a538-83e8-8008-ebad9b4c2295`,
assistant messages `fc0b9c5e-bd06-4333-948d-a37c390b954a` (rendered-text
SHA-256 `8a1724951cb9b85181d6a0201e4483e381b9c54768e92a9a49ee9baac6749e35`)
and `46ce8a3b-45ef-4d08-bab1-4a7af57c8928` (SHA-256
`4fa0bc122c4f0aed0f5c01ea988dcfc767ff1a0f38594548bf5128300d5117ed`).
Those identities describe written sources, not native verification. The finite
proof below is self-contained; the replies' imported analytic corollaries are
not imported here.

## Exact finite convolution

Fix X>=1, u=log X, N=floor X, y=floor(sqrt X), and positive integer indices.
Write

    r_n=2(n^(-1/2)-X^(-1/2))_+,
    F=sum_(n<=N) mu(n) r_n,
    m(n)=mu(n)1_(n<=y), eta=mu-m.

Here the positive part equals the original response on positive indices.
Terminal births have zero response. A larger frozen inventory gives the same
F because all later responses vanish.

Let 1 denote the constant arithmetic function and e the convolution unit.
Using mu*1=e and associativity/commutativity of Dirichlet convolution gives

    eta*eta*1=mu-2m+m*m*1.

If n<=N, a nonzero term on the left requires two factors >y and hence
n>=(y+1)^2>X. Therefore, exactly on this closed inventory,

    mu(n)=2mu(n)1_(n<=y)-sum_(a,b<=y,ab|n)mu(a)mu(b).       (1)

Shared primes, squareful products, a=b, both orientations and the unit remain.
In particular the unit has coefficient 2-1=1; no coprimality restriction is valid.

Define the literal finite kernel and its continuum comparison by

    W(a,b)=sum_(1<=k<=floor(X/(ab))) r_(abk),
    C(a,b)=2sqrt(X)/(ab), E(a,b)=W(a,b)-C(a,b).

Finite exchange in (1), with S_y=sum_(a<=y)mu(a)/a, proves

    F=2sum_(a<=y)mu(a)r_a-2sqrt(X)S_y^2
        -sum_(a,b<=y)mu(a)mu(b)E(a,b).                     (2)

Thus the finite continuum mean is retained, rather than set to zero.

## Cutoff crossings and discrepancy

For fixed k>=1 and positive real a,b put
f_k(a,b)=2((abk)^(-1/2)-X^(-1/2))_+.
For a<a' absolute continuity gives

    f_k(a,b)-f_k(a',b)
      =k^(-1/2) integral_a^a' t^(-3/2)b^(-1/2)1_(tbk<X) dt.

For b<b', subtract the same formula at b'. The bracket
b^(-1/2)1_(tbk<X)-(b')^(-1/2)1_(tb'k<X) is nonnegative:
only its second indicator cannot be one. Consequently every rectangular
mixed difference

    f_k(a,b)-f_k(a',b)-f_k(a,b')+f_k(a',b') >=0.            (3)

Equality at a birth changes the integrand only at one point. This proves
(3) across the cutoff as well as within smooth regions. On a,b>=1 one may
sum k=1,...,N, adding only zero terms. Thus W is nonnegative, decreasing in
each coordinate, and has nonnegative rectangular mixed differences. C has
these properties too, since its mixed difference is
2sqrt(X)(1/a-1/a')(1/b-1/b'). No such sign is claimed for E.

The decreasing nonnegative function
f(t)=2((abt)^(-1/2)-X^(-1/2))_+ has integral C(a,b) on (0,infinity).
The integral test gives

    integral_1^infinity f <= sum_(k>=1)f(k) <= integral_0^infinity f.

It follows that

    E<=0, |E|<=integral_0^1 f<=4/sqrt(ab).                 (4)

For ab<=X the middle integral is 4/sqrt(ab)-2/sqrt(X); for ab>X
it is C(a,b). Both quotient-cutoff cases are included.

## Exact Abel identity with all boundary terms

Take integer endpoints 1<=A<A', 1<=B<B'. Set
P_m=sum_(A<a<=m)mu(a), Q_n=sum_(B<b<=n)mu(b).
For any real kernel K on this finite rectangle, summing differences twice gives

    sum_(A<a<=A',B<b<=B')mu(a)mu(b)K(a,b)
      =P_A' Q_B' K(A',B')
       +Q_B' sum_(m=A+1)^(A'-1) P_m [K(m,B')-K(m+1,B')]
       +P_A' sum_(n=B+1)^(B'-1) Q_n [K(A',n)-K(A',n+1)]
       +sum_(m=A+1)^(A'-1)sum_(n=B+1)^(B'-1)
           P_m Q_n [K(m,n)-K(m+1,n)-K(m,n+1)+K(m+1,n+1)]. (5)

Indeed mu(m)=P_m-P_(m-1), with P_A=0, and similarly for Q.
Singleton sides have empty corresponding sums; empty rectangles contribute zero.
Define ||K||_Abel as the sum of absolute values of the corner, both edge
differences and every mixed difference appearing in (5).
For K=W or C all coefficients are nonnegative, so telescoping proves exactly

    ||K||_Abel=K(A+1,B+1).

The first included grid point, rather than the excluded anchor, is the exact
value. Since W<=C, the triangle inequality yields

    ||E||_Abel<=4sqrt(X)/((A+1)(B+1))<=4sqrt(X)/(AB).        (6)

If A'<=2A, B'<=2B, and actual global prefixes M(t)=sum_(n<=t)mu(n)
satisfy |M(t)|<=t epsilon at every relevant endpoint and intermediate
integer, then |P_m|<=3A epsilon and |Q_n|<=3B epsilon.
Equations (5)--(6) imply

    |sum_(I x J)mu(a)mu(b)E(a,b)|<=36sqrt(X)epsilon^2.       (7)

These two cancellation factors multiply through a complete coefficient-norm
bound, without an independence assumption.

## Complete finite factor-range bound

Let 1<=K<=y be an integer. Partition (K,y] into the nonempty cells

    I_r=(max(K,2^r),min(y,2^(r+1))], 0<=r<=floor(log_2 y).

They are disjoint open-left/closed-right intervals, including clipped first
and last cells. Let J be their number; J<=2+log_2 y and J=0 if K=y.
Suppose |M(t)|<=t epsilon for every integer K<=t<=y, and suppose the
actual finite reciprocal mean satisfies |S_y|<=B_y, with B_y>=0.
The disjoint low-factor pieces are a<=K,b<=y and K<a<=y,b<=K.
By (4) and sum_(n<=v)n^(-1/2)<=2sqrt(v), their total magnitude is at most
32sqrt(Ky). Summing (7) over the full ordered high-factor square costs
36sqrt(X)J^2 epsilon^2. No same-cell diagonal is removed.
The short term in (2) costs at most 8sqrt(y). Hence

    |F|<=8sqrt(y)+2sqrt(X)B_y^2+32sqrt(Ky)
                 +36sqrt(X)J^2 epsilon^2,                 (8)
    F^2<=256y+16X B_y^4+4096Ky+5184X J^4 epsilon^4.         (9)

The last inequality uses (a+b+c+d)^2<=4(a^2+b^2+c^2+d^2), paying all
energy cross terms. At K=y the high part is empty. On a physical horizon,
(9) may be integrated pointwise with y=floor(exp(u/2)) and any measurable
integer K(u) in [1,y]; no differentiation of floor jumps is required.
The elementary supplied choice epsilon=1, B_y=1+log y is always available.
Any stronger analytic supplier must be separately stated and verified.

## Why cubic positivity cannot be copied

With q=e-m*1 the algebraic cubic identity is

    mu=3m-3m*m*1+m*m*m*1*1+mu*q*q*q.

For y=floor(X^(1/3)), q vanishes through y, so the last term vanishes
through floor X. The actual cubic kernel is

    W3_X(a,b,c)=sum_(k<=floor(X/(abc))) d_2(k) r_(abck),

where d_2(k) counts ordered factorizations of k. It has additional divisor
weights and cannot be replaced by W with one more coordinate.
At X=360 and each coordinate 5 or 6, put t=sqrt(5/6). Only k=1,2 can
occur; k=2 at product 5*6^2=180 is included with zero response.
The backward rectangular third difference is exactly

    W3(5,5,5)-3W3(6,5,5)+3W3(6,6,5)-W3(6,6,6)
      =2*5^(-3/2)(1-t)[(1-t)^2+sqrt(2)(1-2t)] <0.         (10)

For k=1 the contribution is 2*5^(-3/2)(1-t)^3. For k=2, whose
multiplicity is two, it is 2sqrt(2)*5^(-3/2)(1-t)(1-2t), proving the
formula directly. Since 9/10<t<1, the bracket is less than
1/100-4/5<0. Both coordinates are squarefree and lie in the literal cell
(4,7]^3, with floor(360^(1/3))=7.
Scaling coordinates by R and X by R^3 preserves the quotient inventory
and scales the kernel by R^(-3/2). Prime R>5 keeps 5R and 6R squarefree,
so failure is not confined to a finite initial range.

This disproves the required third mixed sign, not the possibility of another
three-dimensional total-variation estimate. Every face, edge, corner and
lower-order convolution term would still need payment in such an argument.

## Remaining mathematical bridges

Equations (1)--(10) are finite written deductions, with no numerical proof
diagnostic or native execution receipt. Native declarations and exact-source
checking remain missing. In (8)--(9), a small epsilon and B_y remain supplied
arithmetic estimates. No stronger scalar Mertens bound is inferred by
differentiating a smoothed magnitude bound. No bound for the separate
outside-band masked source follows from a whole-waveform energy estimate.
The all-positive-rate signed arithmetic estimate remains unresolved.
