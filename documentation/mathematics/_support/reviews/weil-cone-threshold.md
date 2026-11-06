# A sharp cone-preservation threshold for the full restricted Weil form

Local attribution: grwtsk contributors. Research date: 2026-11-04.
Original source and prose are released under the repository MIT license.

## Result and scope

Let A_lambda be the canonical self-adjoint operator of the FULL restricted Weil
form in Connes--Consani--Moscovici, *Zeta Spectral Triples*,
arXiv:2511.22755v1, Sections 3.1--3.2. In particular, retain BOTH pole terms;
do not replace its domain by the pole-cancelled Weil-criterion subspace.
Put T = log(lambda), with lambda > 1. Let rho be the unique real root greater
than 1 of x^3-x-1 = 0.

The following statements are proved analytically below.

1. The semigroup exp(-t A_lambda), t >= 0, preserves the ordinary cone of
   nonnegative functions if and only if lambda <= sqrt(rho).
2. For 1 < lambda <= sqrt(rho), the lowest eigenvalue is simple and its
   eigenfunction can be chosen nonnegative and even under u -> 1/u.
3. For lambda > sqrt(rho), no smooth unimodular pointwise multiplier converts
   this operator into one whose semigroup preserves the ordinary cone.

These statements concern the actual full form, not just a finite compression.
They do not prove positivity of its lowest eigenvalue, simplicity/evenness on a
cofinal sequence of windows, convergence of minimizers to the Xi kernel, RH,
or Dirichlet GRH. Failure of semigroup cone preservation is NOT failure of
quadratic-form positivity or of ground-state simplicity.

The analytical proofs use established closed-form and spectral facts specified
below. They have not received an independent mathematical review. The companion
Lean source formalizes only the scalar kernel algebra and finite sign
obstructions, not the full operator theorems. Its elaboration, fresh kernel
checking, and transitive axiom audit are all NOT_RUN.

## 1. Exact source convention and domain

Primary specification: Alain Connes, *The Riemann Hypothesis: Past, Present
and a Letter Through Time*, arXiv:2602.04022v1, Sections 4.1 and 6.1--6.6.
The attached v1, rather than a silently substituted later version, is the
starting specification. Its Section 6.6 leaves simple-even ground states and
the prolate/minimizer comparison unresolved.

For the precise operator use Connes--Consani--Moscovici (CCM),
arXiv:2511.22755v1, equations (3.5), (3.7), (3.10), (3.11), (3.19),
Propositions 3.3--3.4, Theorem 3.6 and Corollary 3.7. This paper carries
CC BY 4.0. Earlier construction: Alain Connes and Caterina Consani,
*Spectral triples and zeta-cycles*, Enseign. Math. 69 (2023), 93--148,
DOI 10.4171/LEM/1049, equations (2.6)--(2.8), Proposition 2.1;
preprint arXiv:2106.01715. Only mathematical statements are used, not copied
implementation. Public researchers' source attribution is retained.

The logarithm gives the unitary identification

    U f(t) = f(exp t),   du/u = dt,
    L^2([lambda^-1,lambda],du/u) = L^2([-T,T],dt).

Every function is extended by zero outside this interval. Endpoints are
irrelevant for L^2 but zero extension is essential for the form and its
boundary contributions. We use Fourier transform

    fhat(z) = integral_R f(t) exp(-i z t) dt,

and inner products antilinear in the first variable. Set

    C_f(r) = integral_R conjugate(f(t)) f(t+r) dt,
    kappa(r) = exp(r/2)/(exp r-exp(-r)),  r > 0,
    M_+(f) = integral_R f(t) exp(t/2) dt,
    M_-(f) = integral_R f(t) exp(-t/2) dt.

The source form is, exactly,

    Q_T(f) = Q_infty(f) + 2 Re(M_+(f) conjugate(M_-(f)))
             - 2 sum_{p prime, m>=1, m log p < 2T}
                 (log p) p^(-m/2) Re C_f(m log p),

where

    Q_infty(f) = -(log(4 pi)+gamma) ||f||_2^2
      - integral_0^infty [2 Re C_f(r)-2 exp(-r/2)||f||_2^2] kappa(r) dr.

Terms at m log p = 2T vanish as L^2 correlations, so the strict cutoff is
legitimate. The finite sum is only a support reduction, not uniform positivity
for all supports. The two pole moments give the real kernel
2 cosh((t-s)/2); they are not squares separately. They vanish on the
pole-cancelled test subspace but cannot be discarded on the full operator.

