# PR103 modulus-one adapter source ledger

Local mathematical attribution: grwtsk contributors. Date: 2026-11-02.

## External theorem source

- Repository: `GTimG/QuasiRiemannTracker`
- Merge commit: `8b1a0167c8e324099884152181e3fb2206510e88`
- Path: `submissions/2026-11-01-closest-fraction-contact/src/Candidate/Main.lean`
- Git blob: `808d04cec892449707d23e81f94179e2738fdf1a`
- Theorem: `Candidate.bound`
- Exact signature: every positive modulus, every complex Dirichlet character, every complex `s` strictly right of the exact PR103 rational boundary, with `not (chi = 1 and s = 1)`, implies `DirichletCharacter.LFunction chi s != 0`.
- Local status: theorem bytes inspected; not imported or replayed under the pinned `grwtsk/math` toolchain.

## Pinned Mathlib source

- Repository: `leanprover-community/mathlib4`
- Revision: `d13f23b723b8a846827a245b89c10fc7d3f11612`
- Path: `Mathlib/NumberTheory/LSeries/DirichletContinuation.lean`
- Git blob: `89c72580697983d86706cff17ccbea2cee6475a3`
- Relevant theorem: `DirichletCharacter.LFunction_modOne_eq`
- Mathematical role: exact function equality between the L-function of the unique Dirichlet character modulo one and the Riemann zeta function.

Underlying general congruence L-function source:

- Path: `Mathlib/NumberTheory/LSeries/ZMod.lean`
- Git blob: `877b3290807830b2260b8959a1fbfd32a04f196b`
- Relevant theorem: `ZMod.LFunction_modOne_eq`.

## Local repository dependencies

- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvillePR103FixedPower.lean`
  - blob `a0818c6ab66e78e4dafc05ea54acfaa59aec9def`
  - exact external rational threshold and working-rate comparisons.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusStrongFixedPowerPR103.lean`
  - blob `10f2fba05c105c3e80b58ed9632901b5550444d9`
  - zeta-only external proposition, zero-free-to-Mertens bridge interface, fixed-rate consumers, and no-bootstrap obstruction.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPR103ExactEnergyAbscissa.lean`
  - blob `9a4ed819c1bb43e016f831d1f159fe1fd2a595eb`
  - exact strict-above-boundary weighted-energy and abscissa consumers.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusStrongFixedPowerCalculusClosure.lean`
  - blob `c1ba0aabd513e6e2f3955d787ae1e3dbbf8d4ca7`
  - proved source candidates for the local double-integration and strong-packet scalar gates.

## New local source

- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPR103ModOneAdapter.lean`
- Purpose: define a local family proposition matching the external theorem, prove exact specialization at modulus one, and route existing causal-energy consumers through that adapter.

## Scope and nonclaims

The adapter is lossless at the theorem-statement level. It does not replay the external proof, establish the Perron/contour transfer, produce new Möbius cancellation, prove an all-positive-rate endpoint estimate, or prove RH. Compilation and source-bound kernel/axiom verification remain separate obligations.
