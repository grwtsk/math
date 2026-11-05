# Fixed-degree theta-response optimization and uniform inverse-residual obstruction

Local attribution: grwtsk contributors.
Research date: 5 November 2026 (America/Los_Angeles).
Original mathematical exposition, manually authored Lean candidate and pure
symbolic diagnostic source: repository MIT license. AI-assisted analysis.
Independent analytical review, Lean elaboration, fresh kernel checking and
transitive axiom auditing: NOT_RUN. Worldwide novelty: UNASSESSED.

## 0. Outcome and the arithmetic estimate actually advanced

No cofinal whole-odd-head Schur sign, valid even complementary floor on cofinal
windows, or normalized genuine-ground comparison is established. No RH or
Dirichlet-GRH conclusion is claimed. The positive half-window certificate in
#1689 remains a reported, source-inspected fixed-window benchmark; it was not
replayed here. The endpoint and physical-collar obstructions remain intact.

The selected alternative is the source-exact ODD inverse-energy route. This
note proves two results beyond the old single-trial saturation argument:

1. For each FIXED finite theta-derivative space, the full arithmetic trial
   deficit has a positive asymptotic matrix. Its minimum under the exact
   whole-line pole-moment constraint has an explicit leading constant, and
   finite jet solves construct asymptotically optimal responses. The first
   optimized correction has HALF the deficit of the previously supplied
   endpoint-zero response.
2. A source-exact boundary-residual limit is injective on that entire fixed
   space. Consequently the crude full-residual/coercive-floor rank-one
   certificate fails eventually for EVERY moment-normalized response in the
   space, even with arbitrary support-dependent coefficients. This is not
   merely another evaluation of the old hard-truncated response.

Both statements concern the complete pole-inclusive CCM source. Neither
establishes positivity of the full retained odd core. A positive finite
compression is not a positive low Schur complement. The second result refutes
one sufficient upper surrogate, not the exact weighted inverse-energy test.
Degree growing with support, other trial families and direct weighted methods
are not excluded.

### Theorem A: complete fixed-degree optimization

Use the exact definitions in Section 1. Put X=exp(2T), C0=16*pi^3 and

    y=-2*phi',  z_j=y^(2j)/(4*pi^2)^j,
    V_r=span_R {z_0,...,z_r},
    f=1_[-T,T] h,
    J_T(f)=2 ell_T(f)-a_T(f,f),
    d_T(h)=1/2-J_T(f)       when ell(h)=1/2,
    d_r(T)=inf {d_T(h): h in V_r, ell(h)=1/2}.

For every fixed integer r>=0 there is X_r such that, for every real X>=X_r,
this affine minimum exists, is unique, and is positive. Moreover

    d_r(T) ~ C0^2 (r!)^2/(2*pi^(2r+1))
                    * X^(11/2-2r) log(X) exp(-2*pi*X).         (A)

An explicit finite polynomial-jet construction, normalized by its ACTUAL
whole-line moment, attains this asymptotic. It uses neither B_T^-1 nor a
Weil ground projection. No numerical X_r or bound uniform in r is claimed.

### Theorem B: entire fixed-space failure of the crude residual certificate

For every fixed r there are c_r>0 and X_r such that for X>=X_r and EVERY
h in V_r with ell(h)=1/2,

    ||B_T(1_[-T,T]h)-s_T||_2^2 / d_T(h)
                        >= c_r/(1+log X).                    (B1)

If an independent full-domain estimate B_T>=sigma_T I with sigma_T>0 is
available, and rho is any upper bound for this WHOLE residual, then

    rho^2/[sigma_T d_T(h)]
       >= c_r exp(2*pi*X)/[X^(19/2)(1+log X)^2] -> infinity.   (B2)

Thus 2[J_T(f)+rho^2/sigma_T]<=1 cannot pass eventually, uniformly over the
stated affine space. The existence of sigma_T is NOT assumed or proved.

### Conditional weighted consequence, with the inequality direction retained

Only where B_T is independently positive and coercive, define
alpha_T=<s_T,B_T^-1 s_T>. For every fixed r,

    1-2alpha_T <= 2d_r(T).                                    (C1)

For the OLD trial y_T=1_[-T,T]y, with d_0(T)=1/2-J_T(y_T), its EXACT weighted
residual satisfies

    <B_T y_T-s_T,B_T^-1(B_T y_T-s_T)> / d_0(T)
       >= 1-[(r!)^2/pi^(2r)+o(1)] X^(-2r).                  (C2)

This is a LOWER bound, not the upper bound <=1 needed to certify the sign.
The positive part of 1-2alpha_T, when defined, is smaller than exp(-2*pi*X)
times every fixed inverse power of X along cofinal coercive windows. This does
not prove that the margin is nonnegative, or that such windows exist. One may
not let r tend to infinity at a fixed T using (A).

## 1. Exact source, moment and domain audit

