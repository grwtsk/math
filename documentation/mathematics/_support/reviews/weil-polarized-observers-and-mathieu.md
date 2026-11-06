# Polarized arithmetic observers, divided differences, and the Mathieu comparison

Local attribution: grwtsk contributors.
Research date: 2026-11-04 (America/Los_Angeles).
Original exposition and accompanying source: repository MIT license.
AI-assisted analytical derivation, source inspection, Lean drafting and diagnostics.
Independent analytical review, Lean elaboration, fresh kernel replay and transitive
axiom audit: **NOT_RUN**. Novelty: **UNASSESSED**.

## 1. Result and the proposed research mechanism

The question is whether the repository's almost-Mathieu operator can define sofic
edges, with observers, waveform descriptions, quadratic phase control and
polarized filtering, and thereby establish cofinal RH/Dirichlet-GRH separation.
We use the actual almost-Mathieu normalization already present in AlmostMathieu.lean:

    (H u)(n) = u(n+1)+u(n-1)+2*g*cos(2*pi*alpha*n+theta)*u(n).

Its transfer identity and determinant-one theorem do not identify it with the
arithmetic Weil operator. The proposed components have useful separate roles,
but an exact operator comparison is not supplied by combining their names.

This increment gives two concrete results for the actual zeta Weil compression:

1. In its lowest three symmetric Fourier modes, all three off-diagonal entries
   have the same magnitude. For any phase-gauged nearest-neighbor three-site
   model with hopping magnitude h>0, the operator-norm error is at least h/2.
   Thus a Mathieu chain is NOT an arbitrarily accurate replacement in these
   same Fourier coordinates. This says nothing against a separately proved
   nonlocal change of representation or against using Mathieu as a search model.
2. Retaining the actual divided-difference structure, uniform error eta in the
   signed sine symbol and epsilon in the diagonal gives operator-norm error
   at most epsilon+2*eta, independently of the finite dimension. A subsequent
   edge filter costs its additional operator error sigma. The total price is
   epsilon+2*eta+sigma. The contraction responsible for the dimension-free
   estimate is proved below, not posited as an arithmetic hypothesis.

These results do not establish cofinal low spectral ordering. They reject one
literal replacement and give a source-specific way to certify the accuracy of
phase-sensitive arithmetic matrices. They do not assert that any certified
matrix has the required positive separation, or that its ground vector returns
to Xi. The full infinite complement and actual mixed block remain essential.

Nearest prior source: Connes--van Suijlekom (CvS), arXiv:2511.23257v1,
Propositions 4.1--4.2, already identify the general divided-difference structure
and the independent diagonal. We do not claim that structure as a new discovery.
The commutator estimate is elementary bounded-operator mathematics; worldwide
priority of this particular arithmetic observer application is not assessed.

## 2. The literal arithmetic object and its finite observations

Use Connes--Consani--Moscovici (CCM), arXiv:2511.22755v1, equations
(3.5), (3.7)--(3.11), (3.19)--(3.20). Fix T>0, L=2T, X=exp(2T), and

    H_T=L2([-T,T],dt),
    e_n(t)=(2T)^(-1/2)*exp(i*pi*n*t/T),   omega_n=pi*n/T,
    kappa(r)=exp(-r/2)/(1-exp(-2r)),      r>0,
    a_q=Lambda(q)/sqrt(q),
    B(r)=2*cosh(r/2)-kappa(r).

Every interval function is extended by zero. Inner products are conjugate-linear
in the FIRST variable. The source form is

    Q_T(f,g)=Q_infty(f,g)+<f,(L_pole-P_prime)g>,
    P_prime=sum_{2<=q<=X} a_q*(S_log(q)+S_log(q)^*),
    S_r f(t)=1_{[-T,T]}(t+r)*f(t+r),
    L_pole(t,s)=2*cosh((t-s)/2).

