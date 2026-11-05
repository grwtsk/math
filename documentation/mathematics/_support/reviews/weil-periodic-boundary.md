# Periodic comparison, arithmetic tail coercivity, and the trigonometric core of the restricted Weil operator

Local attribution: grwtsk contributors.
Research date: 2026-11-04 (America/Los_Angeles).
Original exposition and companion candidate Lean source: repository MIT license.
AI-assisted analytical work; independent mathematical review NOT_RUN.

## 0. Statement, purpose, and limits

This note concerns the canonical FULL pole-inclusive operator A_T of
Connes--Consani--Moscovici (CCM), *Zeta Spectral Triples*, arXiv:2511.22755v1,
on L^2([-T,T],dt), T>0. It proves an exact bounded boundary-periodization
comparison, an explicit lower bound on the complete high Fourier complement,
and explicit mixed-block bounds for that same arithmetic operator. The
comparison also proves essential self-adjointness on trigonometric polynomials,
not merely that those polynomials are a form core.

The result does NOT prove E_{1,+}<min(E_{2,+},E_{1,-}) on an unbounded sequence.
The high complement here is the orthogonal complement of an explicitly growing
finite-dimensional Fourier space, NOT the complement of one proposed ground
vector. The remaining finite-dimensional low-energy ordering is not discharged.
No normalized convergence of genuine ground functions, RH, or Dirichlet GRH
is asserted. The boundary correction in Section 7 is well-defined without
assuming a low spectral gap, but its low-frequency residual remains uncontrolled.

Main exact identity, with definitions below:

    A_T = D_T + G_T - P_T^arith + L_T^pole.                         (0.1)

D_T is a diagonal logarithmic Fourier multiplier on the circle of length 2T.
G_T retains the entire zero-extension boundary interaction. It is bounded,
nonnegative on the even sector and nonpositive on the odd sector. Neither
G_T nor the signed arithmetic perturbation is discarded from (0.1).

The two principal quantitative outputs, for N>=1 and w supported in [-T,T]
with Fourier coefficients zero for |n|<=N, are

    Q_T(w)>=c_+(T,N)||w||^2   if w is even,
    Q_T(w)>=c_-(T,N)||w||^2   if w is odd,                          (0.2)

where c_+ and c_- are completely explicit in (5.1). Section 5 gives an explicit
N(T,b) for any requested floor b>=0. This is a genuine infinite-dimensional
lower bound at every T, hence also on T_j=j+1. It is not ground-state separation.

For Fourier blocks |n|<=M and |n|>N with N>M, the arithmetic prime mixed norm is

    <= K_T/pi * sqrt(2(2M+1)/(N-M)),                              (0.3)

rather than the full prime norm K_T. All prime powers in the support are present.
Section 6 includes explicit boundary and pole mixed bounds, so (0.3) is not used
as though it controlled the other components.

## 1. Source identification and the closed form

Use antilinear-first inner products, zero extension, and
fhat(z)=integral_R f(t) exp(-izt) dt. This is distinct from the additive transform
used to define the source's prolate functions. Set L=2T and

    kappa(r)=exp(-r/2)/(1-exp(-2r)),  r>0,
    c_inf=psi_dig(1/4)-log pi,
    a_q=Lambda(q)/sqrt(q),
    S_r f(t)=1_{[-T,T]}(t+r)f(t+r),
    P_T^arith=sum_{2<=q<exp(2T)} a_q (S_{log q}+S_{log q}^*),
    c(t)=cosh(t/2),  s(t)=sinh(t/2),
    L_T^pole=2|c><c|-2|s><s|.

CCM (3.5), (3.7)--(3.11), (3.14)--(3.20) give exactly

    Q_T(f)=c_inf||f||^2+E_0(f)-<f,P_T^arith f>+<f,L_T^pole f>,
    E_0(f)=integral_0^infty kappa(r)||f_0(.+r)-f_0||_{L^2(R)}^2 dr. (1.1)