The source is Connes--Consani--Moscovici, *Zeta Spectral Triples*,
arXiv:2511.22755v1, (3.5), (3.7)--(3.11), (3.19)--(3.20), not a pole-free
replacement. Use antilinear-first inner products and fhat(z)=integral f(t)
exp(-izt)dt. For the functions below, including the rapid exterior tails,

    Q(f)=c_inf ||f||^2+E(f)+2 Re(M_+(f)conjugate(M_-(f)))
              -2 sum_(n>=2) Lambda(n)n^(-1/2) Re C_f(log n),
    c_inf=digamma(1/4)-log(pi),
    E(f)=integral_0^infinity kappa(a)||f(.+a)-f||^2 da,
    kappa(a)=exp(-a/2)/(1-exp(-2a)),
    C_f(a)=integral conjugate(f(t))f(t+a)dt,
    M_+(f)=integral f(t)exp(t/2)dt,
    M_-(f)=integral f(t)exp(-t/2)dt.                            (1.1)

For support [-T,T], correlations vanish at log n>=2T, including equality
because the overlap has measure zero. For exterior tails the infinite sum is
retained. Formula (1.1) on those tails is a convergent arithmetic expression,
not a positive or self-adjoint whole-line operator on unrestricted L2.

On the real odd domain set

    s_T(t)=sinh(t/2), ell_T(f)=integral_[-T,T] f(t)sinh(t/2)dt,
    ell(h)=integral_R h(t)sinh(t/2)dt,
    a_T(f,g)=Q_T(f,g)+2ell_T(f)ell_T(g),
    B_T=A_(T,-)+2|s_T><s_T|.                                  (1.2)

This is the archimedean-minus-prime odd core. The positive cosh pole vanishes
by oddness; the negative sinh pole is retained in Q_T. No core positivity is
inferred from (1.2).

Use the normalized theta kernel

    phi(t)=2*pi*exp(5*t/2) sum_(n>=1)
                n^2(2*pi*n^2*exp(2*t)-3)exp(-pi*n^2*exp(2*t)). (1.3)

The explicit even Schwartz seed 2*pi*u^2(2*pi*u^2-3)exp(-pi*u^2) is additive-
Fourier invariant and has value and integral zero. Poisson summation gives
evenness and double-exponential tails for (1.3). Its Gaussian Mellin integral
is s(s-1)pi^(-s/2)Gamma(s/2)/2. Multiplying by zeta(s) first for Re s>1,
continuing, and using xi(s)=xi(1-s), gives phihat(z)=Xi(z)=xi(1/2+iz).
This is explicitly four times the printed limiting image in Connes
arXiv:2602.04022v1, not a change to an unspecified finite-prolate scalar.

Xi(i/2)=1/2 gives ell(y)=1/2 for y=-2phi', by integration by parts. Repeated
integration by parts, with all boundary terms zero, gives

    ell(z_j)=1/[2(16*pi^2)^j],  z_j=y^(2j)/(4*pi^2)^j.          (1.4)

The functions z_j are linearly independent. A linear relation would give a
polynomial times z*Xi(z) identically zero; Xi is nonzero, so the polynomial
would vanish. All functions are real odd and rapidly decreasing with every
derivative. Whole-line moments in (1.4) must not replace truncated moments.

### Radical identity at the consumed test-class scope

The polarized explicit formula is

    Q(h,g)=sum_rho conjugate(hhat(conjugate(z_rho)))ghat(z_rho),
    z_rho=(rho-1/2)/i,                                        (1.5)

with full multiplicities. With the opposite Fourier convention, reindex by
rho -> 1-rho; unconditional zero symmetry preserves multiplicity. Each theta
derivative has transform a polynomial times Xi, so its contribution vanishes
at every zero, without a location hypothesis. To use a compact piecewise
smooth second factor, apply the formula to its correlation with the theta
derivative. That correlation is smooth and rapidly decreasing faster than
every exponential, with rapidly decreasing transform on bounded horizontal
strips. The O(R log R) unconditional zero count gives absolute convergence.
The same reasoning applies when both factors are finite theta-derivative
combinations. Prime-side convergence for exterior tails is paid in Section 3.
Thus the exact polarization return is, for h in V_r,

    f=1_[-T,T]h, d=h-f,     Q_T(f)=Q(d).                     (1.6)

Parameter-dependent coefficients are finite numbers at each T; no degree
limit is interchanged with (1.5).

Each compact restriction here is piecewise smooth with finitely many jumps.
Its zero-extension Fourier transform is O(1/|xi|). The actual archimedean
symbol Re digamma(1/4+i*xi/2)-log(pi) is O(log(2+|xi|)); its product with that
transform is L2. Pairing against the maximal multiplier-form domain and adding
the bounded fixed-window prime and pole operators proves membership in the
canonical Dom(A_T), hence in Dom(B_T) on the odd sector. No added endpoint
condition is imposed. The periodic source's maximal-domain identification is
consistent with this direct sufficient domain argument.

### The pole cancels exactly in the deficit, rather than disappearing by fiat

If ell(h)=1/2, then ell_T(f)+ell(d)=1/2, and scalar expansion gives

    d_T(h)=Q_T(f)+2(ell_T(f)-1/2)^2
          =Q(d)+2ell(d)^2
          =c_inf||d||^2+E(d)-P(d),                            (1.7)

where P(d)=2 sum Lambda(n)n^-1/2 C_d(log n). On an odd d the full pole is
-2ell(d)^2, which is precisely canceled. All primes remain present. This is
not positivity of the right side, and not its identification with the full
source operator on another domain. Positivity on V_r is proved below.