The endpoint q=X contributes zero whenever it is an integer: the shifted supports
meet in a null set. Lambda includes every prime power, not just primes. The two
pole moments are both retained. In particular L_pole is not replaced by a sum
of two positive squares.

For a finite set I of distinct integer Fourier indices, let A_I be the actual
matrix Q_T(e_m,e_n). Its quadratic form is precisely Q_T on their span, under
the orthonormal coordinate identification. Zero-extended exponentials are in
the form domain: their Fourier transforms are O(1/|xi|), and the archimedean
multiplier grows only logarithmically. The finite prime and pole operators are
bounded at fixed T. This finite matrix statement does not require a claim about
essential self-adjointness on every proposed core.

### Off-diagonal arithmetic observer

Define the real, odd symbol on integer k by

    F_T(k)=integral_0^L B(r)*sin(omega_k*r)dr
           -sum_{2<=q<=X} a_q*sin(omega_k*log(q)).                   (1)

The integral is ordinary and convergent: near zero kappa(r)~1/(2r), while
sin(omega_k*r)=O(r). F_T(0)=0 and F_T(-k)=-F_T(k). Define independently

    d_T(k)=Q_T(e_k),          d_T(-k)=d_T(k).

Then for m!=n,

    (A_I)_(m,n)=(-1)^(m+n)*(F_T(m)-F_T(n))/(pi*(n-m)),
    (A_I)_(n,n)=d_T(n).                                            (2)

Proof. Direct integration over the overlaps of the zero extensions gives

    <e_m,(S_r+S_r^*)e_n>
      =(-1)^(m+n)*(sin(omega_m*r)-sin(omega_n*r))/(pi*(n-m)).        (3)

The diagonal value is 2*(1-r/L)*cos(omega_n*r), for 0<=r<=L.
In the mixed archimedean form, all multiples of <e_m,e_n> vanish for m!=n;
its remaining term is minus the integral of kappa times (3). The two pole
moments give the integral of 2*cosh(r/2) times (3). The prime contribution is
minus the finite sum of (3) with coefficients a_q. Combining gives (2).
The factor (-1)^(m+n) is the basis translation phase from [0,L] to [-T,T].
The same calculation matches CvS (8)--(11); it is not an unrelated matrix model.

For complete specification, the independently observed diagonal can be written

    d_T(n)=c_inf
       + integral_0^infinity kappa(r)*(2-2*(1-r/L)_+*cos(omega_n*r))dr
       + 4*integral_0^L cosh(r/2)*(1-r/L)*cos(omega_n*r)dr
       - 2*sum_{2<=q<=X} a_q*(1-log(q)/L)*cos(omega_n*log(q)),       (4)
    c_inf=digamma(1/4)-log(pi).

The singular subtraction in (4) must be evaluated together, not as two divergent
integrals. The term at q=X is zero. Formula (4) retains the exterior jump-energy
contribution. In particular the sine observations (1) alone do not recover (4).

### Signed prime--pole cancellation before observing

Let psi(x)=sum_{2<=q<=x}Lambda(q) and R(x)=psi(x)-x+1. Then (1) is also exactly

    F_T(k)=integral_0^L (exp(-r/2)-kappa(r))*sin(omega_k*r)dr
      + integral_0^L exp(-r/2)*R(exp(r))
          *(omega_k*cos(omega_k*r)-sin(omega_k*r)/2)dr.             (5)

This is the sine-symbol specialization of the previous prime--pole comparison,
but the proof can be audited directly. Put f(x)=x^(-1/2)*sin(omega_k*log x).
Write dpsi=dx+dR. Its dx integral cancels exactly the exp(r/2) part of the pole
density. Integrating f*dR by parts gives -integral R*f', because R(1)=0 and
f(X)=X^(-1/2)*sin(2*pi*k)=0. The derivative is

    f'(x)=x^(-3/2)*(omega_k*cos(omega_k*log x)-sin(omega_k*log x)/2).

