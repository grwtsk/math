# Paid arithmetic Schur separation on the half window

Local attribution: grwtsk contributors.
Research date: 2026-11-04 (America/Los_Angeles).
Original analysis, manually authored Lean candidate and pure interval evaluator:
repository MIT license. AI-assisted work; independent analytical review NOT_RUN.

## 0. Result and exact scope

Let A_T be the canonical FULL pole-inclusive arithmetic Weil operator of
Connes--Consani--Moscovici (CCM), *Zeta Spectral Triples*, arXiv:2511.22755v1,
(3.19)--(3.20), on complex L2([-T,T],dt), with zero extension. At T=1/2 put

    beta=1/10000,
    f=sqrt(2)*(2801/5000)c_0+(152151/250000)c_1
                         +(43729/1000000)c_2-(3991/500000)c_3,
    c_0=(2T)^(-1/2), c_n=T^(-1/2)cos(pi*n*t/T), n>=1.

The analytical reduction and executed outward-integer computation below give

    Q_T(w)>=beta||w||^2 for EVERY w in D(Q_T) with <f,w>=0,
    Q_T(f)/||f||^2 < 1/200000.                                  (0.1)

Consequently there is exactly one eigenvalue below beta, counted with
multiplicity. It is the simple even ground eigenvalue, and

    E_{1,+}(1/2)<1/200000,
    min(E_{2,+}(1/2),E_{1,-}(1/2))>=1/10000,
    min(E_{2,+},E_{1,-})-E_{1,+}>19/200000.                       (0.2)

This is a computer-assisted analytical result with a manually justified interval
implementation, NOT a kernel-verified theorem or independently reviewed proof.
The actual lower matrices pass after all stated errors. The unshifted ground
eigenvalue is NOT proved positive. No cofinal support sequence, normalized genuine-
ground/Xi convergence, finite-prolate comparison, RH or Dirichlet GRH follows.

This replaces a FAILED endpoint-kernel sufficient test by the literal trial
orthogonal complement at one window. It does not repair or retract #1685:
that issue's negative Schur witness lies on a different hyperplane. Y=0 remains
permissible; the changed hyperplane, not a new high solve, is essential here.

## 1. Exact source and consumed analytical return

The initial refreshed math head was 41d523fbccff6a9fc6d844415632d15114bf93b2,
complete tree 01eda105b6655ac772229554ddd24478868e642f. It preserves the endpoint
publication 585c96b8225f78b6cc9900328f61df12ac58025a and adds separate odd-root
projection work. A later refresh found a215ea91ff945a003eebb27ee4b3ae7361751d9b,
complete tree 443287b63f89f4a1e47efc9ed3b04c11546445e6, with separate reference-
accounting/rank-one work. Those additions are preserved, not consumed as premises.
The exact publication parent and final source hashes are recorded in the review
issue. Historical review and verification statuses are not changed.

The consumed analytical sources, with their precise consumers, are:

* weil-periodic-boundary.md, blob 704c9ad46d3a27b9485f51d53fc0b67d48fec7b0:
  maximal-domain bounded periodization, genuine trigonometric operator core,
  exact source Fourier rows, parity signs and the odd pole coefficient.
* weil-low-schur-enclosure.md, blob 92f973a93ccbf83938401a57a82d4a2e6fe946af:
  full form-domain square completion and inverse-energy enclosure; whole-even-
  head endpoint allowance, not a presumed endpoint-kernel lower sign.
* weil-odd-output-trace.md, blob adf8e7479005cb6b3681bbe5faa5a73716437504:
  signed output row, derivative row and full odd remote quadratic allowance.
* weil-endpoint-sign-obstruction.md and its evaluator, as recorded in #1685:
  literal four-mode trial and complete trial-specific source upper evaluation.

