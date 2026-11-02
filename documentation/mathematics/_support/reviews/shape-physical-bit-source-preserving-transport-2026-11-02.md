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
