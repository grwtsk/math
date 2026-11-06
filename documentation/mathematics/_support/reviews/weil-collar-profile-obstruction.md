# Theta-derivative profiles and the absence of a positive logarithmic physical-collar floor

Local attribution: grwtsk contributors.
Research date: 2026-11-05 (America/Los_Angeles).
Original analysis and manually authored source: repository MIT license.
AI-assisted mathematical derivation and source drafting. Independent analytical
review, Lean elaboration, fresh kernel checking and transitive axiom audit:
NOT_RUN. Worldwide novelty: UNASSESSED.

## 0. Outcome and exact arithmetic estimate

This is an obstruction to a specific cofinal support-propagation inequality,
not a positive low-Schur certificate. It uses the canonical FULL pole-inclusive
zeta Weil form of Connes--Consani--Moscovici (CCM), arXiv:2511.22755v1,
(3.19)--(3.20), with zero extension and Fourier kernel exp(-izt).

Put T_k=(log k)/2 for integers k>=2 and
C_k={t:T_k<|t|<T_(k+1)}. The normalized real odd flat collar vector is

    b_k(t)=sgn(t) 1_(C_k)(t)/sqrt(log(1+1/k)).                  (0.1)

Let e_k be real odd unit vectors supported on C_k, with
||e_k-b_k||_2 -> 0. Suppose real numbers gamma_k obey, for all sufficiently
large k, the literal source inequality

    Q_(T_(k+1))(u+f) >= gamma_k |<e_k,f>|^2                  (0.2)

for EVERY real odd u and f in the genuine source form domain, with u
supported in [-T_k,T_k] and f supported on C_k. Then

    limsup_(k->infinity) gamma_k/log k <= 0.                 (0.3)

The limsup can be understood in the extended reals. Equivalently, every
sequence satisfying (0.2) obeys gamma_k<c log k eventually for each c>0.
In particular an eventual lower slope gamma_k>=c log k is impossible.
More constructively,
for every c>0 there are explicit fixed-degree theta-derivative constructions
(u_k,f_k), valid for every sufficiently large k, with nonzero collar readout
and

    Q_(T_(k+1))(u_k+f_k) < c log k |<e_k,f_k>|^2.           (0.4)

The construction is explicit by a finite jet matrix whose entries are
polynomials; its determinant is proved nonzero for sufficiently large k.
No numerical starting k, or bound uniform in the chosen polynomial degree,
is claimed. The order is: choose a finite degree from c, then increase k.

If the old block is positive and the physical split has a justified Schur
realization, (0.2) is its rank-one lower-floor assertion. Alternatively define
its short as the infimum over the indicated u. The proof requires no inverse,
no positivity of the old block, and no finiteness of that infimum. A value
minus infinity already prevents a finite lower floor. All witnesses below
belong to the actual operator domain, a stronger fact than needed for (0.2).

The supplied weighted-residual note, Section 7, used one theta response and
obtained the necessary upper slope pi/[2(exp(pi)-1)^2]. The present result
replaces that positive constant by zero using arbitrarily high BUT FIXED
finite derivative spaces and Laguerre profiles. It is not a repetition of the
fixed-T even endpoint-kernel witness in #1685. Here the parity is odd, support
grows, and the split is physical, not Fourier. It does not transfer to a
Fourier low-Schur matrix without an additional source-preserving comparison.

Positive gamma_k=o(log k), different readouts, and direct inertia are not
excluded. No negative unshifted Weil value is produced. In fact the energies
of the constructed witnesses are positive eventually at each fixed profile.
No cofinal positive separation, genuine-ground comparison, RH or Dirichlet
GRH is established.

## 1. Exact source, normalization, and the radical identity consumed

For zero-extended functions write

    C_f(r)=integral conjugate(f(t)) f(t+r) dt,
    M_+(f)=integral f(t)exp(t/2)dt, M_-(f)=integral f(t)exp(-t/2)dt,
    kappa(r)=exp(-r/2)/(1-exp(-2r)),
    c_inf=digamma(1/4)-log pi,
    E(f)=integral_0^infinity kappa(r)||f(.+r)-f||_2^2 dr.

The actual form is

    Q(f)=c_inf||f||^2+E(f)+2 Re(M_+(f)conjugate(M_-(f)))
                  -2 sum_(n>=2) Lambda(n)n^(-1/2) Re C_f(log n). (1.1)

