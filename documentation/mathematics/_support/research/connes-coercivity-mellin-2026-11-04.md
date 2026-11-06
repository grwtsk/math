# Coercivity, residuals and Mellin convergence in the Connes RH programme

Local attribution: grwtsk contributors. AI-assisted mathematical analysis and source formalization.
Research refreshed: 2026-11-04 (America/Los_Angeles).

## Result and assurance

This note proves an abstract, quantitative sufficient criterion for the spectral approximation strategy in Alain Connes's supplied survey [S1]. It does **not** establish that the actual truncated Weil operators satisfy that criterion. In particular, it does not prove RH or GRH.

The substantive reduction replaces the survey's separate simplicity/evenness requirements by a single lower bound on the orthogonal complement of an **even trial vector**, together with a strict Rayleigh inequality. A residual estimate then supplies the required approximation, with an explicit loss under Mellin transformation. Only an unbounded subsequence of cutoffs is required.

The arguments below are analytic proofs at their stated, conditional scope. The six accompanying Lean modules are **source proof candidates**: compilation, fresh kernel verification, transitive axiom auditing and independent review are all **NOT_RUN**. No Lean or Lake executable was available. The source does not contain admitted proof terms or new axiom declarations. That textual observation is not a kernel check, including for imported dependencies. No theorem-level novelty is claimed; the mechanisms are standard linear algebra, spectral theory, Cauchy-Schwarz and Hurwitz, assembled for this source-specific consumer.

## 1. What the supplied paper establishes, and what it leaves open

[S1, Theorem 6.1, p. 26] applies to a lower-bounded self-adjoint realization of a real even distributional convolution kernel on a finite interval. A simple isolated **lowest** eigenvalue with an even eigenfunction has an entire Fourier transform all of whose zeros are real. The convolution structure, the lowest-eigenvalue condition, simplicity and evenness are hypotheses, not consequences of self-adjointness alone. The underlying paper is [S2], not an arbitrary Hilbert-Polya assertion.

[S1, Sections 6.2-6.5] constructs a prolate trial function k_lambda from E(h_lambda), where E(h)(u)=sqrt(u) sum_{n>=1}h(nu), restricted to [lambda^{-1},lambda]. It reports convergence of its Mellin-Fourier transform to Xi on closed substrips of the width-one strip about the real axis (Fact 6.4). We use that statement as a **literature input**; its full prolate asymptotic proof has not been reconstructed or checked in Lean here. The printed one-sided strip notation in Fact 6.4 is read together with the explicitly stated alpha range (-1/2,1/2) and the description in Section 6.

[S1, Section 6.6, p. 30] explicitly leaves open (i) simplicity/evenness of the least eigenvector and (ii) sufficiently strong comparison of that eigenvector with the prolate trial. Figure 1 on p. 29 compares logarithms of a very small eigenvalue with a prolate concentration quantity. It supplies neither a certified complementary spectral bound nor a residual-to-gap estimate. Small energy is not the same statement as proximity to a selected eigenvector.

[S3] also identifies convergence of suitably normalized spectral determinants as an unresolved route. The more recent numerical study [S4, v4 dated 2026-08-14] reports high-precision finite approximations and includes cutoff-related qualifications; it explicitly makes no proof claim. Its version comments correct an earlier interpretation of a negative-sign block. No numerical claim from that paper is used as a rigorous spectral lower bound here.

## 2. A complement certificate forces simplicity and evenness

Let H be a nonzero complex Hilbert space. Let A be lower-bounded and self-adjoint with compact resolvent. Let J be a unitary involution preserving Dom(A) and commuting with A. For the logarithmic realization of [S1], J is reflection t -> -t.

Let v in Dom(A) satisfy ||v||=1 and Jv=v. Write

    mu = <Av,v>,   epsilon = ||(A-mu)v||.

Suppose a real number beta satisfies

    mu < beta,
    <Aw,w> >= beta ||w||^2     for every w in Dom(A) with <v,w>=0.       (C)

**Proposition 1.** The lowest eigenvalue E0 is simple and isolated, E0 <= mu < beta, every other eigenvalue is at least beta, and its eigenfunction is even.

