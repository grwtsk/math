# Connes–Weil positivity: cofinal lower-bound certificates

Research date: 2026-11-04 (America/Los_Angeles).

## Status and scope

This is a source-only research contribution, not a proof of RH or GRH. The elementary implications below have mathematical proofs. Twelve accompanying Lean theorem declarations contain proof scripts, but no Lean compiler or kernel replay was available in this session. Absence of proof placeholders is not a substitute for elaboration, dependency auditing, or statement review.

The main analytic obligation is not discharged: construct lower-bound certificates for the genuine Weil form on a cofinal sequence of support intervals, with defects tending to zero. The actual Weil form, its explicit formula, the operator domains, the prime-translation theorem, the moment-correction integrals, and the Hurwitz argument are not yet formalized in the accompanying Lean file. They are stated and proved or identified as external inputs in this note. No declaration named `RiemannHypothesis` is replaced or shadowed, and no RH statement is presented as a proved theorem.

The contribution consists of a composable lower-bound framework, a support-sensitive bound for prime translations, a pole-cancellation correction lemma, and a quantitative description of the remaining spectral-to-holomorphic comparison. These use standard mathematical mechanisms; no priority or originality claim is made.

## 1. Sources and freshness

The requested basis is Connes, arXiv:2602.04022v1, especially Sections 4.1 and 6.1–6.6. The arXiv page checked on this research date lists v1. A later journal version was also located on the author's publication site: Journal of Open Mathematical Problems 2(1), 1–52 (2026), revised 2026-02-23 and accepted 2026-03-23. Its page 36, Section 6.6, still identifies the same two missing steps: simplicity/evenness of the lowest Weil eigenfunction, and sufficient approximation of that eigenfunction by the prolate construction. The attached 42-page version remains the basis; the later version is an explicit comparison, not a silent replacement.

The real-zero theorem is Connes–van Suijlekom, arXiv:2511.23257. It concerns a translation-invariant distributional kernel whose associated lower-bounded self-adjoint operator has a simple, isolated, even lowest eigenfunction. It does not remove those hypotheses.

Repository research found an important optional external input in `openai/math`. At commit `4eaee87548250b2682affda7d05d947c05554bae`, the file `lean/OAI/NumberTheory/DirichletL/Nonvanishing.lean` states nonvanishing for Re(s)>7/8, both for zeta and for Dirichlet L-functions away from the principal-character pole. The retrieved blob is `46c67f4000906b1391a471d6e6396ac0da3c16a5`. It delegates to `Detector/FinalAssemblyUnconditional.lean`, which was also inspected. Its entire dependency graph and comparator were not replayed here. This note treats it as a reported, source-inspected external result, not an independently verified input to the local Lean development.

An important audit correction: the `ComparatorChallenges/QuasiRiemannHypothesis.lean` file contains a placeholder because it is a challenge specification. The companion JSON points to the actual solution module above and lists `propext`, `Quot.sound`, and `Classical.choice` as permitted axioms. The placeholder in the specification alone does not refute the supplied implementation. An initially attempted implementation path was not the configured solution path.

`TauCetiProject/TauCeti` is the relevant integrated Lean library. Its README and project description were inspected; its stated review model separates human-controlled roadmaps, AI-authored implementation, kernel checking, and adversarial review. This is distinct from an unrelated similarly named mathematical workshop. A public ConformalMapping roadmap mentions a Hurwitz/Montel API, but a roadmap is not evidence that any particular theorem has been compiled or imported here.

The requested `deepmind/formal-research` and the candidate `google-deepmind/formal-research` README paths returned 404 through the connection. This is an access/discovery limitation, not a claim that no such repository exists. The accessible `google-deepmind/formal-conjectures` README was inspected instead and explicitly identifies its main content as formalized conjecture statements, not automatically proved theorems.

Mathlib's current RiemannZeta documentation was checked for its genuine zeta definition, functional equation, and `RiemannHypothesis` definition. The local source does not invent a substitute zeta function.

## 2. Normalize the problem before using a spectral theorem

Write t=log(u), and use the additive Fourier transform

    F_g(z) = integral_R g(t) exp(-i z t) dt.

Let T>0 be the HALF-width of the support interval. Thus T=log(lambda), whereas the length denoted L in portions of Connes's paper is 2T. Define

    V_T = {g in C_c^infty(R,C): supp(g) subset [-T,T],
           F_g(i/2)=F_g(-i/2)=0}.

On this pole-cancelled space use the real Hermitian quadratic form

    q(g) = -sum_v W_v(g*g*),       g*(t)=conjugate(g(-t)),