## 2. Actual jet coordinates and the exact moment functional

Put U=exp(2t), X=exp(2T), C0=16*pi^3. The first theta term of z_j is

    C0 U^(5/4) exp(-pi U) R_j(U),
    R_0(U)=U^2-15U/(4pi)+15/(8pi^2),
    D P=2U P'(U)+(5/2-2pi U)P(U),
    R_j=(4pi^2)^(-j)D^(2j)R_0.                               (2.1)

R_j is monic of degree 2j+2. The other theta terms have a fixed polynomial
factor in n and U times exp(-pi n^2 U). These are the same actual derivative
polynomials used by the published collar construction, not arbitrary profiles
assigned to a mathematical certificate.

Fix r. Let P_r denote the real polynomials of degree at most r. For p(v)=
sum_(l=0)^r p_l v^l define a_j(X,p) by

    sum_(j=0)^r a_j(X,p)R_j^(l)(X)/l!=X^2 p_l,
                                        l=0,...,r.           (2.2)

Let J_X be the displayed coefficient matrix, and

    B_X=diag(X^l) J_X diag(X^(-2j-2)).

Monicity gives B_X=B+O_r(X^-1) with B_lj=binom(2j+2,l). Its determinant is

    det B = product_(i<j)(2j-2i)/product_(l=0)^r l!
          = 2^(r(r+1)/2)>0.                                 (2.3)

Thus J_X is invertible for every sufficiently large real X. More precisely
its determinant is asymptotic to 2^(r(r+1)/2) X^((r+1)(r+4)/2). Inverting the
finite nonsingular limiting matrix gives

    a_j(X,p)=X^(-2j) sum_(l=0)^r (B_X^-1)_jl X^l p_l.         (2.4)

The error B_X^-1-B^-1 is O_r(X^-1). This follows from the finite inverse
identity, not from a spectral inverse of A_T or B_T. In any fixed coefficient
norm, |a_j|<=C_r X^(r-2j)||p|| for large X.

Set

    h_(X,p)=sum_(j=0)^r a_j(X,p)z_j,
    m_X(p)=2ell(h_(X,p))=sum_(j=0)^r a_j(X,p)/(16pi^2)^j.     (2.5)

Both maps are linear. Since the jet matrix is invertible, p ranges over all of
V_r, not merely a selected collection of trials. All affine moment-normalized
responses correspond exactly to m_X(p)=1.

The needed inverse entry is

    (B^-1)_(0,r)=(-1)^r/2^r.                                (2.6)

To prove it, write the Lagrange polynomial that equals one at 2 and zero at
4,6,...,2r+2 in the binomial-polynomial basis binom(x,l). Its coefficient
vector is row zero of B^-1. Its leading coefficient is
1/[(-2)^r r!], while binom(x,r) has leading coefficient 1/r!. This proves
(2.6), also for r=0. From (2.4)--(2.6), in the dual finite-space norm,

    X^-r m_X(p) = (-1)^r 2^-r p_r + O_r(X^-1)||p||.          (2.7)

### Uniform boundary profile, not only pointwise convergence for one p

Let A_X=C0 X^(13/4)exp(-pi X). The first r+1 Taylor coefficients of
sum a_j R_j(X+v)/X^2 equal those of p exactly. For l>r its coefficient is
O_r(X^(r-l)||p||). There are only finitely many such terms. Thus this
polynomial differs from p by at most
C_r X^-1||p||(1+v)^(2r+2), for v>=0. The extra factor (1+v/X)^(5/4)
changes the bound only by a fixed additional polynomial. The n>=2 theta sum,
including one v derivative, is exponentially smaller on U>=X; polynomial
coefficient growth in (2.4) does not defeat exp(-3pi X). Therefore

    h_(X,p)(log(X+v)/2)/A_X = exp(-pi v)[p(v)+epsilon_(X,p)(v)],
    |epsilon_(X,p)(v)| <= C_r X^-1||p||(1+v)^(K_r),           (2.8)

for a finite K_r, with an analogous differentiated estimate. Constants are
uniform on the unit sphere of P_r. In physical coordinates this implies

    |h_(X,p)(T+x)| <= C_r A_X||p||exp(-pi Xx),
    |h'_(X,p)(T+x)| <= C_r X A_X||p||exp(-pi Xx), x>=0.       (2.9)

For (2.9), use X(exp(2x)-1)>=2Xx and absorb the fixed polynomial in half
of exp(-pi X(exp(2x)-1)). Oddness gives the left tail. This uniformity in
one FIXED coefficient space is essential in the minimization below.

## 3. Complete exterior matrix, including every prime and every mixed term

Write p=sum_(j=0)^r c_j L_j(2pi v), and use |c| as coefficient norm. Standard
Laguerre normalization gives

    J(p):=integral_0^infinity exp(-2pi v)p(v)^2 dv
         =|c|^2/(2pi).                                     (3.1)

This follows directly from Rodrigues: integrating n times against a polynomial
of degree below n gives zero, and against L_n gives norm one in exp(-x)dx.
All endpoints vanish. Substitution x=2pi v supplies (3.1), including mixed
terms. The convention agrees with DLMF 18.5.12 and Table 18.3.1.