**Proof.** Compact resolvent and lower boundedness give a discrete spectrum with finite multiplicities and a lowest eigenvalue. The variational principle gives E0 <= mu. If the spectral subspace below beta had dimension at least two, it would contain a nonzero vector w perpendicular to v. There are only finitely many eigenvalues below beta. On their finite-dimensional span the Rayleigh quotient is bounded above by their largest eigenvalue, which is strictly smaller than beta. This contradicts (C). Thus the spectral subspace below beta is one dimensional, and its only eigenvalue is E0.

The ground eigenvector eta cannot be perpendicular to v: otherwise (C) would give E0 >= beta. Commutation implies that J preserves the ground eigenspace. Write J eta = c eta. Since Jv=v and <v,eta> is nonzero, preservation of the inner product forces c=1. Hence J eta=eta. This argument does not first assume the required parity. QED.

The accompanying `RankOneCoercivityCertificates.lean` proves the underlying algebra over an arbitrary normed field: a detecting linear functional is injective on any linear low-energy space, one nonzero vector generates that space, and a symmetry preserving the space and functional fixes it. Instantiating the compact-resolvent spectral subspace and the actual Weil operator remains an analytic/formal bridge, not a checked instantiation in this package.

### Why symmetrization is necessary

The prolate trial k_lambda is not assumed to be exactly invariant under u -> 1/u. Instead define

    s_lambda(u) = (k_lambda(u) + k_lambda(1/u))/2.

With M f(z)=integral f(e^t) exp(i z t) dt on [-log lambda,log lambda], change of variable t -> -t gives

    M s_lambda(z) = (M k_lambda(z) + M k_lambda(-z))/2.

Since Xi is even, locally uniform convergence of M k_lambda to Xi is preserved by this symmetrization. Its error is bounded by the average of the two original errors; neither side of the strip may be discarded. The actual source-domain obligation s_lambda in Dom(A_lambda) remains explicit. A sharp endpoint truncation does not automatically establish it.

## 3. Residual-to-gap comparison with normalization accounted for

Use any nonzero raw trial s, put v=s/||s||, and assume (C). Define

    d = beta-mu > 0,     R = ||(A-mu)s|| = ||s|| epsilon.

Let P be the orthogonal projection onto the normalized ground vector eta. All spectral values on (I-P)H are >= beta, so the spectral theorem gives

    d^2 ||(I-P)s||^2 <= ||(A-mu)(I-P)s||^2 <= R^2.                    (1)

Choose a unit phase omega aligning omega eta with s, and set

    theta = ||s|| omega eta.

This scaling is important: the literature approximation concerns the raw trial, not an arbitrarily normalized unit vector. Multiplication by the nonzero scalar ||s|| omega does not change zeros of the transform.

For a=|<eta,s>|/||s|| in [0,1],

    ||s-theta||^2 = 2 ||s||^2 (1-a)
                 <= 2 ||s||^2 (1-a^2)
                  = 2 ||(I-P)s||^2.

Consequently

    ||s-theta|| <= sqrt(2) R/d.                                      (2)

No convergence of the scalar normalization ||s|| is required. The finite diagonal version of (1) and the elementary phase inequality are in `FiniteSpectralResidualCertificates.lean`. That finite proof is not itself an infinite spectral expansion.

## 4. Mellin amplification identifies the actual required rate

Put L=log lambda. For f supported in [-L,L] in the logarithmic variable, Cauchy-Schwarz gives, for |Im z|<=b,

    |M f(z)| <= M_b(lambda) ||f||_2,

where

    M_0(lambda) = sqrt(2 log lambda),
    M_b(lambda) = sqrt((lambda^(2b)-lambda^(-2b))/(2b)),   b>0.          (3)

Indeed the squared norm of the exponential kernel is the integral of exp(-2 Im(z)t) over [-L,L]. Pairing t and -t writes it as an integral of 2 cosh(2 Im(z)t), which increases with |Im z|. Evaluation at b yields (3). For b>0, M_b(lambda) <= lambda^b/sqrt(2b).

Combining (2) and (3), uniformly on a closed substrip,

    |M theta_lambda(z)-M s_lambda(z)|
        <= sqrt(2) M_b(lambda) R_lambda/d_lambda.                      (4)

This proves why unweighted L2 convergence alone is not the right target: the support grows and the complex Fourier kernel amplifies errors by roughly lambda^b. A tiny absolute residual is also insufficient when the spectral separation d_lambda is still smaller.

