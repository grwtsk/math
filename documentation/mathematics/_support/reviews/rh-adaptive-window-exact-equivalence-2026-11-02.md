# Adaptive RH sampling and the original arithmetic frontier: exact equivalence

Local attribution: grwtsk contributors. Date: 2026-11-02.

**Disposition:** Source mathematical proof candidate; no observed Lean compilation,
Meta execution, fresh kernel replay or transitive axiom audit. This review
records deductions from existing checked-in Lean *statements* and independently
inspectable mathematical arguments; it does not promote their verification.

## Problem, correction and noncircular result

The predecessor `PickupAdaptiveDyadicWindow.lean` introduces an apparently
weaker one-good-index-per-window criterion than the long-standing
`DyadicBirthBound`. The gap is genuine for arbitrary unrelated scalar sequences,
but NOT for the original signed arithmetic source: energy is nonnegative and
monotone, the diagonal is polynomially bounded, and original endpoint and
signed off-diagonal differ by a uniformly bounded quarter-unit remainder.

Consequently, the new candidate theorem
`dyadicWindow_iff_original_dyadic` establishes

```
  DyadicWindowBirthBound ↔ DyadicBirthBound.
```

This avoids overstating a sampling reformulation as new Möbius cancellation.
The implication right-to-left chooses k=j. For the other direction, the
`PickupAdaptiveDyadicWindow` monotone-energy theorem turns every requested
rate-dependent favorable window into all-positive-rate control of the true
`pickupEnergy`, without discarding the diagonal or quarter-unit term. The
existing equivalence of source `pickupEnergy`/signed `pickupCross`, endpoint
quarter-unit comparison, and all-grid/good-scale correspondence return the
same original all-index dyadic birth condition. There is no RH assumption in
this equivalence; the arithmetic growth premise remains open.

The new `dyadicWindow_iff_energy_subexponential` and
`dyadicWindow_iff_energy_abscissa_zero` exhibit the same source's analytic
consequences. The latter does not assert zero-damping integrability.

## Original physical/sofic observation: no free arithmetic credit

The original `PhysicalMoebiusBitGramReturn` identity is, for every stream,

```
  pickupCross(T) = observedPacket(p,chart,T,stream)
                 + signedReadoutDefect(p,chart,T,stream).
```

The `MoebiusSoficDefectLanguage` source proves chart-transport invariance for
certified lower edges but retains the original source-minus-readout defect;
missing or mislabeled two-bit records are never set to zero by convention.

The new `physicalWindow_iff_original_dyadic p` is a source-level theorem
candidate. Forward transport applies the full absolute readout defect and the
certified path allowance at each chosen dyadic index, plus the quarter-unit
endpoint error. Reverse transport uses the actual `encodedStream p` carrying
the original arithmetic bits, the empty certified chart path, and two existing
exact identities: zero initial defect and source packet equality. The reverse
comparison explicitly pays two quarter-unit inequalities with a total +1/2
constant, absorbed by the rate-dependent exponential bound. This does NOT
claim a physical decoder computes the original Möbius bits by independent
experimentation: `encodedStream` is defined from original source arithmetic.

Thus the physical criterion is another representation of the same unsupplied
signed arithmetic growth, not a new proof of RH or a shorter original premise.
The result cannot be transported to an arbitrary sofic similarity graph:
certified edges, original source indices and source-return proofs are required.

## Source identities and closely related methods

The inspected original baseline is `grwtsk/math@498998b4bb6e65bc90459843016d8fbc0395806e`, with separate current-root
Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
The predecessor adaptive modules were published at `34efe627c3f33be82a3f9b1d8a79c1bd87be5899` (pin blob identities at the exact
replay commit). Relevant original modules and their inspected blobs:

- `PickupDyadicEndpoint.lean` — `bf1d3ccbbe7a49033fdff0ab11176d589a1a7f31`;
  birth-sum equality, all-index bound and canonical conditional RH return.
