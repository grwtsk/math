# Verification target: Prime Power Perron

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f260b88a1f5cb637bfe04747fca27caa4ea083e",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f260b88a1f5cb637bfe04747fca27caa4ea083e`.

Source path: `GRWTSK/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.BoundaryRieszLaplace` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Piecewise` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceBoundaryArithmetic` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.PoleSourceDetection` — import line 4; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.PoleCorrelationRegularity` — import line 5; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.FullLine` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.BoundaryRieszKernel` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceLaplaceEndpoint` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourcePerronIntegrand](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/sourceperronintegrand.md) | 43 | `declaration-track:3f6e2a6f362d50556c946ca32ce76e9d027f3b42d3ae32b27dedd2cfcdac461c` |
| 2 | `theorem` | [prime_power_riesz_sum_exact](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/prime-power-riesz-sum-exact.md) | 47 | `result-track:6d7ed317baeb4e6eeb13178c5b484aaa358d5a5f71bfeb24835dab8c5c0ec355` |
| 3 | `theorem` | [riesz_cutoff_endpoint_atom_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/riesz-cutoff-endpoint-atom-zero.md) | 64 | `result-track:dba565f0600d3c5252d2f702d9a8cdc4a2baa41e10f4b8a191f359a09156a396` |
| 4 | `theorem` | [shifted_von_mangoldt_dirichlet](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/shifted-von-mangoldt-dirichlet.md) | 72 | `result-track:da88bdfc4ee42e747da5e53b306563030f518d229955c10ca31fe054a0f1de9d` |
| 5 | `theorem` | [shifted_von_mangoldt_summable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/shifted-von-mangoldt-summable.md) | 80 | `result-track:ba550ddebd4e7149a66eabf3dda2fdbd155808b765d5246fd68eb36fbd807449` |
| 6 | `theorem` | [source_hfn_eq_bilateral_laplace](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/source-hfn-eq-bilateral-laplace.md) | 88 | `result-track:43dd638e29386cf780645dbe615811ec70c8aa2879e71101751ece556711065a` |
| 7 | `theorem` | [source_laplace_on_line_eq_tilted_fourier](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/source-laplace-on-line-eq-tilted-fourier.md) | 99 | `result-track:09eb02d5f082f3189d2a4a26a2105f1cf20556fae301f64e342dc095fb09e75d` |
| 8 | `theorem` | [source_complex_kernel_cont_diff_two](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/source-complex-kernel-cont-diff-two.md) | 111 | `result-track:10835d0897835cfd3987bcb36f1c484821541dca363cb51632fd2f1386257a81` |
| 9 | `theorem` | [source_complex_kernel_has_compact_support](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/source-complex-kernel-has-compact-support.md) | 117 | `result-track:8b67e5b57c5961e74b2f1fcf8e759e771d9790483fc09ddf992290b2666f8072` |
| 10 | `theorem` | [source_prime_sum_eq_strict](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/source-prime-sum-eq-strict.md) | 122 | `result-track:b87235407e9cb9ded52628f716612c4a8298e5a0c8e0a88ef03fda3ae72e30c3` |
| 11 | `theorem` | [source_perron_integral_exact](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/source-perron-integral-exact.md) | 144 | `result-track:1e284b2359eef6b80bba0518f6f4a000bb80bfc4a9cef3c6863c4f68b68665c8` |
| 12 | `theorem` | [source_perron_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/source-perron-integrable.md) | 165 | `result-track:497c6e3b4f4e18d16e0fe33897ff1e8f54e4264005fe3df1cd5d7dac662d5795` |
| 13 | `def` | [sourcePerronTruncation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/sourceperrontruncation.md) | 193 | `declaration-track:d8f6b11808a3781b10b7e144ca93308fec5ee6c37e1ae169b4f9733d4aa5bb89` |
| 14 | `theorem` | [source_perron_truncation_tendsto](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/source-perron-truncation-tendsto.md) | 198 | `result-track:555c2e8920fa75896824c8c1b5bec0a863aaa598937c760d5ebc25ee20d77843` |
| 15 | `def` | [rieszTilt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/riesztilt.md) | 218 | `declaration-track:2131c0dd435805eb38f87e47c01270cc0060364d9d4432f9494ab370aa33db77` |
| 16 | `theorem` | [riesz_tilt_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/riesz-tilt-integrable.md) | 222 | `result-track:889621dc8d258a2fa05fe3dd55b8e96bf4ea1cbe3e9afd4751508409c2e0214d` |
| 17 | `theorem` | [riesz_tilt_continuous](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/riesz-tilt-continuous.md) | 226 | `result-track:6665f54b222d5089ff04b9cf9332e993a735c99138360f8626d4d495222fc021` |
| 18 | `theorem` | [riesz_tilt_paper_fourier](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/riesz-tilt-paper-fourier.md) | 240 | `result-track:4fc804c0a9d69a89b1ac007e981944608c0533638c592c12fd17483f6e9a9203` |
| 19 | `theorem` | [vertical_inverse_square_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/vertical-inverse-square-integrable.md) | 256 | `result-track:61cb8901663c753f8f8950d0575bb72796f6c8fd5deba7836e967f3b8503180f` |
| 20 | `theorem` | [vertical_inverse_power_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/vertical-inverse-power-integrable.md) | 267 | `result-track:95f3be4bef2d91d82b11f25d7317afdffa4928ef98047c639c99cbac646c870e` |
| 21 | `theorem` | [boundary_riesz_line_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/boundary-riesz-line-integrable.md) | 291 | `result-track:b1659591539340653f7df3ed17286a3eac7468c6af598af2fdf08e96bdeba5b3` |
| 22 | `theorem` | [riesz_tilt_fourier_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/riesz-tilt-fourier-integrable.md) | 319 | `result-track:da7486b06eee1415f0296db0a87a45486e54217af9b5c21ecc1b324673cc15c9` |
| 23 | `theorem` | [riesz_half_line_inversion](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/riesz-half-line-inversion.md) | 336 | `result-track:c18b44378490ad29a569c629672c9cd1483be524c9977ee30c3963c7d30674e4` |
| 24 | `def` | [rieszLineTransform](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/rieszlinetransform.md) | 364 | `declaration-track:8131a13c672f0fa028bbe8d321cad6333ccda33bbb92971408931e0da06e82dd` |
| 25 | `def` | [rieszWindow](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/rieszwindow.md) | 369 | `declaration-track:e039161d0867245517c9c93b747edfebf2d6161ba3cc3003439d0141993318b5` |
| 26 | `theorem` | [riesz_line_transform_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/riesz-line-transform-integrable.md) | 372 | `result-track:3f210905aea07dc9f0d31b7603c88bfcb07ff33169afe4092467f3e530445d82` |
| 27 | `theorem` | [riesz_line_transform_inversion](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/riesz-line-transform-inversion.md) | 380 | `result-track:f8991f19949e3f5bba7a00c4efe47e8c02d098a990d4e3c66fb7b76488bddef8` |
| 28 | `theorem` | [perron_per_n_integral](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/perron-per-n-integral.md) | 428 | `result-track:2b61071066579bd8b304ae1279e51728ff32adc3db6a38fbf46672613665788a` |
| 29 | `theorem` | [perron_line_integral_swap](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/perron-line-integral-swap.md) | 493 | `result-track:495fe401f7eeb291e5767e402453c1129f2d8a48f9057ee8ca2e6c061bc2d62f` |
| 30 | `theorem` | [perron_prime_side_line](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/perron-prime-side-line.md) | 551 | `result-track:ca8de85ba0bef7f42d9639c0dd586946649873e6388f7e8bbc0c214550f84b47` |
| 31 | `theorem` | [source_riesz_exact_comparison](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/source-riesz-exact-comparison.md) | 584 | `result-track:3d7e3bb71f978de7da097f819c664625aa02294a1c0a5902aad997ecc8174fcd` |
| 32 | `def` | [rieszPerronIntegrand](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/rieszperronintegrand.md) | 635 | `declaration-track:abf3b1c4d2f02b14adeb80a8f85c31e63ea7a59283896da433d9fd497ea360aa` |
| 33 | `theorem` | [riesz_prime_sum_eq_strict](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/riesz-prime-sum-eq-strict.md) | 640 | `result-track:de05943ea8b682e8707ac0537a03d334ab95d19d9fe0c317ed48307fcf41ae1f` |
| 34 | `theorem` | [riesz_perron_integral_exact](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/riesz-perron-integral-exact.md) | 671 | `result-track:cc762b24bb66325d38f17b0abdaba3fd0b11dd7f065396cb2d9187708969ccd4` |
| 35 | `theorem` | [riesz_perron_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/riesz-perron-integrable.md) | 691 | `result-track:edfc2f7e2bdf9662fce0bac725b04b03400205ac9f51c93cddb821298490655f` |
| 36 | `def` | [rieszPerronTruncation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/rieszperrontruncation.md) | 711 | `declaration-track:a3c73ef7c810677857338e67e81e99c5bf59d5124be0dfa4175999b8f94e1ac6` |
| 37 | `theorem` | [riesz_perron_truncation_tendsto](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerron.lean/declarations/riesz-perron-truncation-tendsto.md) | 716 | `result-track:73c4deb0790b3b10cb89efdd4b2acb6f917710abc853d5a45b2e4eb38e2de8e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8181fb4bc02f95a10e647ebda9c659ac002c8a50edac88ec9fc2a5873d7af928 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
