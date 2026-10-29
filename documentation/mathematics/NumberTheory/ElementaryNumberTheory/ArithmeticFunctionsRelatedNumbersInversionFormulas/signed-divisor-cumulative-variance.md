# Finite cumulative divisor variance and causal Abel bounds

Local mathematical attribution: grwtsk contributors.

Finite written proof candidate. Compilation, fresh kernel replay and transitive
axiom audit: **NOT_RUN**. No imported analytic theorem or new native declaration.
This is a quantitative estimate for the actual signed block coefficients,
not a complete arithmetic cancellation or RH result.

Written source: conversation `6ae172dd-a538-83e8-8008-ebad9b4c2295`, assistant
`e7bf7115-b19f-4e33-a6ab-15895a968262`, rendered-text SHA-256
`4c3b1f023a90d9f7072dc3904ae0887eb96657538ff13c9bc72c015ff0820e94`.
The full rendered argument was read; attachment bytes were not fetched.
The finite proofs below were independently reviewed. The reply's analytic
near-sector estimate is not imported.

Use the actual finite block and response in
`signed-divisor-block-variation.md`, pinned at math commit
`f4a45b5e2d5475d3c32997dd4cc2ca50cce7cf2d`, blob
`bd2e418aab46d7dd388f8d52d744971a999dc84a`; those bytes were inspected.
The window-square consumer is pinned in that source. Historical source pins
are not current-source elaboration or kernel receipts.

## A general finite signed cumulative estimate

Let a finite nonempty index set carry locations x_i>=0 and real weights w_i.
Assume A=sum_i |w_i|>0 and B=sum_i w_i>=0. Put

    F(v)=A^(-1)sum_(x_i<=v)|w_i|,
    S(v)=sum_(x_i<=v)w_i,
    tau=A^(-1)sum_i |w_i|x_i,
    d=A^(-1)sum_i |w_i||x_i-tau|,
    sigma^2=A^(-1)sum_i |w_i|(x_i-tau)^2.

Let sigma be the nonnegative square root of sigma^2. Set F=S=0 on v<0.
This is a finite weighted inventory, with no independence
or random-sign premise. Since tau is its exact mean, finite integration gives

    integral_0^tau F(v)dv
      =A^(-1)sum_i |w_i|(tau-x_i)_+
      =d/2
      =A^(-1)sum_i |w_i|(x_i-tau)_+
      =integral_tau^infinity (1-F(v))dv.              (1)

For v<tau use |S(v)|<=A F(v). For v>=tau FIRST use the complementary
signed sum S(v)=B-sum_(x_i>v)w_i, so |S(v)|<=B+A(1-F(v)).
The B term is the actual signed total, not zero by assumption. Retaining
its cross term, and using F^2<=F and (1-F)^2<=1-F, proves for EVERY V>=0

    integral_0^V |S(v)|^2dv
      <=B^2[V-tau]_+ +(A^2+AB)d
      <=B^2[V-tau]_+ +(A^2+AB)sigma.                 (2)

Indeed the pre-mean cost is at most A^2 d/2 and the post-mean excess above
the plateau is at most (A^2+2AB)d/2. For V<tau one merely enlarges the
pre-mean interval. The last inequality is finite Cauchy--Schwarz. The
stronger d version in (2) is useful when it can be evaluated directly.

## Exact divisor moments

Let P be a nonempty finite set of distinct primes, Q their product, and use
i=q|Q, x_q=log q, w_q=mu(q)/sqrt q. Then

    A=product_(p in P)(1+p^(-1/2)),
    B=product_(p in P)(1-p^(-1/2))>0,
    S(v)=sum_(q|Q,log q<=v)mu(q)/sqrt q.

The product is finite and all divisor pairs, including shared primes and
the diagonal q=r, remain. Twice differentiating the logarithm of

    sum_(q|Q)q^(-1/2+z)=product_(p in P)(1+p^(-1/2+z))

at z=0 proves the exact formulas

    tau=sum_(p in P)(log p)/(sqrt p+1),
    sigma^2=sum_(p in P) sqrt p (log p)^2/(sqrt p+1)^2. (3)

This concerns the displayed finite divisor weights, not a probability model
for primes or for the original core Möbius correlations. For example, with
P={p prime:p<=j}, integer comparison alone gives

    sigma^2<=2sqrt j (log j)^2,
    sigma<=sqrt 2 j^(1/4)log j.                      (4)

To see this, bound sqrt p/(sqrt p+1)^2<=p^(-1/2), log p<=log j,
and sum_(p<=j)p^(-1/2)<=sum_(n=1)^j n^(-1/2)<=2sqrt j.
No asymptotic prime theorem or numerical prime check is used in (4).

## Causal convolution retains the full coefficient norm

Define k(t)=(1/2)exp(-t/2) for t>=0 and k(t)=0 otherwise. Its integral
is one. For x>0 the actual finite real-index block is

    kappa(x,u)=2sum_(q|Q)mu(q)((qx)^(-1/2)-exp(-u/2))_+.

