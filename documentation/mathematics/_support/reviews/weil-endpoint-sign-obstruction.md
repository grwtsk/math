# A source-exact negative even Schur sign on an endpoint kernel

Local attribution: grwtsk contributors.
Research date: 2026-11-04 (America/Los_Angeles).
Original mathematical exposition and source: repository MIT license.
AI-assisted analytical derivation, manually authored Lean candidates, and exact
integer interval computation. Independent analytical review: NOT_RUN.

## 0. Result and the particular estimate affected

The object is the canonical FULL pole-inclusive arithmetic Weil operator A_T
of Connes--Consani--Moscovici (CCM), *Zeta Spectral Triples*,
arXiv:2511.22755v1, (3.19)--(3.20), on L2([-T,T],dt), with zero extension.
We retain the source Fourier normalization and use the exact periodic
comparison and form-domain Schur return of the existing notes.

This contribution establishes a NEGATIVE sign, not the requested positive
cofinal certificate. It diagnoses a genuine failure of one allowed sufficient
test, rather than merely declaring its sign unproved:

**Theorem A (fixed-support, all sufficiently large Fourier heads).** Set

    T=1/2, beta=1/10000, N0=100000000.

For every integer N>=N0 the existing full high floors satisfy c_+(T,N)>2 and
c_-(T,N)>2. The exact even Schur operator S_{T,N,+}(beta) is therefore defined.
There is an explicitly specified real vector u_N in the even head P_N with

    tau(u_N)=sqrt(T)u_N(T)=0,  ||u_N||^2>1,
    <u_N,S_{T,N,+}(beta)u_N> < -1/20000.                         (0.1)

An independently evaluated full even trial f, given in Section 3, satisfies
Q_T(f)<1/200000 and ||f||^2>1, hence Q_T(f)/||f||^2<beta.

Thus every honest lower enclosure L<=S at these parameters is also negative
on this endpoint kernel. In particular the sufficient even sign test from
`weil-low-schur-enclosure.md`, Section 5, with Y=0 and ell_Y=tau, FAILS.
No reduction of remote-tail, source-series or rounding errors can make that
particular test pass. This is not a failed numerical search for positivity:
it is a signed witness in the genuine arithmetic form.

**Theorem B (fixed-T graph-core statement).** For every fixed T>0, the even
cosine polynomials satisfying tau=0 are an operator core for A_T restricted
to the even sector. Consequently, for every beta>E_{1,+}(T), all sufficiently
large even polynomial heads contain an endpoint-zero vector with Rayleigh
quotient below beta. This also explains the obstruction without a numerical
trial. It does not supply a dimension bound uniform in T or beta-E_{1,+}(T).

These results do NOT refute the endpoint residual estimate, the conditional
inertia implication, simple-even ground states, or ground-transform convergence.
They do not prove that every nonzero high solve Y has the same obstruction.
They do not establish an odd sign, a spectral gap, cofinal support separation,
RH, Dirichlet GRH, or a finite-prolate comparison. N tends to infinity here;
T does NOT. In particular beta is not asserted to lie in an actual spectral
gap. A zero high solve is legitimate stored data, but is not a Galerkin inverse.

## 1. Consumed source audit

The inspected current repository was grwtsk/math main
`83dcff3ccda15b1a3961140e8720c4eceddbddc5`, complete tree
`22410ad37c0f061dc8d8bcf8d29c291b1d31250a`. This is newer than the supplied
odd-output publication. The current observed-Schur integration, harmonic
polarization and L-series additions are preserved, not claimed as this work.

The periodic note and review #1675 supply the exact identity

    A_T=D_T+V_T,  V_T=G_T-P_T^arith+L_T^pole,
    D_T c_n=d_n c_n,  d_n=c_inf+m(pi*n/T),
    c_inf=psi_dig(1/4)-log(pi),
    m(xi)=2 sum_{j>=0} xi^2/[alpha_j(alpha_j^2+xi^2)],
    alpha_j=2j+1/2,
    ||V_T||<=Bcal_T=C_bd(T)+K_T+2(T+sinh T),
    C_bd(T)=pi+2+4exp(-T)/(1-exp(-4T)),
    K_T=2 sum_{2<=q<exp(2T)} Lambda(q)/sqrt(q).                   (1.1)