Here f_0 denotes the zero extension. The pole term is
2 Re(M_+(f) conjugate(M_-(f)))=2|<c,f>|^2-2|<s,f>|^2. It is not two positive
squares. The term log q=L is the zero operator: the translated supports meet
in a null set. Thus including that endpoint changes neither the form nor A_T.

For completeness, kappa(r)=sum_{j>=0}exp(-(2j+1/2)r). Tonelli and Plancherel give

    E_0(f)=(1/(2pi)) integral_R m(xi)|fhat(xi)|^2 dxi,
    m(xi)=2 sum_{j>=0}[1/(2j+1/2)
                 -(2j+1/2)/((2j+1/2)^2+xi^2)]
         =Re psi_dig(1/4+i xi/2)-psi_dig(1/4).                    (1.2)

The last equality is the convergent digamma difference series. CCM's multiplier
2 theta'(xi) is Re psi_dig(1/4+i xi/2)-log pi. Consequently (1.1) agrees with
its maximal multiplier form, including its domain, rather than only on a small
test class. Its domain is {f:E_0(f)<infinity}. Finite prime shifts and the pole
operator are bounded at each fixed T. The closed-form construction is therefore
the one in CCM Propositions 3.3--3.4 and Theorem 3.6. We give a second, direct
domain description in Section 4.

No whole-line positive or self-adjoint arithmetic operator is inferred here.
The global radical identity from the historical hard-cutoff note is not an input.

## 2. The boundary-periodization identity on the maximal domain

Let tau_r^per be translation modulo L on [-T,T]. Define

    E_per(f)=integral_0^infty kappa(r)||tau_r^per f-f||_2^2 dr.

For t,s in the open interval define

    G_T(t,s)=sum_{k in Z, k!=0} kappa(|s-t+kL|).                   (2.1)

This positive pointwise kernel defines a bounded self-adjoint integral operator,
with

    ||G_T|| <= C_bd(T):=pi+2+4 exp(-T)/(1-exp(-4T)).               (2.2)

In particular C_bd(T) is uniformly bounded for T>=1. This is an operator-norm
bound, not a claim that G_T is positive as a quadratic form on all functions.

Proof of (2.2). The elementary inequality

    kappa(r)<=1/(2r)+exp(-r/2)

follows from 1/(1-exp(-2r))<=1+1/(2r). In coordinates x=t+T,y=s+T in (0,L),
the two nearest images have singular majorant

    1/[2(L-x+y)]+1/[2(L+x-y)].

The Carleman kernel 1/(x+y) on (0,L) has norm <=pi: Schur's test with weight
x^(-1/2) uses integral_0^infty y^(-1/2)/(x+y)dy=pi*x^(-1/2).
Reflection in x or y is unitary, so the displayed sum has norm <=pi.
The row integral of the two nearest exponential remainders is

    2(1-exp(-L/2))(exp(-x/2)+exp(-(L-x)/2)) <= 2.

The remaining images correspond to two exterior half-lines whose distances
from t are at least L. Their row integral is at most

    2 integral_L^infty kappa(r)dr
       <=4 exp(-L/2)/(1-exp(-2L)).

The same bounds hold for columns. Schur's test and positive-kernel domination
prove (2.2). This argument retains both corners; it does not replace the
boundary kernel by a diagonal potential.

For EVERY f in L^2([-T,T]), the following identity holds whenever either energy
is finite; moreover either is finite if and only if the other is finite:

    E_0(f)=E_per(f)+<f,G_T f>.                                   (2.3)

Here is a maximal-domain proof avoiding an assumed common core. First truncate
both r-integrals to r>=epsilon>0. Expand the squared differences. Both have the
same diagonal term 2||f||^2 integral_epsilon^infty kappa. The difference of their
correlations is exactly the sum of exterior periodic images. Hence

    E_{0,epsilon}(f)-E_{per,epsilon}(f)=<f,G_{T,epsilon}f>,