with the local distributions transported from the multiplicative convention of Section 4.1. The source's Weil criterion identifies positivity on the union of these spaces with RH. The sum over finite primes is finite for each fixed support interval. In all subsequent positivity arguments q is the SAME form restricted to nested domains; it is not a changing numerical approximation.

This constrained form must not be confused with an unconstrained full explicit-formula form. On unrestricted test functions the pole contribution is

    F_g(i/2) conjugate(F_g(-i/2))
      + F_g(-i/2) conjugate(F_g(i/2)),

not generally the sum of the two absolute squares. The full form includes that contribution.

There is an immediate obstruction to naively combining the constrained criterion with the all-real-zero theorem: every nonzero admissible g in V_T has Fourier zeros at the NONREAL points ±i/2. Therefore its Fourier transform cannot have only real zeros. Applying the all-real-zero theorem to a minimizer after imposing these constraints would require an additional, different theorem. This is not a contradiction in Connes's paper; it is a warning against conflating its different form presentations.

Similarly, the target kernel k has transform Xi(z)=xi(1/2+iz), with Xi(±i/2)=1/2. It is not pole-cancelled. A correction is possible, as Section 6 shows, but it deliberately creates the nonreal pole-cancellation zeros and does not preserve the real-zero conclusion.

## 3. Cofinal approximate positivity is enough

### Proposition A

Let T_n tend to infinity, with the test spaces nested and covering every compactly supported admissible test. Suppose delta_n>=0, delta_n tends to zero, and

    q(g) >= -delta_n ||g||_2^2       for EVERY g in V_(T_n).

Then q(g)>=0 for every admissible compactly supported test. Under the source's Weil criterion, this proves RH.

Proof. Fix g. Its support is contained in every sufficiently large V_(T_n). Consequently the displayed inequality holds for this same g for every sufficiently large n. Since its norm is a fixed finite number and delta_n tends to zero, taking the limit gives q(g)>=0. The quantifier over every g at each n is essential. No eigenfunction simplicity, parity, spectral gap, or convergence of minimizers is needed. QED.

Equivalently, when the normalized Rayleigh infima are finite, set

    m(T)=inf {q(g): g in V_T, ||g||_2=1}.

Nestedness makes m(T) nonincreasing. A cofinal lower bound m(T_n)>=-delta_n with delta_n->0 therefore forces every m(T)>=0. One does not need to prove m(T)->0; an asymptotically nonnegative lower bound suffices.

This proposition is an elementary closure argument, not an analytic improvement by itself. Its hypothesis is RH-equivalent in this setting: if q is positive, delta_n=0 works. Its usefulness is architectural: it identifies a precise kind of non-circular certificate that could replace the two minimizer-identification obligations.

### Why small numerical energies do not supply the hypothesis

For A_epsilon=diag(-1,epsilon), the unit vector (0,1) has positive Rayleigh quotient epsilon tending to zero, while the lowest eigenvalue stays -1. Even a tiny exact eigenvalue need not be the lowest eigenvalue. A positive finite compression can likewise omit a negative orthogonal direction.

The Lean source contains the closure lemmas and this scalar counterexample. It does not claim that a finite numerical computation bounds the infinite-dimensional form from below.

## 4. A finite-block plus complement certificate

Use an orthogonal decomposition g=u+v in the correct constrained form domain. Assume rigorous bounds

    q(u) >= a ||u||^2,
    q(v) >= c ||v||^2,
    |q(u,v)| <= b ||u|| ||v||,

where c>0 and b>=0. Let delta>=0 satisfy

    b^2 <= (a+delta)c.                                      (C)

Then

    q(g) >= -delta ||g||^2.                                 (B)

Proof. Put x=||u||, y=||v||. The block estimates imply q(g)>=a x^2-2bxy+c y^2. The exact identity

    c[(a+delta)x^2-2bxy+c y^2]
       = (cy-bx)^2 + [(a+delta)c-b^2]x^2

makes the left-hand side nonnegative. Divide by positive c and weaken -delta x^2 to -delta(x^2+y^2). Orthogonality identifies x^2+y^2 with ||g||^2. QED.

The corresponding Lean `Block.Certificate` explicitly asks for the energy identity, the form lower bound, positivity of c, and condition (C). It asserts no existence theorem for those data. Its composition theorem proves positivity from certificates whose defects tend to zero on nested covering domains.

### A concrete route to the three bounds