- `PickupEndpointQuadrature.lean` — `2606536c56bdcb33d120aeddfbcbeef793e31ba1`;
  original signed endpoint error `≤1/4` and exact signed curvature.
- `GoodScaleEnergyCriterion.lean` — `ca3ae4975b20cf796a167308a9e87546c6001c41`;
  monotone cumulative square energy and transfer to RH.
- `EnergyAbscissa.lean` — `c1f86b43daefd7fbb8cfc4254d6888c410d051d9`;
  zero convergence abscissa and all-positive-rate square energy.
- `GoodScaleSubexponential.lean` — `42840f11cb97d75b697f064a2d1b5f38b732ca6c`;
  `SubexponentialOn`, monotone fill and affine coverage.
- `ArithmeticGridSubexponential.lean` — `fb5f8510af5d66ea490f31f05302c0f7153d1a66`;
  real-time dyadic grid and exact grid/good-scale identification.
- `PhysicalMoebiusBitGramReturn.lean` — source `pickupCross_eq_observed_add_defect`;
  the two-bit physical stream is not an arithmetic oracle.
- `MoebiusSoficDefectLanguage.lean` — `25ddd6ab70d5e41da0334752431998b7dfd7ef18`;
  original chart-transfer readout and retained complete signed defect.
- `MoebiusQuantitativeMertensAbsoluteAbel.lean` — `b2fe063451f58ff9b892aa164d780bd20279192e`;
  a classical log-power arithmetic input explicitly outside the pinned Lean proof,
  yielding an exponent-one upper envelope, not an all-positive-rate bound.
- `MoebiusPR103ExactEnergyAbscissa.lean` — `9a4ed819c1bb43e016f831d1f159fe1fd2a595eb`;
  a conditional finite positive convergence-abscissa upper bound, not zero.
- `PickupOptimizationGap.lean` — `814665d04fa3e7ea23c4e85977a17f0c3108d447`;
  an exact finite spin-configuration objective, distinct from the numerical
  shortest-certified-path problem in the sofic graph.

All those module statements retain their existing (mostly source-only / NOT_RUN)
verification scope; an import or a theorem name does not establish native replay.

## Adversarial and mathematical scope

The proof requires monotonicity of the ORIGINAL nonnegative square energy; a
freely chosen endpoint sequence may have favorable windows but arbitrarily
large values at intervening indices. Thus the generic criterion for arbitrary
sequences is not claimed equivalent. The source-specific equivalence is
**conditional on the existing exact energy and endpoint identities**, which
are imported and must pass native verification at the selected commit.

The physical converse is a representational check: the idealized encoder
already knows each original `μ(n)` bit. Treating it as independent physical
cancellation or measurement would be circular. Source uncertainty must keep
its full signed defect; setting it to zero for an imperfect stream is invalid.

Neither a finite graph shortest path, positive Mertens/PNT logarithmic savings,
a finite zero-height check, nor a physical observer shift proves the open
all-positive-rate arithmetic estimate. In particular neither
`DyadicWindowBirthBound` nor `PhysicalWindowCertificate p` has an independently
established mathematical witness in these sources.

## Verification and next obligation

The new source file contains no `sorry`, `axiom`, or untrusted logical reflection.
The source proof candidates need exact pinned root Lean compilation; separate
expected-theorem types; fresh kernel replay and transitive axiom audit; and an
independent assessment of the original arithmetic and physical source mappings.
The toolchain was unavailable in the current authoring environment, so all
native checks remain **NOT_RUN**. Finite symbolic tests, if run, cannot upgrade
these facets.

**Single next RH arithmetic obligation:** prove an original-source, all-positive-rate
signed endpoint/birth estimate (equivalently its adaptive-window form) without
assuming RH, its equivalent energy criterion, or the missing cancellation in a
free proof field. A new lower bound on the existing geometric optimization or
an exact graph representation is useful only after an independent signed
source comparison identifies that arithmetic supplier.
