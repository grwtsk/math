# Residual-certified arithmetic low-Schur enclosures and even endpoint cancellation

Local attribution: grwtsk contributors.
Research date: 2026-11-04 (America/Los_Angeles).
Original mathematical exposition and manually authored Lean candidates: repository MIT license.
AI-assisted analysis and source drafting; independent analytical review NOT_RUN.

## 0. Result, exact consumer, and limits

The target is the canonical FULL pole-inclusive Weil operator A_T of
Connes--Consani--Moscovici (CCM), *Zeta Spectral Triples*, arXiv:2511.22755v1,
(3.19)--(3.20), on L2([-T,T],dt), T>0. Zero extension, the minus-sign
multiplicative Fourier transform, and antilinear-first inner products are retained.
This increment proves an explicit finite-matrix enclosure of its EXACT low
Schur operator. The enclosure uses a residual of a finite high-block solve,
retains every intermediate row, and bounds the entire infinite residual tail.
It does not replace the operator by its compression.

There is also a source-specific improvement: for an even trigonometric polynomial
whose endpoint value is zero, the leading 1/m coefficients cancel in BOTH the
prime mixed block and the boundary-image mixed block. The remaining full
arithmetic tail has a stated L^(-3) squared-norm bound, including the pole.
Endpoint evaluation is used ONLY on finite polynomials. No new boundary
condition is imposed on the logarithmic form or operator domain.

These are estimates for the low-Schur approximation error, not lower signs of
the low-Schur matrix itself. We do NOT prove the requested cofinal odd positivity
and one-negative-direction even inertia, nor normalized convergence of genuine
ground states, RH, or Dirichlet GRH. In particular no positive compression is
silently used as a positive Schur complement. The first unsupported implication
would be to declare the finite lower enclosures in Section 6 to have the
required signs on an unbounded sequence. No such declaration is made.

The finite-prolate trace repair and scalar remain distinct from the hard-cutoff
Hermite family. Section 8 prices the reconstruction error and identifies the
still-unpaid finite-prolate/low-vector comparison. No old hard-cutoff obstruction
is re-proved or used as a premise of this increment.

## 1. Consumed source audit and fixed notation

Refreshed grwtsk/math/main: 454b9dfe9707100d702da9e9adc65c4b0f64e5c0,
complete root tree 23dc19077abbafff75a148b5748e7852c12f37f7.
The periodic note was read at blob 704c9ad46d3a27b9485f51d53fc0b67d48fec7b0;
its companion source is 8fa582f051bf2869f258085fd156f51105f0aebd.
Issue #1675 remains an uncompleted independent verification request. Its historical
NOT_RUN statuses are not changed by this same-session analytical source audit.

Write e_n=(2T)^(-1/2) exp(i*pi*n*t/T), omega_n=pi*n/T, P_N=Pi_N,
R_N=I-P_N. To avoid confusing support length with a frequency cutoff, below
M and L are integers, and the interval length is always written 2T.
Use the periodic note's exact comparison

    A_T = D_T + V_T,
    D_T e_n = d_n e_n,  d_n=c_inf+m(omega_n),
    V_T=G_T-P_T^arith+L_T^pole,
    alpha_j=2j+1/2,
    m(xi)=2 sum_{j>=0} xi^2/[alpha_j*(alpha_j^2+xi^2)],
    G_T(t,s)=sum_{k!=0} kappa(|s-t+2kT|),
    kappa(r)=exp(-r/2)/(1-exp(-2r)),
    P_T^arith=sum_{2<=q<exp(2T)} a_q(S_log(q)+S_log(q)^*),
    a_q=Lambda(q)/sqrt(q),
    L_T^pole=2|cosh(. /2)><cosh(. /2)|-2|sinh(. /2)><sinh(. /2)|.

Here c_inf=digamma(1/4)-log(pi). The constants used below are

    K=2 sum_{2<=q<exp(2T)} a_q,
    C_bd=pi+2+4 exp(-T)/(1-exp(-4T)),
    Bcal=C_bd+K+2(T+sinh T),             ||V_T||<=Bcal.

