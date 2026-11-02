# Reciprocal-zeta/Perron bridge source ledger

Local mathematical attribution: grwtsk contributors. Date: 2026-11-02.

## Local repository sources

### New source

- Path:
  `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusReciprocalZetaPerronBridge.lean`
- Purpose:
  regularize the reciprocal at the zeta pole; construct the exact Perron rectangle and contour shift; isolate reciprocal-growth and truncated-Perron inputs; prove the complete exponent/cutoff transfer to the existing `ZeroFreeToMertensPowerBridge`.

### Existing source dependencies

- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPR103ClosureAndCausalBridges.lean`
  - commit at research start: `23fa37bf6f8ef2ef24995d437515e08f1726c773`
  - blob: `4e291485b9a6e203ca8c46ab540de684f1895464`
  - role: exact external theorem signature, modulus-one adapter, finite complex Abel identity, integer-to-real Mertens power transfer, and causal calculus.

- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPR103ModOneAdapter.lean`
  - inspected blob: `050b4f77a7a22acf89268599cbee178f7748f198`
  - role: exact family-to-zeta source comparison and existing PR103 consumers.

- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusStrongFixedPowerPR103.lean`
  - role: `ZetaZeroFreeRightOf`, `ZeroFreeToMertensPowerBridge`, `MertensExponentialEnvelopeAt`, fixed-rate energy and endpoint consumers.

- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusCausalMertensSquareBridge.lean`
  - blob: `be156509d9679a22b52b32d087f87d8449a047ef`
  - role: actual finite Mertens prefix, exact source equality, and finite causal Abel identities.

## Pinned Mathlib sources

Pinned revision:

```text
d13f23b723b8a846827a245b89c10fc7d3f11612
```

- `Mathlib/NumberTheory/Harmonic/ZetaAsymp.lean`
  - blob: `7ff24a8a04888a98f63f34e0acca92e27e8843b4`
  - declarations:
    `ZetaAsymptotics.riemannZeta₁`,
    `ZetaAsymptotics.riemannZeta₁_one`,
    `ZetaAsymptotics.riemannZeta_eq_inv_sub_mul`,
    `ZetaAsymptotics.differentiable_riemannZeta₁`.
  - role: pole-removed entire denominator for the reciprocal.

- `Mathlib/Analysis/Complex/CauchyIntegral.lean`
  - relevant declaration:
    `Complex.integral_boundary_rect_eq_zero_of_differentiableOn`.
  - role: exact rectangle contour shift.

- `Mathlib/Analysis/SpecialFunctions/Pow/Real.lean`
  - relevant declarations:
    `Real.log_le_rpow_div`,
    `Real.rpow_le_rpow_of_exponent_le`,
    `Real.rpow_le_self_of_one_le`,
    `Real.mul_rpow`.
  - role: logarithmic error absorption and half-integer power conversion.

- `Mathlib/NumberTheory/LSeries/SumCoeff.lean`
  - role: comparison source for the existing forward Abel/L-series direction.
  - boundary: it does not provide the inverse truncated Perron theorem needed here.

## External PR103 source

- Repository: `GTimG/QuasiRiemannTracker`
- Merge commit: `8b1a0167c8e324099884152181e3fb2206510e88`
- Main theorem file:
  `submissions/2026-11-01-closest-fraction-contact/src/Candidate/Main.lean`
- Blob: `808d04cec892449707d23e81f94179e2738fdf1a`
- Theorem: `Candidate.bound`
- Statement:
  nonvanishing of every complex Dirichlet-character L-function strictly right of the exact PR103 rational boundary, excluding only the principal-character pole pair.
- Quantitative boundary:
  the theorem supplies nonvanishing. It does not state a lower bound for the L-function or a vertical upper bound for its reciprocal.

Relevant proof endpoint inspected:

- `submissions/2026-11-01-closest-fraction-contact/src/Candidate/Local/Qrh/PositiveGap/BestEndpoint.lean`
- role:
  rational endpoint tuning and final contradiction/nonvanishing return.
- observed boundary:
  no exported reciprocal-magnitude estimate matching `RegularizedReciprocalSubpower`.

## Classical comparison

E. C. Titchmarsh, revised by D. R. Heath-Brown,
*The Theory of the Riemann Zeta-function*, second edition, Oxford University Press, 1986.

Relevant method:

- reciprocal Möbius Dirichlet series on `Re s > 1`;
- half-integer Perron inversion for \(M(x)\);
- contour displacement;
- reciprocal-zeta bounds on vertical and horizontal contour segments;
- conversion to \(M(x)=O(x^{1/2+\varepsilon})\) under RH.

The present source is not a claim of novelty for that classical method. It adapts the mechanism to the exact PR103 boundary, the repository's original Mertens prefix, pole-regularized Mathlib objects, and the causal consumer.

## New declaration inventory

Definitions:

```text
regularizedReciprocalZeta
perronKernel
perronVertical
perronHorizontalCorrection
halfIntegerCutoff
perronHeight
RegularizedReciprocalSubpower
ZeroFreeReciprocalPerronBounds
ReciprocalSubpowerSegmentIntegration
HalfIntegerMertensTruncatedPerron
```

Theorem candidates:

```text
regularizedReciprocalZeta_one
riemannZeta₁_ne_zero_of_zeroFree
regularizedReciprocalZeta_eq_inv_riemannZeta
regularizedReciprocalZeta_differentiableAt
perronKernel_differentiableAt
perronKernel_boundary_rect_eq_zero
perronVertical_shift
integerMertensPower_of_reciprocalPerron
mertensExponentialEnvelopeAt_of_integerPower
zeroFreeToMertensPowerBridge_of_reciprocalPerron
zeroFreeToMertensPowerBridge_of_subpowerPerron
pr103_pickupEnergy_clean_rate_of_perron
pickupEnergyAbscissa_le_exactPR103_of_perron
```

## Hostile comparison

The entire zero-free function

\[
f(z)=\exp(-\exp(-iz))
\]

has

\[
|f(it)^{-1}|=\exp(e^t).
\]

Thus nonvanishing of a generic holomorphic function does not imply polynomial or subpower reciprocal growth. The reciprocal input must use zeta-specific structure.

Stable obstruction identifier:

```text
rh-zero-free-alone-no-reciprocal-growth-v1
```

## Verification status

- ordinary contour and scalar derivation: `WRITTEN/PROVED`;
- source proof candidate: `WRITTEN`;
- Lean compilation: `NOT_RUN`;
- expected declaration types: `NOT_RUN`;
- fresh kernel replay: `NOT_RUN`;
- transitive axiom audit: `NOT_RUN`;
- native execution: `NOT_RUN`;
- reciprocal subpower theorem: `UNPROVED`;
- subpower segment integration in Lean: `NOT_FORMALIZED`;
- half-integer truncated Perron theorem: `UNPROVED`;
- all-positive-rate endpoint supplier: `UNPROVED`;
- Riemann Hypothesis: `UNPROVED`.