Use antilinear-first inner products and fhat(z)=integral f(t)exp(-izt)dt.
The exact operator is A=D+G-P+L, where

    D e_n=d_n e_n, d_n=c_inf+m(pi*n/T),
    c_inf=digamma(1/4)-log(pi), alpha_j=2j+1/2,
    m(w)=2 sum_j w^2/[alpha_j(alpha_j^2+w^2)],
    G(t,s)=sum_{k!=0} kappa(|s-t+2kT|),
    kappa(r)=exp(-r/2)/(1-exp(-2r)),
    P=sum_{2<=q<exp(2T)} Lambda(q)/sqrt(q)*(S_log(q)+S_log(q)^*),
    L=2|cosh(t/2)><cosh(t/2)|-2|sinh(t/2)><sinh(t/2)|.

The zero-extension jump energy minus the periodic energy is <f,Gf>, first
with a common small-distance cutoff and then by dominated strong convergence.
The corner majorant is a bounded Carleman kernel; the other images are summable.
This identifies maximal form domains. Bounded perturbation then gives
Dom(A)=Dom(D), with weight 1+|d_n|^2. Fourier truncations are an operator core
by graph-norm equivalence. Compact resolvent follows from d_n tending to infinity.
No endpoint trace condition is imposed. Reflection and conjugation commute with A.

For the head P_N and high block C=R_N A R_N, an independently established floor
C-beta>=delta I>0 makes H=C-beta invertible into its operator domain. For head u
and high form-domain v, the exact identity is

    Q(u+v)-beta||u+v||^2
      =<u,S(beta)u>+||H^(1/2)(v+H^(-1)Bu)||^2,
    B=R_N A P_N, S(beta)=A_head-beta-B^*H^(-1)B.                 (1.1)

The triangular map preserves the full form domain. This is the source-operator
return, not finite-matrix congruence used without a domain argument. The consumed
proofs were inspected and checked in this analysis; independent review and their
complete Lean operator formalizations remain separate and incomplete.

## 2. High floors that make the finite sign computation useful

### 2.1 A sharper odd boundary norm, valid for every T>0

Under the unitary map from odd functions to L2((0,T)), the kernel of -G is

    sum_j 4 sinh(alpha_j*t)sinh(alpha_j*s)/(exp(2alpha_j*T)-1).

Set x=T-t,y=T-s. Its j-th summand equals exp(-alpha_j*(x+y)) times

    (1-exp(-2alpha_j*t))*(1-exp(-2alpha_j*s))
                         /(1-exp(-2alpha_j*T)),

which belongs to [0,1]. Indeed each exponential in the numerator lies between
exp(-2alpha_j*T) and 1; the product is at most 1-exp(-2alpha_j*T).
Thus the nonnegative kernel is dominated pointwise by kappa(x+y).
The inequality kappa(r)<=1/(2r)+exp(-r/2) bounds its norm by

    ||G|odd|| <= pi/2+1-exp(-T).                               (2.1)

For completeness the Carleman norm <=pi follows from Schur's test with x^-1/2
and integral_0^infinity y^-1/2/(x+y)dy=pi*x^-1/2. The exponential kernel is rank
one with norm integral_0^T exp(-x)dx. Pointwise domination controls the norm
also for complex inputs by first taking their absolute values. The negative
odd quadratic sign follows from the displayed negative rank-one expansion.
No compactness of this boundary operator is assumed.

### 2.2 The literal single-prime norm at T=1/2

The interval checks give 2<e<3 and 1/2<r=log(2)<1. Thus only q=2 occurs.
Write v=log(2)/sqrt(2). The initial and final intervals of S_r are disjoint:
S_r^2=0 and S_r^*S_r+S_rS_r^* is a projection. Hence

    ||P||=||v(S_r+S_r^*)||<=v.                                (2.2)

This is a physical zero-extension shift, not a periodic substitution. The
remote-row signal bound still uses K=2v; (2.2) does NOT halve that signal mass.
This two-vertex translation-chain estimate is established elementary mathematics,
also present as a mechanism in connes-weil-research-note.md, Section 5.