**Theorem 2 (conditional Connes reduction).** Let lambda_n -> infinity. Assume the operators have the exact source realization required by [S1, Theorem 6.1], commute with reflection, and the symmetrized raw prolate trials are nonzero members of their operator domains. Assume (C) and, for every fixed 0<b<1/2,

    lambda_n^b R_{lambda_n}/d_{lambda_n} -> 0.                         (R)

Also retain the literature input M k_lambda -> Xi locally uniformly on |Im z|<1/2. Then RH follows.

**Proof.** Proposition 1 supplies the simple even ground eigenvectors required by [S1, Theorem 6.1]. Their rescaled transforms therefore have only real zeros. Symmetrization preserves the convergence of the prolate transforms to Xi, and (4), with (R), transfers that convergence to the ground transforms. Xi is not identically zero. Hurwitz implies that their limit has no nonreal zero in this strip. Equivalently, choose a small disc about an alleged nonreal zero, disjoint from the real axis and with boundary free of Xi zeros; Rouche would force an approximating zero in that disc, a contradiction. Every nontrivial zeta zero in 0<Re(s)<1 has coordinate z=-i(s-1/2) in this strip, and Im z=1/2-Re(s). Thus it lies on Re(s)=1/2. The standard zero classification and boundary exclusion are part of the classical zeta input, not newly formalized here. QED.

The isolated `RealZeroLimit.lean` adapter actually invokes Tau Ceti's Hurwitz theorem [S5] to prove the stronger closed-zero-locus transfer for an arbitrary nontrivial filter. It retains open connected domain, eventual holomorphy, local uniform convergence, eventual zero localization, and a nonzero-limit witness. It does **not** manufacture these premises for Xi.

A convenient, stronger sufficient estimate is R_lambda/d_lambda = O(lambda^(-1/2)). More generally, rate O(lambda^(-alpha)) gives convergence in |Im z|<min(alpha,1/2). A cofinal sequence of cutoffs is enough; there is no need to solve every intermediate scale. Multiplicity is handled by Hurwitz/Rouche and need not be inferred from numerical root tracking.

### Optional improvement from a separately established zero-free half-plane

Suppose, independently, the relevant nontrivial zero set is stable under s -> 1-s and has no zeros with Re(s)>theta, where 1/2<=theta<1. Then all its zeros satisfy

    1-theta <= Re(s) <= theta,
    |Im(-i(s-1/2))| <= theta-1/2.

Therefore Theorem 2 needs convergence only on a strip of width b>theta-1/2. A power rate with alpha>theta-1/2 suffices (choose b strictly between theta-1/2 and min(alpha,1/2)). At theta=7/8 this threshold is alpha>3/8. Equality at 3/8 is not justified merely by a strict right-half-plane exclusion: zeros on the edge of the surviving closed band still need an open convergence neighbourhood.

The current OpenAI source [S6] exports a 7/8 theorem without an analytic premise in the exported signature. Its comparator challenge uses a placeholder intentionally; the JSON points to a distinct solution module and permits only propext, Quot.sound and Classical.choice. We inspected that signature and configuration but did **not** execute the comparator or audit the complete proof dependency closure. Accordingly this optional corollary remains conditional on independent acceptance of that external result. It is not imported into this package and is unnecessary for the main alpha=1/2 sufficient criterion. An earlier conversational characterization of the current export as having a named analytic premise was incorrect and is superseded by this direct source inspection.

## 5. A second route: a Schur certificate for Weil positivity

Normalize the trial to v and retain epsilon=||(A-mu)v||. For x=a v+w, w perpendicular to v, the quadratic form satisfies

    Q(x) >= mu |a|^2 - 2 epsilon |a| ||w|| + beta ||w||^2.

For real X,Y,

    beta (mu X^2-2 epsilon X Y+beta Y^2)
      = (beta Y-epsilon X)^2 + (mu beta-epsilon^2) X^2.                (5)

Thus beta>0 and epsilon^2<=mu beta suffice to prove Q>=0. This is a sufficient scalar Schur bound, not an assertion that it is necessary for positivity. Applying it to every source-exact finite-support Weil form would prove RH through the criterion in [S1, Sections 4.1 and 6.4], retaining the explicit-formula normalization and test-function conditions. Neither beta nor this determinant budget has been established here for the actual Weil forms.

