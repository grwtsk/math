# Universal waveform source port and exact Möbius specialization

Date: 2026-11-02. Classification: source-level Lean proof candidates; no native Lean compilation, fresh kernel replay or transitive axiom audit has been executed. Original `grwtsk/math` definitions and RH completion criterion are unchanged.

## Requirement: accept ANY ordinary waveform as input

The fundamental input is **not** a Möbius coefficient vector, a two-bit record, an elliptic torsion class, or a finite collection of chart samples. It is the unrestricted function

`UniversalInput (Time : Type u) (Amplitude : Type v)` with `source : Time → Amplitude`.

No typeclass or assumption is required to construct this input. Time can be `ℝ`, a discrete sample clock, a multidimensional spatial coordinate, or another typed domain. Amplitudes can be real, complex, finite-state, symbolic, or other types. `UniversalInput.ofFunction` is an exact inclusion; `ofFunction_source_return` proves no source information is altered by wrapping. Waveforms are neither normalized, discretized, rounded, truncated nor assumed to come from `ArithmeticFunction.moebius`.

For a time chart `g : Chart → Time`, `input.pullback g` reads the **same source** at `g x`. This map need not be invertible; no inverse is inferred. If a genuine `Equiv` is provided, `pullback_equiv_return` proves lossless round trip. This supports circle/gauge charts without confusing chart coordinates with original arithmetic indices or moduli.

When amplitude is an additive commutative group, any observation has exactly the signed defect `source(t)−observed(t)`. The source return identity is `observed(t)+defect(t)=source(t)` with **no approximation**. The theorem is also available after arbitrary encode/decode. Missing observation retains the *whole* source as defect. For real squared observations, the exact pointwise identity explicitly retains both mixed source/error orientations and the error-error square; no sign or cross term disappears.

An arbitrary real waveform's `realEnergy` is an OPTIONAL integral operation. `EnergyAdmissibleOn` requires interval-integrability of its square. Raw input does not imply this property. The complex-energy variant uses `Complex.normSq`. Waveforms such as `w(t)=exp(t²)` show that no universal subexponential-energy theorem can hold for arbitrary sources: for large T, `∫₀ᵀ exp(2t²) dt ≥ exp(2(T−1)²)`.

An optional `indexedSynthesis` accepts **any** finite inventory-index type, any time-dependent finite inventory, any coefficient function and any atom waveform, yielding another raw real input. A completely arbitrary waveform need not have any finite-index representation, and no such representation is assumed.

## Exact arithmetic specialization, separate from the universal constructor

`MoebiusUniversalWaveformReturn.lean` imports the generic source port and the existing original `FiniteResponseSum.lean`. Its optional `arbitraryCoefficientWaveform c` uses the exact old causal atom `pickupResponse`, the exact integer inventory `Finset.Icc 1 ⌊exp T⌋₊`, and ANY `c : ℕ → ℝ`. The ORIGINAL Möbius specialization is explicitly `originalMoebiusWaveform = ofFunction wholePickup`, not a default imposed on other inputs.

The theorem `moebiusCoefficientWaveform_eq_original` applies the **existing**, unchanged source theorem `wholePickup_response_sum` (for T≥0). It proves that using the original Möbius coefficients returns exactly the old `wholePickup`. `realEnergy_original_eq_pickupEnergy` identifies the previously defined Möbius energy, not a new spectral proxy.

`arbitraryOrderedCross` accepts arbitrary real coefficients and an arbitrary kernel, while retaining all ordered off-diagonal pairs. Specializing coefficients to `moebiusReal` and kernel to the original `pickupResponseGram` gives `pickupCross` by definitional equality. For arbitrary observed coefficients, the source is the observed cross plus `orderedCrossDefect`; the expansion explicitly retains **both** ordered mixed-error terms and the error-error term. No elliptic, physical, sampling, or geometric transform may delete this signed remainder.

The physical two-bit Möbius codec remains a **specialized** encoding of `−1,0,+1`, whose canonical encoder reads the original μ(n). Two bits cannot provide a lossless universal encoding of arbitrary real/complex waveform amplitudes. The universal input therefore lives *above* such specialized codecs, whose exact decoding or signed defect must be proved when used.

## Verified source dependencies and current status

Inspected `grwtsk/math/main` at `d0a79ab50984c2752f960b3406e8f34bf53d63be`:

- `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean`, blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`: immutable original `wholePickup`, `pickupResponse`, `pickupEnergy`, ordered `pickupCross`.
- `GRWTSK/MeasureAndIntegration/FiniteResponseSum.lean`, blob `15402baec3be3c090a23f9ac1943124e16357dd0`: `wholePickup_response_sum` at nonnegative time and full signed energy/Gram identity.
- `GRWTSK/MeasureAndIntegration/CausalResponseGram.lean`, blob `a24171f4415963e35930b7e21598cabd5c063c2d`: pre-existing arbitrary finite signed coefficient source for a *distinct* response model. It is not silently substituted for the RH pickup.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/PhysicalBitWindowReturn.lean`, blob `78c6e2233834912b2924eccf124cf05230099ecd`: already has a generic real `clockDefect`; this source generalizes the raw input itself to arbitrary time/amplitude types.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/PhysicalMoebiusBitGramReturn.lean`, blob `67cbc92ee2dec824d0a5c2930f0f45671dad61a9`: original Möbius sign observer and complete signed packet defect.
- Pinned compiler `leanprover/lean4:v4.34.1`, toolchain blob `ba8ebf2dbaf6a668cd2a0e086186d6d569b69ff5`; no toolchain/Mathlib migration.

The two new files are additive, with no edits to the original source definitions and no added `sorry`, `axiom` or `unsafe` declarations in a static scan. The source proof scripts are **NOT** kernel-accepted until the pinned native compiler, expected theorem types, fresh kernel replay, complete transitive axiom footprint and dependency closure have been checked. No native Lean/Lake/elan executable or authorized managed Noe replay environment was available during this construction.

## Independent finite diagnostics and falsification checks

A separate exact Python/`fractions.Fraction` reference tested raw rational, complex, and symbolic sample values, bijective clock roundtrips, absent and lossy observations, and arbitrary asymmetric signed ordered kernels with both original and observed coefficient vectors. It passed 27 raw sample checks, 9 chart returns, 18 signed pointwise residual checks, **941** full signed Gram defect expansions, and 15,232 original ordered-pair terms, including both positive and negative signed defects. This is diagnostic evidence only; it does not check Lean elaboration or quantify over infinite waveforms.

Script: `universal_waveform_port_preflight.py`, SHA-256 `89c26add64114f4fa3adc17b1995732eb45f566d16a324e1ec802ef49ea4ba8f`.
Result: `universal_waveform_port_preflight.json`, SHA-256 `3bdde079eadd280a7e81b0f6420499950fdd73a07b3662a1dbbcdaf57b09c26d`.

## RH boundary

This makes **waveform selection universal** but deliberately does not promote arbitrary inputs to the canonical arithmetic source of RH. The endpoint estimate and the fixed-scale all-positive-rate arithmetic bound remain obligations specifically for the original Möbius-indexed `wholePickup` and `pickupCross`. Uniform quadratic-energy growth is false for arbitrary waveforms. Source-preserving gauge, geometric, spectral, elliptic, physical-bit, and RS transports must supply their own measured return and quantitative residual estimates. The exact signed arithmetic cancellation target is still OPEN.
