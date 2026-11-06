# Prime--pole cancellation and source-bound research methods

Local attribution: grwtsk contributors.
Research date: 2026-11-04 (America/Los_Angeles).
Original exposition and accompanying source: repository MIT license.
AI-assisted mathematical derivation, source drafting and diagnostic computation.
Independent analytical review, Lean elaboration, fresh kernel replay and transitive
axiom audit: **NOT_RUN**. Novelty: **UNASSESSED**.

## 1. Result, consumer, and what remains open

The immediate object is the **full pole-inclusive arithmetic Weil form** of
Connes--Consani--Moscovici (CCM), arXiv:2511.22755v1, equations (3.7),
(3.10)--(3.20). It is not a prolate differential operator, a pole-cancelled
subspace, or a periodic-translation replacement. The target remains the two
separate obligations in Connes, arXiv:2602.04022v1, section 6.6: genuine
simple-even ground states and sufficiently strong normalized comparison with
the actual finite-prolate family on the same unbounded sequence.

This increment attacks a specific loss in low-mode estimates: bounding the
prime operator and the pole operator separately destroys a cancellation of
their leading densities. We retain that cancellation **before** taking absolute
values. Its remainder is the actual Chebyshev discrepancy, including all prime
powers, rather than an assumed small error or unknown spectral infimum.

For T>0, M a nonnegative integer, define

    L = 2T, X = exp(2T),
    psi(x) = sum_{2<=n<=x} Lambda(n),
    R(x) = psi(x)-x+1,
    I_T = integral_1^X |R(x)| x^(-3/2) dx,
    V_M = span{(2T)^(-1/2) exp(i*pi*n*t/T) : |n|<=M},
    C(T,M) = 1 + (2M+1)/T + 2*pi*M/T,
    C_0(T,M) = 1 + 2*pi*M/T.

Vectors in V_M are restricted to [-T,T] and extended by zero. In particular,
periodicity of the basis does not replace the source's zero extension.
Let J_T be the integral operator with kernel exp(-|t-s|/2) on this interval.
The analytically established finite-space estimate is

    Q_T(f) >= Q_infty(f) + <f,J_T f> - C(T,M)*I_T*||f||_2^2
           >= Q_infty(f) - C(T,M)*I_T*||f||_2^2,       f in V_M.       (1)

If f(T)=0, C(T,M) can be replaced by C_0(T,M). In particular this sharper
bound applies to the entire odd sine subspace of V_M. It does not apply to
every even polynomial: an even endpoint constraint must be proved separately.
All constants and the finite arithmetic budget I_T are explicit. Section 4
gives its exact cellwise formula, not a request to supply a coercivity margin.

The lower bound concerns the **actual form on the specified finite space**.
It can be negative and need not improve a different bound at small T or large M.
It supplies neither a full complementary lower bound nor the strict parity
ordering required for a ground-state theorem. The archimedean term in (1)
remains the original term with all zero-extension contributions. No numerical
calculation below substitutes a matrix residual for the full operator residual.

This is a first source increment for the research methods requested by the user,
not a claim to have formalized every possible research technique. Every method
used here has an explicit scope below. In particular statistical generation,
finite heat diffusion, symbolic calculation, numerical simulation, retrieval,
and proof checking remain different operations.

## 2. Exact arithmetic cancellation with both endpoints

Use inner products antilinear in the first variable and
fhat(z)=integral f(t) exp(-izt)dt. Define the zero-extended shifts

    S_r f(t) = 1_{[-T,T]}(t+r) f(t+r),
    b_fg(r) = <f,(S_r+S_r^*)g>,              0<=r<=L,
    P_T = sum_{2<=n<=X} Lambda(n)/sqrt(n) * (S_log(n)+S_log(n)^*).

For smooth functions on the closed interval, b_fg is continuously differentiable
on the one-sided closed interval [0,L]. Direct overlap integration gives
b_fg(0)=2<f,g> and b_fg(L)=0. The latter is an overlap of measure zero; it is
not a choice of point values that removes an unknown prime contribution.