### Closed-form identification, including boundary terms

Define the nonnegative jump energy

    E(f) = integral_0^infty kappa(r) ||f(.+r)-f(.)||_2^2 dr.

The identity ||f(.+r)-f(.)||_2^2 = 2||f||_2^2-2 Re C_f(r) gives

    Q_infty(f) = c_infty ||f||_2^2 + E(f),
    c_infty = -(log(4 pi)+gamma)
        + 2 integral_0^infty (exp(-r/2)-1) kappa(r) dr.

The constant integral converges: kappa(r) ~ 1/(2r) at zero and decays like
exp(-r/2) at infinity. Thus the diagonal subtraction is retained exactly.
In particular, interactions of the zero extension with the exterior of the
interval have not been removed.

This identity is first obtained on smooth tests. It also identifies the closed
form domain, rather than only a formal kernel. By Tonelli and Plancherel,

    E(f) = (1/(2 pi)) integral_R m(xi) |fhat(xi)|^2 dxi,
    m(xi) = 2 integral_0^infty kappa(r) (1-cos(xi r)) dr.

The archimedean Fourier multiplier in CCM (3.8), (3.19) equals
c_infty+m(xi), as follows by applying the preceding archimedean identity and
Fourier representation on smooth tests. Equality of these continuous
multipliers follows, for example, by polarized testing with modulated smooth
functions of increasing support. Hence the maximal finite-energy domain in
CCM (3.19) is exactly

    D_T = { f in L^2([-T,T]) : E(f) < infinity }.

The pole operator is bounded on each fixed interval by Cauchy--Schwarz; every
prime translation is bounded, and only finitely many are present. These terms
therefore do not change this domain. Nonnegative jump energy is closed by its
Fourier multiplication representation, or directly by lower semicontinuity
of the integral of the translation norms. This agrees with the canonical
lower-bounded closed form, not a different self-adjoint extension.

The compact resolvent and existence of a lowest eigenvalue are supplied by
CCM Theorem 3.6 and Corollary 3.7. The proof there uses the logarithmically
coercive archimedean Fourier multiplier and compact time-frequency cutoffs.
We do not infer these assertions from a finite matrix. We also do not equate
a form core with essential self-adjointness on that core: the latter remains
a distinct hypothesis in the Connes--van Suijlekom real-zero theorem.

## 2. Exact scalar sign calculation

For distinct points whose separation r is not a prime-power shift, the
continuous off-diagonal kernel of Q_T is

    B(r) = 2 cosh(r/2)-kappa(r).

For disjoint smooth tests with all pairwise separations below log 2, this is
the entire cross kernel: prime terms and diagonal subtraction contribute zero.
Put x = exp(r) > 1. Elementary algebra gives

    B(r) = (x^3-x-1)/(sqrt(x)(x^2-1)).                    (A)

The denominator is positive. The polynomial p(x)=x^3-x-1 is strictly
increasing on [1,infinity), since p'(x)=3x^2-1>0. Also p(1)=-1 and
p(sqrt(2))=sqrt(2)-1>0. The intermediate value theorem and strict increase
give one root rho in (1,sqrt(2)). Consequently

    B(r)<0 for 0<r<log rho,
    B(log rho)=0,
    B(r)>0 for r>log rho.                              (B)

For orientation only, rho approximately 1.3247179572,
(log rho)/2 approximately 0.1405997872, and sqrt(rho) approximately
1.1509639253. The theorem uses the algebraic definition, not these decimals.

An independent algebraic check substitutes q=exp(r/2):

    B(r) = q+q^-1-q/(q^2-q^-2)
         = (q^6-q^2-1)/(q(q^4-1)).                    (C)

In exact rational arithmetic,

    K(9/8)   = -62479/177480 < 0,
    K(81/64) = 103634745569/136181113920 > 0.

These are two separations a and 2a, with a=2 log(9/8). The rational checks
validate only these stated finite identities; the universal argument is (A).

## 3. Modulus identity and the sharp semigroup threshold

The elementary inequality ||f(t)|-|f(s)|| <= |f(t)-f(s)| shows that
|f| belongs to D_T whenever f does. Define

    D_f(s,t) = |f(s)||f(t)|-Re(conjugate(f(s))f(t)) >= 0.

The inequality 2D_f(s,t) <= |f(t)-f(s)|^2 controls the singular integral.
If 2T < log 2, there are no prime terms and direct subtraction gives

    Q_T(|f|)-Q_T(f)
      = integral_{[-T,T]^2} B(|t-s|) D_f(s,t) ds dt.     (D)

