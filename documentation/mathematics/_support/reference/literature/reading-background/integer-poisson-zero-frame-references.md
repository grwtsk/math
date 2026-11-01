# Integer Poisson zero frame: source and literature ledger

Local mathematical attribution: grwtsk contributors. Date: 2026-10-31.

## Repository sources

- `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean`
  - canonical nontrivial-zero subtype;
  - actual analytic multiplicity;
  - open critical-strip location;
  - finite height heads.
- `.../PositiveHeightCountDeficit.lean`
  - canonical positive-height head and multiplicity count.
- `.../CofinalTwoUnitEffectiveRateBridge.lean`
  - absolute one-unit residual and cofinal RH return.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/PadicMobiusPrimeWindowSeam.lean`
  - literal von Mangoldt/Möbius logarithmic windows, floor carries, and signed finite transport.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/PadicMobiusCofinalTwoUnitBridge.lean`
  - exact centered large-prime packet identity and conditional count-energy return.

## Upstream mathematical interfaces

- Mathlib `Mathlib/NumberTheory/LSeries/ZetaZeros.lean`: nontrivial zeta zeros lie in the open critical strip.
- Mathlib `Mathlib/Analysis/Analytic/Order.lean`: analytic order and finite multiplicity.
- Mathlib `Mathlib/Algebra/Order/Chebyshev.lean`: finite square-sum/Cauchy interfaces; the published binwise proof avoids the global cardinality loss.

## Scope

The proved finite frame is

```text
64 * D_Z <= 289 * sum_{k=0}^Z P_k^2,
```

with actual analytic multiplicities and canonical positive-height zeros. The result uses only positivity and nearest-integer binning. No external zero-density theorem, random-matrix model, numerical zero list, or RH premise is consumed.

The completed-log-derivative/Poisson representation is a prospective source comparison only. It is not used to claim that the selected arithmetic prime-window family already dominates the finite unknown-zero energy.

The remaining arithmetic threshold is

```text
centeredPacketFamilyEnergy < 32/289
```

after the source-exact zero-to-prime comparison. Both statements remain independently visible.
