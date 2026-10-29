# Signed divisor blocks: cutoff errors and integrated variation

Local mathematical attribution: grwtsk contributors.

Finite written proof candidate. Compilation, fresh kernel replay and transitive
axiom audit: **NOT_RUN**. No imported analytic cancellation theorem and no new
native declaration. The result reduces a coefficient-variation cost; it does
not prove a new arithmetic exponent or an RH-facing estimate.

## Exact source and application

Written source: conversation `6ae172dd-a538-83e8-8008-ebad9b4c2295`, assistant
`fb589ffe-8202-497e-826d-2b9db5a94eb5`, rendered-text SHA-256
`0f2e0d11d2088e7d91495d86f9a1d53a7ab8ea7443211260d162d54f811aae8e`.
The full rendered argument was read; its attached file bytes were not fetched.
The finite deductions here were independently reviewed. The near-sector
analytic conclusion in that reply is not imported here.

The consumer is the finite window-square estimate at math commit
`fd2cec77bc679d0c4ab02842cc43a4478aedf094`, source
`documentation/mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/window-square-near-correlations.md`,
blob `f3763e9c3f2f01f66f30b2606c495158607a4baa`. Those bytes were inspected.
Instead of taking absolute values of all selected-divisor coefficients first,
the present result bounds the variation of their actual signed sum.

## Finite product and the two cutoff errors

Let P be a nonempty finite set of distinct primes and Q their product. Write
mu for the ordinary Möbius function. All divisors q below are positive divisors
of Q, so they are squarefree. Define

    A=sum_(q|Q)q^(-1/2)=product_(p in P)(1+p^(-1/2)),
    B=sum_(q|Q)mu(q)q^(-1/2)=product_(p in P)(1-p^(-1/2)),
    R(alpha)=sum_(q|Q)q^(-1/2+alpha), 0<alpha<1/2.

Thus 0<B<A<=R(alpha). For y>0 put

    S(y)=sum_(q|Q,q<=y)mu(q)q^(-1/2),
    C(y)=sum_(q|Q,q<=y)mu(q).

The finite Rankin inequalities are

    |S(y)-B|<=R(alpha)y^(-alpha),
    y^(-1/2)|C(y)|<=R(alpha)y^(-alpha).               (1)

For the first, each omitted q>y satisfies
q^(-1/2)<=q^(-1/2+alpha)y^(-alpha). For the second, each included q<=y
satisfies y^(-1/2)<=y^(-alpha)q^(-1/2+alpha).
If y<1 the second sum is empty and the first inequality remains true.
The missing weighted divisors and the counting term are separate errors.

For x>0 define the actual finite block

    kappa(x,u)=2 sum_(q|Q)mu(q)((qx)^(-1/2)-exp(-u/2))_+.

With y=exp(u)/x, exact expansion gives

    kappa(x,u)=2x^(-1/2)[S(y)-y^(-1/2)C(y)],
    |kappa(x,u)-2B/sqrt x|
       <=4R(alpha)exp(-alpha u)x^(alpha-1/2).         (2)

No positivity of kappa is asserted. At u=log(qx) the individual response
has value zero. For fixed u, kappa is continuous and locally absolutely
continuous in x; away from finitely many birth breakpoints,

    partial_x kappa(x,u)=-x^(-3/2)S(exp(u)/x).         (3)

Integrating (3) across the breakpoints includes all adjacent differences;
there is no value jump to discard.

## Full anchored Abel norm

Assume integers 1<=D<=n0<=n1 and 0<alpha<=1/4. Define

    V=|kappa(n1,u)|
       +sum_(n=n0)^(n1-1)|kappa(n,u)-kappa(n+1,u)|.

This includes the terminal coefficient. If F(t)=sum_(n0<=n<=t)c(n), then
the exact discrete identity is

    sum_(n=n0)^n1 c(n)kappa(n,u)
      =F(n1)kappa(n1,u)
        +sum_(n=n0)^(n1-1)F(n)[kappa(n,u)-kappa(n+1,u)].

In global-prefix form the lower term is -C_global(n0-1)kappa(n0,u).
It has not vanished by a mean-zero assumption.

Set a=n0, b=n1 and v=1/2-alpha>=1/4. By (1)--(3),

    V<=2B/sqrt b+4R(alpha)exp(-alpha u)b^(-v)
          +integral_a^b x^(-3/2)[B+R(alpha)exp(-alpha u)x^alpha]dx.

The B terms sum to exactly 2B/sqrt a. The remaining coefficient is

    4b^(-v)+(a^(-v)-b^(-v))/v
      =(1/v)a^(-v)+(4-1/v)b^(-v)<=4a^(-v),

because 0<=4-1/v and b>=a. Since a>=D, this proves

    V<=2D^(-1/2)[B+2R(alpha)exp(-alpha(u-log D))].     (4)