For d=1_(|t|>T)h_(X,p), changing variable U=X+v on BOTH tails gives

    N:=||d||^2=A_X^2/X [J(p)+O_r(X^-1)|c|^2].                (3.2)

The two halves cancel the factor 1/2 in dt=dU/(2U). The error in (3.2) is
uniform in c, by (2.8) and the exponential majorant. In particular N is
bounded above and below by positive multiples of A_X^2|c|^2/X for large X.

We spell out the arithmetic prices. Put b=pi X and F_X=A_X^2/X. From (2.9),
for 0<a<=1/X,

    ||d(.+a)-d||^2 <= C_r A_X^2|c|^2(a+Xa^2).              (3.3)

The a term includes the cutoff jumps. Integrating (3.3) against kappa(a)<=C/a
costs O_r(F_X|c|^2). For 1/X<=a<=1, once 2T>1 there is no opposite-tail
overlap, and

    |C_d(a)| <= C_r F_X|c|^2 exp(-ba).

Since 2 integral_(1/X)^1 kappa(a)da=log X+O(1), this range contributes
N log X+O_r(F_X|c|^2). The range a>=1 costs O(N), using the translation norm
bound and integrability of kappa. Thus

    E(d)=N log X+O_r(F_X|c|^2).                              (3.4)

For every a>=0 the COMPLETE correlation envelope is

    |C_d(a)| <= C_r A_X^2|c|^2[exp(-ba)/b
                              +(a-2T)_+exp(-b(a-2T))].     (3.5)

It includes the two same-side overlaps and the left-to-right overlap. The
latter has zero length at a=2T, even when X is a prime power. With Lambda(n)
<=log n, the same-side contribution to |P(d)| is O_r(F_X|c|^2 2^-b).
For real Y>=4 and h>=max(2,cY), the decreasing-function integral test gives

    sum_(n>=Y) log(n)n^-1/2(n/Y)^(-h)
      <= log(Y)/sqrt(Y)+sqrt(Y)[log(Y)/(h-1/2)+1/(h-1/2)^2]
      <= C_c(1+log Y)/sqrt(Y).                              (3.6)

The first integer term is bounded by the value at the real endpoint Y; all
remaining terms are bounded by the integral. Use u exp(-bu)<=2exp(-bu/2)/(eb)
with u=log(n/X)>=0 in the second term of (3.5). This pays ALL n>X and proves

    |P(d)| <= C_r F_X|c|^2[2^-b+(1+log X)/sqrt(X)].          (3.7)

No prime-distribution conjecture or favorable sign of a changed tail is used.
The exterior moments obey |ell(d)|<=C_r A_X|c|X^(1/4)/X, so the full odd pole
has size O_r(F_X|c|^2/sqrt X). It cancels exactly in (1.7); it is separately
small if considering Q_T on the whole trial space without the affine constraint.

Let D_r(X) be the matrix of c_inf N+E(d)-P(d) in the Laguerre coordinates.
Equations (3.2)--(3.7) give the OPERATOR-NORM statement

    D_r(X)=F_X[(log X)/(2pi) I+O_r(1)].                      (3.8)

Indeed (3.2)'s norm error times log X is O_r(log X/X)|c|^2, and (3.7)'s
relative error is bounded. Every remaining error is uniformly quadratic in c.
For a real symmetric finite matrix, a bound on its quadratic form on the
entire unit sphere is exactly an operator-norm bound. Equivalently one can
polarize the finitely many basis and pair tests. This is not a passage from
one trial's asymptotic to an unproved uniform minimum.

Consequently D_r(X) is positive definite eventually. The matrix of Q_T on the
same truncated theta space has the SAME positive leading term: subtracting
its retained rank-one exterior pole changes only the bounded remainder.
The restriction map is injective because a finite theta combination is real
analytic and cannot vanish on an interval without vanishing identically.
Thus this proves eventual positivity of the complete finite theta compression.
It does NOT prove positivity on its infinite complement, nor positivity of
its Schur complement after that complement is eliminated.

## 4. Affine optimization, actual trials and constants

In Laguerre coordinates let m be the vector representing m_X. The leading
coefficient of L_r(2pi v) is (-1)^r(2pi)^r/r!, so (2.7) says

    X^-r m -> (pi^r/r!) e_r.                                (4.1)

For large X this functional is nonzero. Since D=D_r(X)>0, elementary
completion of the square proves

    min_(m^t c=1) c^t D c = 1/(m^t D^-1 m),
    c_min=D^-1 m/(m^t D^-1 m).                              (4.2)

Every premise here was established for a finite matrix, independently of
positivity or invertibility of the full source core. From (3.8),

    D^-1=(2pi)/(F_X log X)[I+O_r(1/log X)].

Insert (4.1) into (4.2) to obtain (A). This proves the infimum over the ENTIRE
moment-normalized space, including unbounded coefficient choices; it is not
an assertion restricted to a preselected convergent family.

An explicit asymptotically optimal construction avoids even this finite
energy inverse. Take

    p_r^*(v)=(r!)/pi^r L_r(2pi v),
    H_(r,X)=h_(X,p_r^*)/m_X(p_r^*).                          (4.3)