On the pole-cancelled space write q=q_infinity-p_T, where p_T is the finite prime form. Suppose a self-adjoint reference operator A_infinity for the constrained archimedean form and its relevant spectral decomposition have been justified. Choose U as its first N spectral modes. Suppose the complementary archimedean spectrum is bounded below by gamma, the prime operator has norm at most K_T, and the finite compression of q to U has certified lower bound a. Then one can take

    c = gamma-K_T,       b = K_T.

The archimedean off-diagonal block vanishes in this decomposition; the remaining cross term is bounded by the prime-operator norm. Thus

    gamma>K_T and (a+delta)(gamma-K_T)>=K_T^2

suffice for (B). A sharper computed or analytic cross-block norm can replace K_T.

This is a genuine sufficient finite-block/tail criterion, conditional on all its stated operator and numerical certificates. It is not a demonstrated feasible global algorithm: the low eigenvalues may be extremely small, and the crude choice b=K_T can demand prohibitively large tails. The substantive analytic target is control of the actual cross block and complement, not merely a small trial energy.

## 5. A support-sensitive prime-translation estimate

### Proposition B

For f in L^2(R), supported in [-T,T], define

    C_f(a)=integral_R f(t+a) conjugate(f(t)) dt.

If a>=2T, C_f(a)=0. If 0<a<2T and M=ceil(2T/a), then

    |C_f(a)| <= cos(pi/(M+1)) ||f||_2^2.                    (S)

This constant is sharp on the unrestricted supported L^2 space; no sharpness claim is made after imposing pole constraints.

Proof. Partition the interval into translation chains modulo a. For almost every r in [0,a), the values of f at -T+r+ja form a vector of length m(r)<=M. The chain correlation is the quadratic expression for the unilateral shift S_m. For each phase theta, the Hermitian matrix

    (exp(i theta) S_m + exp(-i theta) S_m*)/2

is unitarily equivalent to the tridiagonal matrix with 1/2 immediately above and below the diagonal. Its eigenvectors have coordinates sin(j k pi/(m+1)); its largest eigenvalue is cos(pi/(m+1)). Maximizing the real part over theta bounds the absolute correlation. Integrate the chain inequalities and use m(r)<=M. A sine-profile chain on a positive-measure set of maximal-length chains attains the bound. Endpoint chains of larger length, when present, form a null set. QED.

In particular, a>=T gives the factor 1/2 whenever overlap remains. The two-vertex scalar inequality is included in Lean; the direct-integral argument and general path spectrum remain paper proofs, not Lean declarations.

Substitution into the prime terms of the explicit formula gives the finite bound

    K_T = 2 sum_(p prime, m>=1, p^m<exp(2T))
              (log p) p^(-m/2)
              cos(pi/(ceil(2T/(m log p))+1)),

    |p_T(f)| <= K_T ||f||_2^2.

The Hermitian prime operator consequently has norm at most K_T. At p^m=exp(2T) the correlation vanishes; omitting the endpoint is legitimate. This bound uses only primes and powers inside the support cutoff. It is sharper term-by-term than applying Cauchy–Schwarz with constant 1, but taking absolute values loses arithmetic cancellation and does not establish RH. In particular, no tendency K_T->0 is claimed.

For Dirichlet characters the same estimate bounds the twisted prime terms, since |chi(p)^m|<=1. This observation does not supply the conductor/parity-dependent archimedean lower bounds needed for GRH.

## 6. Pole cancellation can preserve convergence on interior strips

### Proposition C: explicit even correction

Let f_T be an even L^2 function supported in [-T,T], and define

    M_T = integral f_T(t) exp(t/2) dt,
    D_T = T+sinh(T),
    r_T(t) = M_T/D_T cosh(t/2) 1_[-T,T](t).

Then g_T=f_T-r_T satisfies both pole-cancellation conditions, and

    ||r_T||_2^2 = |M_T|^2/D_T.

Proof. Evenness makes the two moments of f_T equal. Direct integration gives

    integral_[-T,T] cosh(t/2) exp(±t/2) dt
       = integral_[-T,T] cosh(t/2)^2 dt = T+sinh(T).

The first identity cancels each moment; the second computes the correction norm. QED.

For any a>0, Cauchy–Schwarz gives, uniformly for |Im(z)|<=a,

    |F_(r_T)(z)| <= |M_T| sqrt(sinh(2aT)/(a D_T)).

At a=0 replace sinh(2aT)/a with its limit 2T. If M_T is bounded, this tends to zero for every a<1/2, at order exp(-(1/2-a)T) for fixed a>0.