This is valid throughout the closed form domain: the kappa contribution is
integrable by the preceding bound, and the cosh contribution is bounded on
the compact square. Set the integrand arbitrarily on the diagonal, a null set.
The exterior zero-extension contributions cancel in this difference, rather
than being omitted from either original form.

### Sufficiency

Suppose 2T <= log rho. Since rho < 2, no prime shift contributes, and (B), (D)
give Q_T(|f|) <= Q_T(f). Choose c so A_T+c is strictly positive. For a
nonnegative real h, its resolvent vector uniquely minimizes

    Q_T(v)+c||v||_2^2-2 Re <h,v>.

Replacing v by |v| cannot increase this expression. Uniqueness implies that
the minimizing vector is nonnegative. Thus every sufficiently shifted
resolvent preserves the cone. The spectral-theorem Euler formula

    exp(-t A_T) = strong-lim_{n->infinity} (I+t A_T/n)^(-n)

then proves cone preservation, since its factors preserve the cone for all
sufficiently large n and the cone is norm closed. This proves the required
direction of the first Beurling--Deny criterion directly in this setting.

### Necessity and a smooth counterexample

Suppose 2T > log rho. Choose

    log rho < r0 < min(2T,log 2).

Choose nonzero nonnegative smooth bumps f,g with small disjoint supports
centered at -r0/2 and r0/2, contained in (-T,T), so every cross separation
belongs to (log rho,log 2). Then

    Q_T(f,g) = integral integral B(|t-s|) f(s)g(t) ds dt > 0.   (E)

All prime-power cross terms vanish. The diagonal and norm-subtraction terms
vanish because the supports are disjoint. In particular v=f-g satisfies

    |v|=f+g,
    Q_T(|v|)-Q_T(v)=4Q_T(f,g)>0.                       (F)

For completeness this contradicts semigroup positivity without assuming its
criterion. Shift A_T by c to obtain a nonnegative operator H. The spectral
theorem on its form domain gives

    lim_{t downarrow 0} <f,(I-exp(-t H))g>/t = Q_T(f,g)+c<f,g>.

Dominated convergence is justified by (1-exp(-t x))/t <= x for x>=0 and
Cauchy--Schwarz for the form spectral measures. Since <f,g>=0, (E) implies
<f,exp(-t H)g> < 0 for sufficiently small t, impossible for positive f,g
if that semigroup preserved the cone. A scalar shift changes neither cone
preservation nor (E). Necessity and sharpness, including the endpoint, follow.

## 4. Small-window simplicity and evenness

Suppose 0<T<=(log rho)/2. Compact resolvent gives a ground eigenvalue E0.
The form and its operator commute with complex conjugation, so the ground
eigenspace has a real basis. Every nonzero real ground eigenvector f has one
sign almost everywhere: if its positive and negative sets both had positive
measure, D_f would be positive on their product, and B(|t-s|)<0 there almost
everywhere. Equation (D) would imply Q_T(|f|)<Q_T(f), contradicting the
variational characterization with the same L^2 norm.

If the ground eigenspace had dimension at least two, choose two orthogonal
nonzero real ground eigenvectors. Flip their signs to make both nonnegative.
Their orthogonality forces disjoint supports almost everywhere. Their
difference is again a ground eigenvector but has positive and negative sets
of positive measure, a contradiction. Thus E0 is simple over R and over C.

Reflection Jf(t)=f(-t) preserves Q_T and the domain. It preserves the
one-dimensional ground eigenspace and satisfies J^2=I. A nonnegative nonzero
ground vector cannot satisfy Jf=-f, so Jf=f. In multiplicative coordinates
this is exactly invariance under u -> 1/u. No sign of E0 has been inferred
from cone preservation. This proof does not supply cofinal large windows.

## 5. Why a smooth pointwise phase change does not repair the mechanism

Let 2T>log rho and let h be smooth with |h(t)|=1 on the interval. Multiplication
by h and by its inverse preserve D_T; this follows from the jump-energy
formula and the bounded derivative on the compact interval. The conjugated
form Q_T(hf,hg) has, off the diagonal and prime shifts, kernel

    conjugate(h(s)) B(|t-s|) h(t).

If its semigroup preserved the ordinary cone, the disjoint-bump argument in
Section 3 would force this continuous kernel to be real and nonpositive at
every pair with separation in (0,log 2). Choose

    (log rho)/2 < a < min(T,log rho).

