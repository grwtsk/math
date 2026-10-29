# Outside-band endpoint boundary and terminal response tail

Local mathematical attribution: grwtsk contributors.

Finite written mathematical deduction, not a new Lean declaration. Compilation,
fresh kernel replay and transitive axiom audit: **NOT_RUN**. No analytic theorem
is imported. The norm allowances used at the end are explicit premises. The
identity does not establish an all-scale arithmetic estimate or RH.

## Source identities and frozen inventory

Use the exact response, rough coefficient, frozen block and outside inventory
in [outside-band-mask-and-dyadic-abel.md](outside-band-mask-and-dyadic-abel.md),
source commit `106bcfb3946dae0cae4523100ac7777e66823cc9`, blob
`e1e2b72b7a33506cd4fbd1dbfdd5d82f98ab349f`. Its source definitions were
re-inspected at historical commit `3c07c255edbb38ea4afb99f8e42ed60b9f54049c`:
`GRWTSK/NumberTheory/Moebius/MertensPrimitive.lean`, blob
`45e06c371d67bcf8c939d20a95fcbc63570546fa`,
`GRWTSK.RiemannHypothesis.CCC.pickupResponse`; and
`GRWTSK/NumberTheory/Moebius/PickupPrimeBlockSource.lean`, blob
`8e5060c9697daebb307aae49ed740b869d6e8e13`, declarations
`GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource.rough`, `block`,
and `original_eq_rough_blocks`. Historical pins do not assert current path
identity, native checking or kernel acceptance for this note.

Written derivation source: conversation `6ae172dd-a538-83e8-8008-ebad9b4c2295`,
assistant message `738a80b8-175d-44d1-8c8b-1ae3c9e17838`, rendered-text
SHA-256 `50112fb90f5d68236141411b7a74bee135766217a471c8075e371868dd7079f5`.
The finite derivation below is separate from that reply's analytic corollary.

Fix j>=32, N=2^j, T=log N, L=floor(sqrt N), A=N/4, B=N/2,
b=min(floor(N/2),2^floor(15j/16)), W=N-b. Thus L<A<B<W and W>=3N/4.
Let Q be the product of primes <=j, a(m)=mu(m)1_(gcd(m,Q)=1),
M(x)=sum_(m<=x)a(m), and

    r_m(u)=2(m^(-1/2)-exp(-u/2))1_(log m<=u),
    K(m,u)=sum_(q|Q)mu(q)1_(qm<=N)r_(qm)(u).

All indices are positive; r and the rough pickup below are zero at negative
times. Every norm and inner product is real L2 on the original interval [0,T].

## Exact endpoint fields, including every delay

Put R(v)=sum_(m<=exp(v))a(m)r_m(v). For an integer 1<=x<=N,

    sum_(m<=x)a(m)r_m(v)=R(min(v,log x))+M(x)r_x(v).         (1)

If v<=log x, later responses vanish and the second term is zero. If
v>=log x, subtract the values at log x; every active response changes by
2(x^(-1/2)-exp(-v/2)), proving (1). The formulas agree at the zero birth.

Define

    C_x(u)=sum_(m<=x)a(m)K(m,u),
    P_x(u)=sum_(q|Q)mu(q)q^(-1/2)R(min(u-log q,log x)),
    E_x(u)=M(x)K(x,u).

The scaling identity r_(qm)(u)=q^(-1/2)r_m(u-log q) and finite exchange
prove, on 0<=u<=T,

    C_x=P_x+E_x.                                          (2)

The frozen indicator may be omitted in this exchange only because qm>N
forces zero response on this horizon. The sum defining P_x must NOT be
truncated at q<=N/x: even when qx>N, smaller m<x may already be born.
The endpoint term E_x retains its original frozen support.
The complete finite rough/block regrouping gives C_N=F, the original
Möbius waveform. This equality does not extend to interval restrictions by
cancelling their endpoints.

## Internal endpoints cancel in the complete square

The clipped dyadic interval fields are C_upper-C_lower. Their sum is exactly
C_W-C_L. Put D=sum_(L<m<=W)a(m)^2||K(m)||^2. The excluded top rectangle
is (A,B] x (B,W]. Expanding the complete square, retaining both cross
orientations and subtracting the actual same-cell diagonal, gives exactly

    U0=||C_W-C_L||^2-2<C_B-C_A,C_W-C_B>-D.                 (3)

Thus internal dyadic endpoints cancel algebraically before absolute values;
L,W and the two boundaries A,B of the removed rectangle remain.
The original retained-divisor mask then gives

    V=U0-Near0-Shared0,                                    (4)

where Shared0 is far-only, exactly as in the source note. No rectangle is
restored to V, and no shared-near contribution is subtracted twice.

## Terminal W contribution is a complete short tail

