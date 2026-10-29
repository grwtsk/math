# Retained far-core reconstruction error

Local mathematical attribution: grwtsk contributors.

Finite written proof candidate. Compilation, fresh kernel replay and transitive
axiom audit: **NOT_RUN**. No imported analytic theorem or new native declaration.
The power bound below concerns reconstruction error, not an upper cancellation
bound for the original source or an RH proof.

## Exact source and distinct observation

Use the parameters, response, rough coefficient a, block K, Gram G, endpoint
fields C_x, original waveform F, and tail tau from
[outside-endpoint-boundary.md](outside-endpoint-boundary.md), pinned source
commit `ce1dc2ca7276e4454008ceb576eda97655071db4`, blob
`8c8e4b1cf4cd68a065b142cdc06a65785693e2cb`. The underlying response/block
and outside-mask pins are preserved there. Those bytes and the finite mask
accounting in `outside-band-mask-and-dyadic-abel.md` were inspected; historical
native source pins do not certify current-main elaboration.

Written derivation: conversation `6ae172dd-a538-83e8-8008-ebad9b4c2295`,
assistant `a12a9998-8d2f-42d5-bef3-8ef4fa1102c6`, rendered-text SHA-256
`e9675cf512841ceb222bb58c65bf735b0b77c798f0a8b0e653692d864a08935b`.
This note proves the finite comparison independently of that reply's analytic
rate transfer.

For j>=32 set N=2^j, T=log N, L=floor(sqrt N), h=2^floor(3j/4),
b=min(floor(N/2),2^floor(15j/16)), W=N-b, A=N/4, B=N/2.
Write A_j=product_(p<=j)(1+p^(-1/2)) and H(T)=integral_0^T F(u)^2 du.
Let theta(m,n) be the original retained fraction, including its zero-divisor
channel and far shared-prime exclusion. Define the NEW full retained far-core
observation

    Rfar=2 sum_(L<m<n<=W,n-m>h) a(m)a(n)theta(m,n)G(m,n).

The original outside-band V additionally excludes (A,B] x (B,W]. Hence
Rfar=V+Tband, where Tband is exactly that rectangle with the same far gap and
retained fraction. This changes the observation; no improvement for V alone
can be inferred by discarding Tband.

## Complete finite identity

Let D=sum_(L<m<=W)a(m)^2G(m,m). Let Near be the unmasked sum over ALL
L<m<n<=W with n-m<=h, and Shared the original shared correction over ALL
such pairs with n-m>h. The former is unmasked and the latter far-only.
The zero channel vanishes after multiplication by a(n) on 1<n<=N.
The complete square-minus-diagonal and exact mask partition give

    Rfar=||C_W-C_L||^2-D-Near-Shared.                       (1)

The top and outside correction inventories are disjoint; no shared-near or
gcd stratum is counted a second time. Since C_W=F-tau, expansion yields

    Rfar-H(T)=-2<F,C_L>-2<F,tau>+||C_L||^2
                +2<C_L,tau>+||tau||^2-D-Near-Shared.       (2)

This contains every cross term with its sign, before absolute values.
Adding the excluded rectangle cancels its endpoint polynomial by (1); it
does not establish a new relation between the actual sharp prefixes at A,B.

## Retain the terminal time support

The elementary bounds are |F(u)|<=4exp(u/2), |C_L(u)|<=4A_j sqrt L.
The tail vanishes below log W and obeys, for x=exp u in [W,N],

    |tau(u)|<=(x-W)^2/(2W^(3/2)).

Using du=dx/x on its actual support gives

    integral_0^T |tau| <= b^3/(6W^(5/2)),
    ||tau||^2 <= b^5/(20W^4),
    2|<F,tau>| <= (4/W^(3/2))integral_W^N (x-W)^2/sqrt x dx
                  <=4b^3/(3W^2),
    2|<C_L,tau>| <=4A_j sqrt L b^3/(3W^(5/2)).            (3)

The last-birth zeros and literal integer tail were proved in the endpoint
note. No separate sharp W endpoint allowance is added again.
The complete low core gives

    2|<F,C_L>|<=64A_j sqrt L (sqrt N-1),
    ||C_L||^2<=16A_j^2 T L.                               (4)

For the full core, the same direct bounds used for the outside inventory give

    D<=4T(1+T)A_j^2,
    |Near|<=8T(1+T)A_j^2h,
    |Shared|<=16T A_j^2N/L.                               (5)

For completeness, the last bound uses the exact reindexing m=pr,n=ps with
fresh p>L, then p^2>N, r,s<p, a(pr)a(ps)=a(r)a(s) and w(ps)=1+w(s).
Retain the restrictions L<pr<ps<=W and p(s-r)>h before enlarging the
positive cost. Since |G(pr,ps)|<=4T A_j^2/(p sqrt(rs)),
sum_(r<s<=N/p)(rs)^(-1/2)<=2N/p and
sum_(p>L)p^(-2)<=1/L prove (5). No prime-counting input is used.

Thus for every j>=32, (2)--(5) prove |Rfar-H(T)|<=E_j, with

    E_j=64A_j sqrt L (sqrt N-1)+4b^3/(3W^2)+16A_j^2 T L
        +4A_j sqrt L b^3/(3W^(5/2))+b^5/(20W^4)
        +4T(1+T)A_j^2+8T(1+T)A_j^2h+16T A_j^2N/L.        (6)

No Möbius cancellation theorem has been used in this finite error.

## Explicit stage and fixed-power error

For j>=2^16, sqrt j>=256, so
4sqrt j<=j/64<=T/32, using log 2>=1/2.
Also T>=2^15 and
log[T(1+T)]<=1+2sqrt T<=T/32.
The latter inequality holds at T=2^15 and its right-minus-left side is
increasing thereafter. Consequently

    A_j^2 T(1+T)<=N^(1/16), A_j<=N^(1/32).                (7)

Here log A_j^2<=4sqrt j follows directly by comparison with the integer
sum of n^(-1/2). Use W>=3N/4, sqrt N/2<=L<=sqrt N,
b<=N^(15/16), h<=N^(3/4). The eight terms of (6), in order, are at most

    64N^(25/32), 3N^(13/16), 16N^(9/16), 3N^(19/32),
    N^(11/16), 4N^(1/16), 8N^(13/16), 32N^(9/16).

The constants sum to 131, and each exponent is <=13/16. Therefore

    |Rfar-H(log N)|<=131N^(13/16), j>=2^16.               (8)

In particular Rfar>=-131N^(13/16), because H>=0. This is a lower bound,
not the desired upper cancellation estimate. An independently proved bound
for H or Rfar can be transported using (8) only after retaining this error.
At arbitrarily small positive growth rates the error itself still needs
stronger treatment. The finite comparison establishes neither a fixed-power
upper bound for H/Rfar nor a stronger bound for V separately. Native
implementation, exact-source checking and the all-positive-rate signed
arithmetic witness remain missing.