This interval is nonempty. Because rho^2<2, the three points -a,0,a have all
pairwise separations below log 2. Adjacent edges have B(a)<0, and the outer
edge has B(2a)>0. None of these kernels is zero. Multiplying the three directed
conjugated kernel values around the triangle cancels every phase and gives

    B(a)^2 B(2a)>0.

But three strictly negative real numbers have negative product. This is a
contradiction. The theorem is restricted to smooth pointwise phase gauges;
it makes no claim about arbitrary unitary changes, different cones, or
character-paired/vector-valued models. The Lean file proves the scalar
real-gauge cycle obstruction, not this full complex operator statement.

## 6. Comparison, hostile checks, and research consequences

Nearest inspected primary results:

- Connes--van Suijlekom, *Quadratic Forms, Real Zeros and Echoes of the
  Spectral Action*, arXiv:2511.23257v1, Theorem 6.1: the trigonometric-polynomial
  form must define an essentially self-adjoint, lower-bounded operator with
  simple isolated even ground state. Remark 4.3 warns that even symmetrization
  can erase original distributional information. We do not replace that
  operator-core hypothesis by a form-core assertion. The present note does
  not claim an application of that entire-function theorem has been formalized.
- Masatoshi Suzuki, *Weil's quadratic form via the screw function*,
  arXiv:2606.09096v3, submitted 2026-09-23: Theorem 1.4 already gives a
  positive simple even ground state for sufficiently small windows.
  Sections 5.2--5.3 use a limiting logarithmic Dirichlet form and perturbation.
  Our small-window conclusion is therefore not claimed as a first theorem
  of that kind; our argument supplies an explicit range and exact obstruction
  to continuing ordinary cone preservation. The manuscript's displayed date
  can differ from the arXiv submission date; the version identifier is primary.
- Xuefeng Zhu, *Weil positivity in compact windows: a finite reduction,
  certified two-sided bounds, and a Landau--Widom decay law*,
  arXiv:2608.24827v2, submitted 2026-09-02, Theorem 6.2 (printed page 16):
  reports a certified simple even ground state at logarithmic half-width 0.8.
  The theorem and parity bounds were source-inspected, not independently
  replayed. No certificate or numerical bound from that paper is an input
  to the proofs above. Its window exceeds our cone-preservation range:
  this is not a contradiction, because simplicity/evenness do not imply
  cone preservation. The paper explicitly leaves the convergence step open.

Worldwide priority of the exact threshold and phase-cycle obstruction has not
been established. This is an analytically derived explanation and obstruction
relative to the inspected sources, with novelty status UNASSESSED, not an
assertion that no previous author knew these facts. An additional unreviewed
research page, zeta.teal-sea.com/read/hunts/weil_propagation/theory/RESULTS.html,
was inspected as a lead; it separates pole-free positivity from the full form.
It is not a proof dependency or independently reviewed source.

Hostile checks:

- Omitting the pole kernel changes B to -kappa and destroys the obstruction.
  That would prove a theorem about a different operator.
- Imposing both pole moments equal to zero gives a subspace not closed under
  taking modulus; (D) cannot serve as a cone argument on that subspace.
- At the threshold, B only vanishes at the maximal separation. This null-set
  equality does not spoil the strict ground-state argument.
- Above the threshold, bumps can avoid every prime shift while fitting into
  any larger window. Increasing the number of primes does not repair the
  ordinary cone mechanism.
- Neither adding a scalar multiple of the identity nor changing signs of
  basis functions can remove the specified off-diagonal obstruction.
- Small residuals and small Rayleigh quotients do not certify which spectral
  mode is being followed. No residual-to-ground-state claim is made here.

The mathematical consumer is the attempt to prove the genuine Weil ground
state simple and even. One natural mechanism now has a proved exact range
and a proved failure beyond it, including smooth phase gauges. A cofinal
proof must use another structure, such as direct parity-sector separation,
a non-pointwise cone, or a quantitative spectral comparison with independently
certified separation. This note does not establish any of those mechanisms.

The next concrete spectral obligation can be stated without assuming RH:
find a cofinal sequence T_j -> infinity and prove for the actual canonical
operator that its lowest even eigenvalue is simple and lies strictly below
both its next even eigenvalue and its lowest odd eigenvalue. The independent
prolate/minimizer comparison must then control Fourier weights on every
compact subset of |Im z|<1/2. None of these asymptotic estimates follows from
the bounded window proved here.