Finite exchange, with v=u-log x, yields

    kappa(x,u)=2x^(-1/2)(k*S)(v),
    partial_x kappa(x,u)=-x^(-3/2)S(u-log x) a.e.     (5)

The first formula retains both response terms: each convolution term is
w_q(1-exp(-(v-log q)/2))1_(log q<=v). It is zero at birth. The block is
continuous across the finitely many birth breakpoints, so integrating its
derivative includes every finite difference crossing one of them.

Put Omega=k*|S|, zero below zero. For integers 1<=D<=n0<=n1 the complete
anchored Abel coefficient norm is

    Vnorm=|kappa(n1,u)|
       +sum_(n=n0)^(n1-1)|kappa(n,u)-kappa(n+1,u)|.

Write v=u-log D, a=log(n0/D)>=0, b=log(n1/D). From (5), the endpoint
cost is at most D^(-1/2)integral_b^infinity exp(-t/2)|S(v-t)|dt.
All differences cost at most the SAME integrand over [a,b]. Therefore

    Vnorm<=D^(-1/2)integral_a^infinity exp(-t/2)|S(v-t)|dt
          <=2D^(-1/2)Omega(u-log D).                 (6)

The upper coefficient and lower anchored prefix are both retained in Abel
summation. No positivity or monotonicity of the signed block is assumed.
Independently, Omega(v)<=sum_(q|Q,log q<=v)q^(-1/2), so the original
cutoff-only amplitude bound remains available.

For V>=0, Jensen with the unit-mass causal kernel and finite-horizon Fubini
gives

    integral_0^V Omega(v)^2dv
      <=integral_0^V |S(t)|^2(1-exp(-(V-t)/2))dt
      <=integral_0^V |S(t)|^2dt.                     (7)

The inner integrated kernel is exactly 1-exp(-(V-t)/2). Since S(v) tends
to the nonzero B, (7) is not an assertion of integrability over an infinite
horizon. The complete finite signed pair integral is

    integral_0^V |S(v)|^2dv
      =sum_(q,r|Q)mu(q)mu(r)[V-log max(q,r)]_+/sqrt(qr). (8)

## Exact scheduled time cutoffs and use in the window identity

For j>=32 freeze P={p prime:p<=j}, N=2^j, T=log N, h=2^floor(3j/4),
Z=4h and the original terminal W. At positive integer m and 0<=u<=T,
kappa(m,u)=K_N(m,u): terms with qm>N already have zero response and
the terminal birth qm=N has zero value at T.

For dyadic start boxes D=2h,4h,...,N/2 put

    Gcirc(D)=integral_0^T Omega(u-log D)^2du,
    Wcirc=sum_D Gcirc(D),
    Ucirc_H=sum_D Gcirc(D)Delta_(H,D).

Fix an integer 1<=ell<=h and use H in {h,ell}. The finite actual
maximal-window quantities Delta_(H,D) are those in the
pinned window-square note. They are not presumed small. Equation (6) applies
after assembling the original signed divisors on the clipped core window;
all births and both spatial endpoints are still present. It proves

    E_H<=4H^2 Ucirc_H,
    |Near_(>Z)|<=8h sqrt(Ucirc_h Ucirc_ell)
                 +4ell Ucirc_ell+(4+8ell)Wcirc.       (9)

The same pointwise bound prices the original diagonal and whole introduced
extra-shift strip. Its actual long/short covariance is retained before
Cauchy--Schwarz. The physical gap is h, including d=h; ell does not replace it.

There are exactly n_j=j-floor(3j/4)-1 boxes and their positive time lengths
are log 2,2log 2,...,n_j log 2. Equations (2) and (7) prove the explicit
growing-stage inequality

    Wcirc<=n_j(A^2+AB)d+B^2 sum_(r=1)^n_j [r log 2-tau]_+
          <=n_j(A^2+AB)sigma+B^2 sum_(r=1)^n_j [r log 2-tau]_+. (10)

With m=min(n_j,floor(tau/log 2)), the last sum is exactly

    (log 2)[n_j(n_j+1)-m(m+1)]/2-(n_j-m)tau.         (11)

This retains the signed-product plateau and all individual horizons.
For an elementary coarser bound, (4), n_j<=j and B<=A give

    Wcirc<=2sqrt 2 A^2 j^(5/4)log j+B^2 jT.          (12)

The plateau in (10)--(12) must not be silently omitted. Stronger prime-product
or analytic arithmetic bounds require separately proved inputs with exact
hypotheses. These finite estimates control coefficient costs; they do not
make Delta small, establish a signed core-correlation estimate, or bound the
complete source. Low and crossing sectors, terminal/low-core covariances,
the excluded top rectangle and far-only shared-prime correction retain their
original allocations. No Matomäki--Radziwiłł, Lee--Leong or external 7/8
nonvanishing theorem is imported. Native implementation and the all-positive-
rate arithmetic witness remain missing.