Since G is nonnegative on even functions and the even pole is positive, while
||R_N sinh(t/2)||^2<=4T sinh(T/2)^2/(pi^2*N), valid infinite high floors are

    c*_+(N)=d_(N+1)-v,
    c*_-(N)=d_(N+1)-v-(pi/2+1-exp(-T))
                             -8T sinh(T/2)^2/(pi^2*N).         (2.3)

These are sharpened floors, not the old c_sigma formulas with their old constants.
Monotonicity of the multiplier series justifies using d_(N+1) for all high modes.
The computation evaluates d_65 by its full series enclosure and proves, at N=64,

    c*_+ > beta+3,                 c*_- > beta+3/2.             (2.4)

Thus delta_+=3 and delta_-=3/2 are certified conservative inverse distances.
They are not low eigenvalue gaps. Rational outer checks give c*_+>3.6842578997
and c*_->1.7195881322; the exact dyadic values are returned by the evaluator.

## 3. All finite rows and the actual even complement

The executed parameters are

    T=1/2, beta=1/10000, N=M=64, L=512, Y=0, X=I_head,
    J=1024 source-series terms, 160-bit dyadic interval arithmetic,
    stored coefficient grid 2^-40, Young parameter s=1/100.     (3.1)

There are 65 even and 64 odd head coordinates, and EVERY residual row
65,...,512 is retained: 448 rows in each sector. No middle block is deleted.
The high solve is exactly zero, not a rounded inverse masquerading as exact.

Here are the literal entries evaluated, making the source identification
inspectable. Set omega_n=2pi*n, p_n=v*sin(omega_n*r),

    g_n=sum_j (1-exp(-alpha_j))/(alpha_j^2+omega_n^2),
    h_n=sum_j (1-exp(-alpha_j))/(alpha_j^2+omega_n^2)^2.

For m!=n>=1 the prime entries are

    P^+_mn=-2(-1)^(m+n)(m*p_m-n*p_n)/(pi*(m^2-n^2)),
    P^-_mn= 2(-1)^(m+n)(m*p_n-n*p_m)/(pi*(m^2-n^2)).

P^+_n0=-sqrt(2)(-1)^n*p_n/(pi*n). The diagonals, for n>=1, are
2v(1-r)cos(omega_n*r) minus p_n/(pi*n) in the even sector and plus that term
in the odd sector. P^+_00=2v(1-r). The opposite signs retain the m=-n
compression term. The boundary entries are

    G^+_mn=4(-1)^(m+n)(m^2*g_m-n^2*g_n)/(m^2-n^2),
    G^-_mn=-4(-1)^(m+n)m*n*(g_n-g_m)/(m^2-n^2), m!=n,
    G^+_nn=4(g_n-omega_n^2*h_n), G^-_nn=-4omega_n^2*h_n.

Divide the even off-diagonal expression by sqrt(2) when exactly one index is
zero; G^+_00=2g_0. The even and odd pole vectors are

    C_0=4sinh(1/4),
    C_n=(-1)^n sinh(1/4)/(sqrt(T)*(1/4+omega_n^2)),
    S_n=-2(-1)^n omega_n sinh(1/4)/(sqrt(T)*(1/4+omega_n^2)).

The full matrices are diag(d)+G-P+2CC^t (even) and diag(d)+G-P-2SS^t (odd).
These formulas follow from the zero-extension overlap integral and the image
series, not a periodic prime model. The boundary partial fractions are exact;
all image series are absolutely convergent for fixed matrix indices.

Write a_0=2801/5000 and a=(152151/250000,43729/1000000,-3991/500000,0,...,0).
For i=1,...,64 define the complement frame

    W_i=e_i-a_i/(sqrt(2)*a_0)e_0.                              (3.2)

Its range is EXACTLY f^perp inside the even head: solve the orthogonality
equation for x_0, using sqrt(2)*a_0!=0. The remaining coordinates show that W
is injective. Its Gram is I+(a*a^t)/(2*a_0^2), not I. The interval calculation
retains that entire Gram. No endpoint evaluation or proposed ground eigenvector
is used to define this complement. The companion Lean candidate reuses the
existing EndpointSign.trialCoordinates for this construction.