The source pole operator has kernel

    2*cosh((t-s)/2) = exp((t-s)/2)+exp((s-t)/2).

Indeed CCM (3.11), applied to the polarized convolution test, retains both
moments M_+(f)=integral f(t)exp(t/2)dt and M_-(f)=integral f(t)exp(-t/2)dt.
The diagonal pole form is 2 Re(M_+(f) conjugate(M_-(f))), not a sum of two
positive squares. Changing variables u=exp(t) in CCM (3.7) gives exactly P_T.
Consequently

    Q_T(f,g) = Q_infty(f,g) + <f,(L_T^pole-P_T)g>,
    <f,L_T^pole g> = integral_0^L (exp(r/2)+exp(-r/2)) b_fg(r)dr.      (2)

All prime powers in the support occur; the endpoint n=X has b_fg(L)=0.
These identities use the source distribution directly. No spectral assumption,
ground state, inverse, global-radical identity or RH hypothesis is used.

### Cancellation theorem

For f,g smooth on the closed interval, put b=b_fg. Then

    <f,(L_T^pole-P_T)g>
      = integral_0^L exp(-r/2)b(r)dr
        + integral_0^L exp(-r/2)R(exp(r))*(b'(r)-b(r)/2)dr.           (3)

Proof. Set F(x)=x^(-1/2)b(log x) on [1,X]. The finite Stieltjes measure dpsi
has exactly the atoms Lambda(n) at the prime powers. There is no atom at 1.
The function R=psi-x+1 has bounded variation on this finite interval, R(1)=0,
and dpsi=dx+dR. Thus

    <f,P_T g> = integral_1^X F(x)dpsi(x)
              = integral_1^X F(x)dx + integral_1^X F(x)dR(x).

The first term becomes integral_0^L exp(r/2)b(r)dr and cancels precisely
one of the two pole densities in (2). Integration by parts gives

    integral_1^X F dR = F(X)R(X)-F(1)R(1)-integral_1^X R(x)F'(x)dx
                     = -integral_1^X R(x)F'(x)dx.

Both boundary products have been evaluated: F(X)=0 and R(1)=0. The same
formula holds when X is itself a prime power, since its atom has zero test
value. Finally

    F'(x)=x^(-3/2)*(b'(log x)-b(log x)/2),

and dx=x dr gives (3). All integrals are finite: b and b' are bounded and R
has finitely many jumps on [1,X]. No assertion about R at infinity has entered.
This proves the identity, including conjugations for mixed arguments.

Using psi(x)-x instead of R(x) would leave a nonzero lower-endpoint term.
The constant +1 is therefore part of the exact normalization, not a cosmetic
change to a prime-number-theorem error term.

### The surviving kernel is genuinely positive

The first integral in (3) equals <f,J_T g> with
J_T(t,s)=exp(-|t-s|/2). For real t,s,

    exp(-|t-s|/2)
      = integral_{-infinity}^{min(t,s)}
          exp(-(t-u)/2)*exp(-(s-u)/2)du.                            (4)

Integrate exp(u-(t+s)/2) to check the equality. Fubini is justified by the
bounded interval and the integrable positive majorant. Therefore

    <f,J_T f>
      = integral_{-infinity}^T
          |integral_{max(u,-T)}^T f(t)exp(-(t-u)/2)dt|^2 du >= 0.

For u>T the inner integral is zero. This is a Gram representation of this
particular kernel, not an assumption of Weil positivity. Its absolute row
integrals are at most 4, so J_T is also bounded. We do not discard the signed
second integral in (3).

## 3. Derivative control and the literal low-mode lower bound

For a smooth f on [-T,T], let

    C_f(r)=integral_{-T}^{T-r} conjugate(f(t))*f(t+r)dt.