Both endpoints, the possible endpoint prime-power atom, and the signed
Chebyshev discrepancy are thereby retained. No estimate on R at infinity,
prime-number theorem error, spectral assumption or RH premise is used.
The signed integral in (5) has NOT been proved small uniformly as T grows.

## 3. A concrete obstruction to the nearest-neighbor substitution

For I={-1,0,1}, write a=d_T(1), b=d_T(0), r=F_T(1)/pi. Equation (2) gives

                    [ a   r  -r ]
    A_I =           [ r   b   r  ].                               (6)
                    [-r   r   a ]

Thus each of the three off-diagonal magnitudes is |r|. Conjugation by any
diagonal unitary changes only their phases, not these magnitudes.
A three-consecutive-site compression of the infinite almost-Mathieu chain has
two adjacent hoppings of magnitude
h=1 and a zero long edge. Allow arbitrary diagonal potentials, arbitrary
h>0, and arbitrary diagonal phase gauges on either matrix.

Let E be their difference and delta=||E|| in Euclidean operator norm. Every
entry satisfies |E_ij|<=delta. The deleted long edge gives |r|<=delta; the
adjacent edge gives h<=|r|+delta by the triangle inequality. Therefore

                       ||E|| >= h/2.                             (7)

The argument also applies to a larger comparison if the same three coordinates
are retained: compression cannot increase operator norm. A periodic quotient
with at least five consecutively indexed vertices has the same internal
three-site obstruction. A three-vertex cyclic quotient has a wrap edge and is
NOT the three-site chain in this statement. Its boundary comparison must be
handled separately. The bound is unconditional
in T and does not depend on the diagonal or on a guessed sign for r.

This is NOT a claim that a Weil matrix can never be tridiagonalized. A nonlocal
unitary change can produce a Jacobi representation in appropriate finite
settings. Its coefficients, cyclicity/completeness, observation map and
quantitative return must then be established. A general Jacobi matrix is not
an almost-Mathieu matrix, whose cosine potential is a special constraint.
Nor does (7) prohibit rescaling the hopping toward zero; it quantifies the
cost relative to that hopping scale instead of manufacturing a small relative
error. It does not by itself compare that scale with a genuine Weil gap.

## 4. Dimension-free stability of the native arithmetic edge representation

Define, on any finite set I of DISTINCT integers,

    K_(m,n)=(-1)^(m+n)/(pi*(n-m)), m!=n;  K_(n,n)=0.                (8)

This matrix is skew-Hermitian and is a contraction in the Euclidean norm:

                              ||K||<=1.                          (9)

Here is a direct proof. On L2([-pi,pi],dx/(2*pi)), let v_n(x)=exp(i*n*x).
They are orthonormal. Multiplication by i*x/pi has norm at most one. Its
compression to span{v_n:n in I} has matrix entries, for k=n-m!=0,

    integral_-pi^pi (i*x/pi)*exp(i*k*x)dx/(2*pi)
                   =(-1)^k/(pi*k)=K_(m,n).

Integration by parts proves this equality; the integral of exp(i*k*x) is zero.
The diagonal integral vanishes because x is odd. As (-1)^(n-m)=(-1)^(m+n),
this is precisely (8). Orthogonal compression of a contraction proves (9).
No infinite principal-value summation or dimension-dependent row-sum estimate
is needed. The variable x in this proof is auxiliary, not the source time t.

For real vectors d and F, let D_F denote diagonal multiplication by F. Equation
(2) can therefore be written as

                    A_I=D_d+[D_F,K].                             (10)

Take approximations d_tilde,F_tilde with genuine enclosures

    max_I |d-d_tilde|<=epsilon,
    max_I |F-F_tilde|<=eta.

These enclosure hypotheses must be established by source-exact analysis or
certified arithmetic; observed numerical agreement is not sufficient.
Subtract (10) BEFORE estimating. With deltaF=F-F_tilde,

    A_I-A_tilde_I=D_(d-d_tilde)+[D_deltaF,K].