## 4. Two-sided source-series evaluation and outward arithmetic

The evaluator imports the unchanged weil_endpoint_sign.py, Git blob
e21e6091d207dba50af6e600c457de8bef31cc60, SHA-256
29db1790f70b665e98dd74175c920a7039e7ee46f94112b0ff334bb2793a6c9e.
Its closed dyadic arithmetic rounds every operation outward, uses integer square
roots, and rejects zero-containing divisors. The elementary series and original
trial reduction were re-audited and the complete original certificate replayed.

A directional trapezoid enclosure makes the new matrix budget feasible. If F is
convex C2 on [a,infinity), decays with its derivative, and the displayed integrals
converge, then at spacing two

    sum_{k>=0} F(a+2k)=integral_a^infinity F/2+F(a)/2+E,
    0<=E<=-F'(a)/4.                                          (4.1)

On each cell the trapezoid-minus-integral error is
(1/2)integral_0^2 t(2-t)F''(a+2k+t)dt. It lies between zero and half the
integral of F''. Sum and divide by two to obtain (4.1). This proves a uniform
remainder, not convergence guessed from selected samples.

At a=alpha_1024=2048+1/2 and w=omega_n use

    F_g(x)=1/(x^2+w^2),
    F_h(x)=1/(x^2+w^2)^2,
    F_m(x)=2w^2/[x(x^2+w^2)].

Their second derivatives are respectively

    2(3x^2-w^2)/(x^2+w^2)^3,
    4(5x^2-w^2)/(x^2+w^2)^4,
    4w^2(w^4+3w^2*x^2+6x^4)/[x^3(x^2+w^2)^3].

The exact range check 3a^2>omega_512^2 establishes convexity of every boundary
summand used; the multiplier is convex without that restriction. Their tail
integrals and upper errors in (4.1) are

    integral F_g=atan(w/a)/w,      E_g<=a/[2(a^2+w^2)^2],
    integral F_h=atan(w/a)/(2w^3)-a/[2w^2(a^2+w^2)],
                                 E_h<=a/(a^2+w^2)^3,
    integral F_m=log(1+w^2/a^2),
                                 E_m<=w^2(3a^2+w^2)/[2a^2(a^2+w^2)^2].

For w=0 use integrals 1/a, 1/(3a^3), and 0, respectively. The omitted
exponential subtraction in the weighted g,h series has magnitude below 2^-2000:
e>2, a>2048 and the geometric ratio exp(-2)<1/4 give a stronger bound directly.
It is subtracted as [-2^-2000,0], not discarded. All g_0,...,g_512,
h_0,...,h_64 and d_0,...,d_65 therefore have complete interval enclosures.

The inherited pi enclosure uses 64-term Machin arctangent series. Reduced logs
use 96 positive atanh terms; exp on [0,1] uses 80 Taylor terms with a geometric
remainder; sin/cos use 80 terms and explicit Lagrange remainders. Euler gamma
uses H_1024-log(1024+1/2), with lower correction -1/(18*1024^2).
The latter follows from the decrement 2atanh(1/(2k))-1/k<=1/(9k^3).

The new atan evaluator repeatedly uses atan(x)=2atan(x/(1+sqrt(1+x^2)))
until the argument is at most 1/5, then encloses its 64-term alternating series.
Its input range [0,2] is checked. The multiplier log1p has checked argument in
[0,1/4] and a 64-term positive atanh series with geometric tail. Prime phases
are reduced by an explicit integer multiple of 2pi before using the inherited
trig evaluator. No floating transcendental value enters any certificate field.

## 5. Complete residual and remote prices

Let Ahat be the symmetric stored rational head and Fhat the rectangular stored
residual observation. Interval radii prove SEPARATELY

    ||A_head-Ahat||<=epsilon_U,
    ||F-Fhat||^2<=epsilon_F_squared,
    F=(P_512-P_64)A P_64.                                    (5.1)