The audited domain return is Dom(A_T)=Dom(D_T), with Fourier weight
1+|d_n|^2; the form domain has weight 1+m(omega_n). To check this return,
expand both zero-extension and periodic translation energies with a common
r>=epsilon cutoff. Their diagonal parts agree and their difference is exactly
the exterior-image kernel. The two nearest images have a Carleman majorant
1/[2(2T-x+y)]+1/[2(2T+x-y)] with norm at most pi. Their exponential
remainders have row/column integrals at most 2; the distant images have
row/column integrals at most 4 exp(-T)/(1-exp(-4T)). Dominated strong convergence
of these image operators proves equality of the maximal finite-energy domains,
not merely agreement on a preselected test core. Bounded perturbation then
identifies the operators. Diagonal Fourier truncations are graph dense, and the
two inequalities ||A f||<=||D f||+Bcal||f|| and its reverse transfer that core.
These are the specific arguments consumed, not a general assertion that form
cores are operator cores. Reflection and complex conjugation preserve all parts.

The exact source coefficients needed below are obtained by integrating the
zero-extended shifts on [-T,T-log(q)], and by summing the exponential images:

    P_mn=(-1)^(m+n) [p_m-p_n]/[pi*(n-m)], m!=n,
    P_nn=2 sum_q a_q(1-log(q)/(2T))*cos(omega_n*log(q)),
    p_n=sum_q a_q*sin(omega_n*log(q)),
    G_mn=(1/T)(-1)^(m+n) sum_{j>=0}
      (1-exp(-2alpha_j T))*(alpha_j^2-omega_m*omega_n)
        /[(alpha_j^2+omega_m^2)(alpha_j^2+omega_n^2)].             (1.1)

Every q is in the literal support cutoff. At log(q)=2T the correlation is zero
because its overlap has measure zero. The boundary numerator and its factor
can also be checked from the separate cosh and sinh moments, retaining their
opposite signs. The diagonal comparison D has no mixed Fourier block.

For sigma in {+,-}, reuse the actual high floors c_sigma(T,N) and adjacent
mixed allowance b_sigma^adj(T,N) of the periodic note, (5.1) and (6.8).
For J<L write b_sigma(T,J,L) for its buffered allowance (6.7), including
prime, boundary AND pole contributions. Their full formulas are

    c_+=d_(N+1)-K,
    c_-=c_+-C_bd-8T*sinh(T/2)^2/(pi^2*N),
    b_sigma^adj=C_bd+K+b_pole,sigma(T,N),
    b_sigma(T,J,L)=K/pi*sqrt(2(2J+1)/(L-J))
                  +min(C_bd,b_G(T,J,L))+b_pole,sigma(T,L),
    b_G^2=2(2J+1)/(pi^2*L)*(B^2+B+1/2),
    B=2+(1/2)log(1+4pi/T)+(1/2)log L,
    b_pole,+=2 sqrt((T+sinh T)*T^3*sinh(T/2)^2/(3pi^4*L^3)),
    b_pole,-=2 sqrt((sinh T-T)*4T*sinh(T/2)^2/(pi^2*L)).       (1.2)

These are whole-tail bounds. Their derivation uses |p_n|<=K/2, the summable
1/(m-n)^2 prime majorant, the boundary mode-Gram identity and logarithmic
summand bound, and the explicit sine/cosine pole coefficients. No minimum
low-mode spacing is used. This audit accepts the consumed analytic derivations
at their stated scope; it is not independent review of the historical notes.

## 2. Exact form-domain Schur return and finite residual enclosure

Fix T>0, N>=1 and a parity sigma. Take z<c_sigma(T,N), and put

    delta=c_sigma(T,N)-z>0,
    A_ll=P_N A_T P_N,   B=R_N A_T P_N,
    C=R_N A_T R_N,      H=C-z,
    S(z)=A_ll-z-B^*H^(-1)B.                                     (2.1)

All operators are restricted to the chosen parity sector. The high operator is
the diagonal restriction plus its bounded compressed perturbation on the true
high diagonal domain. Thus it is self-adjoint and H>=delta I, so its inverse
exists and maps into Dom(C). The finite head is in Dom(A_T), and B is bounded.

For u in the finite head and v in the high FORM domain, direct expansion gives

    Q_T(u+v)-z||u+v||^2
      =<u,S(z)u>+||H^(1/2)(v+H^(-1)Bu)||^2.                    (2.2)

This is an identity on the full form domain. The triangular change of variables
(u,v)->(u,v+H^(-1)Bu) is an invertible map of that domain; its inverse changes
plus to minus. It is not a finite-matrix congruence applied without a domain
argument. A negative subspace projects injectively to a negative subspace of S:
if its head were zero its value would be nonnegative, and (2.2) makes the Schur
value negative on every nonzero projected vector. Conversely lift a negative
Schur subspace by u->u-H^(-1)Bu. This proves equality of negative indices,
including multiplicities. Solving the high equation gives the corresponding
kernel isomorphism. Compact resolvent identifies this negative index with the
number of source eigenvalues below z.