where (2.1) is restricted to image distances at least epsilon. These operators
are uniformly bounded by the same positive majorant as G_T. Moreover
G_{T,epsilon}f -> G_T f in L^2: pointwise convergence and domination by the
L^2 function G_T|f| give dominated convergence. Each energy increases to its
untruncated value. Uniform boundedness of their difference proves equality of
finite-energy domains, and then the displayed limit gives (2.3). Polarization
gives the corresponding sesquilinear identity. No boundary terms have been lost.

## 3. The exact parity of the boundary term

Put alpha_j=2j+1/2. Summing the images of each exponential yields

    G_T(t,s)=sum_{j>=0} 2 cosh(alpha_j(t-s))/(exp(2alpha_j T)-1).
                                                                    (3.1)

For each finite partial sum its quadratic form is

    sum_j 2/(exp(2alpha_j T)-1)
       (|<cosh(alpha_j .),f>|^2-|<sinh(alpha_j .),f>|^2).           (3.2)

The partial kernels are pointwise dominated by (2.1), so their operators converge
strongly by the same domination argument. For even f all the sinh moments vanish;
for odd f all the cosh moments vanish. Passing to the limit proves

    G_T|_{H_T^+}>=0,                 G_T|_{H_T^-}<=0.              (3.3)

The full operator is not claimed positivity-preserving. These are parity-sector
quadratic-form signs for a specific boundary correction, not an ordinary-cone
argument. Every component of (0.1) commutes with reflection and conjugation.

## 4. Diagonal comparison, exact domains, and the source's operator core

Let e_n(t)=L^(-1/2) exp(i*pi*n*t/T), omega_n=pi*n/T, n in Z. Periodic Parseval
and Tonelli show

    E_per(f)=sum_n m(omega_n)|<e_n,f>|^2.

Define the self-adjoint diagonal operator D_T by D_T e_n=d_n e_n, where

    d_n=c_inf+m(omega_n).

For all real xi,

    (1/2)log(1+4xi^2)<=m(xi)<=4+(1/2)log(1+4xi^2).                (4.1)

Proof. Put b=|xi|/2 and F_b(x)=b^2/[x(x^2+b^2)] for x>0. Then
m(xi)=sum_{j>=0}F_b(j+1/4). For b>0 this function is decreasing, since
F_b'(x)=-b^2(3x^2+b^2)/[x^2(x^2+b^2)^2]. Its integral from 1/4 to infinity is
(1/2)log(1+16b^2), while F_b(1/4)<=4. The integral test proves (4.1).
The case b=0 is immediate. The series also proves monotonicity in |xi|.

Equations (1.1) and (2.3) identify the CLOSED forms and hence their associated
operators, proving (0.1) on the exact domain

    Dom(A_T)=Dom(D_T)
       ={f:sum_n (1+|d_n|^2)|<e_n,f>|^2<infinity}.                (4.2)

The form domain is the analogous domain with weight 1+m(omega_n).
No boundary trace equality f(-T)=f(T) is imposed: this logarithmic diagonal
domain includes finite-jump functions. The word periodic describes the comparison
translation and Fourier basis, not an added boundary condition on the Weil domain.
Indeed the remaining operator V_T=G_T-P_T^arith+L_T^pole is bounded symmetric,
with

    ||V_T||<=B_T:=C_bd(T)+K_T+2(T+sinh T),
    K_T:=2 sum_{2<=q<exp(2T)} Lambda(q)/sqrt(q).                  (4.3)

The bounded perturbation theorem and uniqueness of the closed-form operator
justify (4.2). Equivalently these steps follow from the representation theorem.
The finite Fourier sums are a graph core for D_T by truncating its diagonal
series. The inequalities

    ||A_T f||<=||D_T f||+B_T||f||,
    ||D_T f||<=||A_T f||+B_T||f||