The diagonal norms are their maximum entry magnitudes, and (9) gives

                ||A_I-A_tilde_I||<=epsilon+2*eta.                 (11)

This is the claimed dimension-independent error theorem for the actual
arithmetic compression. It controls every vector in that finite space, not
only a proposed trial. For real deltaF one can sharpen 2*eta to
max(deltaF)-min(deltaF): subtract the midpoint scalar from D_deltaF, whose
commutator is unchanged. More generally any proved bound on the centered
symbol suffices. The diagonal error remains independently charged.

For Hermitian matrices the min--max principle transfers each ordered eigenvalue
with error at most epsilon+2*eta. Consequently a gap in a rigorously enclosed
comparison matrix must exceed twice this price to certify a strict gap by this
argument. This is a finite-dimensional consequence only; a lower bound for a
compression is not a lower bound for the full infinite-dimensional operator.

The proof does not assume that F is an operator-monotone function or that its
divided-difference matrix is positive. Neither follows from its name or from
(10). It also does not imply that reducing epsilon and eta creates separation
in A_I: it only makes an observation faithful to separation already present.

If the data retain d(-n)=d(n) and F(-n)=-F(n), both matrices commute with
reflection. The same error bound then holds on each parity sector. Enclosures
can be symmetrized by using the exact known symmetry and averaging reflected
observations without increasing their uniform error. This is not the prohibited
symmetrization of an unspecified one-sided source distribution.

## 5. What observers, waveform descriptions and polarization actually preserve

For any Hermitian sesquilinear form q, conjugate-linear first, write Q(u)=q(u,u).
Its complete polarization is

    q(u,v)=[Q(u+v)-Q(u-v)-i*Q(u+i*v)+i*Q(u-i*v)]/4.               (12)

Expansion proves (12), even when Q is indefinite. In particular
Q(u+i*v)-Q(u-i*v)=-4*Im q(u,v); the sign is convention-sensitive.
The four scalar observations must concern the SAME source form, domain and
normalization. For a nonorthonormal waveform family, record its Gram matrix
as well: otherwise a coefficient-space eigenvalue is not the physical
Rayleigh quotient. Parseval or a proved frame comparison is needed for return.

The existing repository descriptions distinguish an arithmetic/procedural/
potential waveform role and sampling metadata from reconstruction theorems.
The observer/typed-chain framework requires the consumed predicate to be
constant on observation fibers. These are appropriate interfaces, not a
source of extra arithmetic information.

A literal blind-spot witness: x=(1,1) and y=(1,-1) have identical coordinate
squared magnitudes, but for A=[[0,1],[1,0]], x*Ax=2 and y*Ay=-2. A positive
feature-ranking quadratic cannot recover the missing interaction phase.
The four-probe identity repairs that SPECIFIC information loss; it does not
supply a sign for the reconstructed quadratic form.

Likewise an exact waveform/byte round trip transports an already specified
mathematical object, but does not prove its positivity or a spectral gap.
Here the useful minimal observer is the structured pair (d_T,F_T) at the
selected indices, with rigorous uniform enclosures. It determines all the
finite matrix entries through (2), and (11) supplies a quantitative return.

## 6. Sofic edges, phase control and honest filtering

At rational alpha=p/q the almost-Mathieu potential is q-periodic. Phase states
j mod q with edges j->j+1 and their literal potential labels provide a finite
labeled presentation. Irrational rotation has infinitely many distinct exact
phase states; a finite partition or rational approximation requires a separate
comparison theorem for the weights it forgets. Finite graph paths and q->infinity
do not establish T_j->infinity for the Weil supports, much less spectral ordering.