Now choose ANY finite linear map

    Y: P_N H_T^sigma -> (P_M-P_N)H_T^sigma,   M>=N,
    X=I_head-Y,
    R=B-HY=R_N(A_T-z)X,
    U=X^*(A_T-z)X
      =A_ll-z-B^*Y-Y^*B+Y^*HY.                                  (2.3)

Y may be a rational matrix proposed by a numerical solve. It is not assumed to
be an exact inverse, nor constructed using a ground-state projection. Expanding
R^*H^(-1)R proves the exact residual identity

    U-S=R^*H^(-1)R,
    0 <= U-S <= delta^(-1) R^*R.                                (2.4)

For an integer L>M define the FINITE residual

    F_L=(P_L-P_N)(A_T-z)X.

Orthogonal splitting, with no missing intermediate modes, gives

    R^*R=F_L^*F_L+(R_L A_T X)^*(R_L A_T X).

X is supported in P_M. Consequently (1.2) gives the fully finite enclosure

    W_L=F_L^*F_L+b_sigma(T,M,L)^2*(I+Y^*Y),
    U-delta^(-1)W_L <= S(z) <= U.                               (2.5)

The equality X^*X=I+Y^*Y follows from disjoint Fourier supports. All rows
N<|n|<=L are included in F_L. If exact Galerkin solving makes some rows zero,
that is an equation to verify, not a reason to omit them in a rounded solve.
The whole-tail term is an upper bound, never a truncated mixed matrix called exact.

## 3. A concrete finite solve and an explicit source-dependent convergence price

For M>N let E_M=P_M-P_N and set

    H_M=E_M(A_T-z)E_M,    B_M=E_M B,
    Y_M=H_M^(-1) B_M.                                           (3.1)

H_M>=delta I, independently of every unknown low eigenvalue. This is a genuine
finite inverse with a proved positive floor. Its variational Schur matrix is

    U_M=A_ll-z-B_M^*H_M^(-1)B_M.

As M increases, U_M decreases in Loewner order: the expression (2.2) minimized
over the finite high space has more competitors. It is bounded below by S.
The following explicit estimate establishes the limit and gives a source price,
rather than relying on monotonicity alone.

Let b=b_sigma^adj(T,N), choose N<=K0<M, and write

    gamma_K0=d_(K0+1)-z>0,
    eta=b_sigma(T,N,M)
       +b_sigma(T,K0,M)*b/delta
       +Bcal*b*(1+Bcal/delta)/gamma_K0.                           (3.2)

Then

    ||B-HY_M|| <= eta,
    0 <= U_M-S <= (eta^2/delta) I.                              (3.3)

Proof. First ||Y_M||<=b/delta. The finite solve and diagonal decomposition give
(D-z)Y_M=B_M-E_M V_T Y_M. Restricting to modes above K0 yields

    ||R_K0 Y_M|| <= b*(1+Bcal/delta)/gamma_K0.

The residual vanishes on N<|n|<=M and is, on the remaining modes,
R_M V_T(P_N-Y_M). Split Y_M=P_K0 Y_M+R_K0 Y_M. Apply respectively the
buffered bounds for P_N and P_K0, then ||V_T||<=Bcal for the last term.
This is exactly (3.2). Equation (2.4) gives (3.3).

For FIXED T,N,z choose K0=floor(sqrt(M)) and take M large enough that K0>=N.
Formula (1.2) makes the first two terms tend to zero; the diagonal logarithmic
lower bound makes the last term O(1/log M). Thus eta=O_(T,N,z)(1/log M), and
the Schur enclosure width is O_(T,N,z)(1/(log M)^2). The constants are NOT
uniform in T, and are explicitly visible in (1.2)--(3.2).

This is a conservative sufficient convergence rate, not a lower bound on the
necessary dimension or a feasibility guarantee. Paying a margin comparable to
an exponentially small low eigenvalue by this estimate alone can demand an
extremely large M. Increasing M approximates the exact Schur matrix; it does
not make that matrix positive or establish its parity inertia. No cofinal
choice of z with the desired arithmetic signs has been proved.

## 4. New source-specific cancellation on the even endpoint-zero hyperplane

Use the real orthonormal cosine basis

    c_0=(2T)^(-1/2),  c_n=T^(-1/2)cos(omega_n t), n>=1.