The cosine basis is c_0=(2T)^(-1/2), c_n=T^(-1/2)cos(pi*n*t/T), n>=1.
The endpoint row is exactly the existing
`LowSchur.Observed.endpointRow`, including its 1/sqrt(2) constant entry.
The operator domain is the diagonal domain with square-logarithmic weight;
no equality or zero value at the endpoints is required.

The consumed analytical argument was checked at its actual level: expand
zero-extension and periodic translation energies with a common positive
translation cutoff; their diagonal parts agree and the correlation difference
is the exterior image kernel. Its nearest corners have the Carleman majorant
of norm at most pi; exponential remainders and distant images give the rest
of C_bd. Dominated strong convergence identifies the maximal finite-energy
domains. Bounded perturbation then identifies the operator domains, and graph
norm equivalence transfers the diagonal polynomial core. This is not the
unsupported assertion that a form core is automatically an operator core.
The same argument, or parity projection of that core, gives the even core.

The integral test on the positive decreasing multiplier summand gives

    0<=m(xi)<=4+(1/2)log(1+4xi^2),
    m(xi)>=(1/2)log(1+4xi^2),                                    (1.2)

and monotonicity in |xi|. The exact prime entries are obtained by integrating
zero-extended translations over [-T,T-log(q)], not by replacing them with
periodic shifts. The boundary entries follow by integrating the exponential
image kernels. Section 3 gives their complete quadratic specialization and
separate physical-coordinate checks.

The low-Schur note and review #1679 give, when z<c_+(T,N),

    S(z)=P_N A_T P_N-z-B^*(C-z)^(-1)B,
    S(z)<=P_N A_T P_N-z.                                        (1.3)

The high inverse is positive by its independently proved floor. Thus (1.3)
is a quadratic-form inequality on the finite head, returned from the genuine
high operator. It is enough for this NEGATIVE certificate; no lower residual
enclosure or numerical high inverse is needed. For lower certificates,
all finite residual rows and the remote term remain necessary as before.

This focused audit does not independently review all historical claims.
In particular no hard-cutoff global radical, factor-four calculation, prolate
asymptotic, or odd output/derivative theorem is a premise. Reviews #1675,
#1679 and #1681 remain open with their recorded NOT_RUN statuses.

## 2. Endpoint cancellation costs arbitrarily little in graph norm

For integers N>M>=0 put K=N-M and

    q_{M,N}=K^(-1) sum_{n=M+1}^N (-1)^n c_n.                     (2.1)

Every summand is a genuine nonconstant mode. Orthonormality and the actual
endpoint normalization give

    tau(q_{M,N})=1,  ||q_{M,N}||^2=1/K,  q_{M,N} perpendicular P_M.

Write Dmax=max_{M<n<=N}|d_n|. Equation (1.1) gives

    ||A_T q_{M,N}|| <= (Dmax+Bcal_T)/sqrt(K).                    (2.2)

For fixed T,M, (1.2) implies Dmax=O_T(1+log(N+1)), so both the norm and
operator norm of q_{M,N} tend to zero. Given any even polynomial f in P_M,

    f_N=f-tau(f)q_{M,N}

has tau(f_N)=0 and converges to f in graph norm. Since the even polynomials
are already an operator core, their endpoint-zero subspace is graph dense
in the entire even operator domain: first approximate a domain vector by a
polynomial, then choose the packet dimension sufficiently large for that
polynomial and its particular endpoint. This two-stage choice avoids an
unproved uniform bound on the endpoint values of arbitrary approximants.
The subspace is linear, contained in the operator domain, and graph dense;
this proves Theorem B's core assertion.

Graph convergence implies convergence of Q(f_N) and ||f_N||^2. Explicitly,
|<f_N,A_T f_N>-<f,A_T f>| is bounded by
||f_N-f|| ||A_T f_N||+||f|| ||A_T(f_N-f)||. Given beta>E_{1,+}(T), choose
an even polynomial f with Rayleigh quotient below beta by approximating an
even ground eigenvector in graph norm. The packets preserve this strict
inequality for all sufficiently large N. No ground-state simplicity is used.

A complementary interpretation uses the dual norm of endpoint evaluation
on P_N equipped with the diagonal graph norm. Its squared norm is

    (1/2)/(1+d_0^2)+sum_{n=1}^N 1/(1+d_n^2),