Then b_ff(r)=2 Re C_f(r), and the one-sided derivative is exactly

    C_f'(r) = -conjugate(f(T-r))*f(T)
              + integral_{-T}^{T-r} conjugate(f(t))*f'(t+r)dt.       (5)

The first term is the actual support boundary. It is not removed by choosing
periodic basis vectors. Cauchy--Schwarz bounds |b_ff(r)| by 2||f||_2^2.
If f=sum_{|n|<=M} c_n e_n is in V_M, orthogonality gives

    ||f'||_2 <= (pi*M/T)||f||_2,
    sup_{[-T,T]}|f| <= sqrt((2M+1)/(2T))||f||_2.

Using these bounds in (5) yields

    |b_ff'(r)-b_ff(r)/2| <= C(T,M)||f||_2^2.                        (6)

If f(T)=0, the boundary term in (5) is identically zero, yielding C_0(T,M).
Every sine sin(pi*n*t/T) vanishes at both endpoints, so the odd subspace has
this property for arbitrary complex linear combinations. Evenness alone does
not imply it. The estimate is valid at endpoints by one-sided limits and in
the integral regardless of their point values.

Taking the absolute value of the **complete** second term in (3), and only
then applying (6), gives the first inequality of (1). Positivity from (4)
gives the second. Zero-extended trigonometric polynomials are in the source
form domain: their Fourier transforms are O(1/|xi|), while the archimedean
multiplier Re digamma(1/4+i*xi/2)-log(pi) grows logarithmically. Thus its
weighted squared-transform integral is finite. Finite prime shifts and the
pole term are bounded on this fixed interval. This justifies evaluating the
canonical form, rather than a different formal expression, on these vectors.
No essential-self-adjoint core assertion is needed for this result.

