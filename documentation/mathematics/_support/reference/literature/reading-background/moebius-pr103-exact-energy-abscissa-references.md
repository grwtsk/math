# PR103 exact causal-energy abscissa source ledger

Local mathematical attribution: grwtsk contributors. Date: 2026-11-02.

## Repository sources

- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusStrongFixedPowerPR103.lean`: exact external threshold adapter interfaces, Mertens-exponent to causal-energy rate map, clean `747/1000` rate, and fixed-rate round-trip obstruction.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean`: actual causal square-energy convergence set, its infimum `pickupEnergyAbscissa`, strict-above-infimum integrability, and zero-abscissa/RH-facing return.
- `GRWTSK/MeasureAndIntegration/ExponentialEnergy.lean`: proved transfer from a cumulative energy rate `delta` to square-energy integrability at every strictly larger damping `sigma`.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvillePR103FixedPower.lean`: exact merged PR103 rational threshold and local rational comparison to the chosen working exponent.
- `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean`: unchanged actual Möbius prefix, causal velocity, primitive, energy, diagonal, and complete ordered cross Gram.

## External theorem source

- Repository: `GTimG/QuasiRiemannTracker`
- Merge commit: `8b1a0167c8e324099884152181e3fb2206510e88`
- File: `submissions/2026-11-01-closest-fraction-contact/src/Candidate/Main.lean`
- Git blob: `808d04cec892449707d23e81f94179e2738fdf1a`
- Statement: every Dirichlet-character L-function is nonzero when the real part is strictly greater than the exact displayed rational threshold, apart from the principal pole at one.
- Local status: the modulus-one zeta adapter and local pinned-toolchain replay remain `NOT_REPLAYED`.

## OpenAI comparator

- Repository: `openai/math`
- Revision: `4eaee87548250b2682affda7d05d947c05554bae`
- File: `lean/docs/003.md`
- Git blob: `cf794e93da2e1a494434153f5b91f2990fe9fd60`
- Scope: formalized zeta and Dirichlet-L zero-free half-plane `Re(s)>7/8`, whose causal-energy boundary under the same normalization is `3/4`.

## Classical analytic bridge

The standard Perron/contour implication used here is:

> if zeta has no zeros in `Re(s)>theta0`, then for every `theta>theta0` there is a constant `C_theta` with `M(x)=O(x^theta)`.

This is retained as the named local proposition `ZeroFreeToMertensPowerBridge`. No unrestricted certificate or hidden axiom is introduced.

## New source candidate

- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPR103ExactEnergyAbscissa.lean`
- Companion review: `documentation/mathematics/_support/reviews/moebius-pr103-exact-energy-abscissa-2026-11-02.md`

The source proves conditionally that every damping strictly above

`2 * externalPR103Theta - 1`

belongs to the actual square-energy convergence set, and therefore

`pickupEnergyAbscissa <= 2 * externalPR103Theta - 1`.

It does not claim integrability at the boundary, a zero abscissa, the all-positive-rate endpoint supplier, or RH. Compilation, expected-type checking, fresh-kernel replay, transitive axiom auditing, and native execution remain `NOT_RUN`.