For smooth tests, take an even smooth cutoff chi_T, 0<=chi_T<=1, equal to 1 on [-T+1,T-1] and supported in [-T,T], and replace the correction by

    r_T(t)=M_T chi_T(t)cosh(t/2)/D_T^chi,
    D_T^chi=integral chi_T(t)cosh(t/2)^2 dt.

Its moments still equal M_T, while ||r_T||_2<=|M_T|/sqrt(D_T^chi) and
D_T^chi>=(T-1)+sinh(T-1) for T>1. The same interior-strip convergence follows.

Consequences and limitations: moment-cancelled approximants can converge to Xi on every closed interior strip even though each has forced zeros at ±i/2, because those zeros lie on the boundary of the full open strip. No contradiction with Hurwitz results. The correction does NOT preserve an all-real-zero property. Its small L^2 norm also does NOT alone control its Weil energy: that form is unbounded, so a separate form-domain estimate is necessary.

## 7. Quantifying the original minimizer route

For any d supported in [-T,T], Cauchy–Schwarz proves

    sup_(|Im z|<=a) |F_d(z)| <= C_a(T) ||d||_2,
    C_a(T) = sqrt(sinh(2aT)/a)       (a>0),
    C_0(T) = sqrt(2T).

Thus L^2 error merely tending to zero need not imply convergence on a fixed nonreal strip. For a>0, the sufficient rate is ||d_T||_2=o(exp(-aT)). In multiplicative coordinates this is o(lambda^(-a)).

A standard spectral estimate gives a way to measure d. Let A_T be self-adjoint, with unit simple ground state theta_T. For a unit trial vector v_T in its operator domain set mu_T=<A_T v_T,v_T>, residual r_T=||(A_T-mu_T)v_T||, and suppose the distance from mu_T to the remainder of the spectrum is at least Delta_T>0. Spectral expansion gives

    ||(1-P_ground)v_T|| <= r_T/Delta_T.

After choosing a scalar phase,

    ||v_T-theta_T|| <= sqrt(2) r_T/Delta_T.

The first inequality follows by summing squared spectral coefficients; the second follows from 2(1-sqrt(1-e^2))<=2e^2 for the orthogonal component e in [0,1]. These require a certified separation from the REST of the spectrum. A small residual without that separation can identify the wrong eigenvector.

For comparison with the paper's k_lambda, choose v_T=k_lambda/||k_lambda|| and scale theta_T by the same nonzero norm. Provided the norms stay bounded, a sufficient condition is

    C_a(T) r_T/Delta_T -> 0.

Combined with the paper's prolate-transform convergence, simple/even ground states, and nonzero normalization, Hurwitz excludes nonreal Xi zeros in that strip. This has not been established for the actual Weil operators. It is an explicit version of the missing approximation requirement, not a completion of it.

## 8. The optional 7/8 input reduces the needed strip

If the source-inspected OpenAI theorem and the functional-equation identification are accepted, every nontrivial zeta zero rho satisfies

    1/8 <= Re(rho) <= 7/8.

Writing rho=1/2+iz gives |Im(z)|<=3/8. Therefore the Hurwitz route need only cover one open strip |Im(z)|<a with

    3/8 < a < 1/2,

for example a=7/16. In that case a sufficient residual-to-gap rate is

    r_T/Delta_T=o(exp(-7T/16)),

under the normalization conditions above. More generally any rate o(exp(-(3/8+eta)T)) with 0<eta<1/8 suffices.

The endpoint distinction matters: proving convergence only on the open strip |Im(z)|<3/8 would not cover possible zeros on its boundary. The Lean source proves only the elementary coordinate inequality from two supplied reflected upper bounds. It neither imports OpenAI's theorem nor audits the functional-equation bridge. This optional narrowing is not required by the positivity route in Sections 3–4.

## 9. GRH scope

The abstract cofinal and block arguments apply to any correctly defined Hermitian explicit-formula form, including suitable Dirichlet or Hecke character sectors. For each fixed character, proving the correct sector's positivity on all compactly supported tests would supply that sector's Weil criterion. Character twists in the prime terms retain the estimate in Section 5.

This is not a proof of Dirichlet GRH, Hecke GRH, or general automorphic GRH. One must still define each completed L-function, its conductor and gamma factors, the appropriate pole terms, its involution, and the actual test space. In particular, the even-eigenfunction hypothesis in Connes's real-zero theorem does not transfer automatically to non-self-dual character sectors. The paper's mention of Groessencharacters is not a blanket theorem about every class of L-functions.