show that they are also a graph core for A_T. Thus A_T restricted to the
trigonometric polynomials is essentially self-adjoint. Since d_n tends to
infinity, D_T has compact resolvent; the bounded perturbation resolvent identity
gives compact resolvent for A_T as well. This is consistent with CCM Theorem 3.6.

To return to the EXACT one-sided distribution in Connes--van Suijlekom (CvS),
arXiv:2511.23257v1, equation (6), define on C^infty([0,L])

    D_sharp(h)=(c_inf/2)h(0)
       +integral_0^L kappa(r)(h(0)-h(r))dr
       +h(0)integral_L^infty kappa(r)dr
       +integral_0^L 2cosh(r/2)h(r)dr
       -sum_{2<=q<exp(L)} a_q h(log q).                           (4.4)

This is a real distribution: the subtraction at zero makes the singular integral
continuous in the C^1 norm. For zero-extended trigonometric f,g put
h(r)=(f^**g)(r)+(f^**g)(-r), r in [0,L]. This function is smooth on the CLOSED
one-sided interval, h(0)=2<f,g>, and h(L)=0. Direct substitution gives the
polarization of (1.1). The terms in (4.4) also agree with CCM's one-sided
Psi^sharp, equations (3.14)--(3.18); in particular the half delta coefficient
and the regularization are retained. Translating [-T,T] to [0,L] maps this to
CvS equation (6), and changes e_n only by a constant phase. The operator just
proved essentially self-adjoint is therefore its actual trigonometric operator.
This does NOT start from an unspecified even distribution and reverse the
symmetrization; CvS Remark 4.3 is respected.

Consequently the operator-core requirement of CvS Theorem 6.1 is supplied
analytically for this literal Weil operator. Its simple-even-ground-state
requirement is still separate and unproved on cofinal windows.

## 5. Explicit arithmetic lower bounds on the infinite complement

Let Pi_N be orthogonal projection onto span{e_n:|n|<=N}, and Q_N=I-Pi_N.
Both preserve the exact form and operator domains, by (4.2), and preserve parity.
The prime norm is <=K_T because each S_r is a contraction. A coarser bound
requiring no prime distribution theorem is K_T<=8T(exp(T)-1), obtained from
Lambda(q)<=log q<=2T and sum_{2<=q<X}q^(-1/2)<=2(sqrt(X)-1).

The real orthonormal sine coefficients of s(t)=sinh(t/2) are

    <T^(-1/2)sin(omega_n .),s>
       =2(-1)^(n+1)omega_n sinh(T/2)
           /[sqrt(T)(1/4+omega_n^2)],  n>=1.

Therefore, for N>=1,

    ||Q_N s||^2<=4T sinh(T/2)^2/(pi^2 N).

Using (3.3), the pole sign, and the smallest diagonal value on Q_N gives (0.2)
with

    c_+(T,N)=c_inf+m(pi(N+1)/T)-K_T,
    c_-(T,N)=c_inf+m(pi(N+1)/T)-K_T-C_bd(T)
                          -8T sinh(T/2)^2/(pi^2 N).              (5.1)

These inequalities hold for EVERY vector of the indicated infinite-dimensional
form-domain complement, not merely for a matrix truncation.

For b>=0 choose the explicit integer

    N(T,b)=ceil(max(1,
                    8T sinh(T/2)^2/pi^2,
                    [T/(2pi)] exp(b+1+K_T+C_bd(T)-c_inf))).       (5.2)

Then the last loss in c_- is <=1 and, by (4.1),

    m(pi(N+1)/T)>=log(2pi(N+1)/T)
                   >=b+1+K_T+C_bd(T)-c_inf.

Thus c_-(T,N)>=b and c_+(T,N)>=b. In particular T_j=j+1, N_j=N(T_j,2) is an
unconditional cofinal family with Q_T>=2||.||^2 on its entire Fourier tail.
No assertion about the lowest two even eigenvalues or the lowest odd eigenvalue
is implied: their competitors may be in the growing finite head.