Equation (2.7) gives m_X(p_r^*)/X^r -> 1, so this division is legitimate
eventually. The exact whole-line moment is 1/2, not merely asymptotic to it.
Equation (3.8) then gives d_T(H_(r,X))/d_r(T)->1. Formula (2.4) shows that its
coefficient of z_0 tends to one and its coefficient of z_j is O_r(X^-2j)
for j>=1. Hence H_(r,X)->y in whole-line L2; its compact restriction has norm
tending to ||y||>0. No claim about a Weil eigenfunction follows.

A second way to check the limiting optimization is monic orthogonality.
The constraint in the rescaled limit fixes the leading coefficient to
(-2)^r. The polynomial (r!)/pi^r L_r(2pi v) has precisely that coefficient.
Every other such polynomial differs by degree below r and is orthogonal
to it in exp(-2pi v)dv. Its squared norm therefore increases by the squared
norm of that difference. This confirms the constant in (A), independently
of the finite inverse formula (4.2), but shares the same Laguerre normalization.
It is not an independent review of the theta/source correspondence.

### First correction and the cost of imposing endpoint zeros

For r=1 the optimal limiting profile is 1/pi-2v. Its squared weighted norm is
1/(2pi^3), whereas the endpoint-zero profile -2v has squared norm 1/pi^3. Thus

    d_1(T) ~ C0^2/(2pi^3) X^(7/2)log X exp(-2pi X),          (4.4)

exactly half the leading deficit in the supplied endpoint-adjusted response.
For r=2, the profile 2/pi^2-8v/pi+4v^2 has squared weighted norm 2/pi^5, giving

    d_2(T) ~ 2C0^2/pi^5 X^(3/2)log X exp(-2pi X).            (4.5)

More generally the r-fold endpoint-zero profile (-2)^r v^r has squared norm
(2r)!/(2pi^(2r+1)); its cost is binom(2r,r) times the optimum. This compares
fixed leading profiles at the same moment scale; it does not assert an exact
finite-T spectral minimum or a universal defect of all endpoint adjustments.

For the first correction, actual normalization can also be certified by
literal polynomials. Write w=pi X, B(w)=thetaBase(w) and N(w)=thetaNext(w),
using the existing CollarProfile definitions. Let W=B N'-B'N and

    M(w)=N'(w)+2N(w)-(2B(w)+B'(w))/16
        =2w^4-(37/2)w^3+(129/4)w^2+(123/8)w-315/16.

The existing source proves W(w)>0 for w>=8. Moreover

    M(v+8)=2v^4+(91/2)v^3+(1425/4)v^2+(8603/8)v+14197/16>0

for v>=0. Taking value=X^2/pi and w-slope=-2X^2/pi in the existing two-mode
jet solves, the actual coefficients are pi^2*jetFirst and pi^4*jetSecond.
Twice their whole-line moment is pi*X^2*M(pi X)/W(pi X)>0 for pi X>=8.
This is a quantitative nonvanishing statement for the explicit moment
normalizer, not a division by an unknown spectral coordinate or central L-value.
It does not make the all-degree asymptotic threshold explicit.

## 5. Complete residual: boundary limit and uniform lower bound

For arbitrary p, not necessarily moment-normalized, define

    r_X(p)=B_T(1_[-T,T]h_(X,p))-m_X(p)s_T.

By (1.5), the full arithmetic expression annihilates h distributionally;
removing its odd pole gives B h=m_X(p)sinh(t/2). This is an equation on these
particular rapid inputs, not a positive whole-line B operator assertion.
Subtract the exterior contribution to obtain, almost everywhere inside,

    r_X(p)(t)=integral_(|u|>T) kappa(|u-t|)d(u)du
       +sum_(n>=2) Lambda(n)n^-1/2[d(t+log n)+d(t-log n)].    (5.1)

Local absolute convergence follows from the theta bounds. The estimates below
make the complete expression L2 and therefore identify it with the canonical
operator residual. No prime tail, corner, or pole-normalization error is missing.

### Rescaled boundary map

For delta in [1,2], take t=T-delta/(2X). In the right integral set
u=log(X+v)/2. Equation (2.8) and

    kappa((log(1+v/X)+delta/X)/2)/(2(X+v))
                                -> 1/[2(v+delta)]

give, uniformly over this delta interval and over the fixed coefficient sphere,

    A_X^-1 r_X(p)(T-delta/(2X)) ->
    C p(delta):=(1/2)integral_0^infinity
                             exp(-pi v)p(v)/(v+delta)dv.    (5.2)

Here are the domination and arithmetic details. Since log(1+v/X)>=v/(X+v),
the kernel before the limit is at most 1/[2(v+delta)]+1/[2(X+v)], by
kappa(a)<=1/(2a)+exp(-a/2). Polynomial times exp(-pi v) is an integrable
majorant. Uniform convergence on compact v, then a uniform dominated tail,
proves the stated operator-norm convergence into L2([1,2]); the same argument
gives uniform convergence in delta.

