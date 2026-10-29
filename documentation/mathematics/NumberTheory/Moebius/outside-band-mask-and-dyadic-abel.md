# Outside-band retained-mask allocation and dyadic Abel bound

Local mathematical attribution: grwtsk contributors.

Written finite mathematical deduction, not a new Lean declaration. Compilation,
fresh kernel replay, and transitive axiom audit: **NOT_RUN**. No analytic theorem
is imported in this note. Prefix allowances below are supplied estimates; no
fixed-power prefix bound, fixed exponent saving, or RH conclusion is asserted.

## Exact source identities

The defining bytes were inspected at commit
`3c07c255edbb38ea4afb99f8e42ed60b9f54049c`:

* `GRWTSK/NumberTheory/Moebius/MertensPrimitive.lean`, blob
  `45e06c371d67bcf8c939d20a95fcbc63570546fa`,
  `GRWTSK.RiemannHypothesis.CCC.pickupResponse`;
* `GRWTSK/NumberTheory/Moebius/PickupPrimeBlockSource.lean`, blob
  `8e5060c9697daebb307aae49ed740b869d6e8e13`,
  `GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource.block` and `rough`;
* `GRWTSK/NumberTheory/Moebius/PickupRoughDirectNearDiagonal.lean`, blob
  `21c3826a99790d0431d30ac89101018458ac39ec`,
  `GRWTSK.NumberTheory.Moebius.PickupRoughDirectNearDiagonal.keptDivisors`
  and `pairWeight`.

The band is a written definition at commit
`1c5752c6befd711612179b5693950d09be60d9a6`, path
`docs/mathematics/NumberTheory/Moebius/upper-bulk-gram-and-gcd.md`, blob
`e6b0570ebb14062cf7d8d490704461e2caaef8a8`. These historical paths do not
assert current-main path or byte identity. No inspected Lean declaration for
the additional outside-band restriction is claimed.

Written derivation sources are conversation
`6ae172dd-a538-83e8-8008-ebad9b4c2295`, assistant messages
`d93f948d-f521-4321-bf5f-5e49715d0c9a` (rendered-text SHA-256
`567442863f4612cee31bd04e3bb2018020ac1065d65e2b4c698d74782727f932`)
and `a3a2c83b-9614-4381-9583-a16e4791d21c` (SHA-256
`86af2ea1bc37d5a0207bc82c001fee8f5e3edf2ee0dedf86ce40e8c51ae7bd6d`).
Those observations identify written source, not proof receipts.

## Frozen source and mask

Fix an integer j>=32, N=2^j, T=log N, L=floor(sqrt N),
h=2^floor(3j/4), b=min(floor(N/2),2^floor(15j/16)), W=N-b.
Let P be the distinct primes <=j, Q their product,
a(n)=mu(n)1_(gcd(n,Q)=1). The original response and frozen block are

    r_v(u)=2(v^(-1/2)-exp(-u/2))1_(log v<=u),
    K_P,N(m,u)=sum_(q|Q) mu(q)1_(qm<=N) r_(qm)(u),
    G(m,n)=integral_0^T K_P,N(m,u) K_P,N(n,u) du.

The finite subset expansion follows by induction from literal prime
subtraction in `block`; the empty stage retains m<=N. A terminal birth has
zero response. The upper integration horizon remains T.

Let F={primes p:j<p<=N}, w(n)=#{p in F:p|n}, and
lambda(m,n)=#{p in F:p>L,p|m,p|n}. With real zero division,

    theta(m,n)=1-1_(w(n)=0)-lambda(m,n)/w(n).                 (1)

This follows by partitioning the actual distinct-divisor inventory into kept
and excluded divisors. For 1<n<=N, w(n)=0 implies a(n)=0: every prime divisor
is then selected. Thus the zero channel vanishes only after multiplication
by the rough source coefficient.

Set B0=(N/4,N/2] x (N/2,W], and
F0={(m,n):L<m<n<=W,(m,n) not in B0}. The source in this note is exactly

    V=2 sum_(F0,n-m>h) a(m)a(n)theta(m,n)G(m,n).

Define U0=2 sum_F0 a(m)a(n)G(m,n), Near0 by the same unmasked sum restricted
to n-m<=h, and Shared0=2 sum_(F0,n-m>h) a(m)a(n)lambda(m,n)G(m,n)/w(n).
Then

    V=U0-Near0-Shared0.                                    (2)

Shared0 is far-only, so no shared-near intersection is subtracted twice.
This is equivalent to the original band exclusion on the strict far inventory.

## Full divisor and finite-difference cost

Put A_j=product_(p<=j)(1+p^(-1/2)). For any positive integer intervals
I=(A,A'], J=(B,B'] with A'<=2A and B'<=2B, the full finite two-dimensional
Abel norm of G on I x J obeys

    ||G||_Abel <= 4 T A_j^2 / sqrt(A B).                    (3)