which diverges, since d_n=O_T(log(n+1)). Endpoint evaluation is therefore
unbounded in that graph norm; its zero set cannot be used as a closed
codimension-one complement in the infinite-dimensional problem. This agrees
with, but is not an independent proof of, the explicit packet construction.
For any fixed finite head its endpoint kernel still has codimension one.
Those two statements are compatible.

The high Schur correction only decreases the shifted quadratic value.
Whenever the high floor also exceeds beta, each negative shifted endpoint-zero
polynomial proves a negative direction of S(beta) on the SAME kernel.
This statement is for Y=0, not for tau((I-Y)u) with a general high solve.

## 3. A literal arithmetic trial at T=1/2

Set

    a_0=2801/5000,       a_1=152151/250000,
    a_2=43729/1000000,   a_3=-3991/500000,
    f=sqrt(2)a_0 c_0+a_1 c_1+a_2 c_2+a_3 c_3.                   (3.1)

In physical coordinates f(t)=sqrt(2) sum_{n=0}^3 a_n cos(2*pi*n*t).
Its exact norm and endpoint are

    ||f||^2=1000022846581/1000000000000 in (1,4),
    tau(f)=a_0-a_1+a_2-a_3=3307/1000000 in (0,1/250).           (3.2)

The source cutoff is exp(2T)=e in (2,3), so the ONLY active prime power is 2.
Put r=log(2), v=log(2)/sqrt(2), omega_n=2*pi*n, p_n=v*sin(omega_n*r).
The following formulas retain the whole source:

    Q_T(f)=c_inf ||f||^2+sum_{n=1}^3 a_n^2 m(omega_n)+G(f)-P(f)+L(f),
    c_inf=-gamma-pi/2-3log(2)-log(pi),                           (3.3)

    G(f)=4 sum_{j>=0} (1-exp(-alpha_j))/alpha_j^2
           *[a_0+sum_{n=1}^3 (-1)^n a_n alpha_j^2/
                                      (alpha_j^2+omega_n^2)]^2,

    L(f)=4 sinh(1/4)^2
           *[4a_0+sum_{n=1}^3 (-1)^n a_n/(1/4+omega_n^2)]^2,

    P(f)=4a_0^2 v(1-r)
       +sum_{n=1}^3 a_n^2[2v(1-r)cos(omega_n*r)-p_n/(pi*n)]
       -4sum_{n=1}^3 a_0 a_n (-1)^n p_n/(pi*n)
       -4sum_{1<=n<m<=3} (-1)^(m+n)a_m a_n
                         *(m*p_m-n*p_n)/(pi*(m^2-n^2)).

The last expression is the prime form, so it is SUBTRACTED in (3.3).
Its diagonal includes the m=-n compression term; dropping that term or
replacing the constant-mode normalization by 1 gives a different trial.
The quarter-digamma value in (3.3) follows from the reflection and duplication
identities, equivalently NIST DLMF 5.4.19 at p=1,q=4.

### Complete infinite-series allowances

Retain j<J with J=1024 and set a=alpha_J=2048+1/2. Define

    B1=sum_{n=1}^3 |a_n| omega_n^2,
    B2=sum_{n=1}^3 a_n^2 omega_n^2,
    t=tau(f).

The omitted diagonal contribution is nonnegative and at most

    E_D=2B2[a^(-3)+1/(4a^2)].                                   (3.4)

For the boundary write its bracket as

    t-sum_{n=1}^3 (-1)^n a_n omega_n^2/(alpha_j^2+omega_n^2).

For j>=J its absolute value is at most |t|+B1/a^2. Since 0<1-exp(-alpha_j)<1,
the complete omitted boundary contribution is nonnegative and at most

    E_G=4(|t|+B1/a^2)^2[a^(-2)+1/(2a)].                         (3.5)

Both integral tests have spacing 2. They bound infinite series; no omitted
coefficient is treated as exact zero. These are directional prices for THIS
four-mode quadratic value, not a finite-block operator-norm epsilon.
In particular the endpoint t is not assumed zero in evaluating f.

## 4. Executed exact integer interval computation

The companion `weil_endpoint_sign.py` contains a pure evaluator `certificate()`.
It uses only Python integers, `Fraction`, integer square roots and factorials.
There is no floating-point transcendental function in this certificate, no
external interval package, and no network, filesystem or execution runner.
Closed intervals have denominator 2^160; each arithmetic operation rounds
outward by exact integer floor/ceiling. Arbitrary-size integers avoid overflow.