For support [-T,T], only n<exp(2T) contribute. At equality the overlap has
measure zero. Formula (1.1) also makes sense for the rapid exterior tails used
below, where the infinite prime sum is NOT discarded. Its source correspondence
follows from CCM (3.5), (3.7)--(3.11), (3.19)--(3.20), substituting u=exp(t).
Expanding kappa into sum exp(-(2j+1/2)r) gives the digamma multiplier and its
maximal finite-energy domain. The pole is 2|<cosh,f>|^2-2|<sinh,f>|^2; it is
not two nonnegative squares.

Use exactly

    phi(t)=2pi exp(5t/2) sum_(n>=1) n^2(2pi n^2 exp(2t)-3)
                                              exp(-pi n^2 exp(2t)),
    phihat(z)=Xi(z)=xi(1/2+iz),
    xi(s)=s(s-1)pi^(-s/2)Gamma(s/2)zeta(s)/2,
    y=-2phi'.                                                  (1.2)

For clarity, (1.2) is four times the image of the survey's printed limiting
seed, not a choice of finite-prolate normalization. A direct Gaussian Mellin
integral of 2pi u^2(2pi u^2-3)exp(-pi u^2) is
s(s-1)pi^(-s/2)Gamma(s/2)/2. Multiplying by zeta(s) on Re s>1 and using Poisson
symmetry gives the entire Fourier identity with s=1/2-iz and xi(s)=xi(1-s).
The seed is even Schwartz, globally additive-Fourier invariant and zero at
zero; Poisson gives logarithmic evenness and superexponential tails. This is
not a Poisson assertion for a finite-prolate seed.

The polarized explicit formula, with antilinear-first inner products, is

    Q(h,g)=sum_rho conjugate(hhat(conjugate(z_rho))) ghat(z_rho),
    z_rho=(rho-1/2)/i.                                         (1.3)

Multiplicities are retained. Fourier-sign conversion uses rho -> 1-rho.
Conjugation symmetry of the zeta zero set gives

    Q(phi^(j),g)=0                                             (1.4)

for the finite derivative combinations and compact piecewise smooth g used
here. To justify the test-class extension, correlate a theta derivative with
g. The correlation is smooth, with all derivatives faster than every
exponential, and its Fourier transform has arbitrary inverse-power decay on
bounded horizontal strips. Hence the zero sum is absolutely convergent by
the unconditional zero count. Each summand vanishes. The same applies to two
theta-derivative combinations. The archimedean pairings converge by the jump
energy or multiplier; prime-side convergence follows from the explicit tail
bounds in Section 3. No positive unrestricted whole-line arithmetic operator
is asserted. Coefficients depending on k are finite numbers for each k;
no interchange of an unbounded-degree limit with (1.3) is used.

If h is one of these combinations, v=1_[-T,T]h and d=h-v, expansion of
Q(h,h)=Q(h,v)=0 gives the exact identity

    Q_T(v)=Q(d).                                               (1.5)

A compact piecewise smooth function with finitely many jumps has Fourier
decay O(1/|xi|). Multiplication by the actual logarithmic archimedean symbol
stays in L2. Pairing against the maximal form domain and adding the bounded
finite prime and pole operators proves its membership in the canonical
operator domain. This covers v, its inner restriction u, and its collar
restriction f. No assertion that multiplication by an indicator preserves
the entire form domain is needed.

These arguments are the consumed portions of the supplied hard-cutoff and
rank-one-saturation analyses, rechecked at this test-class scope. They are
not independent review of every theorem in those notes.

## 2. Realizing every fixed polynomial boundary profile

Write U=exp(2t), X=exp(2T), and C0=16pi^3. The n=1 theta term of y is

    C0 U^(5/4) exp(-pi U) R_0(U),
    R_0(U)=U^2-15U/(4pi)+15/(8pi^2).                           (2.1)

Let P_0(w)=w^2-15w/4+15/8 and

    D P=2w P'(w)+(5/2-2w)P(w),
    P_j=4^(-j) D^(2j)P_0,
    R_j(U)=pi^(-2j-2)P_j(pi U).                               (2.2)