The norm includes the absolute terminal corner, both terminal-edge
variations, and every rectangular mixed difference. For each bare Gram

    g(qm,rn)=integral_0^T r_(qm)(u) r_(rn)(u) du,

both responses are nonnegative and decreasing in their positive index.
Its mixed difference is the integral of the product of two nonnegative
response differences. Hence its complete norm telescopes to its lower-left
value, at most 4T/sqrt(qrAB). Summing absolute divisor coefficients yields
(3), since sum_(q|Q)q^(-1/2)=A_j. Cutoff crossings are included through the
zero response, without differentiating across births.

For a sequence a with anchored prefixes bounded on I,J by 3A epsilon_I and
3B epsilon_J, exact finite two-dimensional summation by parts gives

    |sum_(I x J) a(m)a(n)G(m,n)|
      <=36 T A_j^2 sqrt(A B) epsilon_I epsilon_J.           (4)

The scale is sqrt(AB), not AB. This is a finite estimate for arbitrary
valid prefix allowances, not an assertion that such allowances are small.
Also log(A_j)<=sum_(n=2)^j n^(-1/2)<=2sqrt(j), so

    A_j^2 <= exp(4sqrt(j)).                                (5)

## Complete dyadic summation and separate corrections

Use only nonempty cells I_r=(x_r,y_r],
x_r=max(L,2^r), y_r=min(W,2^(r+1)), 0<=r<j.
They partition (L,W] with open-left, closed-right endpoints. The first may
be clipped for odd j; the last ends at W. The removed rectangle B0 is
I_(j-2) x I_(j-1).

Let S_rs be the unmasked sum on I_r x I_s and
D_r=sum_(m in I_r) a(m)^2 G(m,m). Symmetry gives exactly

    U0=2 sum_(r<s,(r,s)!=(j-2,j-1)) S_rs
         +sum_r (S_rr-D_r).                               (6)

Thus the same-cell triangle is paid by square minus diagonal, including
clipped cells. Suppose the actual anchored prefixes on I_r are bounded by
3 x_r epsilon_r. Combining (4) and (6) gives

    |U0| <=36 T A_j^2 (sum_r sqrt(x_r)epsilon_r)^2
              +sum_r D_r.                                (7)

An elementary diagonal estimate suffices without invoking a separate
native theorem: |K_P,N(m,u)|<=2A_j/sqrt(m), hence for T>=1,

    sum_r D_r <=4T A_j^2 sum_(1<=m<=N)1/m
                 <=4T(1+T)A_j^2.                         (8)

Likewise |G(m,n)|<=4T A_j^2/sqrt(mn)<=4T A_j^2/m for m<n.
At most h successors of m lie in the near inventory, so

    |Near0|<=8T(1+T) A_j^2 h.                              (9)

For p>L, p^2>N, including nonsquare N. If pr<=N then r<p; p is fresh since
j<=L. Thus a(pr)=-a(r), w(ps)=1+w(s), with no repeated-prime omission.
Reindexing Shared0 over its literal far outside inventory yields

    Shared0=2 sum_(p in F,p>L) sum_(r<s,(pr,ps) in far outside)
                  a(r)a(s)G(pr,ps)/(1+w(s)).              (10)

Using sum_(r<=k)r^(-1/2)<=2sqrt(k), and the unordered triangle bound by
half its full square, gives

    |Shared0|<=16T A_j^2 N sum_(p>L) p^(-2)
                <=16T A_j^2 N/L.                         (11)

The last inequality uses the telescoping integer majorant
1/n^2<=1/(n(n-1)); it needs no prime-counting theorem. No sign is assigned
to this correction, and it is not added a second time elsewhere.

Together, (2) and (7)--(11) prove the complete finite allowance

    |V| <=36T A_j^2 (sum_r sqrt(x_r)epsilon_r)^2
           +4T(1+T)A_j^2 +8T(1+T)A_j^2 h
           +16T A_j^2 N/L.                                (12)

The slightly larger diagonal/near constants here are proved directly above;
they do not rely on the audit reply's sharper cited diagonal constant.

## Quantitative boundary

Since j is logarithmic in N, the last three terms of (12) have sizes
N^o(1), N^(3/4+o(1)), and N^(1/2+o(1)), respectively. The main term requires
an actual bound for the sum of sqrt(x_r) times the prefix allowances.
An imported zero-free-region estimate can give subpower decay there; it
cannot by this finite argument be strengthened to a fixed power saving.
No analytic transfer is asserted as a kernel-verified theorem here.

Remaining bridges: native implementation and checking of the written band
and outside inventory, the finite mask/Abel/dyadic proof, and any desired
analytic prefix estimate at an exact final source revision. There is no
all-scale arithmetic proof, every-positive-rate conclusion, or RH acceptance.