The elementary function enclosures are as follows.

* Pi uses the exact Machin identity 16 atan(1/5)-4 atan(1/239), with 64
  alternating-series terms and the next term as tail bound. Tangent addition
  gives tan(4 atan(1/5))=120/119 and then tan(4 atan(1/5)-atan(1/239))=1.
  The angle lies in (0,pi/2), fixing the identity rather than just its tangent.
* Positive logarithms are reduced to k log(2)+log(y), 1<=y<=2. With
  z=(y-1)/(y+1), use 96 terms of 2 sum z^(2j+1)/(2j+1) and the positive tail
  2 z^(193)/[193(1-z^2)]. Monotonicity encloses a logarithm of an interval.
* exp(x), 0<=x<=1, uses terms j=0,...,79 and the tail
  (x^80/80!)/(1-x/81). In particular exp(-alpha_j) is evaluated from an
  enclosed exp(-1/2) and repeated multiplication by its fourth power.
* Sine and cosine use 80 Taylor terms, with real Lagrange bounds
  |x|^161/161! and |x|^160/160!, respectively. All actual arguments have
  |x|<=20, checked by the evaluator. Interval dependency increases widths
  but cannot remove a true value from the interval.
* Write b_n=H_n-log(n+1/2). Then b_n decreases to gamma. For k>=1,
  b_{k-1}-b_k=2atanh(1/(2k))-1/k is at most 1/(9k^3), by bounding the
  positive atanh tail using 1/(1-1/(4k^2))<=4/3. Therefore
  b_n-1/(18n^2)<=gamma<=b_n for n>=1. The computation uses n=1024.
  This elementary gamma allowance, not an assumed decimal constant, is the
  largest elementary-function uncertainty here. The symbol b_0 in the
  decrement identity means H_0-log(1/2), and is well-defined.

Interval inclusion follows by induction over the arithmetic operations from
these analytic enclosures. Powers handle sign crossings; reciprocals reject
intervals containing zero. Integer square-root lower and upper endpoints are
checked against the adjacent squares. This is a manually justified finite
computer-assisted inequality, not a kernel-verified interval implementation.

With this exact source, the eight explicit checks returned True. In particular

    Q_T(f) <= Q_partial(f)+E_D+E_G < 1/200000,
    |c_inf|<6,  Bcal_T<13,  pi<4,  2<e<3.                      (4.1)

For readily inspected rational outer bounds (these are rounded OUTWARD):

    -221/10^9 < Q_partial(f) < -167/10^9,
        0 <= omitted diagonal <= E_D < 1785/10^9,
        0 <= omitted boundary <= E_G < 11/10^9,
    Q_partial(f)+E_D+E_G < 1628/10^9 < 1/200000.                (4.2)

The last bound comes from the direct interval evaluation of the SUM, not from
summing the displayed coarser three decimal bounds. It is a bound on the upper
allowance expression, not a positive lower bound for the actual Q_T(f).
No sign of the true Q_T(f) is inferred from the negative partial sum. In fact
omitting E_D would falsely turn a truncated expression into a negative source
certificate. This is an important hostile check on tail accounting.

The high-floor lower expression at N0 is

    c_inf+(1/2)log(1+16pi^2(N0+1)^2)-2v-C_bd(1/2)
                 -4sinh(1/4)^2/(pi^2 N0).                     (4.3)

Its certified value is greater than 6651817109/10^9, and hence greater than 2.
Equation (1.2) makes (4.3) a lower bound for the genuine odd high floor.
The even floor is larger. Monotonicity of m and of -1/N extends both bounds
to every N>=N0. This is a true infinite-tail floor, not a lower spectral bound
on the whole odd sector.

The exact dyadic upper numerator returned for the trial allowance is

    2378292783017945332439167656285901279769801 / 2^160.

The exact dyadic lower numerator for (4.3) is

    9721641596579266469253380927111639593286414610431 / 2^160.

These numerators identify the executed evaluation and can be reproduced from
`certificate()`. They are not mutable execution receipts. The implementation,
series cutoffs, constants and mathematical reduction are the certificate.

## 5. Explicit negative witness on every head N>=10^8

In (2.1) take M=3 and define

    u_N=f-t q_{3,N},  t=3307/1000000,  K=N-3.

