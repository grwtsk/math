# Actual Liouville spectral arithmetic: admitted zero-free bound, signed-energy return, and the remaining RH-strength gap

Local mathematical attribution: grwtsk contributors. Investigation date: 2026-10-31.

**Scope and status.** This is a source-preserving mathematical and literature
review, not a new Lean proof or an unconditional RH theorem. It identifies
specific externally checked arithmetic information and proves its mathematical
transport to the complete ORIGINAL signed causal energy. The classical
zero-free-to-summatory bound and weighted Plancherel arguments are analytical
dependencies and have **not** been formalized or verified in the local Lean
dependency closure. The all-positive-rate bound remains OPEN.
No native verifier, scheduler or automation is dispatched.

## 1. Exact original arithmetic source, no normalization changes

Work with positive integer labels n and the unchanged
`CCC.pickupResponse n u` from
`GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean`
(blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`):

    r_n(u) = 2 max(n^(-1/2) - exp(-u/2), 0), n>=1.

The Liouville waveform and energy are literally
`GRWTSK.NumberTheory.LiouvilleCausalEnergy.waveform` and `energy`
from `LiouvilleCausalEnergyTarget.lean` (blob
`a00aaa07c067b4c88203372870b5d5d151de0de4`):

    F_lambda(u) = sum_{1<=n<=exp(u)} lambda(n) r_n(u),
    H_lambda(T) = integral_0^T |F_lambda(u)|^2 du, T>=0.

For N>=1 and T=log N the original complete Gram is

    H_lambda(log N) = D_N + 2 A_N,

where the diagonal D_N>=0 and A_N is precisely
`LiouvilleDoubleAbelCausalKernel.positiveGapAggregate N` from
`LiouvilleDoubleAbelCausalKernel.lean` (blob
`b102b4af07b0a1001424b084101c2cc16077181a`).
Both orientations of every off-diagonal sign are retained.
The additive zero-boundary source proof candidate
`LiouvilleDoubleAbelBoundaryClosure.lean` (blob
`54dc35f79844d1fbfc59f5b408f7e06039c0e812`) identifies A_N
with the full signed Omega-weighted rectangle sum without an
arithmetic hypothesis; it has not been locally compiled.

The `LiouvilleSquareDivisorReverseCounting.lean` source candidate
(blob `feae1ca93e3a21ebc033da05e14fe1e2f77c6b2d`) and
`LiouvilleSquareDelaySharpness.lean` (blob
`02d321b127a1a1020a9312f0c15fdb4b4d71e737`) preserve the
same response and do not themselves give arithmetic cancellation.

## 2. Actual arithmetic input: an externally checked Dirichlet nonvanishing theorem

The earlier OpenAI September 30, 2026 `7/8` theorem is superseded
numerically by a stronger externally accepted tracker contribution.
The merged submission at immutable tracker revision
`fc2f46afbfda62351055d3c12fcacd4f6916cc63` is:

https://github.com/GTimG/QuasiRiemannTracker/pull/99

Submitted exact theorem:
https://github.com/GTimG/QuasiRiemannTracker/blob/fc2f46afbfda62351055d3c12fcacd4f6916cc63/submissions/2026-10-30-positive-reserve-selected-gap/src/Candidate/Main.lean

    theorem Candidate.bound {q : Nat} [NeZero q]
      (chi : DirichletCharacter Complex q) {s : Complex}
      (hs : (8733819666133/10000000000000 : Real) < s.re)
      (hpole : not (chi=1 and s=1)) :
      DirichletCharacter.LFunction chi s != 0

In ordinary notation this states Dirichlet nonvanishing, including
the Riemann zeta special case, on Re(s)>theta_* where

    theta_* = 8733819666133/10000000000000
            = 0.8733819666133.

The PR merged October 30, 2026. GitHub check-runs for submission
head `9e17ac75d786905195f5f87aa8e15496c8a9bfc0` showed
`verify (positive-reserve-selected-gap)` SUCCESS (2026-10-30
12:42:44 UTC), and `admission` SUCCESS (12:43:46 UTC).
The verify-job step explicitly labeled `Check the canonical theorem
with Comparator and all three kernels` completed successfully.
References:
https://github.com/GTimG/QuasiRiemannTracker/actions/runs/41049486345/job/124042157149
https://github.com/GTimG/QuasiRiemannTracker/actions/runs/41049486345/job/124068281808

This is independent EXTERNAL checker evidence. No import of that
theorem into `grwtsk/math`, new local compilation, fresh kernel
replay, expected-type audit or transitive axiom audit occurred here.
Newer PR #100/#101 were still open when inspected, and are not used.

## 3. Source-exact arithmetic-to-spectral transport

Write L(x)=sum_{1<=n<=x} lambda(n). The elementary incidence reversal

    F_lambda(u) = integral_1^(exp u) L(x)*x^(-3/2) dx,  u>=0,

follows by integrating x^(-3/2) first and interchanging a finite
signed sum and a finite real integral. This is an EXACT identity,
independent of zero-free information.

The classical zero-free-half-plane-to-summatory estimate is a
separate **analytic transfer lemma**: if theta>1/2 is fixed and
zeta(s)!=0 for Re(s)>theta, then for each eta>0,

    L(x) = O_eta(x^(theta+eta))  (x>=1).

This uses the Dirichlet series zeta(2s)/zeta(s), standard
reciprocal-zeta bounds in a fixed zero-free half-plane, and
Perron/contour summation. It is NOT proved by the Lean source
reviewed above. The pole of zeta(2s) at s=1/2 lies to the left of
the chosen theta>1/2, and must not be forgotten when taking a
limit theta->1/2.

Integrating x^(theta+eta-3/2) gives

    F_lambda(u) = O_eta(exp((theta-1/2+eta)*u)).

Therefore for every epsilon>0,

    H_lambda(T) = O_epsilon(exp((2*theta-1+epsilon)*T)),
    for all T>=0.

At the tracker theta_* this has exponent

    alpha_* = 2*theta_*-1 = 0.7467639332266.

Unlike an unweighted second-moment model, this estimate applies to
the actual Liouville waveform with original source coefficients.
No pointwise rectangle-bound hypothesis is added. It is a **fixed**
power gain, not all-positive-rate control.

## 4. Exact frequency distribution and direct complete-signed return

For complex z with Re(z)>1/2, direct integration of each original
positive-index causal response gives

    integral_0^infinity exp(-z*u) r_n(u) du
      = n^(-z-1/2)/(z*(z+1/2)).

Absolute convergence gives the source-specific initial Laplace identity

    Phi_lambda(z) = Laplace[F_lambda](z)
      = zeta(2*z+1)/(z*(z+1/2)*zeta(z+1/2)).

Using the stated summatory estimate, the Laplace integral extends
holomorphically to Re(z)>theta_*-1/2; the displayed quotient agrees
there by analytic continuation and zero-freeness. The extension
**does not** establish anything at Re(z)=0.

For every fixed damping sigma>alpha_*, define the actual energy
Laplace moment

    Q_lambda(sigma)
      = integral_0^infinity exp(-sigma*u)|F_lambda(u)|^2 du.

It is finite, since one can choose eta so that
2*(theta_*-1/2+eta)<sigma. Weighted Plancherel on the zero-extended
function exp(-sigma*u/2)F_lambda(u) gives the exact identity

    Q_lambda(sigma) =
     (1/(2*pi))*integral_R
      | zeta(1+sigma+2*i*t) /
       ( (sigma/2+i*t)*((1+sigma)/2+i*t)
         *zeta((1+sigma)/2+i*t) ) |^2 dt < infinity.

This **does** constrain the actual signed arithmetic spectral
distribution: the entire zeta-weighted density, not just a generic
delay-operator norm, has a finite total mass for sigma>alpha_*.

For every N>=1, positivity of the original full energy and
nonnegativity of the actual diagonal give the source-preserving
one-sided return

    A_N = (H_lambda(log N)-D_N)/2
        <= (1/2)*H_lambda(log N)
        <= (1/2)*N^sigma*Q_lambda(sigma).

Thus an actual, externally supplied arithmetic theorem yields a
complete signed-double-Abel upper bound for EVERY sigma>alpha_*,
with the exact finite constant Q_lambda(sigma)/2. It does not
bound each rectangle, and it retains every signed pair.

The spectral identity and the extension arguments are mathematical
derivations in this review, NOT locally Lean-checked theorems.
The existence/size of the spectral integral at smaller sigma is the
remaining genuinely arithmetic obstacle.

## 5. Pole obstruction and why all-positive-rate would prove RH

Let rho=beta+i*gamma be any hypothetical nontrivial zero with beta>1/2.
Then z0=rho-1/2 has positive real part; the factor
zeta(2*z0+1)=zeta(2*rho) is nonzero and finite because Re(2*rho)>1.
Neither z0 nor z0+1/2 vanishes. Hence Phi_lambda has a genuine pole
at z0 (with the multiplicity of the zeta zero).

If H_lambda(T)<=C_epsilon*exp(epsilon*T) for EVERY epsilon>0,
then for every sigma>0 the complete energy moment Q_lambda(sigma)
is finite. Cauchy-Schwarz makes the literal Laplace transform
holomorphic for all Re(z)>0. It must coincide with Phi_lambda on
Re(z)>1/2, and hence throughout their mutual domain by uniqueness
of analytic continuation. This excludes the pole z0.

Thus the all-positive-rate Liouville causal energy target implies
zeta zero-freeness in Re(s)>1/2 and hence RH by the functional
equation. Conversely, the classical RH summatory estimate
L(x)=O_epsilon(x^(1/2+epsilon)) implies the same all-rate energy
bound by the physical-time primitive. The original target is
therefore an RH-strength statement. A theorem excluding zeros
only in Re(s)>theta_*>1/2 cannot close it.

No zeta zero off the critical line is assumed to exist: this is a
conditional pole-obstruction argument, not a counterexample to RH.

## 6. Independent search-pruning calculation: fixed/subpower gaps

For T=log N>=0, positive m and g, the unchanged response satisfies
0<=r_n(u)<=2/sqrt(n) on 0<=u<=T, so the original kernel satisfies

    0<=K_T(m,g)<=4*T/sqrt(m*(m+g))<=4*T/m.

Let A_(N,<=G) be the ORIGINAL signed positive-gap aggregate with
the exact mask m+g<N and only 1<=g<=G. Because |lambda(n)|=1 for
positive n, the complete signed finite sum has the unconditional
absolute bound

    |A_(N,<=G)| <=4*T*G*sum_(m=1..N)(1/m)
                  <=4*T*G*(1+T).

In particular ANY G(N)=N^(o(1)) accounts for only N^(o(1))
of the positive-gap half-energy, with no Chowla estimate.

Hence the modern logarithmically averaged two-point Chowla
estimates on fixed, polylogarithmic or subpower shift sets
do not by themselves resolve the unbounded collection of
macroscopic gaps. In particular the arXiv work by Jizhou Guo,
`Logarithmic Chowla Correlations Across All Shift Scales`,
https://arxiv.org/abs/2608.23500, controls logarithmically
weighted correlations outside exceptional shift sets; it does
NOT supply the complete source-weighted, ordinarily averaged
signed aggregate at the all-positive-rate scale.

This calculation does not say that high gaps cannot cancel.
It identifies the missing simultaneous arithmetic control and
prevents rebranding a small-shift correlation estimate as an RH
return.

## 7. What is and is not established

**Established as mathematical analysis with externally reported
checked arithmetic premise:** a fixed uniform spectral damping
range sigma>0.7467639332266, a source-faithful frequency integral,
and a one-sided upper bound for the COMPLETE signed double-Abel
aggregate at every such exponent.

**Unconditionally elementary:** source response inversion,
the finite-positive-gap absolute estimate for subpower gaps,
and the precise pole obstruction.

**Not established:** global Q_lambda(sigma) finiteness for
0<sigma<=0.7467639332266; an all-positive-rate upper bound for
the original energy; any RH-strength arithmetic cancellation,
or the canonical Riemann Hypothesis.

**Formal evidence and status:** no new Lean declaration is
published by this document. Existing source proofs remain
SOURCE_PROOF_CANDIDATE. For a future Lean formalization of the
new arithmetic-to-spectral bridge: COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. The checked tracker result
is external evidence at its own exact source revision; it is
not transferred as a local proof receipt.

The immediate next arithmetic obligation is not another
equivalent norm or kernel representation. It is an
independent bound extending Q_lambda(sigma)<infinity to
all sigma>0, or a directly source-equivalent estimate of the
full signed macroscopic-gap aggregate, with a noncircular
original-source proof. The known fixed theta_* is genuine
progress but insufficient for that extension.