Equation (5) also yields the lower endpoint mu-epsilon^2/(beta-mu) under mu<beta; the Lean source gives a square-completion proof. This route does not require spectral zeros or prolate-to-Xi convergence, but it shares the unresolved coercivity/residual estimates with the first route. It is therefore not an independent proof of RH.

### Finite certificates must control the entire tail

To certify (C), split v-perpendicular into an orthogonal finite block and a tail. Suppose Q>=a||u||^2 on the finite block, Q>=c||w||^2 on the entire tail, and the cross form has absolute value <=tau||u||||w||. Then

    c>beta,   tau^2 <= (a-beta)(c-beta)

imply Q(u+w)>=beta(||u||^2+||w||^2), by (5) applied after shifting by beta. The finite block can in principle carry an exact or interval-certified matrix certificate; the tail and coupling need source-exact analytic estimates. A principal minor, a sampled spectrum, or a truncated positive matrix alone does not supply those estimates.

## 6. Hostile checks and scope barriers

1. For A_e=diag(e,2e), e>0, trial v=(0,1) has Rayleigh value 2e and **zero residual**, but its distance from the ground vector (1,0) is sqrt(2). Its energy tends to zero as e tends to zero. Hence neither small energy nor even perfect eigen-residual selects the ground state without complementary spectral exclusion. The three associated scalar identities are in the finite residual module.

2. Let P=diag(1,0) and Q=(1/2)[[1,1],[1,1]]. Both are orthogonal projections and their ranges intersect only at zero. Yet <(I-P-Q)(1,0),(1,0)>=-1/2. Thus the appearance of I-P-Q in the semilocal trace formula cannot by itself prove positivity. `ProjectionSignObstruction.lean` proves idempotence, symmetry, trivial common fixed space, and the negative direction using exact real arithmetic. This does not refute the actual arithmetic trace formula.

3. Positive finite-field purity or exact finite reciprocal-factor certificates do not identify the characteristic-zero completed zeta function. The current `grwtsk/math` source includes complete multiplicative residual transport. We reuse that consumer, retaining the entire target-comparison error rather than interpreting a finite Euler-factor purity statement as RH.

4. The identically zero limit is excluded explicitly. The constant entire functions 1/(n+1) have no zeros but converge to zero, so omission of that premise would make the real-zero transfer false.

5. For non-self-dual Dirichlet characters, conjugation couples chi with bar(chi); an even real scalar setup cannot be asserted character-by-character for free. A product of the two completed functions has no zero cancellation, but a compatible paired spectral realization, correct conductor/Gamma factors, domains and approximation estimates must still be constructed. The code proves only the algebraic product-nonvanishing implication. No GRH extension is claimed to have been instantiated.

## 7. Source comparison and reproducible research record

**Statement identity.** The new package concerns codimension-one coercivity, finite weighted spectral residuals, symmetrization error, closed-locus Hurwitz transfer, and exact source-return consumers. The RH implication is conditional on actual-source domain, coercivity and rate estimates. The use of min-max, spectral calculus and the prolate convergence input is analytically explained but not fully instantiated in Lean.

**Disposition.** Extends existing source-return mathematics and supplements it with spectral/coercivity and zero-limit ingredients. Existing `MultiplicativeResidual.lean` is reused directly. `ArithmeticCyclicProjectorGapTransfer.lean` was compared: it treats a finite cyclic Hamiltonian and presupposes a reference gap; it does not supply the actual Weil complement bound. No claim of corpus-wide duplicate review is made. Tau Ceti's actual Hurwitz theorem is reused in a separate pinned adapter rather than copied or reintroduced as an axiom. The existing Mathlib root environment is unchanged.

**Research method.** The supplied PDF supplied the target, notation and missing steps. Primary-source refresh located the real-zero paper [S2], spectral triples [S3], revised numerical study [S4], a concrete Tau Ceti Hurwitz implementation [S5], and the OpenAI comparator/solution distinction [S6]. Repository searches and direct reads compared actual hypotheses rather than theorem names. Exact two-dimensional counterexamples challenged shortcuts before source-return claims were written. These are reproducible research operations and mathematical arguments, not a private reasoning transcript.

**Access limits.** The exact requested repository `deepmind/formal-research` returned 404 through the authorized GitHub connector. The related accessible `google-deepmind/formal-conjectures` describes a corpus of formalized conjecture statements, not proofs of those statements; no statement from it was treated as a proof. The canonical `noe-proof-automation/SKILL.md` path on `grwtsk/noeaaeue/main` also returned 404. No dependent proof automation, workflow, scheduler or browser worker was invoked. Manual user-authorized mathematical source publication uses the existing main branch with a non-force expected-head update; it does not create execution authority.