Then tau(u_N)=0 and ||u_N||^2=||f||^2+t^2/K>1 exactly. Both are genuine
operator-domain vectors (finite polynomials). Since D_T is diagonal and
q_{3,N} is orthogonal to f,

    Q_T(u_N)<=Q_T(f)+2|t| Bcal_T ||f||/sqrt(K)
                         +t^2(Dmax+Bcal_T)/K.                  (5.1)

Only the mixed DIAGONAL term vanishes. The actual prime, boundary and pole
mixed terms are bounded together by Bcal_T, not deleted.

For 1<=n<=N, (1.2) and (4.1) give

    |d_n| <=10+log(1+4pi*n) <=10+5sqrt(N).

For example log(1+x)<=sqrt(x) for x>=0 follows by integrating
1/(1+x)<=1/(2sqrt(x)); pi<4 then gives the even sharper 4sqrt(n) bound.
We keep 5sqrt(N) for an uncomplicated rational budget. As N>=1,
Dmax+Bcal_T<=23+5sqrt(N)<=28sqrt(N).

For N>=N0, K>=N/2 and sqrt(K)>=sqrt(N)/2. Substituting ||f||<2,
|t|<1/250 and Bcal_T<13 in (5.1) yields

    Q_T(u_N) < 1/200000+(104/250+56/62500)/sqrt(N)
             <=1/200000+(104/250+56/62500)/10000
              =29181/625000000
              <1/20000.                                       (5.2)

The slack in the last inequality is exactly 2069/625000000. Consequently

    Q_T(u_N)-beta||u_N||^2 < -1/20000.                          (5.3)

The high floors established in Section 4 justify (1.3) at beta. Combining
(1.3) and (5.3) proves (0.1), including the whole high inverse correction.
No calculation of the enormous head matrix is necessary for this one-sided
negative result.

### Precise enclosure consumer

One can set M=N, choose ANY L>N (for example L=N+1), and choose the exact
zero map Y=0. Then X=I_head, X^*X=I, and ell_Y=tau. For any source-certified
lower matrix constructed by the scalar, endpoint-directional, or observed
versions of the existing residual enclosure,

    <u_N,L(beta)u_N> <= <u_N,S(beta)u_N> < -1/20000.

Therefore the required nonnegativity on ker(ell_Y) is impossible for these
parameters. All residual rows N<n<=L and the full remote term still belong
to any such enclosure. The result does not set them to zero; it avoids their
evaluation because they can only make a VALID LOWER enclosure smaller.

No complete finite lower or upper matrix, nonzero high solve, odd-head sign,
or eigenvalue interval was assembled. No finite-block epsilon or odd output
functional allowance is claimed. Section 4 certified a full arithmetic trial
quadratic value, not the entire matrix. This is a fixed-window negative Schur
sign certificate through a variational upper bound, not a positive separation
certificate and not the cofinal support sequence requested by the programme.

## 6. Checks, source comparison, and remaining obligations

The packet argument shows WHY this endpoint hyperplane can retain the low
negative direction after shifting. It does not revise the earlier residual
cancellation, whose hypotheses and inequalities remain valid. Nor does it
refute the codimension-one inertia implication: its finite nonnegativity
premise simply fails here. The distinction between an endpoint kernel and
a trial complement is now witnessed in the actual arithmetic object.

The example uses an active prime (2), both pole terms in the full source
(the odd pole vanishes on this even input by parity), and the entire boundary
operator. It is not the prime-free odd input/output counterexample. It does
not use the hard-cutoff Hermite surrogate or its residual-to-gap obstruction.

Executed hostile checks, separate from the certificate:

* 9000 rational endpoint/midpoint pairs from 1000 interval pairs, seed 20261104,
  checked the outward arithmetic operations using exact fractions. These finite
  checks do not replace the universal inclusion argument in Section 4.
* At 50 decimal digits, physical-coordinate quadrature of
  2v integral_{-1/2}^{1/2-r} f(t)f(t+r)dt agreed with the finite prime formula
  to less than 2e-51; direct pole-moment integration agreed to less than 3e-51.
  Four individual boundary-image terms (j=0,1,2,10) were independently checked
  through cosh moments and agreed to less than 3e-51. These are exploratory
  non-interval cross-checks, not inputs to the exact certificate.