The opposite archimedean corner has distance at least 2T-O(1/X) and normalized
size O_r(X^-3/2)|c|. Every right prime shift has log n>=log 2; (2.9) bounds
its normalized contribution by O_r(2^(-pi X))|c|. A left prime shift can hit
the exterior only for n>Y=exp(t+T)=X exp(-delta/(2X)). Its normalized magnitude
is bounded by the sum in (3.6), with endpoint Y comparable to X and exponent
pi X. This is O_r((1+log X)/sqrt X)|c|, uniformly in delta. Both signs of the
sign-changing profile have been priced by absolute values. In particular no
favorable prime-tail sign from the old positive response is assumed.

### Injectivity is proved, not supplied as an unknown source sign

The Stieltjes map C on P_r is injective. If C p vanishes in L2([1,2]),
continuity makes it zero on that interval. It is analytic for delta>0, so it
vanishes there identically. Expand, for any finite k,

    1/(v+delta)=sum_(j=0)^k (-v)^j/delta^(j+1)
                    +(-v)^(k+1)/[delta^(k+1)(v+delta)].

The exponential moments control the remainder. Letting delta tend to infinity
successively forces integral exp(-pi v)v^j p(v)dv=0 for j=0,...,r.
Multiplying by the coefficients of p and summing gives integral exp(-pi v)
p(v)^2dv=0. Thus p=0. Compactness of the finite coefficient unit sphere now
proves, for some kappa_r>0,

    integral_1^2 |C p(delta)|^2 ddelta >= kappa_r |c|^2.     (5.3)

This is a nonzero constant for a completely explicit, fixed finite Stieltjes
map, not an assumed arithmetic spectral gap. No numerical kappa_r is claimed.
The operator-norm convergence in (5.2) preserves half its minimum singular
value for sufficiently large X. Integrating over the boundary layer, with
dt=ddelta/(2X), gives

    ||r_X(p)||_2^2 >= c_r F_X |c|^2.                        (5.4)

This lower bound holds simultaneously for all coefficients, including those
that grow or cancel as X changes. Kernel cancellation at a single endpoint
does not remove the entire Stieltjes boundary profile.

### Whole residual upper bound and L2 identification

Both archimedean corners in (5.1) are bounded by Carleman's kernel 1/(2(x+y))
plus an exponential kernel, hence have norm O_r(A_X|c|/sqrt X). For n<=X,
use right-tail envelopes

    g_n(t)=1_(t>=T-log n)exp[-pi X(t-T+log n)].

Their starting points have spacing at least 1/X. Their whole-line Gram entries
are exp(-pi X|log n-log m|)/(2pi X); row sums are O(1/X).
Consequently the squared norm of their weighted sum is bounded by

    C/X sum_(n<=X) Lambda(n)^2/n <= C(1+log X)^3/X.

For n>X all right envelopes restricted to the window share exp(-pi X(t+T));
their coefficient sum is bounded by (3.6). Reflect for the left tails.
The same bounds apply to signed profile outputs by (2.9) and norm domination.
Thus

    ||r_X(p)||_2^2 <= C_r F_X(1+log X)^3 |c|^2.             (5.5)

This pays the entire infinite residual, not only finitely many Fourier rows.
Equations (5.4)--(5.5) do not assert that a Fourier tail estimate is uniform
in an increasing polynomial degree.

## 6. Why every fixed-degree norm/floor certificate fails

Under m_X(p)=1, (1.7) and (3.8) show

    0<d_T(h_(X,p))<=C_r F_X(1+log X)|c|^2.

