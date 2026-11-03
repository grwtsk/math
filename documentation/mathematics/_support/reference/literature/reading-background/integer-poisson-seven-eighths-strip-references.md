# Seven-eighths integer Poisson frame: source and literature ledger

Local mathematical attribution: grwtsk contributors. Date: 2026-11-01.

## External analytic input

- OpenAI, *The Quasi-Riemann Hypothesis: A Zero-Free Half-Plane Re(s)>7/8*,
  30 September 2026.
  - Repository path:
    `openai/math/preprints/The-Quasi-Riemann-Hypothesis-September-30-2026/`.
  - The publication states zero-freeness of the Riemann zeta function in
    `Re(s)>7/8`.
  - External proof replay and local transitive audit are `NOT_RUN`.

## Repository sources

- `CanonicalZeroDivisor.lean`
  - canonical nontrivial-zero subtype;
  - actual finite analytic multiplicity;
  - critical-strip location.
- `PositiveHeightCountDeficit.lean`
  - positive-height finite head and multiplicity count;
  - critical reflection at fixed positive height.
- `IntegerPoissonZeroFrame/NearestGeometry.lean`
  - nearest-integer frequency and distance at most one half.
- `IntegerPoissonZeroFrame/OptimalAbscissa.lean`
  - open-critical-strip optimum `sigma=(1+sqrt 2)/2` and centered allowance
    `1/4`.
- `IntegerPoissonZeroFrame/PadicCertificates.lean`
  - exact family identity between prime-window energy and four times centered
    packet energy.

## New finite result

Conditional only on the visible symmetric strip proposition,

```text
16 * D_Z <= 25 * E_Z^(7/8).
```

The one-zero threshold is `E_A<32/25`; the centered p-adic threshold is
`8/25` after the independently required zero-to-prime source comparison.

The first outer half-unit collar can contribute `64/25` from one reflected
pair, so an untruncated completed-log-derivative comparison cannot omit its
boundary correction.