Fact 6.4 of the attached v1 prints Im(z)<1/2 while its surrounding text and
its line parameter alpha in (-1/2,1/2) refer to a width-one neighborhood of
the real axis. This discrepancy is retained as an audit item. This turn did
not complete an audit of its constants/prolate asymptotics, and did not use
that assertion as a premise. Theorem 7.3's RH assumption is likewise unused.

No character-dependent explicit formula was constructed. Conductor, parity,
root numbers and imprimitive Euler factors remain untouched. No universal
residual-certificate covers were built. No theorem returning to Mathlib's
`RiemannHypothesis` or the repository's `DirichletGRH` was asserted, and no
substitute RH predicate was introduced.

## 7. Source and verification record

Repository instructions, license and exact dependency pins were read through
the authorized GitHub connection. Mathematical source is additive; no default
imports, toolchain pins, upstream adapters or existing declarations are changed.

- grwtsk/math inspected revision: 76ec77a25fb7ce0ae37797e9d2543b941b3442da.
- Lean toolchain: leanprover/lean4:v4.34.1.
- Mathlib pin: d13f23b723b8a846827a245b89c10fc7d3f11612.
- The actual `Mathlib/Analysis/SpecialFunctions/Exp.lean` at that pin was
  inspected. Mathlib is an existing Apache-2.0 dependency; no source was copied.
- New module: GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/
  WeilQuadraticFormOffDiagonal.lean.
- New namespace: GRWTSK.NumberTheory.WeilQuadraticForm.OffDiagonal.
- Main declarations: logKernel_eq_scaleKernel, signPolynomial_lt,
  scaleKernel_normalForm, scaleKernel_neg, scaleKernel_pos,
  frustrated_edge_signs, frustrated_cycle_product_pos,
  no_real_sign_gauge, modulus_defect, positive_cross_violates_modulus.
- Python exact Fraction arithmetic checked the two rational kernel values.
  SymPy exact symbolic simplification checked the rational kernel identity,
  polynomial difference identity and real-gauge cycle identity. These are
  reproducible finite algebra checks, not Lean verification or a semigroup proof.
- Lean parsing/elaboration: NOT_RUN. Fresh kernel checking: NOT_RUN.
  Transitive axiom audit: NOT_RUN. No Lean/Lake executable was present.
  Source inspection found no `sorry`, `admit`, or custom axiom declaration;
  that observation does not establish successful compilation or axiom closure.
- Independent analytical review: NOT_RUN. The argument and hostile checks
  were developed in the same assistant session. Source literature supplies
  the full form and compact-resolvent result, not endorsement of this note.

Other requested repository refreshes, not mathematical dependencies:

- openai/math main: 4eaee87548250b2682affda7d05d947c05554bae.
- TauCetiProject/TauCeti main: 85f3eb5579df5ca44ba8cd0921d614b41ab72174;
  its actual library root was inspected. No Tau Ceti theorem was imported.
- deepmind/formal-research: inaccessible (GitHub API 404).
  The distinct accessible google-deepmind/formal-conjectures main was
  verified at 2befc3a33248a785a9e0839d5d2fba300bb07863. It was not treated
  as the same repository or as a proof library resolving these obligations.
- The existing `ConnesCriticalStripCertificates.lean` at the inspected math
  revision was read; it preserves the actual riemannZeta consumer and leaves
  the analytic certificates unconstructed. Searches for old `rightCore` paths
  were incomplete; no claim of absence or full audit is made. No residual
  certificate implementation was reused or modified.
- The MSC layout map metadata was accessible but decoded content retrieval
  failed; the existing ZetaAndLFunctionsAnalyticTheory subject directory and
  maintained files there were inspected. No taxonomy metadata was changed.
- Canonical noeaaeue main inspected revision:
  ba24ca338da7c4cde83a2004a36023332f5afae4. The requested
  workflows/research/orchestration/skills/noe-proof-automation/SKILL.md was
  unavailable at that revision. Dependent proof/browser automation was not
  run. The work here is manual source analysis, manually authored Lean and
  authorized GitHub source publication, not an automated prover deployment.

Public source locations:

- https://arxiv.org/abs/2602.04022v1
- https://arxiv.org/html/2511.22755v1
- https://arxiv.org/abs/2106.01715
- https://arxiv.org/html/2511.23257v1
- https://arxiv.org/html/2606.09096v3
- https://arxiv.org/abs/2608.24827v2

Publication commit and exact-source verification issue are recorded separately
by the repository operation. Publication is not mathematical acceptance or
proof verification.