## 6. Actual mixed-block estimates, including the boundary

### 6.1 Prime shifts

For r in (0,L), direct integration on [-T,T-r] gives, when m!=n,

    <e_m,(S_r+S_r^*)e_n>
       =(-1)^(n-m)[sin(omega_m r)-sin(omega_n r)]/[pi(n-m)].       (6.1)

The diagonal value is 2(1-r/L)cos(omega_n r). The n-m denominator is essential:
(6.1) is NOT a periodic-shift substitution. In particular, for M<N,

    ||Q_N P_T^arith Pi_M||
       <=(K_T/pi) sqrt(2(2M+1)/(N-M)).                           (6.2)

To prove this, each off-diagonal entry has absolute value <=K_T/(pi|n-m|).
For |n|<=M, sum_{|m|>N}1/(m-n)^2<=2/(N-M). Summing over the 2M+1 columns
bounds the Hilbert--Schmidt norm and hence the operator norm. This keeps all
prime weights and gains decay across a frequency buffer. For M=N use K_T,
not the invalid zero-denominator specialization of (6.2).

### 6.2 The boundary operator

The rank-one expansion (3.1) and elementary hyperbolic Fourier integrals give

    <e_m,G_T e_n>=(2/L)(-1)^(m+n) sum_{j>=0}
      (1-exp(-2alpha_j T))(alpha_j^2-omega_m omega_n)
        /[(alpha_j^2+omega_m^2)(alpha_j^2+omega_n^2)].             (6.3)

The numerical factor follows from
8sinh(alpha T)^2/(exp(2alpha T)-1)=2(1-exp(-2alpha T)).
Absolute convergence follows from the O(alpha_j^(-2)) tail for fixed m,n.
For m!=0 the algebraic identity

    (alpha^2+x^2)(alpha^2+y^2)-(alpha^2-xy)^2=alpha^2(x+y)^2

and sqrt(alpha^2+omega_n^2)>=alpha imply

    |<e_m,G_T e_n>| <=[2+(1/2)asinh(2|omega_m|)]/(pi|m|)
                      <=[A(T)+(1/2)log|m|]/(pi|m|),
    A(T)=2+(1/2)log(1+4pi/T).                                   (6.4)

For the first bound use the decreasing summand
1/[alpha sqrt(alpha^2+|omega_m|^2)] on alpha_j=2j+1/2: its first value is
<=2/|omega_m| and half its integral from 1/2 to infinity is
asinh(2|omega_m|)/(2|omega_m|). The second uses
asinh x<=log(1+2x) and |m|>=1.

Put B=A(T)+(1/2)log N. For N>=1 and M<=N, (6.4) and the integral test yield

    ||Q_N G_T Pi_M||<=b_G(T,M,N),
    b_G(T,M,N)^2=2(2M+1)/(pi^2 N) * (B^2+B+1/2).                (6.5)

The summand is decreasing because A(T)>=2. One may replace this bound by its
minimum with C_bd(T). Thus the boundary mixed form has been controlled too.

### 6.3 Pole contributions and full mixed form

The cosine coefficients of c(t)=cosh(t/2), for n>=1, are

    (-1)^n sinh(T/2)/[sqrt(T)(1/4+omega_n^2)].

Together with ||c||^2=T+sinh T and ||s||^2=sinh T-T, this gives

    b_pole,+ (T,N)=2 sqrt[(T+sinh T)T^3 sinh(T/2)^2/(3pi^4 N^3)],
    b_pole,- (T,N)=2 sqrt[(sinh T-T)4T sinh(T/2)^2/(pi^2 N)].      (6.6)