Let f=sum_(n=0)^M x_n c_n be even, M>=1, with complex coefficients allowed.
Define

    tau(f)=x_0/sqrt(2)+sum_(n=1)^M (-1)^n x_n=sqrt(T)*f(T),
    D0(f)=sum_(n=1)^M |x_n|,
    D1(f)=sum_(n=1)^M n|x_n|,
    C(f)=<cosh(. /2),f>.

For integers L>=M>=1 put

    theta=1-M/(L+1)>0,
    h0=2T/pi^2,
    h1=K/(pi*theta)+1/2,
    hp=2T*sqrt(T)*sinh(T/2)/pi^2,
    H_even(f)=h0*D0(f)+h1*D1(f)+hp*|C(f)|.                        (4.1)

### Theorem: full arithmetic endpoint cancellation

For every such f with tau(f)=0,

    ||R_L A_T f||^2 <= H_even(f)^2/(3L^3).                       (4.2)

No RH, low spectral gap, finite-prolate asymptotic, or prime-tail sign is assumed.
This is a bound on the full operator, not just the archimedean component.

### Proof: prime contribution

For m>M and n>=1, combining the m,n and m,-n entries of (1.1) gives

    <c_m,P_T^arith c_n>
      =-2(-1)^(m+n)/pi * (m p_m-n p_n)/(m^2-n^2),
    <c_m,P_T^arith c_0>=-sqrt(2)(-1)^m*p_m/(pi*m).              (4.3)

The factor sqrt(2) in the constant column is essential. Set y_n=(-1)^n x_n.
The exact rational identity

    (m p_m-n p_n)/(m^2-n^2)
      =p_m/m+n*((n/m)*p_m-p_n)/(m^2-n^2)

extracts tau(f)*p_m/m. It vanishes when tau(f)=0. Since |p_n|<=K/2,

    |<c_m,P_T^arith f>|
      <=(K/pi) sum_(n=1)^M n|x_n|/[m(m-n)]
      <=K*D1(f)/(pi*theta*m^2), m>L.                            (4.4)

The last step uses m-n>=m-M>=theta*m. All prime powers were summed with
their actual weights before applying the bound. No arithmetic cancellation
between different primes is postulated.

### Proof: boundary contribution

Write w_j=1-exp(-2alpha_j T), so 0<w_j<1. Combining the boundary entries gives

    <c_m,G_T f>=(2/T)(-1)^m sum_j w_j/(alpha_j^2+omega_m^2)
       *[x_0/sqrt(2)+sum_(n=1)^M y_n*alpha_j^2/(alpha_j^2+omega_n^2)].

Using tau(f)=0 changes the bracket EXACTLY to

    -sum_(n=1)^M y_n*omega_n^2/(alpha_j^2+omega_n^2).

For v>0 the decreasing-summand integral test proves

    sum_(j>=0) 1/(alpha_j^2+v^2)
      <=1/v^2+pi/(4v).

Indeed the first term is at most 1/v^2; the remaining sum is at most one half
the integral from 1/2 to infinity, itself at most pi/(4v). Hence

    |<c_m,G_T f>|
      <=[ (2T/pi^2)D0(f)+(1/2)D1(f) ]/m^2.                     (4.5)

All interchanges are legitimate: the low sum is finite and the original and
canceled alpha series are absolutely convergent. This is cancellation of a
boundary row, not deletion of the zero-extension boundary operator.

### Proof: pole and full return

The exact high cosine coefficient of c(t)=cosh(t/2) is

    <c_m,c>=(-1)^m*sinh(T/2)/[sqrt(T)*(1/4+omega_m^2)].

On even f the full pole operator is 2c*C(f), so

    |<c_m,L_T^pole f>|<=hp*|C(f)|/m^2.                          (4.6)

D_T f has no modes above M. Combining (4.4)--(4.6) in A=D+G-P+L and summing
sum_(m>L) m^(-4)<=integral_L^infinity x^(-4)dx=1/(3L^3) proves (4.2).
The boundary and prime leading terms both required the SAME tau(f)=0.
Dropping that premise leaves a generally nonzero 1/m term. Odd vectors have
a different leading boundary functional; (4.2) is not transferred to them.

### Corollary: retain the endpoint instead of constraining the trial