Independently, apply the triangle inequality to each individual nonnegative
decreasing response before summing its telescoping variation. Define

    A(y)=sum_(q|Q,q<=floor y)q^(-1/2), A(y)=0 if y<1.

This proves V<=2D^(-1/2)A(exp(u)/D). Consequently, with

    omega(v)=min(A(exp v), B+2R(alpha)exp(-alpha v)) for v>=0,
    omega(v)=0 for v<0,

one has the cutoff-respecting bound

    V<=2D^(-1/2)omega(u-log D).                       (5)

For u<log D all responses on the interval are zero. Both (4) and (5)
retain every selected divisor, terminal coefficient and birth crossing.

## Explicit transient and nonzero plateau

Write R=R(alpha) and

    t_star=alpha^(-1)log(2R/(A-B))>0.

Nonemptiness of P ensures A>B, so this expression is defined. Let V0>=0.
For V0>t_star,
direct integration of the two branches gives

    integral_0^V0 min(A,B+2R exp(-alpha v))^2 dv
      =A^2 t_star+B^2(V0-t_star)
        +(4BR/alpha)(exp(-alpha t_star)-exp(-alpha V0))
        +(2R^2/alpha)(exp(-2alpha t_star)-exp(-2alpha V0)).       (6)

For V0<=t_star the integral is A^2 V0. Substituting
exp(-alpha t_star)=(A-B)/(2R), and using for z=B/A in (0,1)

    2z(1-z)+(1-z)^2/2=1/2+z-3z^2/2<=2/3,

proves in both cases

    integral_0^V0 omega(v)^2 dv
       <=B^2 V0+A^2(t_star+2/(3alpha)).               (7)

The plateau B^2 V0 is kept. It cannot be omitted on the ground that B is
positive or that its product factors are less than one.

## Frozen window consumer and growing-stage cost

For the actual schedule P={p prime:p<=j}, j>=32, use N=2^j, T=log N,
h=2^floor(3j/4), Z=4h and the original terminal W. At positive integer m and
0<=u<=T, kappa(m,u) equals the original K_N(m,u): terms with qm>N
already have zero response, and equality qm=N has zero birth at T.

Use the actual window maximum S_H(t), support (Z,W], and dyadic start boxes
D=2h,4h,...,N/2 from the pinned window-square note. With

    G_tilde(D)=integral_0^T omega(u-log D)^2du,
    W_tilde=sum_D G_tilde(D),
    U_tilde_H=sum_D G_tilde(D)Delta_(H,D),

applying the COMPLETE signed-block norm (5) to the clipped core interval
gives E_H<=4H^2 U_tilde_H. The original interval still ends at
min(t+H,W,floor(exp u/q),floor(N/q)) for each divisor q before assembly.
The same pointwise bound pays the actual diagonal and each shifted pair,
so the exact covariance/extra-strip identity yields

    |Near_(>Z)|<=8h sqrt(U_tilde_h U_tilde_ell)
                 +4ell U_tilde_ell+(4+8ell)W_tilde.   (8)

No new arithmetic estimate for Delta is assumed or proved here. This replaces
the coefficient cost in the prior finite inequality; it does not discard the
covariance or introduce a new physical gap.

There are at most j start boxes, so (7) gives the completely explicit bound

    W_tilde<=B^2 jT+j A^2(t_star+2/(3alpha)).          (9)

For clarity an elementary growing-stage bound needing no prime-counting
theorem is also available. Choose alpha=1/sqrt j for j>=16. Since
log(j)/sqrt j<=1, p^s<=e for p<=j and 0<=s<=alpha. Comparison with integers
gives sum_(p<=j)(log p)/sqrt p<=2sqrt j log j. Therefore

    log(R(alpha)/A)
       =integral_0^alpha sum_(p<=j)
          (log p)p^(-1/2+s)/(1+p^(-1/2+s)) ds
       <=2e log j.

The prime 2 factor gives B/A<1/3, whence

    t_star+2/(3alpha)
       <=sqrt j(2e log j+log 3+2/3),
    W_tilde<=B^2 jT
       +A^2 j^(3/2)(2e log j+log 3+2/3).             (10)

This weaker elementary version deliberately preserves the plateau rather
than importing a prime-counting or asymptotic product estimate. The exact
finite products and transient formula (6)--(9) allow stronger independently
proved prime estimates to be inserted with their own hypotheses.

The change is specific to the actual signed block variation, in contrast to
the older positive amplitude cost sum_D integral A(exp(u)/D)^2du. It does
not bound individual shifted Möbius correlations, their absolute sum, or the
remaining low/crossing near sectors. Those sectors, top-mask correction,
far-only shared correction and terminal/low-core cross terms remain as in
the original source. No Matomäki--Radziwiłł, Lee--Leong or external 7/8
nonvanishing theorem is an input to (1)--(10). Their analytic refinements
and the full all-positive-rate arithmetic bound remain separate obligations.