Each R_j is monic of degree d_j=2j+2. Indeed D increases degree by one
with leading coefficient multiplied by -2; two applications multiply it by
4. Direct differentiation shows that the n=1 term of

    z_j=y^(2j)/(4pi^2)^j

is C0 U^(5/4)exp(-pi U)R_j(U). All z_j are real odd global radical functions.
The other theta terms and their fixed derivatives are polynomial times
exp(-pi n^2 U), n>=2.

Fix a real polynomial p(v)=sum_(l=0)^r p_l v^l. Define a_j(X), 0<=j<=r,
by the literal finite system

    sum_(j=0)^r a_j(X) R_j^(l)(X)/l! = X^2 p_l,
                                              0<=l<=r.       (2.3)

This system exists for all sufficiently large X, without any Weil spectral
assumption. Factoring X^d_j from column j and X^(-l) from row l leaves a
matrix tending to B_lj=binom(2j+2,l). Its determinant is

    det B = product_(i<j)(d_j-d_i) / product_(l=0)^r l!
          = 2^(r(r+1)/2) > 0.                               (2.4)

The first equality is the Vandermonde determinant in the polynomial basis
binom(x,l), whose leading coefficient is 1/l!. Thus the original determinant
is asymptotic to 2^(r(r+1)/2)X^((r+1)(r+4)/2). Equation (2.3) can equivalently
be evaluated by the adjugate divided by that actual determinant. Matrix
inversion continuity after the displayed scaling gives

    a_j(X)=O_p(X^(r-2j)).                                    (2.5)

Put P_X=sum a_j(X)R_j and h_(X,p)=sum a_j(X)z_j. The first r+1 Taylor
coefficients of P_X(X+v)/X^2 equal those of p EXACTLY. For l>r the coefficient
is O_p(X^(r-l)), by (2.5) and the fixed polynomial degrees. Therefore

    P_X(X+v)/X^2 -> p(v)                                     (2.6)

locally uniformly in v, and, for v>=-1 and large X, the polynomial and its
first derivative have bounds C_p(1+|v|)^(2r+2). On the compact negative
interval one may enlarge C_p. The higher theta terms remain negligible:
(2.5) allows only polynomial growth in X, whereas their first exponential
ratio on U>=X-1 is exp(-3pi U). Summing n>=2 with their fixed polynomial
weights preserves that domination, including one t derivative.

With A_X=C0 X^(13/4)exp(-pi X), it follows that

    h_(X,p)((log(X+v))/2)/A_X -> exp(-pi v)p(v)                (2.7)

locally uniformly for v>=-1. The quotient is dominated on v>=0 by a fixed
polynomial times exp(-pi v); its v derivative has the same kind of bound.
In t coordinates, for x>=0, absorbing the polynomial into half the exponential
and using X(exp(2x)-1)>=2Xx yields

    |h_(X,p)(T+x)| <= C_p A_X exp(-pi X x),
    |h'_(X,p)(T+x)| <= C_p X A_X exp(-pi X x).                (2.8)

Oddness gives the other endpoint. No positivity of h or its tail is assumed.
These uniform bounds, not pointwise endpoint cancellation alone, justify the
integrals and asymptotics below.

## 3. Full arithmetic exterior energy, including every prime

Set d=1_(|t|>T)h_(X,p), N_X=||d||^2, for p nonzero. Substitution U=X+v
in the two equal tail squares and dominated convergence in (2.7) give

    N_X ~ (A_X^2/X) J(p),
    J(p)=integral_0^infinity exp(-2pi v)p(v)^2 dv > 0.         (3.1)

The two factors 1/2 from dt=dU/(2U) are canceled by the two tails.

Here is the full source estimate; it is not an archimedean surrogate.
Put b=pi X and abbreviate A=A_X, absorbing profile-dependent constants.
The exterior envelopes and derivative estimate give, for 0<r<=1/X,

    ||d(.+r)-d||^2 <= C_p A^2(r+Xr^2).                      (3.2)

The r term includes the cutoff jumps. Its contribution to E is O_p(A^2/X).
For 1/X<=r<=1 and large T there is no opposite-tail overlap, and

    |C_d(r)| <= C_p A^2 exp(-br)/b.