The first bound is the maximal absolute row sum of entry radii; the second is
the sum of squared entry radii, hence a Hilbert--Schmidt bound. Both are rounded
up to the stored grid. The exact returned values are

    epsilon_U,odd =80223/2^40,
    epsilon_U,even=82979/2^40,
    epsilon_F_squared=1/2^40 in BOTH sectors.                  (5.2)

These include source-series, elementary-function, 160-bit rounding and 40-bit
storage errors. They are NOT an asserted norm error for an unassembled complete
513-dimensional block. Separate rectangular errors suffice because Y=0 and the
head observation and residual are the only finite source maps in the enclosure.

Here are the full remote allowances used; every low direction is retained.
For even x, let tau=x_0/sqrt(2)+sum_{n=1}^64(-1)^n*x_n,
C=<cosh(t/2),x>, theta=449/513, K=2v, kappa_0=1/2+K/pi,

    h0=1/pi^2, h1=K/(pi*theta)+1/2, hp=sqrt(T)*sinh(1/4)/pi^2,
    nu_n=h0+h1*n, snu=sum_{n=1}^64 nu_n,
    J_+(x)=2snu*sum nu_n|x_n|^2+2hp^2|C|^2,
    Omega_+(x)=[2kappa_0^2/L+4h0^2/(3L^3)]|tau|^2+4J_+(x)/(3L^3).

For odd x set d=sum n(-1)^n*x_n, S=<sinh(t/2),x>,

    b=-4sum n(-1)^n*x_n*g_n-(2/pi)sum(-1)^n*x_n*p_n
                                  +(4sqrt(T)sinh(1/4)/pi)S,
    theta2=259073/263169, Codd=1+exp(-T)/(1-exp(-4T)),
    a1=1/(pi^2*theta2), a2=K/(pi*theta)+1/(2theta2),
    ad=Codd/pi^2, ap=sqrt(T)*sinh(1/4)/(4pi^3),
    nu_n=a1*n+a2*n^2, snu=sum nu_n,
    J_-(x)=3snu*sum nu_n|x_n|^2+3ad^2|d|^2+3ap^2|S|^2,
    Omega_-(x)=3|b|^2/L+kappa_0^2|d|^2/L^3+3J_-(x)/(5L^5).

The consumed row estimates give ||R_L A x||^2<=Omega_sigma(x).
In particular b is the ODD OUTPUT trace, not an input endpoint condition;
d is the derivative trace. Neither kernel is substituted for the full odd head.
The even input trace is generally nonzero on the selected complement.

To make these genuinely finite, store midpoint vectors for b,S,C,tau. Each
separately computed squared coefficient-error allowance is rounded up to 2^-40.
For any such exact row v and stored row vhat with error squared <=e2, use

    |v*x|^2<=2|vhat*x|^2+2e2||x||^2.                           (5.3)

Thus the odd 3|b|^2/L becomes 6|bhat|^2/L+6*2^-40||x||^2/L.
The pole and even endpoint terms have their analogous factor-two prices. The
derivative row is exact. Every positive scalar coefficient is rounded upwards,
and the weighted diagonal products are formed from those upper bounds. The
returned rational Omega_safe therefore dominates the COMPLETE Omega form.
The output-series/coefficient budget is evaluated separately from (5.1), even
though the same interval g_n values can safely be reused. No independence is assumed.

The exact Schur correction is bounded by (F^*F+Omega_safe)/delta. Young's
inequality at s=1/100 gives the tested rational lower and upper matrices

    Lower=Ahat-beta I-epsilon_U I
          -[(101/100)Fhat^t Fhat+101*epsilon_F_squared I+Omega_safe]/delta,
    Upper=Ahat-beta I+epsilon_U I,
    Lower<=S(beta)<=Upper.                                   (5.4)