**Formal verification targets.** Five core modules use the unchanged root Mathlib pin. The sixth, `RealZeroLimit.lean`, uses only its isolated adapter. It pins Tau Ceti commit `67aa17161ba1908f8a85182bfdf2d4ccaf21171c`, Mathlib `1b1ccf4b088b32fa3f23f2de1127433254a81e1e` and Lean `v4.36.0-rc2`. The adapter keeps a per-file relative symlink to the canonical source and retains the upstream transitive revisions. Its manifest is source metadata, not evidence of a successful build. There are no new root imports or root dependency migrations.

## 8. Primary-source register

- [S1] Alain Connes, *The Riemann Hypothesis: Past, Present and a Letter Through Time*, arXiv:2602.04022v1. Supplied PDF; pp. 20-21, 26-30, 32. `https://arxiv.org/abs/2602.04022v1`. Source SHA-256 is recorded in the accompanying static provenance file.
- [S2] Alain Connes and Walter D. van Suijlekom, *Quadratic Forms, Real Zeros and Echoes of the Spectral Action*, arXiv:2511.23257v1, 2025-11-28. `https://arxiv.org/html/2511.23257v1`. Preserves the simple, isolated, even lowest-eigenfunction hypotheses.
- [S3] Alain Connes, Caterina Consani and Henri Moscovici, *Zeta Spectral Triples*, arXiv:2511.22755v1. `https://arxiv.org/abs/2511.22755v1`. Convergence is presented as a proof strategy, not established globally.
- [S4] Akiva Groskin, *High-Precision Approximation of Riemann Zeros via the Truncated Weil Form*, arXiv:2605.20224v4, revised 2026-08-14. `https://arxiv.org/abs/2605.20224v4`. Exploratory numerical evidence; not an input certificate.
- [S5] The Tau Ceti contributors, `TauCeti/Analysis/Complex/Conformal/Hurwitz.lean`, commit `67aa17161ba1908f8a85182bfdf2d4ccaf21171c`, Apache-2.0. `https://github.com/TauCetiProject/TauCeti`. Exact theorem reused: `TauCeti.hurwitz_eventually_exists_eq_zero`.
- [S6] `openai/math`: `lean/OAI/NumberTheory/DirichletL/Nonvanishing.lean`, blob `46c67f4000906b1391a471d6e6396ac0da3c16a5`; comparator JSON blob `acf552468fc23c1a27d685d33983c58c50040542`; scope documentation blob `cf794e93da2e1a494434153f5b91f2990fe9fd60`. Inspected 2026-11-04. `https://github.com/openai/math`. Export inspected, complete closure not audited.
- [S7] `grwtsk/math` base commit `24541f93fec792a2eb7ca5fd22ebb99341e158d2`, Mathlib pin `d13f23b723b8a846827a245b89c10fc7d3f11612`. `MultiplicativeResidual.lean` blob `13f16af65e2776d607a179392b516d3405fb1653`; `ArithmeticCyclicProjectorGapTransfer.lean` blob `f871155c0fd98e853bcd593bd1e66b29565ebe97`. Existing source assurance is not upgraded by reuse.
- [S8] The Formal Conjectures Authors, `google-deepmind/formal-conjectures`, README blob `29ba0c01538ecfbd8ef0f5383200f6230014073f`. `https://github.com/google-deepmind/formal-conjectures`. Related source inspected after the requested exact path was inaccessible; statement corpus only.

## 9. The remaining concrete mathematical target

For a specified unbounded sequence of cutoffs, construct source-exact finite/tail/coupling certificates for (C) and prove either

    R_lambda/(beta_lambda-mu_lambda) = O(lambda^(-1/2)),

or a weaker all-substrip rate (R). Establish domain membership before computing an operator residual. This would discharge the substantive source-specific part of Theorem 2 once the reported prolate convergence is justified at the required scope. Alternatively, prove the stronger positive Schur budget beta>0 and epsilon^2<=mu beta on all relevant support scales. Neither family has been supplied in this increment. The package makes the missing family precise; it does not rename its existence as an achieved theorem.