For an arbitrary even finite polynomial f as above, without tau(f)=0, put
kappa_0=K/pi+1/2 and H_bar(f)=H_even(f)+h0*|tau(f)|. The SAME row splitting gives

    |<c_m,A_T f>| <= kappa_0*|tau(f)|/m + H_bar(f)/m^2, m>L,
    ||R_L A_T f|| <= kappa_0*|tau(f)|/sqrt(L)
                     +H_bar(f)/sqrt(3L^3).                      (4.7)

Indeed the unsuppressed prime row is at most K*|tau|/(pi*m). The unsuppressed
boundary row is at most |tau|/(2m)+h0*|tau|/m^2, by the same decreasing-series
bound. The pole term is unchanged. Minkowski's inequality for the high Fourier
coefficients proves the second line. This prices an endpoint defect; it does
not assert endpoint evaluation is bounded on the full form domain.

## 5. Application to the actual low-Schur error, without deleting middle modes

Take sigma=+ in Section 2. For the finite map X=P_N-Y define the linear
functional ell_Y(u)=tau(Xu). It is evaluated on the finite polynomial Xu,
not on an arbitrary form-domain vector. On its kernel, (2.4) and (4.2) give

    <u,Uu>-[||F_Lu||^2+H_even(Xu)^2/(3L^3)]/delta
       <=<u,S(z)u><=<u,Uu>.                                    (5.1)

This retains the whole residual on N<|n|<=L and improves only its remote tail.
The finite solve Y and its endpoint trace are not assumed small. In particular,
ker(ell_Y) need not be the orthogonal complement of the original prolate trial.

For a literal matrix certificate replace H_even^2 by the following explicit
positive quadratic majorant. Put d_n=h0+h1*n, n=1,...,M, and
s_d=M*h0+h1*M*(M+1)/2. Weighted Cauchy--Schwarz and (a+b)^2<=2a^2+2b^2 give

    H_even(f)^2 <= J(f),
    J(f)=2s_d sum_(n=1)^M d_n|x_n|^2+2hp^2|C(f)|^2.             (5.2)

The pole moment C(f) is a known finite linear functional, from the exact cosine
coefficients above and the constant coefficient. Thus J is an explicit finite
positive matrix and the improved penalty is X^*JX/(3L^3), restricted to ker(ell_Y).
This preserves directional information instead of replacing the correction by
||B||^2/delta times the identity.

There is also a whole-even-head matrix allowance without imposing ell_Y=0.
Applying the elementary two-square inequality twice to (4.7) gives

    ||R_L A_T f||^2 <= J_full(f),
    J_full(f)=[2*kappa_0^2/L+4*h0^2/(3L^3)]*|tau(f)|^2
                  +4*J(f)/(3L^3).                             (5.3)

Thus X^*J_full X may replace b_+^2 X^*X in the whole-head enclosure (2.5).
Its slower L^(-1) term is confined to a single endpoint-trace direction.
On ker(ell_Y), keep the sharper J/(3L^3) from (5.1), rather than its fourfold
weakening in (5.3). This alternative keeps the actual endpoint defect of a
finite trial instead of correcting it without charging the resulting error.

The consumer is now precise. If the lower enclosure proves S_-(beta)>=0 on the
entire odd head and S_+(beta)>=0 on ker(ell_Y), and an independently computed
FULL even trial has Rayleigh quotient U_trial<beta, then (2.2) shows exactly one
source eigenvalue below beta, counted with multiplicity. It is even and simple,
and the spacing to all others is at least beta-U_trial. The linear functional's
kernel has codimension at most one; if it is the entire head, the negative trial
would contradict nonnegativity, so this case is automatically excluded by the
joint hypotheses. Strict positive matrix enclosures also exclude eigenvalues
at beta, but that exclusion is not needed for a strict gap above U_trial.

This is an INERTIA return. It does NOT prove complementary coercivity relative
to an arbitrary trial whose orthogonal complement differs from ker(ell_Y).
The source-specific finite inequalities required in the preceding paragraph
have not been established on a cofinal sequence. The small derivative-cutoff
competitors are not excluded from the head or from this hyperplane by its
codimension. They must be controlled by those same actual inequalities.

## 6. Finite source evaluation and rounding have explicit prices

No infinite alpha sum or inaccurate finite solve may be called exact numerical
data. Here is one fully specified way to bound entry truncation. Keep j<J,
let a=alpha_J>0, and restrict all rows/columns to |n|<=L. The omitted diagonal
multiplier satisfies

    0<=m(xi)-m_J(xi)<=2xi^2*(a^(-3)+1/(4a^2)).                  (6.1)

The omitted boundary entry has absolute value at most

    (1/T)*(a^(-2)+1/(2a)).                                     (6.2)

