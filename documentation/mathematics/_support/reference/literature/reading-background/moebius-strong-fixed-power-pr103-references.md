# PR103 fixed-power causal Möbius source ledger

Local mathematical attribution: grwtsk contributors. Date: 2026-11-02.

## Repository source chain

- `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean`: actual Möbius prefix, velocity, primitive, cumulative energy, diagonal, complete ordered cross Gram.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusStrongPacketEnergyReturn.lean`: exact complete signed strong-packet return to energy, diagonal, Putnam gap, and weak overlap.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusStrongPNTEnvelope.lean`: classical-PNT relative Mertens tail and current rate-one source envelope.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusCausalMertensSpike.lean`: fifth-power reverse exponent map and fixed-rate equivalence targets.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvillePR103FixedPower.lean`: exact external threshold, `newWorkingTheta`, and `newWorkingEnergyPower=2*newWorkingTheta-1`.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PickupEndpointQuadrature.lean`: literal endpoint sum and quarter-unit comparison.
- New source: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusStrongFixedPowerPR103.lean`.

## External fixed zero-free theorem

Joseph Bebel, `Candidate.bound`, merged in `GTimG/QuasiRiemannTracker` at commit `8b1a0167c8e324099884152181e3fb2206510e88`, source
`submissions/2026-11-01-closest-fraction-contact/src/Candidate/Main.lean`, Git blob `808d04cec892449707d23e81f94179e2738fdf1a`.

The theorem gives nonvanishing of every Dirichlet L-function to the right of the exact rational `externalPR103Theta`, excluding the principal-character pole. Pinned Mathlib's `DirichletCharacter.LFunction_modOne_eq` identifies the modulus-one L-function with Riemann zeta. The version/toolchain adapter and local replay remain separate obligations.

## OpenAI comparator

OpenAI, *The Quasi-Riemann Hypothesis: A Zero-Free Half-Plane Re(s)>7/8*, formalization documentation in `openai/math@4eaee87548250b2682affda7d05d947c05554bae`, `lean/docs/003.md` Git blob `cf794e93da2e1a494434153f5b91f2990fe9fd60`.

The 7/8 theorem yields causal energy rates strictly above 3/4. PR103 yields the stricter working rate `newWorkingEnergyPower≈0.7467639332`, reported cleanly as 747/1000.

## Classical analytic bridge

The implication

`zeta nonzero in Re(s)>theta0` and `theta0<theta<1`

implies

`M(x)=O_theta(x^theta)`

is the standard Perron/contour zero-free-to-summatory transfer. The strict margin pays reciprocal-zeta bounds and contour truncation. The new local source names this as `ZeroFreeToMertensPowerBridge`; it is not added as an axiom or claimed locally compiled.

Classical background includes E. C. Titchmarsh, *The Theory of the Riemann Zeta-Function*, second edition revised by D. R. Heath-Brown, and A. Ivić, *The Riemann Zeta-Function*. The exact external theorem supersedes only the numerical zero-free boundary, not the contour-transfer proof obligation.

## Programme boundary

The exact fixed rate is not RH strength. Problem P still requires, on one fixed adequately covering scale set, a bound at every positive exponential rate for the complete signed endpoint or a source-equivalent packet. The scalar reverse/forward round trip worsens every rate below one; stable obstruction ID `rh-fixed-rate-mertens-energy-roundtrip-worsens-v1`.

Compilation, expected-type checking, fresh-kernel replay, transitive axiom auditing, native execution, PR103 adapter replay, and the contour bridge remain NOT_RUN or OPEN. RH remains unproved.
