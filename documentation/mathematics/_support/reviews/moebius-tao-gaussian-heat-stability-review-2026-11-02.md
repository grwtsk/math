# The original signed Möbius waveform as a Gaussian log-frequency heat stability model

Date: 2026-11-02. Repository: grwtsk/math. Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. Historical Tao/Rodgers and other cited original research retain original authorship. This increment is SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

## Requested cache/source extraction and inspection limits

The separate machine-readable heat cache ledger records 16 directly inspected or historically pinned relevant source modules, 12 classified connection edges, the canonical actual Möbius source, primary mathematical literature, current main-path blockers and a finite diagnostic. It includes the existing typed prime/source arithmetic, source-specific decoder error budgets, historical compensated Fourier signed-heat modules, CM full-residue detector, finite graph/Hodge heat references, source-centered log Green comparison, and Rodgers–Tao issue #170/#193.

The user-provided Project source notes (Review RH Proof Paths.txt and Rewrite Mathematical Formalization Plan.txt) identify the established unmodified arithmetic return, endpoint five-moment signed target and the open all-positive-rate cancellation problem. Their wording is used as context; private Project file bytes are not dumped into public GitHub.

Historical cached sources:
- GRWTSK/ProbabilityTheoryAndStochasticProcesses/SignedFiniteTimeHeatOfTheActualCompensatedSource.lean, blob bf8f6c2db3fb46458c0b91d50e6c7c38d01dce79;
- organized SourceSignedHeat.lean, blob 8411695f30cbf8b66b8854b856c711e1b254b2ae;
- ExactFiniteHeatRemainderAndItsAbsoluteMassBoundary.lean, blob 713359410b20ea65daf40908ff260b90aac19816;
- organized SourceHeatBoundaries.lean, blob 81c9118aa4eacdfdbb69db2274d7fc8d2608e0c9.
These use an odd signed Gaussian filter of a DIFFERENT compensated Fourier symbol k:
   signedHeat(k,s)=integral k(x)*exp(-s*k(x)^2) dμ(x),
   signedHeatRemainder = integral k(x)*(1-exp(-s*k(x)^2)) dμ(x).
The cache source records an exact signed identity for its own compensatedSourceSum and a SEPARATE unsupplied UniformSignedHeatRemainderUpperBound. Its direct imports FormalResearch.RiemannHypothesis.SourceSignedHeat and SourceSignedPortControls could NOT be fetched at those current main paths. The organized variants explicitly say organization_only_uncompiled, not native accepted theorems. We do NOT import them as a trusted current-math dependency; instead the new finite cache bridge independently proves only the finite Gaussian algebra and an exact specialization to the actual source.

The historical rational/graph heat path GRWTSK/DifferentialEquationsAndDynamicalSystems/HeatRicciHomology/... was NOT_FOUND on current main, although issues #1327/#1332/#1342–1347 pin historical blobs under earlier Lean 4.33.0. Those rational explicit-Euler graph steps are NOT the exact continuous heat semigroup nor the Möbius response Gram; no missing file bytes or toolchain-qualified import is invented. The current RodgersTaoEulerTransport wrapper is merely a sourced Euler transport contract, not analytic heat flow. The current CenteredMobiusLogGreenEnergyTransfer source is a separate L2 norm comparison with its own deterministic centering residual, not a proved heat intertwiner.

## External Rodgers–Tao normalization: exact contrast and nonclaims

Brad Rodgers and Terence Tao, The de Bruijn–Newman constant is non-negative, Forum of Mathematics, Pi 8 e6 (2020), DOI 10.1017/fmp.2020.6, arXiv:1801.05914, established the lower bound Λ_DN>=0. The actual theta kernel deformation is
    H_t(z) = integral_(0..infinity) exp(t*u^2)*Phi(u)*cos(z*u) du,
    H_0(z) = xi(1/2+i*z/2)/8,
    partial_t H_t = -partial_z^2 H_t.
It is a BACKWARD heat equation in deformation time t. The negative-time branch t=-s, s>=0, has the positive diagonal multiplier exp(-s*u^2). In the alternative negative-time arithmetic Dirichlet-series convention discussed in repository issue #170 and in Dobner's 2021 work, t=-4*s gives exp(-s*(log n)^2). This exact elementary MULTIPLIER identification does not equate the theta kernel u to log n or identify H_t, its zeros, the original zeta reciprocal and the actual Möbius pickup; a source-intertwiner, tail and zero-space theorem is missing.

The signed Möbius heat chosen here is a finite, source-preserving MODEL of the smoothing mechanism, not a new assertion about the Rodgers–Tao original xi heat flow or their renormalized logarithmic zero repulsion. A different positive finite Hodge heat Δ=δ*δ or a general graph heat semigroup also needs a genuine original-source reconstruction and metric compatibility theorem before its contraction can be transferred to the signed causal pickup.

