# Source-preserving shape/shell transport of the original Möbius physical stream

Attribution: grwtsk contributors; formalization assistance OpenAI ChatGPT.
Research date: 2026-11-02.

## Exact publication identity

- Source module: [ShapePhysicalBitTransport.lean](https://github.com/grwtsk/math/blob/656ee2ed43f9f9cda7d0f52538fd4c289ae9b3da/GRWTSK/Combinatorics/ShapePhysicalBitTransport.lean)
- Source commit: `656ee2ed43f9f9cda7d0f52538fd4c289ae9b3da`; parent: `216e9a57ad4cf86e77012971bbacb60b1789c38f`
- New source blob: `7f3a2074dbbfb8e72ef16b0196670411867333fb`
- Original lift/lower module: `GRWTSK/Combinatorics/ShapeChangingBundle.lean`, blob `1f4546ac4d33bbc4b7551d40378219850d93965a`.
- Original Hilbert comparator: `GRWTSK/Combinatorics/BanachHilbert.lean`, blob `5e1651b0f94ec3e7fbee24ee6134f00a1e4dfaf7`.
- Original signed source return: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/PhysicalMoebiusBitGramReturn.lean`, blob `67cbc92ee2dec824d0a5c2930f0f45671dad61a9`.
- Original physical two-bit codec: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/PhysicalMoebiusBitCodec.lean`, blob `bbcf43b2274b5a4738321fbdcd995d45deafabb3`.
- Toolchain: Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, from the repository's `lean-toolchain` and `lakefile.toml`.

## Source-exact transport

`ObservedShapeState base k n width` contains the *existing* `ShapeChangingState base k n`, an unchanged `StableBitfield width`, and the full `PhysicalStream` (the original integer-indexed Option of two-tangent records). Its `lift` calls `ShapeChangingBundle.expandWithShell`; its `lower` calls `ShapeChangingBundle.contractOneStep`. The source proof candidate uses both original reconstruction laws for the center and the shell, and the existing `expand_contractOneStep` for the reverse round trip. No independent shell encoding, original-index quotient, alternative Möbius coefficient, or source time window is introduced.

`shift` applies the previously defined `transferStream` to the whole original stream. The written candidate statements `shift_lift` and `lower_shift` make shift commute with expansion and contraction. `completeStreamOn_shift` transports coverage of original-index records; `admissibleStreamOn_shift` transports the separate two-tangent acceptance hypotheses using the original `admissiblePhysicalBitRecord_transfer`. They do not assert admissibility for an arbitrary corrupted record.

`squaredBitDistance_eq_hamming`, `normalizedBitDistance_eq_hamming`, `sphereNumeratorDistance_eq_hamming`, and `isAnchor_iff_squaredNearest` directly consume the *existing* finite bitfield and spherical certificates. Distinct lifted shells leave the bitfield comparator unchanged. No corresponding spectral tensor or general fiber metric is declared or claimed invariant.

The packet and defect are exactly the imported `observedPacket` and `signedReadoutDefect`. The written `pickupCross_eq_packet_add_defect` is the complete original ordered off-diagonal signed Möbius source identity, retaining both pair orientations, original coefficients, source windows, zero coefficients, absent records, and incorrectly indexed samples. `signed_return_lift_shift` preserves *both* packet and signed defect, not only their sum. `packet_lift_shift_encoded` returns precisely `pickupCross` under the explicit actual-source `encodedStream` hypothesis.

## Boundary and outstanding tasks

This is a decorated family with an exact shape lift/lower round trip. It is **not** yet a topological fiber bundle; no projection charts, local trivializations, transition cocycles, or global bundle metric are supplied. The uniform/rand-om comparison and any sphere cusp-limit probability model are not asserted. `AddDissociated.randomisation` is not invoked, because no dissociated-support data are supplied.

The geometric transport alone establishes no new arithmetic cancellation and no upper estimate for the complete original `pickupCross` or `PickupEndpointQuadrature.endpointSum`. The all-positive-rate one-sided bound on adequately covering scales remains an independent arithmetic obligation, as in the existing good-scale RH return. Source preservation should be established before attempting such a quantitative estimate; it cannot replace the estimate.

## Verification facets

- Publication: PASS (file creation and exact blob readback at source commit).
- Static name/reference inspection: performed against the named imported source files; **not** a Lean elaboration or kernel proof.
- Authored `sorry`, `admit`, `axiom`, `native_decide` scan: no hits (noncertifying text scan).
- Pinned `lake env lean GRWTSK/Combinatorics/ShapePhysicalBitTransport.lean`: **NOT_RUN**.
- Expected theorem type inspection: **NOT_RUN**.
- Fresh kernel checking of the complete imported closure: **NOT_RUN**.
- Transitive axiom / opaque / native audit: **NOT_RUN**.
- No source root import or pinned toolchain changed by this publication.

These new statements are source proof candidates, not accepted Lean theorems until the required verification succeeds.

## Actual measured two-bit Hilbert adapter (second additive module)

- [ShapePhysicalBitHilbertComparator.lean](https://github.com/grwtsk/math/blob/82d86ddcf325f0120eae13b2c4181e3b8dc4c028/GRWTSK/Combinatorics/ShapePhysicalBitHilbertComparator.lean)
- Source commit: `82d86ddcf325f0120eae13b2c4181e3b8dc4c028`
- Blob: `0db853091c432ee5892ca133bf7258e225515775`

The first source's arbitrary width bitfield is an attached comparison label, NOT necessarily the bits physically measured in its `PhysicalStream`. The new adapter closes this exact typing gap by defining `signedBitsAsField : SignedBits → StableBitfield 2` and `recordBitfield` from the *existing* `polarizationBit` of the actual presence/sign tangents.

The written `recordBitfield_recordMoebius` and `readRecord_eq_decoded_bitfield` relate the new Hilbert bitfield directly to the original canonical two-bit Möbius encoding. `recordBitfield_transfer` and `recordHilbertDistanceSq_transfer` preserve the exact measured bitfield and its squared finite Hilbert distance under the existing physical shift.

The source readout `indexedBits` is `Option (ℕ × StableBitfield 2)`; thus a valid zero, missing record, and incorrectly indexed record remain distinguishable BEFORE comparison. `indexedHilbertDistanceSq` returns `none` unless BOTH records are present and indexed for the queried original integer. Its available-case value is exactly the two-coordinate Hamming count. The written lift and shift theorems transport both its value and unavailable status unchanged. This is an algebraic comparison, not a new assertion that an arbitrary record meets `AdmissiblePhysicalBitRecord`.

**Verification:** second module was created and read back with the exact blob above. Pinned compilation, expected-type checking, fresh kernel replay and transitive axiom audit remain **NOT_RUN** for BOTH new modules. No new arithmetic cancellation estimate was supplied.

## Finite random-versus-uniform source-index sampling (third additive module)

- [ShapePhysicalBitFiniteSampling.lean](https://github.com/grwtsk/math/blob/a3015deaa56f5990be88775fa8dfad77a0899606/GRWTSK/Combinatorics/ShapePhysicalBitFiniteSampling.lean).
- Source commit: `a3015deaa56f5990be88775fa8dfad77a0899606`; parent `45afa8fc7f42a081cf1f1d087b5e6ce3deea41d1`.
- Source blob: `b71c6837fcc8673f4415a687f554847f7ba1d9fc`.
- Reused existing finite Markov/Gibbs kernel: `GRWTSK/Combinatorics/GraphTheory/FiniteAdmissibleSampler.lean`, blob `e74a253e66c1ee9ab5b6d97440e1fdeee49a54be`. The original `Sampler.probability_nonneg` and `Sampler.probability_row_sum_one` justify its finite random transition law without a stochasticity axiom.

### Finite probability law and exact comparison

For a fixed positive number of slots `N`, choose a source-index map `sourceIndex : Fin N → ℕ`. It preserves the actual integer index at every slot, even when slots repeat the same original index. The selected Markov row gives the one-step sampling law `P(i) = S.probability origin i`; the deterministic uniform reference is `U(i)=1/N`. `uniformSampler` is the existing `Sampler` with all edges admitted and all costs zero; `uniformSampler_probability` gives the exact uniform row, and the existing sampler normalizes it. No independent sequence or limiting sample law is assumed.

For any `f : Fin N → ℝ`, `sampled_sub_uniform_eq_sum` states the exact algebraic difference
```
sampledExpectation S origin f - uniformAverage f
  = ∑ i, (S.probability origin i - (N : ℝ)⁻¹) * f i
```
and `sampled_sub_uniform_abs_le_L1` bounds its absolute value by
```
probabilityL1Gap S origin
  = ∑ i, |S.probability origin i - (N : ℝ)⁻¹|
```
when `∀ i, |f i| ≤ 1`. The quantity is **L1 distance**, not TV distance without the factor of 1/2.

`indexedHilbertDistanceSq_bounds` uses the *actual two measured bits* and the existing Hamming/Hilbert identity to prove that any available indexed squared distance lies in `[0,2]`. `maskedNormalizedLoss` divides an available distance by 2 and gives the **explicitly named masked statistic** value 0 when unavailable. Independently, `unavailableIndicator` records mass 1 for an unavailable observation and 0 for an available one. The original index check is retained; a valid coefficient μ(n)=0 is not the same as absence or a wrong-index record. A correct-index corrupted record can still have a nonzero original-source readout defect, because index agreement is NOT coefficient fidelity.

`random_uniform_maskedLoss_abs_le_L1` and `random_uniform_unavailableMass_abs_le_L1` supply separate finite quantitative bounds for the normalized bit-loss and unavailable-mass statistics. Their lift and shift theorems explicitly preserve both statistics across different shells and the actual Gödel observer shift; they do NOT assert preservation of a general spectral tensor metric.

`sampled_comparison_with_original_signed_return` also retains, as an independent conjunction, the existing complete `pickupCross = packet + defect` identity. It does not remove signed defect, omit off-diagonal pair orientations, compress the original `ArithmeticFunction.moebius` source indices, or infer arithmetic cancellation from finite sampling. The global one-sided subexponential bound for the original `PickupEndpointQuadrature.endpointSum` remains OPEN.

### Verification and limits

- Third source GitHub publication/readback: **PASS**, exact blob above.
- Text-only declaration scan: no new `axiom`, `sorry`, `admit`, or `native_decide` declaration. This is NOT a transitive axiom audit.
- Pinned Lean: `v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Pinned `lake env lean` for third source and first two source dependencies: **NOT_RUN**.
- Expected theorem type validation: **NOT_RUN**.
- Fresh kernel checking, imported dependency closure and transitive axiom / opaque / native audit: **NOT_RUN**.
- No supported configured CI checks were reported on the third source commit; no remote build or native verification was dispatched.
- No new finite-to-asymptotic convergence, independent-draw concentration, sphere cusp limit, topological fiber-bundle trivialization, or new signed arithmetic estimate is claimed.

## Sharper finite total variation and coupling allowance (fourth additive module)

- Source: [ShapePhysicalBitFiniteTVCoupling.lean](https://github.com/grwtsk/math/blob/7e62c98390b6f94213f6ff6b64858a602bf835d4/GRWTSK/Combinatorics/ShapePhysicalBitFiniteTVCoupling.lean)
- Commit: `7e62c98390b6f94213f6ff6b64858a602bf835d4`; parent `a19e2dca57e9fac89600e5a6b7d7cd789d0452fc`.
- Exact published blob: `25194eada902abffdbc3dcd61ac66ea549b57b0b`.
- Imported finite-sampling source: `ShapePhysicalBitFiniteSampling.lean`, blob `b71c6837fcc8673f4415a687f554847f7ba1d9fc`.
- Original normalized real Gibbs law: `GraphTheory/FiniteAdmissibleSampler.lean`, blob `e74a253e66c1ee9ab5b6d97440e1fdeee49a54be`.

### Precise finite quantitative advance

The original Gibbs row has `Sampler.probability_row_sum_one`. For N>0 the comparison uniform row also sums to one. The written `rowDelta_sum_zero` and `centered_row_delta` recover this exact zero-mass identity, allowing a sharp **half-L1 / total variation** bound for every `0 ≤ f i ≤ 1`:
[
|mathrm{sampledExpectation}(S,o,f)-mathrm{uniformAverage}(f)|
le mathrm{rowTotalVariation}(S,o)
=	frac12mathrm{probabilityL1Gap}(S,o).
]
This strengthens the preceding general `|f|≤1` L1 bound specifically for the true two-bit normalized loss and the separate unavailable-record indicator. It uses the same actual `sourceIndex : Fin N → ℕ` without assuming injectivity, altered indices, independent draws, or source coefficient accuracy.

The exact common-index overlap is `commonIndexMass S o = ∑ i, min (S.probability o i) (N:ℝ)⁻¹`. The candidate `commonIndexMass_add_rowTotalVariation` states overlap+TV=1. `HasRowUniformMarginals` declares an explicit nonnegative joint matrix with exactly the existing two marginals. The candidate `diagonal_coupling_le_commonIndexMass` bounds same-index agreement for **every supplied coupling**. `uniformDiagonalCoupling_hasMarginals` and `uniformDiagonalCoupling_agreement` provide a concrete attaining coupling for the **uniform** case. Existence of an attaining maximal coupling for an **arbitrary nonuniform** Gibbs row is not established by these statements, and is an outstanding optional extension.

`finiteTV_comparison_with_original_signed_return` keeps two finite TV bounds *alongside* the exact imported `pickupCross = packet + defect`. The observable return still contains the entire ordered off-diagonal Gram sum, all original Möbius signs and integer indices, the original source windows, and the signed defect for incomplete, invalidly indexed or incorrectly decoded observations. The finite TV bound is on bounded bit observables, **not** on the signed arithmetic Gram kernel: it cannot be used to assert a new endpoint/good-scale cancellation bound.

### Verification facets for fourth module

- Additive source creation and exact GitHub blob readback: **PASS**.
- Static source-token scan for `sorry`, `admit` and `native_decide`: no hits; not a transitive audit.
- Exact installed Lean and Lake executable: unavailable in this execution environment.
- Pinned Lean/Mathlib compile, expected theorem types, fresh kernel checking, and transitive dependency-closure axiom/opaque/native audit: **NOT_RUN**.
- No compilation result, CI proof result, or arithmetic estimate is inferred from publication. This is `SOURCE_PROOF_CANDIDATE`.