These bound ||Q_N L_T^pole Pi_M|| in the respective parity sectors for M<=N.
For u in Pi_M H_T^sigma and w in Q_N D(Q_T), N>M, the diagonal term is zero,
and therefore

    |Q_T(u,w)|<=b_sigma(T,M,N)||u||||w||,
    b_sigma=min(C_bd(T),b_G(T,M,N))
             +(K_T/pi)sqrt(2(2M+1)/(N-M))+b_pole,sigma(T,N).       (6.7)

For the adjacent full decomposition Pi_N+Q_N the valid bound is instead

    b_sigma^adj(T,N)=C_bd(T)+K_T+b_pole,sigma(T,N).                (6.8)

A buffered estimate never deletes the intermediate modes M<|n|<=N. Those
modes must remain in a finite low-block certificate or receive separate bounds.

## 7. A noncircular high-frequency correction and the finite-prolate family

Let A_hh be the compression of A_T to Q_N H_T^sigma, with its diagonal-plus-
bounded-perturbation domain. It is self-adjoint. If c_sigma(T,N)>z, then

    ||(A_hh-z)^(-1)||<=1/(c_sigma(T,N)-z).                        (7.1)

This is available from (5.1)--(5.2), without a ground-state or low-gap assumption.
For a finite vector u in Pi_M H_T^sigma, M<=N, define

    u_corr=u-(A_hh-z)^(-1) Q_N A_T u.                            (7.2)

It belongs to Dom(A_T), its low part remains u, and

    Q_N(A_T-z)u_corr=0,
    ||u_corr-u||<=b_sigma||u||/(c_sigma(T,N)-z),                  (7.3)

using (6.7) or (6.8) as appropriate. The remaining low residual is EXACTLY

    [Pi_N(A_T-z)Pi_N
       -Pi_N A_T Q_N(A_hh-z)^(-1)Q_N A_T Pi_N]u.                 (7.4)

The construction is not circular: the inverse is of a specifically proved
coercive high block. But (7.4) is not zero or small by construction. Its ground
ordering and its prolate alignment are still the missing arithmetic estimates.
No favorable sign of a hard-cutoff tail is transferred to the correction.

The actual finite-prolate family of Connes arXiv:2602.04022v1, (15)--(17), has
h_lambda a linear combination of the regular angular functions h_{0,lambda},
h_{4,lambda}, restricted to [-lambda,lambda] and zero elsewhere. The regular
solutions are smooth up to both endpoints (the regular Frobenius branch of
(15)). Thus its logarithmic function is a finite piecewise C^1 sum

    K(t)=1_{[-T,T]}(t) exp(t/2)
               sum_{1<=m<=lambda^2, m exp(t)<=lambda} h_lambda(m exp(t)).

There are only finitely many jumps, at t=T-log m and the support endpoints.
Their values at the individual endpoints do not affect the L^2 class. Therefore
K is in the ACTUAL Dom(A_T), by (4.2) and the Fourier coefficient bound below.
This statement also holds for either parity projection and any explicit scalar
multiple. It does not assert that K is even, a ground state, or globally Fourier
invariant. Vanishing integral of h_lambda is not used to infer h_lambda(0)=0.

Here is an explicit truncation estimate that includes operator error. Let V be
the total variation on R of the zero extension of K. Integration by parts against
its finite derivative measure gives, for n!=0,

    |<e_n,K>|<=V sqrt(2T)/(2pi|n|).

Set C_A(T)=|c_inf|+4+(1/2)log(1+(2pi/T)^2), and B=C_A(T)+log M. For M>=1,

    ||Q_M K||<=V sqrt(T/(pi^2 M)),
    ||D_T Q_M K||<=V sqrt[T/(pi^2 M)*(B^2+2B+2)],
    ||A_T Q_M K||<=V sqrt[T/(pi^2 M)*(B^2+2B+2)]
                         +B_T V sqrt(T/(pi^2 M)).                (7.5)

Use (4.1) to bound |d_n|<=C_A(T)+log|n| and integrate the decreasing
(logarithm)^2/n^2 majorant. This proves graph-norm convergence, not just a
finite-matrix residual assertion.