For (6.1), bound its summand by 2xi^2/alpha_j^3 and use the integral test with
spacing 2. For (6.2), use
|alpha^2-xy|<=sqrt(alpha^2+x^2)*sqrt(alpha^2+y^2), then bound the resulting
summand by alpha^(-2) and apply the same test. These bounds hold for diagonal
and off-diagonal entries. The finite matrix norm is at most its dimension
times a uniform entry bound. Consequently a valid full-block source allowance is

    epsilon_src=epsilon_c
      +2(pi*L/T)^2*(a^(-3)+1/(4a^2))
      +(2L+1)/T*(a^(-2)+1/(2a)),                               (6.3)

where epsilon_c bounds an approximation of c_inf. Add a separately proved
epsilon_num for all finite prime, pole, trigonometric, exponential, logarithmic,
and arithmetic rounding errors. Unitary parity compression cannot increase
this full-block norm allowance. No such interval computation was executed here.

Let Ahat be a Hermitian finite block with error at most epsilon. Regard the
STORED finite Y as the exact proposed matrix (for example, with rational entries).
Compute Uhat=X^*(Ahat-z)X and Fhat=(P_L-P_N)(Ahat-z)X. Then

    -epsilon X^*X <= U-Uhat <= epsilon X^*X,
    ||(F_L-Fhat)u||<=epsilon||Xu||.

For any s>0,

    F_L^*F_L <= (1+s)Fhat^*Fhat+(1+1/s)epsilon^2 X^*X.

Thus a certified whole-head LOWER enclosure is

    S >= Uhat-epsilon X^*X
        -[(1+s)Fhat^*Fhat
          +((1+1/s)epsilon^2+b_sigma(T,M,L)^2)X^*X]/delta.       (6.4)

An upper enclosure is Uhat+epsilon X^*X. On ker(ell_Y), replace the last
b_sigma^2 X^*X by X^*JX/(3L^3). This is the endpoint-improved version of the
same source-certified low-Schur enclosure. Interval uncertainty in z must also
be paid, both in the finite block and in a certified positive lower delta.

The strict inertia test must be applied after ALL allowances in (6.4). A
positive floating eigenvalue of Uhat, an exact eigenvector of a compression,
or convergence of the inverse expansion for a fixed T does not establish it.
No dimension or precision bound has been shown to fit the unknown cofinal
low-mode margin.

## 7. Comparison with diagonal preconditioning

The proposed Neumann route is valid, but is not necessary for (2.5). If
D_h-z>=gamma I and ||V_h||<=Bcal<gamma, set
W=(D_h-z)^(-1/2)V_h(D_h-z)^(-1/2), q=Bcal/gamma<1,
and Z=(D_h-z)^(-1/2)B. The form identity H=(D_h-z)^(1/2)(I+W)(D_h-z)^(1/2)
gives its inverse by solving the form equation, and ||W||<=q gives

    ||H^(-1)-(D_h-z)^(-1/2)sum_(k=0)^r(-W)^k(D_h-z)^(-1/2)||
       <=q^(r+1)/(gamma*(1-q)).

A directional Schur remainder bound is stronger than immediately scalarizing:

    -q^(r+1)/(1-q) Z^*Z
       <= B^*H^(-1)B-Z^*sum_(k=0)^r(-W)^k Z
       <=q^(r+1)/(1-q) Z^*Z.                                   (7.1)

This follows from the norm of the geometric-series remainder and quadratic
sandwiching. It remains an enclosure, not an inertia estimate. Evaluating its
retained infinite products has additional truncation costs. The residual method
in Sections 2--6 avoids that issue by using a finite stored Y and bounding its
entire residual directly. Neither method manufactures an arithmetic low gap.

## 8. Normalized reconstruction and the actual finite-prolate price

At an INDEPENDENTLY identified ground eigenvalue E<c_+, a low vector
u!=0 in ker S_+(E) reconstructs as

    psi_raw=u-(C_+-E)^(-1)B_+u,
    ||psi_raw||^2=<u,[I+B_+^*(C_+-E)^(-2)B_+]u>.                (8.1)

The high inverse maps into the high operator domain, the head is finite,
and the block equations prove A_T psi_raw=E psi_raw. Its phase is fixed by
its specified nonzero head u. The norm in (8.1) is at least ||u||, and cannot
be replaced by the head norm alone.