Since 2 integral_(1/X)^1 kappa(r)dr=log X+O(1), this part of E is
N_X log X+O_p(N_X). For r>=1 use the translation bound 4N_X and integrability
of kappa. Altogether

    E(d)=N_X log X+O_p(N_X).                                 (3.3)

For every r>=0 the COMPLETE envelope correlation is bounded by

    C_p A^2[exp(-br)/b+(r-2T)_+ exp(-b(r-2T))].               (3.4)

It contains both same-tail overlaps and the left-to-right overlap. The latter
vanishes at r=2T, including the case X is a prime power. For h>=2, Y>=4,
with h>=cY for fixed c>0, the decreasing-integrand estimate is

    sum_(n>=Y) (log n)/sqrt(n) (n/Y)^(-h)
     <= (log Y)/sqrt(Y)
         +sqrt(Y)[log Y/(h-1/2)+1/(h-1/2)^2]
     = O_c((1+log Y)/sqrt(Y)).                               (3.5)

This works for real Y: the first integer term is at most the value at Y and
the remainder is at most the integral. Monotonicity holds in this parameter
range. Using Lambda(n)<=log n and
v exp(-bv)<=2 exp(-bv/2)/(e b), (3.4)--(3.5) bound the absolute entire prime
contribution by

    O_p(A^2 2^(-b)/b + A^2(1+log X)/(b sqrt(X)))
      = O_p(N_X(1+log X)/sqrt(X)).                            (3.6)

No tail beyond the compact support prime cutoff is deleted: (3.6) bounds the
infinite exterior expression in (1.5). The pole moments satisfy

    |M_+(d)|+|M_-(d)| <= C_p A X^(1/4)/(b-1/2),
    |2 Re(M_+(d)conjugate(M_-(d)))| = O_p(N_X/sqrt(X)).        (3.7)

The constant term costs |c_inf|N_X. Combining all contributions proves

    Q(d)=N_X log X+O_p(N_X).                                 (3.8)

The prime price in (3.6) is O_p(N_X), since (1+log X)/sqrt(X) is bounded.
In particular Q(d)>0 eventually. Equation (1.5), not an assumption of Weil
positivity, returns (3.8) to the actual compact-window trial.

## 4. Physical-collar readout and the exact profile quotient

Take X=k+1, T=(log X)/2, and the h_(X,p) just constructed. Put

    v_k=1_[-T,T]h_(X,p),
    f_k=1_(C_k)h_(X,p), u_k=1_[-T_k,T_k]h_(X,p).

All three functions are operator-domain piecewise smooth functions and
v_k=u_k+f_k in L2. For the flat vector in (0.1), substitution U=X+v gives

    <b_k,f_k> ~ A_X/sqrt(X) I(p),
    I(p)=integral_(-1)^0 exp(-pi v)p(v)dv.                    (4.1)

In detail, the exact integral is
[log(X/(X-1))]^(-1/2) integral_(-1)^0 h_(X,p)((log(X+v))/2)/(X+v)dv.
The missing 2 is canceled by dt=dU/(2U) and the two odd halves.
Also

    ||f_k||^2 ~ (A_X^2/X) integral_(-1)^0 exp(-2pi v)p(v)^2dv.

When I(p)!=0, Cauchy--Schwarz shows that replacing b_k by e_k with
||e_k-b_k|| -> 0 changes (4.1) by a relative o(1). Equations (1.5),
(3.1), (3.8), log X/log k -> 1 and (4.1) prove

    Q_T(v_k) / (log k |<e_k,f_k>|^2) -> J(p)/I(p)^2.         (4.2)

This proves a source-specific variational UPPER test for every fixed polynomial
with nonzero I(p). It is not a lower estimate for an unseen spectral direction.
The short over u is at most this exhibited Q_T(v_k), regardless of old-block
positivity. Applying (0.2) to this pair bounds the limsup of gamma_k/log k by
J(p)/I(p)^2.

There is a useful extension beyond flat readouts. For a real odd unit e_k define

    E_k(v)=e_k((log(X+v))/2)/sqrt(X+v), -1<v<0.

This change is isometric: integral |E_k|^2=||e_k||^2=1. If E_k converges in
L2(-1,0) to a nonnegative unit function E, the same proof replaces I(p) by
I_E(p)=integral E(v)exp(-pi v)p(v)dv. The final zero upper slope below still
holds. No claim is made for an arbitrary sign-changing limiting profile or
for a nonphysical transported coordinate without this normalization.