Reuse SearchSoficLanguage and SoficGraphRepresentationBridges for valid labeled
paths and relation sandwiches, but attach the actual weights from (2), their
source identities and errors separately. The existing graph predicate alone
contains no Hermitian weight or lower spectral estimate. Its exact-language
return additionally requires the actual whole-language comparison, not merely
one realized path. Periodic label counts are not arithmetic eigenvalues.

Pointwise phase changes, including quadratic chirps exp(i*(a*n^2+b*n+c)),
conjugate matrix entries by exp(i*(phase_j-phase_i)). They preserve spectrum
and every closed-cycle product. Optimizing the phase of a TRIAL vector can
change its Rayleigh upper bound, but that is not a lower bound for unseen modes.
The previous cone-cycle obstruction has its original scope and status; it is
not re-proved here. The new obstruction (7) instead concerns edge magnitudes.

If a filter drops or modifies entries of A_tilde_I, call the resulting Hermitian
matrix B_I and keep the complete residual E=A_tilde_I-B_I. A symmetric edge
filter that deletes an edge deletes its conjugate reverse too. A sufficient
explicit price is

    sigma=max_i sum_j |E_ij|,        ||E||<=sigma.                 (13)

For Hermitian E the row and column bounds agree; the matrix Schur bound proves
(13). Thus the actual return is

                 ||A_I-B_I||<=epsilon+2*eta+sigma.                (14)

The dimension-free part applies to errors in the STRUCTURED symbol and diagonal;
arbitrary independent entry errors or arbitrary edge masks need not retain it.
Deleting a single nonzero Hermitian edge changes the matrix by a two-vertex
block with eigenvalues +/-|weight|. Hence graph inclusion alone supplies no
Loewner-order inequality. Replacing A by a positive graph Laplacian, A*A,
absolute edge weights, or its positive spectral part changes the problem.

The finite QuadraticCertificates machinery can certify the actual shifted
finite target once a valid exact Gram identity and all constraints are supplied.
It proves neither the existence of that certificate nor the required full-source
lower floor. The older positive phrase-ranking quadratic has a different target.

## 7. The remaining cofinal estimate, not a renamed assumption

Let A_T be split into a finite head and its infinite complement, in a parity
sector, and write its actual blocks as [[B,C*],[C,D]]. At a real z below a
PROVED lower floor for D, completing the square gives the low Schur operator

                  S_T(z)=B-z-C*(D-z)^(-1)*C.                     (15)

The periodic-boundary contribution provides analytical high-tail and mixed
estimates and a trigonometric-core argument, all with its existing NOT_RUN and
unreviewed statuses. This increment preserves them, not certifies their entire
proof. In particular high-tail positivity is not low-head positivity.

Equations (11)--(14) can certify B and help retain signed cancellation. They do
not bound the actual self-energy in (15) for free. That requires the full
boundary, prime, pole and high-complement estimates in the same decomposition.
A buffer cannot delete the intermediate modes. The derivative-cutoff competitors
remain among the possible low directions.

During this turn, concurrent commit 2cb02200604cae7cec56880486017090c44a9eb7
published `weil-low-schur-enclosure.md`, `SchurResidualEnclosure.lean` and
`WeilLowSchurEnclosure.lean`. Its sections 0--3 were inspected. They report
full-source finite-high-solve residual enclosures and fixed-window convergence;
their cofinal sign and independent verification status remains unproved/NOT_RUN.
These files and their complete parent tree are preserved. They are NOT claimed
as work of this increment or silently upgraded to independently reviewed inputs.

There is a direct way to compose the new observer estimate with that enclosure.
Let Y map the low space into a finite high Fourier space, Jx=x-Yx, and suppose
the actual high block satisfies D-z>=gamma*I with gamma>0. Put

    U=J*(A_T-z)J,       R=C-(D-z)Y.

Expansion gives the source identity S=U-R*(D-z)^(-1)R. If ||R||<=rho is a
bound on the WHOLE residual (not just its finite rows), then

                    U-rho^2/gamma*I <= S <= U.