For a finite Y at the same E with residual R and delta=c_+-E,

    ||psi_raw-Xu|| <= ||Ru||/delta,
    ||psi_raw/||psi_raw||-Xu/||Xu|||| <=2||Ru||/(delta||u||).      (8.2)

Indeed the first difference is H^(-1)Ru; the normalization inequality follows
by the reverse triangle inequality, and both raw norms are at least ||u||.
For supported differences the transform price is M_a(T) times the L2 bound,
with M_a(T)=sqrt(sinh(2aT)/a), M_0(T)=sqrt(2T). Thus (8.2) pays only the
reconstructed-tail error at a fixed, already justified low vector and eigenvalue.
It does NOT compare that vector to the finite-prolate seed or determine the
correct Xi amplitude.

The current finite-prolate note, blob a9f77bde989a0b22a25159c1b7b43a33216ee408,
fixes H_lambda=chi_2*h_4(0)*h_0-chi_0*h_0(0)*h_4 and
b_star=-sqrt(3)/2 under its stated real unit phases. Its actual trace repair
changes the normalized logarithmic image by -b_star*d_lambda*g_T, so its prices
remain

    L2:       40|b_star*d_lambda|,
    operator: |b_star*d_lambda| B_T^tr,
    strip:    40|b_star*d_lambda|/(1/2-a), 0<=a<1/2.

The last price is used directly, not multiplied by M_a(T). The note's quadratic
Rayleigh correction and changed norm denominator are retained. No norm lower
bound is inferred from mere nonvanishing. A correction of the trial changes its
orthogonal complement, so (5.1) cannot be transferred to it without a new
argument. The present result does not prove the original reflection defect,
finite-prolate asymptotics, Fact 6.4, or genuine-ground comparison. It does not
apply a Schwartz Poisson identity to a merely C1 repaired seed.

## 9. Hostile checks and first unresolved estimate

The sign in (2.4) is essential: for a scalar head 1, high block 1 and mixed
entry 2, the compression is positive but its Schur value is -3. A truncated
residual without the remote term is not an enclosure. Solving only a buffered
middle-free system can miss low modes; F_L and H_M here explicitly retain them.

The constant mode factor in (4.3) is sqrt(2), not 2. Omitting it destroys the
endpoint cancellation. The boundary cancellation is checked independently by
expanding each exponential image into its even cosh moment; no sign of a prime
tail or prolate residual is imported. The squared tail rate in (4.2) is L^(-3)
for a FIXED polynomial; D0,D1,C and theta may grow with the polynomial dimension.
For adjacent cutoffs theta=1/(M+1); there is no uniform small bound obtained
by setting L=M and forgetting that factor.

The current smallest missing estimate is an arithmetic lower sign for the
finite LOWER enclosure (6.4), with its improved even restriction if useful,
at beta_j on the SAME explicit unbounded windows, together with a full even
trial value below beta_j. The exact head retains all derivative-cutoff
competitors. No universal sign has been proved. After that, the low Schur
kernel and amplitude still need a quantitative comparison with the actual
finite-prolate family or with Xi in the needed weighted transform norm.

The exact Mathlib RiemannHypothesis and existing repository DirichletGRH are
not redeclared, replaced, or claimed proved. No character-dependent operator,
root-number/conjugate-character argument, inducing-character identification,
or universal character certificate is constructed by these zeta-sector estimates.

## 10. Formal scope, provenance and verification

New candidate modules:

- GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/
  SchurResidualEnclosure.lean: genuine symmetric bilinear form-domain completion,
  inverse-energy defect, nonnegativity equivalence, test-wise kernel reconstruction,
  and scalar residual/error-budget returns. It does not construct unbounded inverses
  or prove spectral inertia in Lean.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilLowSchurEnclosure.lean:
  literal finite von Mangoldt signal/cutoff, finite prime and boundary row splitting,
  endpoint-zero cancellation identities, and elementary enclosure budgets.
  It does not formalize the infinite Fourier series or the full analytical bounds.

The manuscript above supplies the analytical operator arguments separately.
The local sources contain no proof placeholders by source inspection; this is
NOT an elaboration result or a transitive axiom audit.

Source comparison:

- Connes, arXiv:2602.04022v1, p.30, Fact 6.4 and Section 6.6; the PDF was
  inspected with the web screenshot tool. The two remaining source obligations
  are retained, not replaced by an inverse-approximation theorem.
- Connes--Consani--Moscovici, arXiv:2511.22755v1, (3.5), (3.7)--(3.11),
  (3.19)--(3.20), Theorem 3.6, and the source Fourier matrices; CC BY 4.0.