Since W>N/2, every m>W has only the q=1 block response active on [0,T]. Thus

    tau(u)=F(u)-C_W(u)=sum_(W<m<=floor(exp u))a(m)r_m(u).    (5)

It vanishes below log W. For x=exp u in [W,N],
r_m(u)=integral_m^x t^(-3/2)dt<=(x-m)/W^(3/2).
For integer W and real x>=W, summing the arithmetic progression gives
sum_(W<m<=x)(x-m)<=(x-W)^2/2. Hence

    |tau(u)|<=(exp u-W)^2/(2W^(3/2)),
    ||tau||^2<=integral_W^N (x-W)^4/(4W^3 x)dx
              <=b^5/(20W^4).                             (6)

This estimate prices the combined terminal source; its separate endpoint
pieces are not charged again. Since b<=N^(15/16), ||tau||=O(N^(11/32)).
Also, with A_j=product_(p<=j)(1+p^(-1/2)),
|K(m,u)|<=2A_j/sqrt(m), so

    ||C_L||<=4A_j sqrt(TL).                               (7)

Both are finite direct bounds, independent of analytic prefix estimates.

## Surviving top boundary polynomial

On [0,T], the endpoint blocks simplify exactly to

    K(B)=r_B, K(A)=r_A-r_B-r_(3A).                         (8)

At B the q=2 term is r_N=0 on the full horizon. At A only selected
squarefree divisors 1,2,3 contribute; q=4 is not squarefree and q>=5 is
beyond N. This does not truncate P_A or P_B.

For 0<t<=1 set rho_t(x)=(x^(-1/2)-t^(-1/2))_+,
v_A(t)=rho_t(1/4)-rho_t(1/2)-rho_t(3/4),
v_B(t)=rho_t(1/2), and

    k_AA=4 integral_(1/4)^1 v_A(t)^2 dt/t,
    k_BB=4 integral_(1/2)^1 v_B(t)^2 dt/t,
    k_AB=4 integral_(1/2)^1 v_A(t)v_B(t) dt/t.

The substitution u=T+log t proves
||K(A)||^2=k_AA/N, ||K(B)||^2=k_BB/N and <K(A),K(B)>=k_AB/N.
Direct integration yields k_BB=8(log 2-7/2+2sqrt(2))>0; positivity also
follows from its nonzero square integrand. On [1/2,1],
v_A=2-sqrt(2)-(2/sqrt(3)-t^(-1/2))_+ has strictly positive minimum
3-sqrt(2)-2/sqrt(3). Thus k_AB>0.
Define the exact finite boundary value

    Bpartial=(2/N)[k_BB M(B)^2-k_AB M(A)M(B)].              (9)

It equals 2||E_B||^2-2<E_A,E_B>. The polynomial's coefficient of M(B)^2
is nonzero, so endpoint algebra alone does not annihilate it. This is NOT
a lower bound or a sign claim for its value on actual Möbius prefixes.

## All remaining signed terms and a finite error allowance

Set P=P_B-P_A, E=E_B-E_A, H=F-P_B, J=C_L+tau. Substitute C_W=F-tau
and (2) in (3). Expanding products, with no estimate or orthogonality, gives

    U0=Bpartial+S+Mmix+Ttail-D,
    S=||F||^2-2<P,H>,
    Mmix=-2<E,H>+2<P,E_B>,
    Ttail=-2<F,J>+||J||^2+2<P+E,tau>.                      (10)

Together with (4), this retains every endpoint and terminal cross term.
For any valid nonnegative norm allowances
||F||<=f, ||P_x||<=p_x, ||E_x||<=e_x for x=A,B,
let p=p_A+p_B, e=e_A+e_B, r=f+p_B,
ell=4A_j sqrt(TL), t=b^(5/2)/(sqrt(20)W^2).
Cauchy--Schwarz applied only after (10) proves

    |V-Bpartial|<=f^2+2pr+2er+2p e_B+2(p+e)t
                  +2f(ell+t)+(ell+t)^2
                  +4T(1+T)A_j^2+8T(1+T)A_j^2 h
                  +16T A_j^2 N/L.                        (11)

The last three allowances are the independently proved diagonal, near and
far-only shared bounds of the pinned source note. They are not additional
endpoint credits. The exact choices e_A=|M(A)|sqrt(k_AA/N) and
e_B=|M(B)|sqrt(k_BB/N) are available; a stronger estimate for those actual
sharp prefixes is not supplied by whole-waveform energy positivity.

No analytic rate for f,p_x or M(A),M(B) is imported here. Native source
implementation/checking, any claimed analytic norm suppliers, their growing
stage and cutoff costs, and the required all-positive-rate signed arithmetic
bound remain separate missing bridges. Restoring the excluded rectangle
would change the mathematical source rather than prove a stronger bound for V.