The evaluator returns Ahat, Fhat, every residual index, Omega_safe, Lower and
Upper, not merely scalar signs. No trial-specific omitted-tail price from
#1685 is used as a whole-matrix error. beta is exact; delta is certified by (2.4).

## 6. Executed sign tests, with the true complement Gram

The two actual finite tests are

    Lower_odd-(1/100000)I positive definite,
    W^t Lower_even W-(1/1000)W^t W positive definite.            (6.1)

The even W entries containing sqrt(2) are enclosed outward; this contains the
EXACT complement frame (3.2). It is not a rounded kernel substituted for f^perp.
Symmetric Gaussian elimination encloses every exact Schur pivot by induction:
a positive pivot interval excludes zero; subtract its enclosed outer quotient
from the remaining block. Positive lower endpoints for all pivots imply positive
definiteness by finite square completion. Interval dependency only widens these
bounds. No floating eigenvalue or presumed eigenvector is used.

Both 64-pivot tests passed: 128 strictly positive pivot intervals. The smallest
returned lower numerators, each with denominator 2^160, are

    odd:  23067158898600248154489566701374159618623880517,
    even: 503072883979001126571251485986623842336828895914.

These are elimination pivots, NOT eigenvalue lower bounds. The explicit margins
in (6.1), rather than the smallest pivot, are the proved quadratic-form margins.
The squared observation errors and all remote terms in Section 5 were included
BEFORE these tests. The certificate also checks the high floors, exact residual
row counts, dimensions, active long shift and original full trial certificate.

The original evaluator was replayed on its exact hash. All eight historical
checks again returned true. Its upper trial numerator was again
2378292783017945332439167656285901279769801 over 2^160, and its historical
N0=10^8 odd-floor lower numerator was again
9721641596579266469253380927111639593286414610431 over 2^160.
The latter is replay evidence only: the NEW inverse distances use N=64 and (2.3).
The trial's exact squared norm is 1000022846581/10^12>1, its trace is 3307/10^6,
and the full source upper inequality Q_T(f)<1/200000 includes the active prime,
both pole orientations (one zero by parity), retained series AND positive omitted
tails. A negative retained partial sum is not a negative unshifted source value.

## 7. Return to the genuine infinite-dimensional spectrum

For any w perpendicular to f, its even head lies in range(W), since f is even
and supported in P_64. Its odd head is unrestricted. Equations (5.4)--(6.1)
make both Schur values nonnegative. The high squares in (1.1) are nonnegative.
Summing the parity components proves the first inequality in (0.1) on the
ENTIRE form domain. All matrices are real symmetric, so their inequalities
extend to complex coefficients by adding the real and imaginary quadratic
values. Complex orthogonality to the real f imposes the same constraint on
both real and imaginary parts.

The second inequality in (0.1) follows from the full trial upper value and
||f||^2>1. Min--max gives at least one eigenvalue below beta. If two eigenvalues,
counted with multiplicity, were below beta, their negative shifted subspace
would have a nonzero vector perpendicular to f, contradicting (0.1). Odd-sector
coercivity excludes an odd eigenvalue there. Thus the unique eigenvalue below
beta is even, simple and the genuine ground eigenvalue. Every other eigenvalue
is at least beta. Subtract the trial upper bound to obtain (0.2).

This is complementary coercivity relative to THIS trial, not only an inertia
statement on an unrelated hyperplane. With v=f/||f|| the trial separation
beta-Q(v) is greater than 19/200000; the actual eigenvalue spacing satisfies
(0.2), but is not asserted equal to that number. No normalized eigenfunction,
its Fourier amplitude, prolate comparison or cofinal sequence was computed.

## 8. Comparison, hostile checks and verification limits

The primary survey remains Connes arXiv:2602.04022v1, especially printed page 30,
Section 6.6: simple-even ground states and normalized approximation are different
obligations. Its page was inspected as a rendered PDF. CCM's exact full operator
and the Fourier source correspondence were consulted directly. The paper source
bylines and CC BY 4.0 obligations are retained; no upstream code is copied.