A useful variant, with its own endpoint hypothesis, is

    |<f,(L_T^pole-P_T-J_T)f>|
      <= I_T*(||f||_2^2+2||f||_2||f'||_2),             f in H_0^1.  (7)

For smooth zero-endpoint functions it follows directly from (5). Smooth
approximation in H_0^1 proves the general version: the prime, pole and J_T
terms are bounded on L2, and the right side is continuous in H1. This does
not apply to a cutoff with a nonzero endpoint trace without its extra term.
Equation (7) is a form estimate, not a bound on ||A_T f|| or a spectral gap.

### What this changes in the current mechanism

The periodic-boundary contribution already reports high-complement coercivity,
buffered mixed estimates and a trigonometric-core return. Those published
arguments retain their original NOT_RUN and unreviewed status. This increment
does not re-prove them or incorrectly list their reported core theorem as absent.
It supplies a different, literal **low-space arithmetic comparison** for use
alongside any separately audited complement/mixed estimates.

The complete low block still includes Q_infty and J_T. For instance, a proved
lower bound a_inf on Q_infty restricted to a specified low subspace gives the
explicit floor a_inf-C(T,M)I_T there. This is not an unknown infimum renamed
a certificate; the arithmetic loss has been constructed. But a nonpositive
floor does not establish separation. Taking M larger also raises the derivative
price; a frequency buffer must not erase intermediate modes.

The small-energy derivative-cutoff competitors from the historical note are
not excluded: they need not lie wholly in V_M, and their approximating
coefficients may require growing M and precision. No claim that two prolate
modes capture the entire low spectrum follows. The repaired finite-prolate
seed is not identified with the ground state, made log-even, or given a small
full residual by (1).

The next estimate is therefore a sufficiently sharp **signed low-block** bound
from (3), together with its genuine coupling to the full complement, separating
the odd sector and second even direction above the chosen trial on one cofinal
sequence. Independently, the normalized prolate/ground transform comparison
on that same sequence remains open. Absolute discrepancy envelopes alone have
not supplied either result here. No RH or Dirichlet-GRH closure is claimed.

## 4. Finite arithmetic evaluation, simulations and hostile checks

Between consecutive prime powers psi is a constant c. Write A=c+1. On that
cell R(x)=A-x and

    d/dx [-2A/sqrt(x)-2sqrt(x)] = (A-x)*x^(-3/2).                   (8)

Split a cell at x=A when that point is internal. Summing the absolute differences
of this primitive over the resulting pieces computes I_T exactly at the formula
level. The finite list of cells is determined by every prime power <=X and the
endpoints 1,X. No sampled approximation to |R|, dropped prime interval, or
unproved asymptotic estimate is needed for this formula. Logs and square roots
still need rigorous enclosures before floating evaluations become certificates.

The pure mathematical module `weil_prime_pole_model.py`, beside the Lean
arithmetic source, supplies an integer prime-power sieve, these cells, the
primitive budget, and two evaluations of each finite prime--pole matrix entry.
It has no network, filesystem, subprocess, scheduler, credential or Git effects.
It is not a verification runner. Its optional mpmath evaluator uses an isolated
precision context and an explicit finite-domain cap; root dependency pins are
unchanged. Near-integer exp(2T), rounding, quadrature and error certification
are expressly unresolved for this numerical evaluator.

For inspection, the zero-extension matrix uses omega_n=pi*n/T and

    b_nn(r)=2(1-r/L)cos(omega_n*r),
    b_mn(r)=(-1)^(n-m)*(sin(omega_m*r)-sin(omega_n*r))/(pi*(n-m)), m!=n.

These follow by integration over the actual overlaps, not by diagonalizing
periodic translation. One calculation integrates the pole kernel and subtracts
the finite prime sum. The other integrates J_T plus the cellwise signed
remainder of (3). They share the basis/correlation definition, so agreement
is not an independent proof of its identification with the source.

Actual diagnostic environment: Python 3.13.5, SymPy 1.14.0, mpmath 1.3.0.
SymPy checked (8) symbolically. Exact Fraction arithmetic checked 620 finite
Abel identities: N=0,...,30 and h=1,...,20, with
weight(k)=(k+1)(h-7)/(k+h+1) and
value(k)=(-1)^(k+h)(k+2)/(h+1). Both sides retain value(N).
Fifteen 35-decimal-digit matrix comparisons used T=0.8,1,1.5 and index pairs
(0,0), (1,1), (-1,1), (1,2), (0,2). The maximum observed absolute discrepancy
was approximately 3.01e-36. This is **not** a certified error enclosure or a
spectral computation. The archimedean term is not part of these entries. Twenty further checks
compared the displayed matrix formula with direct complex overlap quadrature:
T=0.8,1.5, the same five mode pairs, and r/L=0.2,0.75; the largest observed
difference was approximately 1.51e-36. The integer sieve at upper cutoff 500
was compared with trial-division prime-power enumeration. Six invalid-domain
fixtures were rejected. Python bytecode compilation passed. These checks are
finite diagnostics, not a proof of the numerical implementation or Lean source.

Selected 40-digit budget evaluations with M=2, rounded here:

| T | Prime powers | I_T | C(T,2)I_T | C_0(T,2)I_T | Separate prime norm bound K_T |
|---|---:|---:|---:|---:|---:|
| 0.8 | 3 | 0.6408473 | 14.71255 | 10.70725 | 2.941974 |
| 1 | 5 | 0.7649012 | 14.20144 | 10.37693 | 5.852468 |
| 1.5 | 12 | 1.0266984 | 13.05027 | 9.62795 | 13.01565 |
| 2 | 24 | 1.2318188 | 12.05111 | 8.97156 | 24.38329 |
| 3 | 98 | 1.6036861 | 10.99400 | 8.32119 | 75.19048 |

Here K_T=2 sum_{2<=n<X} Lambda(n)/sqrt(n). A separate full pole norm price
is 2(T+sinh T). In the even sector the pole form is nonnegative and need not
be subtracted; in the odd sector its negative norm is 2(sinh T-T).
Thus the table is not an indiscriminate comparison with one parity-independent
optimal old bound. It shows both the potential cancellation benefit and its
failure to dominate the prime-only price at some small windows. All entries
are exploratory; no monotone asymptotic trend or positive spectral floor follows.

Hostile boundaries retained in the argument:

* At T=0 the displayed prices divide by zero; every theorem using them requires T>0.
* At a prime-power support endpoint the correlation, not the prime coefficient,
  vanishes. At x=1 the +1 in R removes the otherwise nonzero boundary term.
* A constant polynomial has a nonzero endpoint and does not qualify for C_0.
  Equation (5) gives C_f'(r)=-|f|^2 for this example.
* Removing the pole contribution changes (3); removing either pole density also
  changes its surviving positive kernel. A signed discrepancy is not nonnegative.
* Low-mode positivity alone does not exclude unseen negative modes or price the
  mixed block. The finite-prefix counterexample below formalizes that logical gap.

## 5. Formalized research techniques and their limits

The methods are recorded by their actual mathematical consumer, not by a claim
about hidden provider internals. No generative diffusion model was used or
identified in this work. Finite deterministic heat is the explicitly defined
mathematical diffusion studied by the accompanying reconstruction theorem.

### Search and joint-premise mathematical inference

`FiniteSearchValidation.lean` imports the existing `FiniteJointPremiseClosure`
rather than defining another rule graph. Its accepted list is the actual Boolean
filter of a supplied candidate list. Filter membership proves sound acceptance
when the checker is sound. A permutation changes search order but not complete
accepted membership. A missing hit implies nonexistence only after both inventory
coverage and checker completeness; a two-element Boolean fixture shows that
budget-one truncation can lose the only accepted candidate.

The inference consumer uses the existing finite `run_preserves` and
`finiteClosure_inventory_congr` proofs. Every joint premise is retained.
Starting facts must satisfy the semantic predicate, and every rule must preserve
it. Reordering a complete rule inventory preserves the closure answer; truncating
that inventory has no completeness guarantee. This does not extract actual Lean
applications, authenticate a search result, or certify a ranking model.

Actual discovery used source-form queries about Weil prime/pole cancellation,
finite Fourier blocks and Chebyshev discrepancies, followed by primary formula
inspection. Repository lookup used exact files and a focused `diffusion` search.
An empty connector search did not establish source absence. No retrieval
benchmark, claimed optimal search policy, or measured intelligence gain is added.

### Diffusion, inversion and lossy observations

`FilteredObservationReconstruction.lean` reuses the finite diagonal heat

    H_t(x)_i = exp(-t*a_i^2)*x_i

from `FinitePositiveHodgeHeat`, its masks and synthesis, and the complete
simulation budget from `ForcedHodgeStability`. It adds a concrete reconstruction
consumer. With a retained-coordinate mask P and measured filtered vector y,
reconstruct by P H_{-t}y. The coordinate error is exactly

    |(P H_{-t}y)_i-x_i|
      = exp(t*a_i^2)|y_i-(H_t x)_i|       if i is retained,
      = |x_i|                           if i is omitted.            (9)

Proof: exp(t*a_i^2)exp(-t*a_i^2)=1 and a case split on the mask. All real t
are allowed; positive t produces inverse amplification. Finite exact heat is
invertible, whereas a mask that removes a coordinate is not. A two-coordinate
witness gives the same masked observation for zero and a nonzero hidden vector.

For synthesis sum_i x_i basis_i(z), triangle inequalities multiply every
coordinate term of (9) by ||basis_i(z)||. Returning to an actual analytic source
adds its independent omitted analytic tail. This is not an assertion that any
Weil operator has the chosen spectrum or that filtered vectors have real zeros.

### Simulation and propagation of every defect

No new simulator semantics replaces `ForcedHodgeStability`. Its actual difference
of recurrence defects supplies the identity

    error_(n+1) = H_tau(error_n) + defect_n.

Its existing recursive budget retains initial error and each local defect with
the exact exponential gain, including reverse time. The new reconstruction
consumer composes that budget with (9), requiring an explicit equality between
the reference endpoint and the filtered source. Simulation time tau, observation
time t and the two spectra are deliberately distinct. Neither a small last-step
residual nor a small coefficient norm replaces the complete observer-specific
budget. The numerical arithmetic model above is separately labelled exploratory.

### Prediction, extrapolation and adversarial counterexamples

`FiniteObservationPrediction.lean` proves that enclosures

    |x-p_x|<=e_x, |y-p_y|<=e_y, p_x+e_x<p_y-e_y

imply x<y. The proof uses both sides of the absolute-value inequalities; it
constructs no unexplained radii. The indexed minimum theorem applies only to the
indexed family actually enclosed. Source/model and model/computation errors
must be added before using this margin.

For any finite N, the sequence equal to 1 below N and -1 thereafter has exactly
the same first N observations as the constant-one sequence. It refutes
`Determined (prefix N) universalNonnegativity` using the repository's existing
observation predicate. This proves a precise information limitation, not that
extrapolation under additional proved structure is impossible. In particular a
finite spectral experiment cannot be promoted to cofinal ordering without its
additional mathematical bridge.

### Exact symbolic arithmetic and Abel summation

`WeilPrimePoleCancellation.lean` proves finite summation by parts, including the
terminal weight and the initial centering constant. It specializes to Mathlib's
actual `ArithmeticFunction.vonMangoldt`, not an arbitrary declared prime oracle.
The finite index k refers to the arithmetic integer k+2; its discrepancy at n is
psi(n+1)-n. The bound retains every local variation and the terminal discrepancy.

The file defines the ordinary real Chebyshev source using `Nat.floor`, the
integral I_T and both prices. It proves their scalar relationship and a scalar
lower-bound return. **It does not formalize the Stieltjes identity (3), the
correlation derivative, kernel positivity, or the operator theorem (1).** Those
are analytical arguments in sections 2--3, not properties supplied by names of
Lean definitions. Exact finite algebra checks are not kernel evidence.

## 6. Source refresh, reuse, attribution and novelty

Primary specification: Alain Connes, arXiv:2602.04022v1, sections 6.4--6.6.
The attached version remains the specification, including the unresolved scalar
and convergence-region audit for Fact 6.4. Its page 30 was visually checked.
No whole-line hard-cutoff family is substituted for its finite-prolate family.

Arithmetic source: Alain Connes, Caterina Consani and Henri Moscovici,
*Zeta Spectral Triples*, arXiv:2511.22755v1, equations (3.7), (3.10)--(3.20),
CC BY 4.0. Only the stated mathematical form is used; no upstream code or
long prose passages are copied. Sections 2--3 derive the additional comparison
rather than citing numerical evidence for it.

Focused comparison: Masatoshi Suzuki, *Spectral convergence associated with
Weil's quadratic form*, arXiv:2610.32704v1, Theorems 1.1--1.2, was refreshed.
Both displayed theorems assume RH; the product counts distinct ordinates.
Neither is an unconditional input here. The finite-matrix paper
arXiv:2609.04908v1 was a search lead, not a fully audited or imported theorem.
No inference about worldwide priority is drawn from this limited refresh.

The operations used here--Abel summation, bounded-variation integration by parts,
Cauchy--Schwarz, a Gram factorization, finite filtering, exact finite heat inversion
and interval separation--are standard mechanisms. The retained contribution is
an explicit source-specific arithmetic comparison and consumer-bound source
formalizations. A new module or different notation is not evidence of a new
mathematical theorem in the literature.

Repository baseline: `grwtsk/math@454b9dfe9707100d702da9e9adc65c4b0f64e5c0`,
complete tree `23dc19077abbafff75a148b5748e7852c12f37f7`. AGENTS.md,
proof-comparison disposition, structural-intelligence guidance, current pins,
source dependencies and exact-source issue #1677 were read. The layout metadata
returned an empty decoded body despite blob
`ec7ae0dce9138e0e1f44f36b65d433e0e9897e00`; additions stay beside the inspected
subject sources. No taxonomy acceptance or validator run is claimed.

Directly inspected reuse sources at that baseline:

| Existing source | Blob | Actual use |
|---|---|---|
| FiniteJointPremiseClosure.lean | 7b701d37cf754a811c31bce7fd6d26e8147f36ba | finite inference and inventory invariance |
| FinitePositiveHodgeHeat.lean | e7c16e0da112bfad183d79f0e2b893b68ce8f7dc | existing finite heat and mask definitions |
| HodgeHeatResidualBounds.lean | 1b38a2a8313ba0d42193d7251247c804b79928ce | inverse error and synthesis inequality |
| ForcedHodgeStability.lean | 01d256ee382156d1929f99ffb4fa9c163d317272 | complete recursive simulation budget |
| TypedObservationTransport.lean | c053c6bf42556cc8be6a32a0b3ef272425df333f | existing observation framework import |
| DirichletLogDerivativeTail.lean | db8d000a849792ec883f080c5952bef547f21b30 | actual von Mangoldt API inspection, not a critical-strip input |

The root pins remain Lean v4.34.1 and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. Imported source may itself be an
unchecked candidate. Reading these modules did not replay their transitive
closure, establish all previous claims, or qualify the new files for root import.

Other requested repositories were re-resolved: openai/math main
`4eaee87548250b2682affda7d05d947c05554bae`, TauCetiProject/TauCeti main
`85f3eb5579df5ca44ba8cd0921d614b41ab72174`; no result from either was imported
or freshly checked. The exact deepmind/formal-research identifier returned 404.
This is an access limit, not an assertion that no repository or theorem exists.
No optional right-of-7/8 theorem is assumed in this increment.

The canonical Noe main was
`53f1622af5dc87a29e20408c25f76bbb55243eb1`. Its requested
`workflows/research/orchestration/skills/noe-proof-automation/SKILL.md` and
`bindings/mathematics/organization/skills` reads returned 404. No verified local
skill checkout or Lean/Lake/elan executable was found. Dependent automation,
prover dispatch, browser messaging, scheduling and installations were not run.
This increment is manual mathematical research and authorized source publication,
not execution of the unavailable structural-intelligence or proof workflow.

## 7. Exact formal scope and remaining acceptance

The increment contains four Lean source candidates, one pure numerical model,
and this explicitly requested authored research record. No root import, dependency
version, existing theorem, historical verification result or runtime is changed.
The new sources expose proof terms without admitted holes in their authored
bodies; this lexical observation is not parsing, elaboration or a transitive audit.

Analytical status: complete arguments at the scopes of (1), (3), (7), the finite
research-method statements and their counterexamples; independent review NOT_RUN.
Formal scope: finite Abel algebra with actual arithmetic coefficients, filtering
and inference consumers, finite heat reconstruction with complete simulation
budgets, and error-qualified prediction/information limits. The continuum Weil
comparison is NOT formally implemented. Python evaluation is exploratory and
not interval-certified. No finite spectral certification was attempted.

Before formal acceptance, elaborate the exact files against the unchanged pinned
environment, replay their kernels and audit all transitive axioms including
sorryAx/custom assumptions. Audit source fidelity separately, especially the
prime cutoff, inner-product convention, initial discrepancy constant, endpoint
derivative, both pole terms, and finite/full operator distinctions. Publication
commit, final tree/blobs and precise verification issue are recorded by the
repository operation; none of these identifiers substitutes for checking.

The cofinal low spectral separation and normalized genuine-ground-state comparison
are still unresolved. Dirichlet conductor/parity/gamma and conjugate-character
operator returns are not supplied by the zeta identity. This record retains those
obligations instead of renaming them as discharged assumptions.