## 10. Formalization and mathematical checks

The accompanying module is:

`GRWTSK/NumberTheory/RiemannZetaFunctionAndRiemannHypothesis/WeilPositivity/CofinalLowerBounds/Basic.lean`

It contains twelve named proof-script declarations: additive and weighted closure; an antitone sequence lemma; cofinal-domain positivity; the Schur identity and inequality; certificate extraction and cofinal composition; two counterexample evaluations; the two-vertex correlation bound; and the reflected-strip coordinate bound. The analytic results in Sections 5–8 remain informal proofs or explicitly stated obligations.

The pure mathematical Python source records an independent exact coefficient check of the Schur identity, 2,000 exact rational examples of the block inequality, 100 exact counterexample evaluations, and 101 exact coordinate checks. It also performs 3,200 floating-point chain checks for dimensions 1 through 64. The latter are sanity checks, not interval certificates or proofs. The output JSON records the distinction and explicitly records that Lean kernel checking was not performed and RH was not proved.

No claim is made that the Lean file elaborates, that the complete repository builds, that the source registry validation passed, or that upstream comparator validation succeeded. These are missing verification steps, not assumed successes.

## 11. Reproducible research record and unresolved obligations

Repository base: `grwtsk/math` main at `76ec77a25fb7ce0ae37797e9d2543b941b3442da`. The repository's `AGENTS.md` was read. Its toolchain file reported `leanprover/lean4:v4.34.1`. Source placement follows the returned RiemannZetaFunctionAndRiemannHypothesis leaf and the required topic/proof-family hierarchy; full taxonomy checking was not performed. Some directory/tree reads failed, so no exhaustive claim about existing equivalent developments is made.

The branch for this work is `research/connes-weil-certificates-2026-11-04`. It is a source proposal, not a merge into main. Existing unrelated work is not attributed to this contribution.

The canonical `grwtsk/noeaaeue` proof-automation skill path on main returned 404, and no verified local skill checkout was available. Dependent proof automation was not started. No browser-chat loop, scheduled work, remote prover job, or native proof runner was invoked. The computations here are direct scalar mathematical checks. This record documents sources, statements, decisions, and observable validation results; it is not a transcript of private internal deliberation.

The remaining mathematical obligations are concrete:

1. For the positivity route, instantiate the actual constrained Weil form and prove cofinal block certificates with defects tending to zero, including the infinite-dimensional complementary estimate.
2. For the minimizer route, establish the required simple/even ground states and a phase/normalization-correct comparison strong enough for the displayed strip bound.
3. For any optional use of the external 7/8 result, replay the pinned solution/comparator and audit its definition/dependency bridge before making it a trusted formal dependency.
4. Complete the Lean formalizations of the analytic statements and independently elaborate all local proof scripts against the repository's pinned environment.

### Source identifiers

- Attached source: `https://arxiv.org/abs/2602.04022v1`, Sections 4.1, 6.1–6.6; pages 21 and 26–30.
- Journal comparison: `https://alainconnes.org/wp-content/uploads/JOMP_V02N01P01-2.pdf`, printed page 36; author listing `https://alainconnes.org/publications/`.
- Real-zero theorem: `https://arxiv.org/abs/2511.23257`.
- OpenAI pinned solution: `https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/NumberTheory/DirichletL/Nonvanishing.lean`.
- OpenAI comparator mapping: `lean/ComparatorChallenges/QuasiRiemannHypothesis.json`, retrieved blob `acf552468fc23c1a27d685d33983c58c50040542`.
- OpenAI final assembly: `lean/OAI/NumberTheory/DirichletL/Detector/FinalAssemblyUnconditional.lean`, retrieved blob `e7c20910424837fb954796e1216f5aa453bbd5da`.
- OpenAI scope note: `lean/docs/003.md`, retrieved blob `cf794e93da2e1a494434153f5b91f2990fe9fd60`.
- Tau Ceti: `https://github.com/TauCetiProject/TauCeti` and `https://taucetiproject.org/about/`.
- Related Tau Ceti roadmap: `https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/ConformalMapping/README.md` (discovery lead, not an imported implementation).
- DeepMind accessible substitute: `https://github.com/google-deepmind/formal-conjectures`, README blob `29ba0c01538ecfbd8ef0f5383200f6230014073f`.
- Mathlib: `https://leanprover-community.github.io/mathlib4_docs/Mathlib/NumberTheory/LSeries/RiemannZeta.html`.

All web/repository observations are date-specific. No completed RH proof or newly established zero-free region is claimed by this contribution.