## 5. Laguerre witnesses remove every positive logarithmic slope

Take the standard Laguerre polynomial

    L_n(x)=sum_(j=0)^n binom(n,j)(-x)^j/j!,
    p_n(v)=L_n(2pi v).                                        (5.1)

Its weighted squared norm is exactly one:

    integral_0^infinity exp(-x)L_n(x)^2 dx=1.

For completeness, Rodrigues gives
L_n(x)=exp(x)/n! (d/dx)^n(exp(-x)x^n). Integrating by parts n times against
L_n makes every endpoint term zero. Its nth derivative is (-1)^n, so the
result is (1/n!) integral exp(-x)x^n dx=1. The explicit series in (5.1)
follows from Leibniz. These are the classical DLMF 18.5.12 and Table 18.3.1
normalizations, not a newly claimed orthogonal-polynomial theorem.
Consequently J(p_n)=1/(2pi).

For -1<=v<=0 every term in L_n(2pi v) is nonnegative. Retain its first two:

    p_n(v)>=1+2pi n(-v),
    I(p_n)>=I_0+2pi n I_1,
    I_0=(exp(pi)-1)/pi,
    I_1=((pi-1)exp(pi)+1)/pi^2 >0.                            (5.2)

Thus the actual source tests (4.2) satisfy

    J(p_n)/I(p_n)^2 <= 1/[2pi(I_0+2pi n I_1)^2] -> 0.       (5.3)

For each n FIRST take k to infinity in (4.2); then take n to infinity in
(5.3). This proves (0.3). For c>0 choose one finite n making the right side
of (5.3) less than c, and then take k large enough in (4.2). This proves the
explicit-witness quantifiers in (0.4). No estimate uniform in n(k) is used.
For the extension in Section 4, replace I_0,I_1 by the integrals with E.
Both are positive: E>=0 is nonzero and -v>0 almost everywhere on (-1,0).

As a check, n=0 recovers EXACTLY the earlier upper slope
pi/[2(exp(pi)-1)^2]. Already n=1 gives

    pi/[2((2pi-1)exp(pi)+1)^2],                               (5.4)

but any single such positive constant is weaker than the all-degree conclusion.

There is an optional finite profile optimum, not a spectral certificate. Write
I_j=I(p_j). Orthogonality and Cauchy--Schwarz show

    inf_(deg p<=r, I(p)!=0) J(p)/I(p)^2
      = 1/[2pi sum_(j=0)^r I_j^2],                          (5.5)

attained by p=sum I_j p_j. This gives an exact finite-dimensional design
criterion for the hostile test. It does not compute the actual source short.

## 6. Source comparison, limits, and retained obligations

The supplied boundary-adjusted/weighted-residual note Section 7 has the same
physical collars and normalization but only one unadjusted response. Its
positive upper coefficient is recovered at n=0. The new step is the genuine
arithmetic realization of arbitrary fixed polynomial profiles, followed by
the unbounded negative-argument Laguerre readout. The elementary profile
calculation alone would not imply (0.3) without Sections 1--4.

A focused primary-source search inspected rStation paper 25, version 1,
*Quantitative theta trial spaces for the Weil form*, and paper 84, version 1,
*Uniform weighted zero sampling and near-zero spectrum of compact-window
Weil operators* (01 November 2026). They provide prior derivative-trial and
near-null-space mechanisms; neither inspected statement supplies this
physical-collar readout inequality. No theorem of either is imported. The
normalization and full-source calculation above are retained. Worldwide
priority of the exact collar conclusion is UNASSESSED; finite searching is
not a proof of novelty. No claim about the validity of all those papers'
dependencies is made.

The supplied note discusses a Desogus logarithmic harmonic-collar coefficient.
The present theorem applies only after its readout, normalization, short and
source domain have been identified with (0.2), or with the explicitly normalized
nonnegative-profile extension. That complete external return was NOT audited
here. No blanket refutation of that manuscript is made. The precise result
is that a positive fixed logarithmic floor for THIS physical source short
cannot hold. A smaller positive floor is not excluded.