Now use (14) on a finite source matrix containing all the support of J. Write
omega=epsilon+2*eta+sigma and U_tilde=J*(B_I-z)J. Orthogonality of the
low and high supports gives J*J=I+Y*Y, hence

    ||U-U_tilde|| <= (1+||Y||^2)*omega =: nu,
    U_tilde-(nu+rho^2/gamma)*I <= S <= U_tilde+nu*I.                (15a)

The first inequality follows by sandwiching the actual finite matrix error
between J* and J; it retains reconstruction amplification. The whole residual
price must still come from a source-certified enclosure, such as an audited
instance of the concurrent note, with its finite rows, tails and rounding paid.
Equation (15a) does not assert positivity of its lower endpoint. It identifies
exactly how structured phase observations feed the existing full-source Schur
mechanism, instead of mistaking their finite matrix for the final operator.

The concrete unproved target is still, on ONE sequence T_j->infinity,

    E_(1,+)(T_j) < min(E_(2,+)(T_j), E_(1,-)(T_j)).                 (16)

For example source-bound lower estimates for S_T(z) on the odd sector and the
even complement, together with a genuine even trial below z, would establish
it. What is missing is those signed low estimates, not the Schur identity.
The observer error in (14) must be strictly smaller than the certified margins.
Choosing precision as if that margin were already positive is circular.

Even (16) is not the final RH return. Correctly normalized Fourier transforms
of the genuine ground functions must converge to the specified Xi locally
uniformly on |Im z|<1/2, on the SAME sequence. The all-real-zero conclusion
requires the precise CvS Theorem 6.1 hypotheses for the original source and
core; Hurwitz and the exact classical-function return then follow only after
their own hypotheses are met. No such cofinal estimates are proved here.

## 8. Dirichlet characters require separate arithmetic data

A primitive character requires its actual conductor, parity-dependent gamma
factor, root number, conjugate-character functional equation and pole convention.
The prime weights contain chi(p)^m and the reverse interaction contains the
appropriate conjugate. Replacing these values by magnitudes discards arithmetic.
For nonreal characters, the real-even scalar zeta symbol above is not an
established identification of their source form. A paired or block-valued
construction must prove its actual source correspondence and involution.

The commutator principle can extend to block-diagonal observed symbols with the
kernel K tensor identity, since its norm is still at most one. But this is NOT
a construction of the character-dependent source operator or an extension of
(1)--(7). No conductor-uniform estimate is claimed. For every required character,
cofinal separation or an alternative full positivity/nonvanishing mechanism,
normalization, and primitive/imprimitive return remain to be supplied.

## 9. Formal-source and validation record

Initial base inspected: grwtsk/math@80ee60ddd123bb10504ec2aa035e93e96feee677.
Concurrent publication base: 2cb02200604cae7cec56880486017090c44a9eb7,
complete root tree 0d405a93c4e7cf481e84116b65538bffb036f33c.
Read AGENTS.md and the actual AlmostMathieu, QuadraticCertificates,
AnalysisPolarization, Descriptions, SearchSoficLanguage,
DynamicSoficSpectralCover, SoficGraphRepresentationBridges and related source
references. Search failure with incomplete_results was not treated as absence.
No exhaustive waveform-module census or corpus-wide verification is asserted.

Companion source:

    GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/
      DividedDifferenceObserverBounds.lean

It gives candidate proof terms for finite difference/commutator algebra,
independent diagonals, constant-symbol invariance, symmetry, the three-mode
magnitude identity, complex four-probe scalar reconstruction, the half-hopping
obstruction from actual edge-error bounds, normed-ring model/filter prices,
and amplification under a finite reconstruction sandwich.
The explicit sawtooth entries are defined. Their Hilbert-space contraction,
the concrete arithmetic symbol/compression identity, Gram observation return,
min--max and Schur/source-domain theorems are NOT Lean-formalized in this file.
The analytic proof of (9) is above; no hidden hypothesis is described as its
formal proof. This file does not create a replacement RiemannHypothesis.