- Connes--van Suijlekom, arXiv:2511.23257v1, Theorem 6.1, including its actual
  essential-self-adjoint trigonometric-core hypothesis; CC BY 4.0. No invocation
  of its real-zero conclusion is made without the missing spectral premise.
- Suzuki, arXiv:2610.32704v1, was refreshed directly. It assumes RH and its
  limiting product uses distinct ordinates. It is comparison only, not an input.
- The primary research post *Full-source Schur certificates for Weil positivity
  at support radius two*, rStation paper 60, version 1, 26 October 2026, reports
  a fixed-support computer-assisted Schur certificate and explicitly does not
  claim arbitrary support or RH. Its reported computation is NOT_REPLAYED and
  supplies no premise here. This and the standard variational identity prevent
  any claim to have originated Schur complementation or residual certification.
  Worldwide priority of the specific endpoint-cancellation estimate is UNASSESSED.

Optional external repositories were refreshed without importing their results.
openai/math/main remained 4eaee87548250b2682affda7d05d947c05554bae; its actual
Nonvanishing.lean, blob 46c67f4000906b1391a471d6e6396ac0da3c16a5, was re-read.
Its transitive proof was not audited or used to shrink the convergence strip.
TauCetiProject/TauCeti/main remained 85f3eb5579df5ca44ba8cd0921d614b41ab72174.
A focused search resolved TauCeti/LinearAlgebra/Matrix/SchurComplement.lean,
blob 40f1f75ba58cac1bfe19c0582fd07ceb6bf2f791. Its generalized finite-matrix
Schur positivity and rank-one inverse declarations were inspected, not imported
or replayed. They do not supply the unbounded form-domain return or arithmetic
signs needed here. Its Apache-2.0 attribution and separate dependency environment
are preserved by not copying or promoting it. The exact deepmind/formal-research
identifier again returned 404; no different repository was substituted.

The prepublication refresh found concurrent main at
80ee60ddd123bb10504ec2aa035e93e96feee677, complete tree
db1a6518447b361062721e79fae4341807a5a4aa, one additive commit above the initial
research baseline. Its authored weil-prime-pole-research-methods.md was inspected.
That increment bounds the signed prime/pole discrepancy on finite Fourier spaces
and gives a smaller derivative allowance for zero-endpoint vectors. It is not
an imported premise of the present residual or boundary-row proofs. The two
estimates have different consumers: low-form comparison versus whole remote
operator residual. Both retain unresolved cofinal low signs. All six concurrent
files are preserved; their historical NOT_RUN statuses are not upgraded.

Repository instructions and proof-comparison disposition were read. The source
layout endpoint returned an empty decoded body with blob
 ec7ae0dce9138e0e1f44f36b65d433e0e9897e00; source placement stays within the
existing BasicLinearAlgebra and ZetaAndLFunctionsAnalyticTheory subject folders.
No root imports, dependency versions, historical statuses, or existing source
files are changed. No runtime state or operational runner is placed in math.

Pins refreshed: Lean v4.34.1; Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
The consumed Mathlib BilinearForm/Basic and ArithmeticFunction/VonMangoldt
source definitions were inspected at that pin; no upstream code was copied.
No Lean/Lake/elan executable or verified local canonical skill checkout was
available. The current canonical noe-proof-automation/SKILL.md again returned
404 at noeaaeue/main 53f1622af5dc87a29e20408c25f76bbb55243eb1. Dependent proof
or browser automation was not run. This work is direct analytical reasoning,
manually authored mathematical source, and authorized source publication.

Compilation/elaboration: NOT_RUN. Fresh kernel checking: NOT_RUN.
Transitive axiom audit: NOT_RUN. Independent analytical review: NOT_RUN.
Certified spectral computation: NOT_RUN. Novelty: UNASSESSED.
Exact symbolic simplification checked the prime-row split, its denominator
majorant identity, and the boundary-row split. Each returned zero difference.
Using seed 20261104, 120 exact rational matrix fixtures checked U-S=R^*H^(-1)R,
positivity and the delta=1 upper enclosure with H=I+Q^tQ, and the complete
finite/remote residual split. Another 700 exact rational cases checked the prime
remainder majorant. These are finite algebra diagnostics, not universal proofs,
spectral certification, or Lean acceptance. The two modules contain 26 theorem
candidates. The final publication revision is recorded in the exact-source issue. Publication does not turn the cofinal inequalities into
proved statements.