The current math head d2f277ec4f38c7ecae5a27aa262873343c98a96a contains the
separate half-window certificate at T=1/2. Its note was read, but its interval
computation and full dependency closure were not replayed in this increment.
It is not a premise of this theorem. Theorem (0.3) says why that fixed-window
sign cannot be propagated by the specific logarithmic collar bound; it does
not retract the fixed-window result or strengthen its verification status.

Issue #1685 was refreshed and its exact even endpoint obstruction respected.
No zero-lift endpoint-kernel sign was sought or claimed repaired. Its interval
eight-check record was not replayed here. The supplied finite-prolate/Hermite
comparison is separate: its actual-proxy estimates, if validated, do not
identify a genuine Weil ground function. It is not a premise here.

No cofinal whole-odd-head lower matrices, finite high solves, source rounding
budgets, positive sign margins, genuine-ground reconstruction or character
operators were constructed. The next positive obligation remains the fully
paid whole-odd-head sign, a valid even complement or inertia inequality, and
the full even trial margin on the SAME unbounded support sequence. Normalized
genuine-ground convergence and the exact existing RH/DirichletGRH returns are
still unresolved. No replacement target is defined.

## 7. Formal scope and reproducibility

The companion WeilCollarProfileObstruction.lean contains finite polynomial
and scalar proof candidates: the actual first theta polynomial, its two-step
derivative polynomial, their Wronskian, two-coordinate jet interpolation,
nonnegative-argument Laguerre coefficient bounds, and profile-budget algebra.
The all-degree jet determinant, actual theta series, explicit formula,
operator-domain passage, exterior energy, physical readout limits and (0.3)
are ANALYTICAL proofs above, not Lean theorems hidden behind certificate fields.
No diagnostic Boolean or interval output is introduced as an axiom.

The pure exact diagnostic source checks the recurrence, leading degrees,
confluent determinants, jet solves, and weighted polynomial moments. It has
no network, filesystem, scheduler or repository-mutation behavior. It is a
finite symbolic/rational diagnostic, not a spectral certificate, a universal
proof of the asymptotics, or a kernel-checked interval implementation.

Executed on the exact staged source using SymPy 1.14.0:

```sh
PYTHONPATH=/mnt/data/weil_collar_work python -c 'from weil_collar_profile_checks import diagnostics; print(diagnostics())'
```

The returned result was PASS: nine monic theta polynomials (degrees 2 through
18); the displayed first-two-mode and shifted-Wronskian identities; thirteen
confluent determinants (r=0 through 12); twenty-one exact rational jet systems
(r=0 through 6 at centers 8,16,32); 136 Laguerre cross moments (0<=i<=j<=15);
and 496 coefficient identities (degrees 0 through 30). The rational jet
fixtures use L_r(2v) to avoid transcendental input; they are not a numerical
substitution for pi in the source theorem. These finite cases corroborate
algebra but do not prove the universal determinant or theta asymptotics.
No floating spectral matrix, numerical Weil eigenvalue, or interval sign
certificate was computed. Mutable diagnostic output is not repository source.

Repository instructions, proof-comparison disposition, source layout and pins
were refreshed. Baseline: d2f277ec4f38c7ecae5a27aa262873343c98a96a, complete tree
2730f25b6c6308caf12390b51c6c609080f8c9d6. Lean v4.34.1 and Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612 are unchanged. No root imports,
existing mathematical files, workflow or historical acceptance status changes.
Local attribution follows the current repository rule.

The canonical proof-automation skill returned 404 at Noe main
53f1622af5dc87a29e20408c25f76bbb55243eb1; no verified local canonical checkout
or Lean/Lake/elan executable was found. Dependent proof automation, browser
messaging, CI dispatch and scheduling were not run. Source drafting and pure
symbolic arithmetic are not formal proof execution. Source publication,
analytical correctness and independent/formal verification remain separate.

Primary sources: Connes arXiv:2602.04022v1, Section 6.6 (rendered page 30);
Alain Connes, Caterina Consani and Henri Moscovici, *Zeta Spectral Triples*,
arXiv:2511.22755v1, Sections 3.1--3.2 and (3.2), (3.5), (3.7)--(3.11),
(3.19)--(3.20), CC BY 4.0; NIST DLMF Sections 18.3 and 18.5; the supplied
hard-cutoff, rank-one saturation and weighted-residual notes. Actual upstream
author attribution is retained; no upstream implementation is copied.
