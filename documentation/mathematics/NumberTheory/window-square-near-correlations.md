# Finite window squares and signed near correlations

Local mathematical attribution: grwtsk contributors.

Finite written proof candidate. Compilation, fresh kernel replay and transitive
axiom audit: **NOT_RUN**. This note imports no analytic cancellation theorem and
introduces no native declaration. It proves a finite identity and its actual
Gram-weighted cost; it does not prove an RH-facing arithmetic bound.

## Source and mathematical use

Written derivation: conversation `6ae172dd-a538-83e8-8008-ebad9b4c2295`,
assistant `b41507f9-c7a3-498a-b2aa-32bb614f5dd1`, rendered-text SHA-256
`dc828de2e11e2c87f6e656510aec1b1e5884be4b19f80e0e433de219aa554e1a`.
The complete rendered derivation was read. Its attached file bytes were not
retrieved. The finite statements below are proved independently; the reply's
analytic second-moment estimates are not imported here.

The actual retained-core source and its near allocation are pinned by
`documentation/mathematics/NumberTheory/Moebius/retained-far-core-reconstruction.md`
at commit `fb0007e9c9b73d3e72a7d572e1b85be966f58c2e`, blob
`0c7584cceeb11b957279e60df60b628f13c50444`. That source was inspected.
Its historical path is a source identity, independent of subsequent taxonomy
moves. The application below replaces only an estimate for the designated
near sum. It preserves both signs, its closed gap, and the original diagonal.

## Exact finite identity in a real inner product space

Let b_n be vectors in a real inner product space, indexed by integers, with
finite support. For positive integer H define

    B_H(t)=sum_(t<n<=t+H) b_n,
    E_H=sum_(t in Z) ||B_H(t)||^2,
    D=sum_n ||b_n||^2,
    C_d=sum_n <b_n,b_(n+d)>  (d>=1).

All sums are finite. A fixed n belongs to exactly H windows. For a pair
n<n+d, exactly max(H-d,0) integer windows contain both entries. Expanding
each complete square, including both orientations, therefore proves

    E_H=H D+2 sum_(1<=d<H)(H-d)C_d.                    (1)

Fix integers h>=1 and 1<=ell<=h. Define the signed extra strip

    Tail=2 sum_(h<d<h+ell) ((h+ell-d)/ell) C_d

and the actual long/short covariance

    J=sum_t <B_h(t), B_ell(t+h)>.

Subtract (1) at h from (1) at h+ell. For every d<=h the coefficient
difference is ell, including d=h. For h<d<h+ell it is h+ell-d. Thus

    2 sum_(1<=d<=h) C_d
      =(E_(h+ell)-E_h)/ell-D-Tail
      =2J/ell+E_ell/ell-D-Tail.                       (2)

The second equality uses B_(h+ell)(t)=B_h(t)+B_ell(t+h), followed by
sum_t ||B_ell(t+h)||^2=E_ell. Cauchy--Schwarz on the finite vector family
gives |J|<=sqrt(E_h E_ell), so

    |2 sum_(d=1)^h C_d|
      <=2sqrt(E_h E_ell)/ell+E_ell/ell+D+|Tail|.       (3)

The covariance and extra strip are retained before taking absolute values.
No orthogonality, positive correlation, or sign of C_d is used. For ell=1
the strip is empty; E_1=D, so (2) also verifies that endpoint case.

## Actual frozen pickup field

For j>=32 let N=2^j, T=log N, h=2^floor(3j/4), and use the original
terminal W=N-min(floor(N/2),2^floor(15j/16)). Put Z=4h and
Q=product_(p prime,p<=j)p. All products indexed by p below are over primes.
For integers n>=1 and u in [0,T] retain

    a(n)=mu(n) 1_(gcd(n,Q)=1),
    r_n(u)=2(n^(-1/2)-exp(-u/2)) 1_(log n<=u),
    K(n,u)=sum_(q|Q)mu(q) 1_(qn<=N) r_(qn)(u).

Apply (1)--(3) in the real inner product space L2([0,T]) to

    b_n(u)=a(n)K(n,u) 1_(Z<n<=W),

extended by zero for every other integer n. Each function is square
integrable and the spatial support is finite. Then C_d is the actual
integrated shifted correlation with all original selected divisors. Its
closed-gap sum 2 sum_(d=1)^h C_d is exactly the near source with BOTH cores
above Z. It does not include the pairs below Z or crossing Z.