## The mathematical definition and exact source reconstruction

Original arithmetic from MertensPrimitive and FiniteResponseSum, unchanged:
    mu(n)=(ArithmeticFunction.moebius n:Z) cast real,
    r_n(u)=2*(n^(-1/2)-exp(-u/2)) if log n<=u, else 0,
    S_T={n:1<=n<=floor(exp T)},
    F_T(u)=sum_(n in S_T) mu(n)*r_n(u)=wholePickup(u), for 0<=u<=T,
    H(T)=integral_(0..T) F_T(u)^2 du,
    X(T)=pickupCross(T) with m!=n, both ordered orientations.

NEW additional heat parameter s>=0 (independent of physical time u and outer T):
    a_s(n)=mu(n)*exp(-s*(log n)^2),
    e_s(n)=mu(n)*(1-exp(-s*(log n)^2)),
    eta_s(n)=abs(mu(n))*(1-exp(-s*(log n)^2)).

Both real and imaginary/gauge readout decisions are separate; none are silently substituted. The full source is exactly the sum of the heated and error waves:
    F_T(u)=F_(T,s)(u)+R_(T,s)(u).
All causal births and n=1 survive. The heat factor at n=1 is one, and the actual zero coefficients at prime squares remain zero. The source-indexed certificate
    abs(mu(n)-a_s(n))=eta_s(n)
is valid at EVERY original endpoint n, no probabilistic sensor model needed.

For T>=0, the preexisting actual positive-radius response wave
    U_(T,s)(u)=sum_(n in S_T) eta_s(n)*r_n(u)
and its positive energy B_s(T)=integral_(0..T) U_(T,s)(u)^2 du
bound the complete signed reconstruction error. Both original and heated signed waveform energies then satisfy source-specific, sign-respecting Young bounds:
    H(T)<=2 H_s(T)+2 B_s(T),
    H_s(T)<=2 H(T)+2 B_s(T).
Only the diagonal positivity of the existing genuine response Gram is used to infer
    pickupCross(T)<=2 H_s(T)+2 B_s(T).
The independently existing endpoint quadrature then gives
    endpointSum(T)<=2 H_s(T)+2 B_s(T)+1/4.
The extra 1/4 is charged EXACTLY once; B_s is a different decoder error.

The finite scalar heat equation d/ds a_s(n)=-(log n)^2*a_s(n) is also a new source proof candidate. The Gaussian coefficient semigroup is exact at each original n:
    exp(-(s+t)*(log n)^2)=exp(-s*(log n)^2)*exp(-t*(log n)^2).
Each multiplier is positive and <=1 for s>=0, so
    sum_(S_T) a_s(n)^2<=sum_(S_T) mu(n)^2.
This positive METRIC coefficient contraction DOES NOT imply a corresponding pickupEnergy contraction, because the physical response Gram has nonorthogonal signed cross terms. At N=2, T=log(2.5), s=0.35 the actual source energy rises from 0.1628679826111917063 to 0.165985668870548319. The full reconstruction error bound holds and cannot be dropped. Nor does coefficient contraction prove real/nonreal zero behavior of any actual xi deformation.

## Genuine improvement: a tiny positive heat time with an unconditional linear error budget

Select a horizon-dependent (but always nonzero) heat time:
    s(T)=exp(-2*T) > 0.
This schedule does not define a single stationary heat flow as T changes; it deliberately keeps the original source and shrinks smoothing rapidly at large horizons.

On each T>=0, for every original n in S_T, 0<=log n<=T, abs(mu(n))<=1, 1/sqrt(n)<=1, and 1-exp(-x)<=x for x>=0. Therefore
    eta_(s(T))(n) <= s(T)*T^2,
    M_(s(T))(T)=sum_(n in S_T) eta_(s(T))(n)/sqrt(n)
         <=floor(exp(T))*s(T)*T^2
         <=T^2*exp(-T)
         <=2,
where the last inequality is the elementary T^2<=2exp(T). The already existing positive-radius theorem then gives the UNCONDITIONAL proposed proof:
    B_(s(T))(T) <= 4*T*M_(s(T))(T)^2 <=16*T.
This linear bound is at every positive exponential rate, for every fixed set of scales, with no Möbius cancellation assumption. It verifies that the smoothing error can be uniformly paid in a true source-specific way for this deliberately tiny positive schedule.

It does NOT make H_(s(T))(T) small. Since s(T)->0 exponentially, the heated coefficient stream approaches the original rapidly, so its signed-energy all-rate condition remains as hard as the original RH-facing arithmetic condition. The new source records an explicit two-way good-scale equivalence and a strictly CONDITIONAL RH theorem taking the heated signed-energy all-rate input on ONE fixed AffineFrequent G. No original all-rate witness, dense long-gap cancellation, or unconditional RH proof is supplied.