The general zero-trace graph-density mechanism is standard low-regularity
behavior; no priority claim is made. The specific arithmetic trial, complete
integer interval evaluation and resulting failed Schur sign are the additions
relative to the inspected local notes. Worldwide novelty remains UNASSESSED.

A focused literature refresh inspected CCM v1 and the source specification,
including the rendered page 30 of Connes arXiv:2602.04022v1. Its Section 6.6
still states two distinct tasks: the genuine simple even ground state and
sufficient prolate/minimizer approximation. The rStation paper 60 fixed-support
Schur report is a comparison lead only; its computation was not replayed.
A newly located primary preprint, Marco Desogus, *The Three Gates*,
arXiv:2609.20367v1, claims all-support real-odd Weil positivity and RH. Its
operator-to-scalar common-cut and inherited-response steps were inspected
in a focused audit, but the full source-coordinate return, common-cut lower
form, numerical base and dependency chain were NOT qualified or replayed.
No assertion of its correctness or refutation is made, and no result from it
is a premise of this contribution. A claimed cofinal theorem is not silently
imported into the local dependency graph.

The next positive estimate remains the paid WHOLE odd-head sign, together
with a valid even test and full trial margin on the SAME explicitly unbounded
support sequence. Theorem A rules out repairing this particular zero-lift,
fixed-threshold endpoint test merely by increasing its head or reducing its
remote error. It does not show that a ground-aligned finite complement, a
nonzero high lift, a different threshold, or direct inertia cannot work.
Theorem B has no uniform cofinal quantifiers over T and beta and must not be
misreported as such an obstruction.

The normalized genuine-ground/prolate comparison, scalar and phase, norm and
reflection control, Fact 6.4, real-zero/Hurwitz return, Mathlib's actual
RiemannHypothesis and the repository's DirichletGRH remain unresolved.
No character-dependent source or unconditional classical-function return is
constructed. No replacement target predicate is introduced.

## 7. Formal scope and verification record

`WeilEndpointSignObstruction.lean` reuses the existing actual cosine endpoint
row. It contains finite packet index, trace and squared-norm identities;
exact trial coordinates, endpoint and norm arithmetic; and final rational
margin calculations. It does not formalize the infinite graph core, the
Weil operator, interval function enclosures, Schur sign theorem, or any RH
return. Its scalar shifted-witness implication is only the final arithmetic
step after the analytical and computed premises have been supplied.

The consumed root pins are Lean v4.34.1 and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. They are unchanged. The current
canonical proof-automation skill path returned 404 at grwtsk/noeaaeue main
`53f1622af5dc87a29e20408c25f76bbb55243eb1`; no verified local skill checkout
or Lean/Lake/elan executable was found. Dependent proof automation, CI dispatch,
browser messaging and scheduling were not run. Source drafting and the pure
finite arithmetic evaluation are not represented as a formal proof run.

Compilation/elaboration: NOT_RUN. Fresh kernel checking: NOT_RUN.
Transitive axiom audit: NOT_RUN. Independent analytical review: NOT_RUN.
Complete operator formalization: NOT_DONE. Positive spectral certificate:
NOT_CONSTRUCTED. Exact-integer source trial inequality: EXECUTED, with the
analytical reduction and elementary enclosures above, not kernel-verified.
Source publication and mathematical acceptance remain separate.

Read current AGENTS.md, the proof-comparison disposition, dependency pins,
the subject layout, current observed endpoint source and consumed review
issues. No existing files, root imports, dependency versions, workflows or
historical acceptance statuses are changed. The exact publication commit,
blob identities and reachability check are recorded in the source-review issue.

### Primary and local sources

- Connes, arXiv:2602.04022v1, Sections 6.1--6.6, especially page 30.
- Connes, Consani and Moscovici, arXiv:2511.22755v1, (3.19)--(3.20)
  and its Fourier matrices; CC BY 4.0. Mathematical identities are used;
  no upstream implementation is copied.
- NIST DLMF Sections 5.4(ii), 5.5(ii), quarter-digamma evaluation.
- `weil-periodic-boundary.md`, especially Sections 2--6, review #1675.
- `weil-low-schur-enclosure.md`, Sections 2, 5--6, review #1679.
- `WeilObservedSchurCertificate.lean` at the inspected main, definition
  `GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur.Observed.endpointRow`.
- Desogus, arXiv:2609.20367v1: comparison only, not a proved dependency here.