A finite explicit upper bound for V is obtained by summing the variations of
individual summands. For each integer 1<=m<lambda^2 include

    m^(-1/2) [sqrt(m/lambda)|h_lambda(m/lambda)|
              +integral_{m/lambda}^lambda |(sqrt(u)h_lambda(u))'|du
              +sqrt(lambda)|h_lambda(lambda)|].                 (7.6)

Their sum bounds V; an equality m=lambda^2 contributes no L^2 function and may
be omitted. Formula (7.6) includes the lower cutoff, every internal jump, and
the upper cutoff. It need not be sharp. No uniform-in-T prolate asymptotic or
normalization limit is asserted merely from this finite formula.

Equations (7.1)--(7.6) are a boundary-adapted mechanism for controlling the
literal high-frequency operator residual. They do NOT establish a residual
small relative to an actual ground spacing, nor a weighted comparison to Xi.

## 8. What a remaining finite certificate must prove

For the adjacent split in a parity sector, all projections preserve the domain,
the infinite tail lower bound c_sigma is proved, and the mixed bound (6.8) is
proved. A finite-head lower bound a can therefore be returned to the whole
sector at level beta when

    a>=beta, c_sigma>beta,
    (b_sigma^adj)^2 <= (a-beta)(c_sigma-beta).

This is an application of the usual two-block completion of the square, not a
new claim about its abstract algebra. In the even sector one can restrict to
the finite complement of an explicitly identified trial before doing this.
But the finite-head lower bounds and strict inter-sector ordering have NOT
been proved on a cofinal sequence. One cannot replace them by trial energies.
The historical derivative-cutoff competitors lie in Dom(A_T); the Fourier
split decomposes them into both head and tail. Nothing in (0.2) excludes their
very small Rayleigh values: the growing head retains those low-energy directions.

The source's finite-prolate approximation is not replaced by a hard cutoff of
its Hermite limit. No hard-cutoff residual/gap obstruction is re-proved or
transferred. Our correction cancels only an explicitly identified high block;
the low residual (7.4) and normalized ground comparison are retained as open.

### Hostile checks on the comparison

For the constant function f=1 on the interval, E_per(f)=0, while direct
zero-extension integration gives E_0(f)=2 integral_0^infty kappa(r)min(r,L)dr.
Integrating the image kernel gives exactly the same expression. This checks
the sign and factor of (2.3) without the Fourier calculation. For a single
exponential kernel, direct integration of the cosine and sine moments gives
the two opposite signs in (3.2); neither can be replaced by two positive squares.
The nearest-corner majorant is a bounded Carleman operator, not a bounded
pointwise function. No compactness of G_T, no disappearance of intermediate
Fourier modes, and no preservation of a hard-cutoff tail sign are claimed.

## 9. Audit, provenance, and verification scope

Repository base inspected: grwtsk/math e90b10114023c691744f1f6c2b5583850126a31b,
whose parent is ce9821c2531e1937dc0c1cb098dddeb0c2e76b1a. Existing files and pins
are preserved. The earlier cone note remains pinned at 6e2db06a7ba8cc938c7a000c2f8122ca79d67d6c;
its current blob 017e3fba9d195874b3874e5a42ec7e84fb4f6d92 and still-open
verification issue #1670 were refreshed without changing their NOT_RUN statuses.
The hard-cutoff analytical note was re-read at blob 6a3388cf727225fb41ff261a2532dccfe353c5c5,
and its Lean module at blob 1fa3833192c5604c0cb13ee44d122846fca82d7d. Issue #1671
still records independent review, elaboration, kernel checking, and axiom audit
as NOT_RUN. This note independently proves the source-form/domain material it
consumes; it does not upgrade the old global-radical, normalization, tail, Gram,
or distribution-to-residual claims to independently reviewed status. Their
reported factor-four correction remains separate from any finite-prolate scalar.

