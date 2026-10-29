# Verification target: Prime Power Perron Combined Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f516da3b600b546897afdb60b8e32f199d01406d",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2599bb2a206f502427dae4654ea56539cbcc7b0773155549824cbdc62b708e74PrimePowerPerron/Variant69317a18c4830daa90be5765310c816f10faf2ba7a9aabb18fc09266b89717b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f516da3b600b546897afdb60b8e32f199d01406d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2599bb2a206f502427dae4654ea56539cbcc7b0773155549824cbdc62b708e74PrimePowerPerron/Variant69317a18c4830daa90be5765310c816f10faf2ba7a9aabb18fc09266b89717b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2599bb2a206f502427dae4654ea56539cbcc7b0773155549824cbdc62b708e74PrimePowerPerron/Variant69317a18c4830daa90be5765310c816f10faf2ba7a9aabb18fc09266b89717b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.BoundaryRieszLaplace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Piecewise` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceBoundaryArithmetic` — import line 8; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.PoleSourceDetection` — import line 9; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.PoleCorrelationRegularity` — import line 10; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.FullLine` — import line 11; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.BoundaryRieszKernel` — import line 12; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceLaplaceEndpoint` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourcePerronIntegrand](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/sourceperronintegrand.md) | 48 | `declaration-track:518cb98bcbda1b1dd1bb4b23d7adf9c8ba68416ef788347774123d8e30247c8a` |
| 2 | `theorem` | [prime_power_riesz_sum_exact](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/prime-power-riesz-sum-exact.md) | 52 | `result-track:6050af641cc2009d7594bc2788fbf4012675581ba85d36e4b6833c4d0da7ec93` |
| 3 | `theorem` | [riesz_cutoff_endpoint_atom_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/riesz-cutoff-endpoint-atom-zero.md) | 69 | `result-track:33e901c68406ae5059a2a711d75cbc6271eb70a09df3beeebb5b2f737e1c9d9a` |
| 4 | `theorem` | [shifted_von_mangoldt_dirichlet](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/shifted-von-mangoldt-dirichlet.md) | 77 | `result-track:e6dadb7f78fa60c30f8dffea3643b250d3c0e8923e9b6d0649b08b25726b98d9` |
| 5 | `theorem` | [shifted_von_mangoldt_summable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/shifted-von-mangoldt-summable.md) | 85 | `result-track:5ea5a2a0c929cece19b02bebc09ebd71e2ac3aa2947684a2f6f250f2fd70e33e` |
| 6 | `theorem` | [source_hfn_eq_bilateral_laplace](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/source-hfn-eq-bilateral-laplace.md) | 93 | `result-track:6f3d7da5bc21db801ba029c9dcaf8401827b3b0b404175d9c122bd8e1d4dd88a` |
| 7 | `theorem` | [source_laplace_on_line_eq_tilted_fourier](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/source-laplace-on-line-eq-tilted-fourier.md) | 104 | `result-track:1ffc6f9f2da70c8550f4db7f2512ba010c83d9802f313d50429984b54426df17` |
| 8 | `theorem` | [source_complex_kernel_cont_diff_two](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/source-complex-kernel-cont-diff-two.md) | 116 | `result-track:dcc5d8ea93b5a5bf806bf2fc0e21ac101dfbcd3c11f733073652a93d226d4f25` |
| 9 | `theorem` | [source_complex_kernel_has_compact_support](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/source-complex-kernel-has-compact-support.md) | 122 | `result-track:4038075c92fd53a19f2e962cfba586966113e4c6718fc128292ec015cde5bf9c` |
| 10 | `theorem` | [source_prime_sum_eq_strict](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/source-prime-sum-eq-strict.md) | 127 | `result-track:2979f834e8d0c6cd1e9daa7df834721dc2e3d4f8ccd7961179309526a43bf458` |
| 11 | `theorem` | [source_perron_integral_exact](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/source-perron-integral-exact.md) | 149 | `result-track:a03aae453432c43274ab0cf34b564462b00cc4b99e2ba09988331afb8f6faab6` |
| 12 | `theorem` | [source_perron_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/source-perron-integrable.md) | 170 | `result-track:85a44663562c8467ca96299775c0668cc685744831d73217740da8b492bc1335` |
| 13 | `def` | [sourcePerronTruncation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/sourceperrontruncation.md) | 198 | `declaration-track:faad2589a5c469b7688deb1625587a7802e21b78e78ef94f589f588b6509b46d` |
| 14 | `theorem` | [source_perron_truncation_tendsto](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/source-perron-truncation-tendsto.md) | 203 | `result-track:b039cd1b68b6c122f89bba95044a3faa4d475d5e870c43021668d36573e0bdf6` |
| 15 | `def` | [rieszTilt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/riesztilt.md) | 221 | `declaration-track:cc7329fe408cb239d2dc48d1552abec2c745d9d79fad5e1da74161dffb318563` |
| 16 | `theorem` | [riesz_tilt_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/riesz-tilt-integrable.md) | 225 | `result-track:94ac068bc75bbfc98c36be334dbb8e230f0a3658717901d779f1c48ccef1e751` |
| 17 | `theorem` | [riesz_tilt_continuous](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/riesz-tilt-continuous.md) | 229 | `result-track:baa9c8fdcc1e57216bc5c534d61bb03d86d4da48561804def49c31450219d6f9` |
| 18 | `theorem` | [riesz_tilt_paper_fourier](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/riesz-tilt-paper-fourier.md) | 240 | `result-track:55e287968e7cb72276fbfc6d1d2a1d89d294e78b07b54a4a9c7cd5b16e83d636` |
| 19 | `theorem` | [vertical_inverse_square_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/vertical-inverse-square-integrable.md) | 256 | `result-track:97cc03fe2071c706a2a6e9477b8ba9c1fe3f5ab6c6a2d946867f286575cdfcfd` |
| 20 | `theorem` | [vertical_inverse_power_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/vertical-inverse-power-integrable.md) | 267 | `result-track:6999cf7790db46471eaac58e20a72c1560b5c37f4a89164847ad04f2973d4751` |
| 21 | `theorem` | [boundary_riesz_line_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/boundary-riesz-line-integrable.md) | 291 | `result-track:730cfebcb42c9e2dc8c382002d528b71bd4485d552a370c9eb6671eee255d84f` |
| 22 | `theorem` | [riesz_tilt_fourier_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/riesz-tilt-fourier-integrable.md) | 318 | `result-track:eb36f23a6f9f6128cfc54e8e9d3702a8e28d080e4bfbc2e30394e61c32c35851` |
| 23 | `theorem` | [riesz_half_line_inversion](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/riesz-half-line-inversion.md) | 335 | `result-track:01ae3e8a1f2b36eb5a3645ae48a87a91e2eb9ad270bbd49543652b5c5c01fc2a` |
| 24 | `def` | [rieszLineTransform](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/rieszlinetransform.md) | 362 | `declaration-track:fd5835799d47b843289598b300e6649228ed7262a5f183af863bf0742494a149` |
| 25 | `def` | [rieszWindow](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/rieszwindow.md) | 366 | `declaration-track:1e62189c693270f821760997f37e5531c989db89ebd60418e89fe4e503e05519` |
| 26 | `theorem` | [riesz_line_transform_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/riesz-line-transform-integrable.md) | 369 | `result-track:5126ab935801df2cef3b8c1e3bbed2bb01169533f6baf078d20f6bda1e3fed93` |
| 27 | `theorem` | [riesz_line_transform_inversion](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/riesz-line-transform-inversion.md) | 377 | `result-track:3ffd20401ffce95d390c1af4994185141fc67da200cffbad935bd63c3da4f706` |
| 28 | `theorem` | [perron_per_n_integral](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/perron-per-n-integral.md) | 423 | `result-track:585899b42699dcda9cc6794b39e82745af21226245e12daf95ec3fb37312c883` |
| 29 | `theorem` | [perron_line_integral_swap](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/perron-line-integral-swap.md) | 488 | `result-track:09cc85a137cb6447ce4f999fc36763e1bf0f8588b903e6fd3fe4d35756a7e36b` |
| 30 | `theorem` | [perron_prime_side_line](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/perron-prime-side-line.md) | 546 | `result-track:4ac3b889084707c69d732d8640093f99dcf1ba05856ce4252e81785aab5725da` |
| 31 | `theorem` | [source_riesz_exact_comparison](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/source-riesz-exact-comparison.md) | 578 | `result-track:32ebf10b7206e028fc8d24a80ca77987c26e004507bf5642d484039d4290c1e3` |
| 32 | `def` | [rieszPerronIntegrand](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/rieszperronintegrand.md) | 629 | `declaration-track:2f8e8464a710fa7c26e4278b5f9d83e7318005bb54c534382f06e1d6bdc5505a` |
| 33 | `theorem` | [riesz_prime_sum_eq_strict](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/riesz-prime-sum-eq-strict.md) | 633 | `result-track:3f5e768a64455ed1e0fe8bc8aad93cc9eb8dbf3b5a08d54eaa9d35ecfc9ee209` |
| 34 | `theorem` | [riesz_perron_integral_exact](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/riesz-perron-integral-exact.md) | 663 | `result-track:ce19a1513c272edd4db4d0f4076b1a453e88886b3e44b417e5087021017f9723` |
| 35 | `theorem` | [riesz_perron_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/riesz-perron-integrable.md) | 683 | `result-track:1c29ade574fb9ad78f1ee10071f9077806cc3d36b0a1afb725a3e923c1e58644` |
| 36 | `def` | [rieszPerronTruncation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/rieszperrontruncation.md) | 703 | `declaration-track:e7b712ff3bdba29fcd2d2f3e6b213afdb3ae83fa976b1799ced485aa74b64a7d` |
| 37 | `theorem` | [riesz_perron_truncation_tendsto](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronCombinedNamespaced.lean/declarations/riesz-perron-truncation-tendsto.md) | 708 | `result-track:db0f63049d3e12b14381f5366ea513e6f2ae0b1b17d883ba6f54475e9b03b298` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c83ebecc41671ee8f9a1307be62ceea545c3562b5cac3394b2c40d174173a5c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2599bb2a206f502427dae4654ea56539cbcc7b0773155549824cbdc62b708e74PrimePowerPerron/Variant69317a18c4830daa90be5765310c816f10faf2ba7a9aabb18fc09266b89717b5.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2599bb2a206f502427dae4654ea56539cbcc7b0773155549824cbdc62b708e74PrimePowerPerron/Variant69317a18c4830daa90be5765310c816f10faf2ba7a9aabb18fc09266b89717b5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