Zhu arXiv:2608.24827v2 Theorem 6.2 reports a simple-even fixed-window certificate
at T=0.8, and its table lists exploratory values at T=0.5. That result was not
replayed or used as a premise. Fixed-window separation and Schur certification
are therefore not claimed as new general methods. The present concrete result
is a separately assembled paid certificate on T=0.5 using the existing local
source rows and a trial-aligned complement. Worldwide novelty is UNASSESSED.
The rStation support-two certificate is another comparison lead, not an input.
No claimed all-support theorem, RH-dependent convergence or external zero-free
result enters the proof. No character-dependent theorem is inferred by analogy.

The new mechanism is compatible with #1685: its endpoint-zero packets are not
orthogonal to f. Small or vanishing endpoint trace never supplied the lower sign.
The present remote matrix keeps that trace direction and tests a different
COMPLETE hyperplane. It does not refute every endpoint lift or strengthen the
historical negative result to cofinal windows. The two old obstructions and the
finite-prolate trace repair are preserved without being repeated as new progress.

Hostile diagnostics executed separately from the certificate: three symbolic
second-derivative identities; 14 high-precision g/d inclusion comparisons at
selected frequencies through 512; eight direct physical prime-overlap quadratures
including a constant column, both diagonal signs and remote rows; independent
floating special-function head comparisons; and a negative-pivot mutation that
was rejected. The high-precision and floating checks are exploratory, not proof
inputs. The universal reduction is Sections 1--7 plus outward integer evaluation.

A reproducible invocation, from the two mathematical Python modules' directory, is

    python -c 'from weil_half_window_separation import certificate; c=certificate(); assert all(c["checks"].values()); print(c["checks"]); print([(s,len(c[s]["pivots"]),min(p.lo for p in c[s]["pivots"])) for s in ("odd","even")])'

The evaluator is pure mathematical source: no filesystem, network, scheduler,
subprocess, repository mutation or proof-runner operation is in its functions.
The complete source maps and matrices are returned as exact data for inspection.
Execution of this command is interval computation, not Lean proof automation.
Python syntax compilation succeeded. The interval implementation and analytic
reduction are manually justified; they are not a kernel-verified interval library.

The Lean candidate contains finite trial-complement, norm, scalar-kernel and
budget proof scripts. It imports the existing exact trial and preserves the
full Gram and complete complement. It does NOT import returned Booleans as
axioms or claim the full spectral theorem has been formalized. Parsing/elaboration,
fresh kernel checking, transitive axiom auditing and independent analytical review
are NOT_RUN. Full operator/interval formalization is NOT_DONE.

Repository instructions and proof-comparison disposition were refreshed. Lean
v4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 are unchanged.
No Lean/Lake/elan executable or verified local canonical skill checkout was found.
The canonical noe-proof-automation/SKILL.md returned 404 at noeaaeue/main
53f1622af5dc87a29e20408c25f76bbb55243eb1. No dependent automation, workflow
dispatch, browser messaging or scheduler ran. The layout source returned an
empty decoded body at blob ec7ae0dce9138e0e1f44f36b65d433e0e9897e00; additions
remain beside the existing subject-local Weil sources. Root imports and existing
files are unchanged. Exact-source review is requested, not presumed completed.

## 9. First unresolved estimate

The missing cofinal inequality is still the paid WHOLE-ODD-HEAD lower sign at
beta_j on an explicitly unbounded sequence T_j, jointly with a valid even
complement/inertia inequality and a full trial below beta_j. Nothing here chooses
such a sequence. An all-T boundary norm estimate is not an all-T low-Schur sign.
The original finite-prolate asymptotics, scalar, reflection defect, norm bounds
and normalized genuine-ground transform comparison on that SAME sequence remain
unproved. So do the exact real-zero/Hurwitz/classical-function return and the
additional character-dependent mathematics for Dirichlet GRH. Neither target is
redeclared or claimed proved. The concrete advance is (0.1)--(0.2) at ONE window.