Combining with (5.4) proves (B1). To compare with any independently proved
positive full-core floor, retain the genuine test from #1688:

    w_T=1_[-T,T]phi'''-c_T 1_[-T,T]phi',
    c_T=ell_T(1_[-T,T]phi''')/ell_T(1_[-T,T]phi').

The denominator tends to -1/4 and c_T tends to 1/4, but the finite moments
in this formula are EXACT. Thus ell_T(w_T)=0. The limit phi'''-phi'/4 is
nonzero, since its transform is -iz(z^2+1/4)Xi(z). The norms are bounded
above and away from zero. The exterior envelope for the third derivative has
amplitude O(X^(21/4)exp(-pi X)); (3.3)--(3.7), or the same proof with this
fixed amplitude, gives

    |a_T(w_T,w_T)|/||w_T||^2
          <= C X^(19/2)(1+log X)exp(-2pi X).                (6.1)

The zero moment retains the original source form on this test. Consequently
every actual full-domain coercive floor sigma_T>0 is at most (6.1).
This is an upper restriction on a supplied positive floor, not its existence.
Equations (B1) and (6.1) prove (B2), uniformly over the affine trial space.

The existing certificate can pass only when rho^2/sigma_T<=d_T(h). Since the
ratio in (B2) diverges, both strict and non-strict passing eventually fail.
If no positive full-domain floor is available, that certificate already lacks
a premise. If one exists, the stated uniform obstruction applies. It cannot
be avoided within this fixed derivative space by optimizing the coefficients
or merely imposing finitely many endpoint cancellations.

This result does not lower-bound weighted inverse energy by rho^2/sigma_T.
That quantity is an UPPER surrogate. Therefore it proves no negative source
value or eigenvalue, and it does not refute a genuinely directional inverse
estimate. No conclusion is transferred to the actual finite-prolate family.

## 7. Consequences for the exact weighted accuracy that remains unpaid

Suppose, separately, B_T is positive and coercive on the actual odd space.
For any operator-domain trial f, the existing inverse-energy identity gives

    alpha_T-J_T(f)=<B_T f-s_T,B_T^-1(B_T f-s_T)> >=0.        (7.1)

Apply (7.1) to the actual affine minimizer in (4.2). This gives alpha_T>=
1/2-d_r(T), proving (C1). Apply it also to the old y_T and subtract the two
variational estimates to obtain

    <B_T y_T-s_T,B_T^-1(B_T y_T-s_T)> >= d_0(T)-d_r(T).

The r=0 space has the unique normalized response y, so (A) gives its actual
old deficit. Dividing and using (A) proves (C2). At r=1 the coefficient is
1/pi^2, improving the supplied endpoint-zero coefficient 2/pi^2.

For each fixed A>0, choose one fixed r with 11/2-2r<-A. Equation (C1) yields

    max(1-2alpha_T,0) = o(X^-A exp(-2pi X))                 (7.2)

along any cofinal set on which the independent coercivity hypothesis holds.
This is not the assertion alpha_T=1/2 at any finite T. The starting X depends
on r, and there is no r-uniform estimate allowing the limits to be reversed.
The lower estimate (C2) similarly approaches the old deficit to every fixed
algebraic relative order, without giving the needed upper estimate.

The first still-unpaid inequality for this alternative route is a fully paid
DIRECTIONAL upper bound

    <B_T f-s_T,B_T^-1(B_T f-s_T)> <= 1/2-J_T(f)

on an actual cofinal family, together with the independent positive-core
realization. The existing Schur reference and inverse identities do not
supply either. Equivalently one can return to the primary route's whole-odd
lower Schur sign, valid even complement and full trial margin. Those are
alternative proof programmes, not additional premises of this theorem.

## 8. Focused comparison and preservation boundaries

The live initial math read returned
7f689b80ed63d035bde0a8a9d08f7726cd9e41e8. Repository instructions,
proof-comparison disposition, toolchain and manifest were read. The layout
contents response returned empty decoded content with blob
ec7ae0dce9138e0e1f44f36b65d433e0e9897e00; no complete taxonomy audit is claimed.
New source stays beside the actually retrieved existing theta and rank-one
modules in GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory. No namespaces
of existing declarations, root imports, dependencies or historical statuses change.

Relevant current reviews #1685, #1687, #1688, #1689 and #1690 were read. The
half-window analytical source and its complete evaluator were inspected,
including all residual indices, separate head/rectangular prices, directional
remote forms, complement Gram and pivot tests. Its eight historical endpoint
checks and 128 positive pivots were NOT replayed. Its positive full complement
at T=1/2 is retained as a recorded computer-assisted result; reading it is not
independent review. Its success is not transferred to the fixed-degree spaces.

The actual finite-prolate comparison supplied in prolate-hermite-comparison.md
was inspected at its stated lambda>=512, first-correction, interior-strip,
reflection and norm-floor scope. It remains NOT_PUBLISHED; no candidate bytes
or publication identity for it are invented. It is not a premise here and its
entire analytical argument has not been independently reviewed. These odd
responses do not identify its proxy with a genuine Weil ground function.

Nearest inspected prior mechanisms:

- The supplied rank-one saturation note and published source #1688 analyze
  only the hard-truncated response y. The supplied weighted-residual note
  gives one endpoint-zero response, with leading deficit C0^2/pi^3 times
  X^(7/2)log X exp(-2pi X), and an exact weighted near-saturation LOWER bound.
  They are the source-specific predecessors, not disproved by this result.
- The collar source #1690 realizes each fixed polynomial boundary profile and
  gives its exterior energy. Its optimization is a different quotient against
  a physical collar readout. This note strengthens the fixed-space uniform
  matrix return, uses the exact whole-line moment functional, and optimizes
  under that constraint. The new residual Stieltjes limit addresses the
  entire fixed response space, not the old physical collar coefficient.
- rStation paper 25, version 1, *Quantitative theta trial spaces for the Weil
  form*, 18 October 2026, was reread. Its Theorem 2.2 is an energy asymptotic
  for one specified smooth cutoff; Theorem 2.3 gives fixed-index spectral
  UPPER bounds using derivative spaces. It explicitly does not identify the
  minimum or supply a spectral lower sign. No theorem from it is imported.
- rStation paper 84, version 1, *Uniform weighted zero sampling and near-zero
  spectrum of compact-window Weil operators*, 1 November 2026, was inspected
  as a comparison lead. Its absolute sampling and near-zero spectral-distance
  assertions do not identify a lowest eigenvalue or an arithmetic lower sign.
  No result from it is adopted as an input.
- Laguerre orthogonality, monic least-squares minimization, finite inverse
  continuity and Stieltjes uniqueness are established methods. DLMF 18.5.12
  and Table 18.3.1 were checked for the precise convention. No priority claim
  for those methods or for global theta-radical constructions is made.

The contribution relative to these inspected sources is the complete
fixed-degree affine-deficit asymptotic with its optimal constant, an actual
moment-normalized jet response, and the uniform whole-residual obstruction
for every coefficient choice in the space. Worldwide novelty remains
UNASSESSED. The two optimizer derivations share the same source/profile
identification; finite diagnostics are not independent analytical review.

## 9. Formal scope, executed diagnostics and verification boundary

WeilThetaResponseOptimization.lean reuses the actual CollarProfile polynomials,
jet formulas and Laguerre coefficients, RankOneSaturation's exact deficit,
and the existing SchurResidual inverse-energy identity. It contains finite
source-expression and scalar proof candidates for the first two profiles,
complete squared-energy identities, exact normalizer positivity, exterior
pole cancellation and the correctly directed weighted-residual consequence.

It does NOT formalize the infinite theta series, global explicit formula,
canonical operator/domain construction, all-degree asymptotic matrix,
Stieltjes uniqueness/lower norm, source residual or Theorems A--B. Their
analytical proofs are above, not replaced by supplied certificate fields.
No new RH/DirichletGRH predicate, research axiom or diagnostic Boolean axiom
is introduced. The all-degree result is not claimed as a checked Lean theorem.

The pure weil_theta_response_checks.py has no network, filesystem, subprocess,
scheduling, repository mutation or proof-runner behavior. With SymPy 1.14.0,
the exact staged source was executed by

    PYTHONPATH=/mnt/data/weil_theta_response_work python -c \
      'from weil_theta_response_checks import diagnostics; print(diagnostics())'

Result PASS: four profile-completion/endpoint-cost identities; eight monic
theta polynomials; two literal moment-numerator identities; thirteen limiting
jet determinants and thirteen inverse entries; 136 Laguerre cross moments;
thirteen optimal norm/endpoint-ratio cases; 48 rational jet/exact-moment
fixtures; eleven moment-Hankel determinants; one rejected missing-cross-term
mutation; and one exact pole-deficit cancellation. The rational jet tests use
p=1 or p=3, not a numerical value of pi. Python syntax compilation passed.
These finite checks do not verify the theta series, asymptotic uniformity,
actual arithmetic operator signs, or universal Stieltjes argument.

Pins were refreshed and unchanged: Lean v4.34.1, Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612. No verified canonical local skill
checkout or Lean/Lake/elan executable was available. The canonical
workflows/research/orchestration/skills/noe-proof-automation/SKILL.md returned
404 at fresh noeaaeue main 90a9ffcc0ff58485a6b5662ed7b9132e9e937b18. No dependent
proof automation, CI dispatch, browser messaging or scheduling ran. Manual
mathematical drafting and direct source publication are separate from proof
execution. Formal qualification and independent review remain NOT_RUN.

No new interval arithmetic spectrum, lower/upper Fourier Schur matrices,
cutoffs N,M,L, high solve Y, positive cofinal Schur margin, genuine arithmetic
ground reconstruction or character-dependent operator was constructed. The
actual targets Mathlib's RiemannHypothesis and the repository DirichletGRH
remain untouched and unproved by this increment. The current primary
remaining inequalities are not restated as fulfilled certificate fields.

Publication commit, parent, complete tree, source blobs and the expected-head
non-force readback are recorded in the associated exact-source review issue.
Publication does not change any of these mathematical or formal statuses.

## Source identities

- Connes, *The Riemann Hypothesis: Past, Present and a Letter Through Time*,
  arXiv:2602.04022v1, Section 6.6 and the exact Xi convention; the attached v1
  remains the primary specification. Its rendered page 30 was inspected.
- Connes--Consani--Moscovici, *Zeta Spectral Triples*, arXiv:2511.22755v1,
  exact source formulas listed in Section 1; CC BY 4.0 attribution retained.
- WeilRankOneSaturation.lean, publication 53fe672ef61ae43b0637e2c9805b5ac8d0641c48,
  blob 74688af7438d7219087a191999a1e8cfa7f6d7d4; #1688.
- RankOneResidualCertificate.lean, publication a215ea91ff945a003eebb27ee4b3ae7361751d9b,
  blob 9659ae0a228579a00b79c5cb9b928cb2b3b6bcbc; #1687.
- WeilCollarProfileObstruction.lean, publication 7f689b80ed63d035bde0a8a9d08f7726cd9e41e8,
  blob 7625c5ee7cd42fc91312fa292a4289d57a18bb6d; analytical note
  blob b560ef8149241cbfefc7316d8d4b436d0f03fad6; #1690.
- WeilHalfWindowSeparation evaluator blob 4d165b0998101fb30057643c3fa8d26b51d1c738;
  analytical note blob 4fbc592d44fe906f82cc3c70adce02ad5464c183; publication
  d2f277ec4f38c7ecae5a27aa262873343c98a96a; #1689. Source inspected, not replayed.
- Supplied weighted-residual note SHA-256
  5d4c1f39ba81719123c501a1dbdfb31430670ffbbdd371f62b1e882b7d6156e8;
  source-exact endpoint adjustment and predecessor weighted bound.
- Supplied prolate-hermite-comparison.md SHA-256
  416c558cccfa961de031fc99a2c6d2e524bb3819cf27ef273a9076d3ea65d079;
  expressly unpublished and not an input to this proof.

Original local source and exposition use exactly grwtsk contributors for
attribution. Public researchers' bylines and actual upstream license obligations
are retained. No upstream implementation was copied.