No squareful coefficient, common selected divisor, repeated-prime condition,
terminal floor, or birth at qn=exp u has been replaced: r_n is zero at its
birth. No separate critical-line or infinite-series interpretation is used.

## Finite cutoff-weighted estimates

For y>=0 define the nonnegative truncated amplitude

    A(y)=sum_(q|Q,q<=floor y)q^(-1/2),   A(y)=0 if y<1.

Use dyadic integers D=2h,4h,...,N/2. Every nonzero window start t for
H=h or ell belongs to one such [D,2D): indeed t+H>Z=4h and t<W<N.
Define the actual maximum

    S_H(t)=max_(t<=v<=w<=t+H, v,w integers)
               |sum_(v<n<=w)a(n)|,
    Delta_(H,D)=(sum_(D<=t<2D) S_H(t)^2)/(D H^2).

These are finite quantities, not assumed cancellation estimates. Define

    G(D)=integral_0^T A(exp u/D)^2 du,
    Wcost=sum_D G(D),   U_H=sum_D G(D)Delta_(H,D).

For each q the original summation interval inside B_H(t,u) is

    max(t,Z)<n<=min(t+H,W,floor(exp u/q),floor(N/q)).

On a nonempty interval r_(qn)(u) is nonnegative and decreasing in n.
Anchored finite Abel summation retains its terminal coefficient and every
adjacent difference; their nonnegative sum is the first included response,
at most 2/sqrt(qD). The arithmetic anchored prefixes are bounded by S_H(t).
After this signed summation, the divisor triangle inequality yields

    |B_H(t,u)|<=2 A(exp u/D) S_H(t)/sqrt D,
    E_H<=4H^2 U_H.                                    (4)

All moving birth cutoffs and both clipped spatial endpoints are covered by
the SAME maximum. There is no union over divisors or physical times.

For a pair n<n+d and n in [D,2D), the direct field bounds give

    |K(n,u)K(n+d,u)|<=4 A(exp u/D)^2/D.

There are at most D such lower indices, including clipped support. Thus
|C_d|<=4Wcost for each d, D<=4Wcost for the actual diagonal (the letter D
in (1)--(3) denotes that diagonal, not a dyadic scale), and

    |Tail|<=4(ell-1)Wcost<=8ell Wcost.                 (5)

Here sum_(r=1)^(ell-1)(ell-r)/ell=(ell-1)/2 prices the whole strip.
Combining (3)--(5), with D_diag denoting the diagonal unambiguously, proves

    |Near_(>Z)|
      <=8h sqrt(U_h U_ell)+4ell U_ell
          +(4+8ell)Wcost.                            (6)

This retains the covariance cost, extra strip, and exactly one diagonal.
For example, IF an independently proved estimate U_h,U_ell<=alpha Wcost
is available, then the covariance costs at most 8h alpha Wcost. It costs
alpha rather than sqrt(alpha) because BOTH actual windows are controlled.
This observation supplies no estimate for alpha.

## Exact positive divisor cost and limits

Finite expansion of A(exp u/D)^2, followed by integrating each support
indicator, gives the exact formula

    G(D)=sum_(q,r|Q)
       [T-log D-log max(q,r)]_+/sqrt(qr).             (7)

This includes q=r and common prime divisors, as well as every time cutoff.
Writing A_full=product_(p<=j)(1+p^(-1/2)), one has

    0<=G(D)<=T A_full^2,
    0<=Wcost<=j T A_full^2=A_full^2 T^2/log 2.         (8)

Keeping the cutoffs does not authorize replacing this bound by a constant.
It is a nonnegative majorant, not the signed near source.

Equation (6) is useful for importing a genuinely quantitative second-moment
estimate without dropping covariance or introducing an unpriced extra gap.
No such imported estimate is proved in this note. In particular it proves
neither logarithmic nor fixed-power cancellation on its own. Bounds for
the discarded below-Z and crossing pairs must be added, and the original
outside mask still requires its top-near subtraction and far-only shared
correction. The full retained source also contains low-core and terminal
cross terms. None is a second credit from (6).

The reply's Matomäki--Radziwiłł/Lee--Leong analytic refinement, its growing
stage, its numerical constants and eventual thresholds require separate
source-bound treatment and the paper-reference ledger before analytic
integration. The external 7/8 nonvanishing statement is not an input here.
No all-positive-rate arithmetic bound, fixed-power improvement, compilation,
kernel replay or transitive axiom acceptance follows from these finite
identities.