Primary sources inspected directly:
- Alain Connes, arXiv:2602.04022v1, especially pp. 28--30, (15)--(17), Fact 6.4,
  and Section 6.6. The supplied PDF was inspected, including rendered pages.
  The finite-prolate/minimizer comparison and simple-even-ground obligations
  remain distinct. The Fact 6.4 convergence-region and scalar audit is not done here.
- Alain Connes, Caterina Consani, Henri Moscovici, arXiv:2511.22755v1,
  (3.5), (3.7)--(3.20), Propositions 3.3--3.4, Theorem 3.6. CC BY 4.0.
  Their form core is not silently promoted to an operator core: Section 4 supplies
  the additional bounded-perturbation argument.
- Alain Connes and Walter D. van Suijlekom, arXiv:2511.23257v1,
  equation (6), Remark 4.3, Theorem 6.1. CC BY 4.0. Its operator-core hypothesis
  is matched by (4.4) and (4.2); its ground-state hypothesis is NOT discharged.
- Masatoshi Suzuki, arXiv:2606.09096v3, and Xuefeng Zhu, arXiv:2608.24827v2,
  were refreshed as comparison leads, not imported numerical certificates.
- Suzuki, arXiv:2610.32704v1, Theorems 1.1--1.2: RH-dependent convergence;
  its distinct-ordinate product is not the prescribed Xi without further work.
  No result of that paper is an unconditional premise here.

Focused searches included periodic/core/Carleman comparisons, complementary
coercivity and finite-prolate boundary residuals. Worldwide novelty is UNASSESSED;
there is no claim to have originated Fourier periodization, the Carleman bound,
bounded perturbation theory, or finite-complement certification. The result
retained here is their explicit source-exact comparison and arithmetic constants.

Lean pin remains v4.34.1; Mathlib remains d13f23b723b8a846827a245b89c10fc7d3f11612.
The companion WeilPeriodicBoundary.lean contains scalar/finite-sum proof
candidates used by the analytical derivation, not a formalization of (0.1)--(7.6).
The full operator proof remains an analytical proof submitted for review.
Exact symbolic checks of the multiplier-summand identity and its derivative,
the mode Gram identity, and the geometric-image coefficient all returned zero
differences. These are scalar algebra checks, not operator or spectral certification.
Lean elaboration: NOT_RUN. Fresh kernel checking: NOT_RUN. Transitive axiom
audit: NOT_RUN. Independent analytical review: NOT_RUN. Finite spectral
certification: NOT_RUN. Novelty: UNASSESSED.

No Lean/Lake executable was available. The canonical noe-proof-automation skill
was re-requested through authorized GitHub at noeaaeue/main revision
53f1622af5dc87a29e20408c25f76bbb55243eb1 and returned 404. Dependent proof
and browser automation was not run; no execution or scheduler was dispatched.
The exact deepmind/formal-research repository identifier again returned 404.
The optional openai/math nonvanishing module was re-read at
4eaee87548250b2682affda7d05d947c05554bae; its transitive proof was not replayed
or imported. TauCetiProject/TauCeti was refreshed at
85f3eb5579df5ca44ba8cd0921d614b41ab72174; a focused Carleman search returned
no matches, not proof of absence, and no Tau Ceti analytic theorem is used.
Mathlib's RiemannHypothesis was re-read at the consumed pin: it quantifies over
all zeta zeros except negative even integers and s=1, not only the open strip.
The current DirichletGRH code search returned no matches; its definition and
the residual-core implementations were not reused or declared absent. No RH
or DirichletGRH surrogate or classical-function return theorem is introduced.

The smallest remaining mathematical obligation in THIS mechanism is to control
the arithmetic low Schur operator (7.4), including its odd sector and second even
direction, on the same cofinal windows, and to prove its normalized prolate or
weighted-Xi comparison. Explicit high-tail coercivity does not settle that step.