Diagnostics actually executed with Python 3.13.5, NumPy 2.3.5, SymPy 1.14.0,
and mpmath 1.3.0:

- Symbolic expansion verified (12), including its imaginary sign.
- 9,680 exact Fraction entry fixtures checked commutator linearity and constant
  invariance: indices -n..n for n=1..8, h=1..10,
  f_i=(-1)^i*(i^2+3*i+h)/(h+2), g_i=(i-h)/(h+3), with the common pi factor
  omitted from K to make the tests rational.
- 303 exact rational magnitude fixtures checked max(||r|-h|,|r|)>=h/2:
  r=k/7, -50<=k<=50; h in {1/5,1,3/2}.
- Thirteen 45-digit quadratures checked the sawtooth Fourier moments for
  k=-6..6; largest observed difference about 3.73e-48.
- Twenty independent direct overlap integrals checked (3), at T=0.8,1.3,
  pairs (-2,1),(-1,0),(-1,1),(0,1),(1,2), r/(2T)=0.2,0.7;
  largest observed difference about 8.76e-47.
- Six 45-digit comparisons of the direct prime--pole sine formula (1) with
  cellwise Chebyshev formula (5), T=0.8,1.3 and k=1,2,3; largest observed
  difference about 2.50e-45. All prime powers below the cutoff were enumerated.
- Float operator-norm diagnostics at dimensions 3,9,33,65 used NumPy generator
  seed 20261104 and independent uniform [-1,1] diagonal errors. K norms were
  approximately 0.4775,0.7720,0.9238,0.9581; the commutator price held in all
  four cases. These samples do not prove (9) or any spectral separation.

Exact fixtures are finite diagnostics, not Lean checking or a universal proof.
Quadrature and float results are not interval-certified. The universal proofs
at their stated scopes are the analytical arguments above. No numerical Weil
spectrum, actual spectral gap, or cofinal conclusion was certified.

No local Lean/Lake executable or verified local canonical skill checkout was
found. The canonical noe-proof-automation skill and organization-skill directory
returned 404 at Noe main revision 53f1622af5dc87a29e20408c25f76bbb55243eb1.
No dependent proof/browser automation, workflow dispatch, scheduler or installation
ran. Manual analysis and authorized source publication are separate activities.
The root Lean v4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612
pins, root imports and existing sources are not changed by this increment.

Primary sources:

- Alain Connes, arXiv:2602.04022v1, sections 6.1--6.6, especially the two
  distinct remaining obligations on printed page 30. The attached edition is
  retained; it was not silently replaced by a later edition.
- Alain Connes, Caterina Consani, Henri Moscovici, arXiv:2511.22755v1,
  equations (3.5), (3.7)--(3.11), (3.19)--(3.20); full Weil source, CC BY 4.0.
- Alain Connes, Walter D. van Suijlekom, arXiv:2511.23257v1,
  Propositions 4.1--4.2, Remark 4.3, Theorem 6.1; CC BY 4.0.
  Its divided-difference identification is prior art, not an invented connection.
- Artur Avila, Yoram Last, Mira Shamis, Qi Zhou, arXiv:2110.07974v2,
  equation (1.1), as cited by the repository's AlmostMathieu module.
  Only its model definition is consumed; none of its spectral theorems is
  imported as a Weil or Dirichlet estimate. No upstream implementation is copied.

The first unsupported implication in the original proposal is now explicit:
finite source-preserving graph/observer work cannot identify a Mathieu gap with
an arithmetic gap without the actual operator comparison. The natural-coordinate
small-error replacement fails by (7). The constructive alternative retains the
native arithmetic weights and gives the quantitative return (11)--(14).
The unproved task remains a cofinal signed lower bound for (15), followed by the
normalized genuine-ground comparison, or a different complete unconditional route.