## New source modules and expected proof assertions

1. GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusGaussianLogHeatSource.lean
   Git blob e7443337b95b8491492acfa120809f6873f77ef1.
   The finite diagonal heat symbol, semigroup, source error coefficient certificate, exact original sign preservation, coefficient-energy damping, two-moment evaluation and direct two-way causal waveform energy comparison. 23 PUBLIC theorem candidates.
2. GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusFiniteSignedGaussianCacheReturn.lean
   Git blob 3cef389060a3a2c07fa5edeecf42ebff5bae94a8.
   A generic finite odd signed Gaussian filter with exact remainder, oddness under source sign reversal, and exact substitution by the actual finite Mobius pickup. 7 PUBLIC theorem candidates.
3. GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusGaussianHeatStabilityReturn.lean
   Git blob 6ada761844e06d099811f06fea89db897ca1290e.
   Full signed error-energy comparison, actual cross, endpoint correction, complete dyadic residue energy, all-positive-rate conditional energy and canonical RH consumers. 11 PUBLIC theorem candidates.
4. GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusGaussianHeatVanishingSchedule.lean
   Git blob 47291584104530cfdf59475a50c494a821de44a9.
   Source upper inequalities, mass<=2, error-energy<=16*T for s(T)=exp(-2*T), and conditional good-scale/RH consumer. 11 PUBLIC theorem candidates.

## Finite high precision tests: concrete evidence only

Executed a new independent 55-digit mpmath finite diagnostic with original exact integer Möbius coefficients and the original closed time cutoff for N=1,2,3,5,8,12,20,36, extra vanishing-schedule indices through N=64, multiple fixed heat parameters and exact birth-cell integrated square formulas. ALL 9,757 assertions passed. They test:
- full source vs heated+signed error wave at 27 time positions each case;
- exact causal response Gram vs integrated waveform square;
- positive radius vs actual signed error energy; both energy Young bounds;
- original coefficient l2 heat contraction and noncontractive actual signed waveform;
- semigroup, negative-arithmetic-time Gaussian multiplier, original n=1 and squareful zero preservation;
- explicit shrink-time weighted mass <=2 and energy<=16T;
- separate historical odd compensated-symbol finite-filter sign and remainder identities (a DIFFERENT source, not identified with pickupCross).

Transient source script: /mnt/data/moebius_tao_gaussian_heat_preflight_20261102.py, SHA-256 b62ceec3c8a154b6f9761c37a2d90a68191c873012b79c596dc220a0f68bf67b.
Result JSON: /mnt/data/moebius_tao_gaussian_heat_preflight_20261102.json, SHA-256 786019beec695b1890ff553644a78a805f8b671439566883984b4a689b5f3fcb.

These are NOT exact interval arithmetic, a Lean parse, kernel replay, source-aware check of historical unresolved FormalResearch imports, or a proof of unbounded arithmetic growth.

## Explicit native acceptance boundary

Pinned current repository tooling: Lean leanprover/lean4:v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. The local environment has no executable lean, lake, or elan and no installed pinned Mathlib closure. Historical corpus/graph files may have different import/toolchain generations. Only the new self-contained finite-cache module uses the source-specific Gaussian leaf; no unqualified historical FormalResearch import has been introduced.

MUST verify, in order, before claiming Lean/kernel acceptance:
1. Compiler import closure of four new leaf modules on the exact pinned revision; warning-as-error and expected theorem type audit.
2. Exact finite sourceIndex_encode, sign preservation, Gaussian normalization t=-4s, original-time/source-time distinction, original n=1 and squareful zeros, exact source decomposition and two active moment readout.
3. Native signed-error radius algebra, both physical-time signed-energy inequalities, true diagonal-only positivity, dyadic all-parity/nonunit energy and quarter-unit endpoint return; reject any "heat decreases signed energy" claim.
4. Vanishing-schedule nonnegative real inequalities, Nat floor/card, log<=T, sqrt reciprocal, trivial exponential Taylor bound, exact constant <=2 and <=16T; no arithmetic hypothesis inserted.
5. One fixed AffineFrequent G before every positive epsilon; no upgrading of finite heat/zero observations, Rodgers–Tao Lambda>=0, or source equivalence to a proof of RH.
6. Fresh independent kernel checker and complete transitive axiom/sorryAx/generated/private/opaque/unsafe audit, with exact source blobs and native receipts.
7. No root-import promotion, dependency pin change, scheduler/CI execution or foreign repo mutation without separate authority. Passive verification manifests are not execution authorization. The remaining actual arithmetic all-positive-rate heat-observed energy supplier remains OPEN.
