# Verification target: Prime Power Perron Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9bc39a09c98479ee5189965ddd77a914a1ef502",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant2144586cf608775f0afc69142afff56c652e5fe5b83ccc78ab9bcd4368bf2707.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9bc39a09c98479ee5189965ddd77a914a1ef502`.

Source path: `GRWTSK/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant2144586cf608775f0afc69142afff56c652e5fe5b83ccc78ab9bcd4368bf2707.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant2144586cf608775f0afc69142afff56c652e5fe5b83ccc78ab9bcd4368bf2707.lean.json)

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
| 1 | `def` | [sourcePerronIntegrand](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/sourceperronintegrand.md) | 51 | `declaration-track:1c65cd705cbb5433bd2ac46f2704d90b9fcf08bf6e449abe4a30038572d69f74` |
| 2 | `theorem` | [prime_power_riesz_sum_exact](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/prime-power-riesz-sum-exact.md) | 55 | `result-track:2f1963c6eb1bb7de5d841eb97e8150fb9bc2406f1ab999d282c95da0e0275388` |
| 3 | `theorem` | [riesz_cutoff_endpoint_atom_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/riesz-cutoff-endpoint-atom-zero.md) | 72 | `result-track:76e0234d2e07a002a9fb5485c0dce24ec7a173f4c14b6896d55878a44024247c` |
| 4 | `theorem` | [shifted_von_mangoldt_dirichlet](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/shifted-von-mangoldt-dirichlet.md) | 80 | `result-track:032838403a1edadf634489a8328fd5bef64ff4e314bbe0559d4b482efa6cc030` |
| 5 | `theorem` | [shifted_von_mangoldt_summable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/shifted-von-mangoldt-summable.md) | 88 | `result-track:db831b25303aeb3df274ac33fc0dee3a014c1361a20a83032d9d0ac1d1eb7e04` |
| 6 | `theorem` | [source_hfn_eq_bilateral_laplace](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/source-hfn-eq-bilateral-laplace.md) | 96 | `result-track:807348987397493c745d15e4f6936a88bad338a05ae6fabbe43b907651c857e4` |
| 7 | `theorem` | [source_laplace_on_line_eq_tilted_fourier](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/source-laplace-on-line-eq-tilted-fourier.md) | 107 | `result-track:6ac2d1495164eedc3d1f589efd620438ab8f28a9a63967a19cb1d8f93628eb2c` |
| 8 | `theorem` | [source_complex_kernel_cont_diff_two](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/source-complex-kernel-cont-diff-two.md) | 119 | `result-track:44db5df538ebe7cdef1b19b011a5cc3ce9223400b8821915094681c7ea5139c0` |
| 9 | `theorem` | [source_complex_kernel_has_compact_support](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/source-complex-kernel-has-compact-support.md) | 125 | `result-track:f0700e5f456843bae34d53883cb4719a722fc6c0b94f0f474440aec97f06f0d3` |
| 10 | `theorem` | [source_prime_sum_eq_strict](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/source-prime-sum-eq-strict.md) | 130 | `result-track:4430545ef00ddf44b4a70e0f77e02f834ba14efc0f39eca089bff39848511114` |
| 11 | `theorem` | [source_perron_integral_exact](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/source-perron-integral-exact.md) | 152 | `result-track:258aa75e6cda7081232893cdc9ed3317a948782f4a7c001a474a3303b0c6090c` |
| 12 | `theorem` | [source_perron_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/source-perron-integrable.md) | 173 | `result-track:cdae3383827c4178fdb79acb9e4460161aeef24e6ad3057966db86c8d227ee9b` |
| 13 | `def` | [sourcePerronTruncation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/sourceperrontruncation.md) | 201 | `declaration-track:ad0635a557e545a32f1f570f9e98bbde511a1d31396c4c706852d04bb04940c3` |
| 14 | `theorem` | [source_perron_truncation_tendsto](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/source-perron-truncation-tendsto.md) | 206 | `result-track:2d33a3a25272c8404cb39893dd4313f5c83580a9f0b4cf5749e30e3861b13acb` |
| 15 | `def` | [rieszTilt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/riesztilt.md) | 226 | `declaration-track:9b9153d35c61e625da640958053cbe291c635122c42140d2f2172fe04c2eb0bc` |
| 16 | `theorem` | [riesz_tilt_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/riesz-tilt-integrable.md) | 230 | `result-track:307ced2f7db9ca7f655c82124b61d19cf0d1b166fd5e30db92885124e904c44b` |
| 17 | `theorem` | [riesz_tilt_continuous](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/riesz-tilt-continuous.md) | 234 | `result-track:7d011f5310b8623eda9bdcd7e0e1ecf37d0f2ec0f3158e2dd18aed3899378833` |
| 18 | `theorem` | [riesz_tilt_paper_fourier](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/riesz-tilt-paper-fourier.md) | 248 | `result-track:cdb1131e0a2c31e6aa626ed228a4a580c935530d8f961bea47d9e800c9628715` |
| 19 | `theorem` | [vertical_inverse_square_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/vertical-inverse-square-integrable.md) | 264 | `result-track:2cc6f762ce4f463c21a1351d36061a994d21ee874e0b044d94e666102f7489b3` |
| 20 | `theorem` | [vertical_inverse_power_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/vertical-inverse-power-integrable.md) | 275 | `result-track:33469003d281bc9d9b9969e75c73e640c1da68f2c025195401ab884286c075ea` |
| 21 | `theorem` | [boundary_riesz_line_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/boundary-riesz-line-integrable.md) | 299 | `result-track:d6f6ca960372c9876e4c6766b74f50977493773c262f185ca108f88bf2a37912` |
| 22 | `theorem` | [riesz_tilt_fourier_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/riesz-tilt-fourier-integrable.md) | 327 | `result-track:1c60c7998c7eccf8a09188fd05f7b606638a9dca8743978a186bd8959256afd1` |
| 23 | `theorem` | [riesz_half_line_inversion](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/riesz-half-line-inversion.md) | 344 | `result-track:d4d1fddada944e4526de55cc40ed65b71d3e9405a4ae637ab8e194bbea95ed56` |
| 24 | `def` | [rieszLineTransform](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/rieszlinetransform.md) | 372 | `declaration-track:346a896e082ed7f19e0a0ae7906255bb82c51de7d9ede21b403e2d4fc588c36d` |
| 25 | `def` | [rieszWindow](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/rieszwindow.md) | 377 | `declaration-track:be74094edb82dcc73c6f3e2f61a9e2655fbcd0dcbef3b77cb7fbd4efef97828e` |
| 26 | `theorem` | [riesz_line_transform_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/riesz-line-transform-integrable.md) | 380 | `result-track:4fc040d518624d7bda0a63cce4fe3d7d383d15f4ff93573627d0a297ec48cf6f` |
| 27 | `theorem` | [riesz_line_transform_inversion](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/riesz-line-transform-inversion.md) | 388 | `result-track:c49c91aa2c0a939862b8b94ce04859900b47c4d8cef59ae36b56897665ff778c` |
| 28 | `theorem` | [perron_per_n_integral](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/perron-per-n-integral.md) | 436 | `result-track:2403d1b80e985646054707ebbcf49d3db1b7ea4a8ce865eaa211b673f97f8917` |
| 29 | `theorem` | [perron_line_integral_swap](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/perron-line-integral-swap.md) | 501 | `result-track:0c3bf52190086f6a2da2f24681c8fa1f7d172c7e94f6e35a47b387f18366d6f8` |
| 30 | `theorem` | [perron_prime_side_line](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/perron-prime-side-line.md) | 559 | `result-track:b5bbc63c9a821966e533753c0fafb95d8e5fe7f66992d2f117956b6d2164bbf1` |
| 31 | `theorem` | [source_riesz_exact_comparison](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/source-riesz-exact-comparison.md) | 592 | `result-track:db92615b7601f071a5b420b9559ca1efb8b3077e21e62a17e3d67a1e8af3b3b1` |
| 32 | `def` | [rieszPerronIntegrand](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/rieszperronintegrand.md) | 643 | `declaration-track:4b8998476a162f1aa7f29a187d2ebb1765391df7920da690c2878984da796877` |
| 33 | `theorem` | [riesz_prime_sum_eq_strict](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/riesz-prime-sum-eq-strict.md) | 648 | `result-track:eacfe43ab3bff38a0397b5557459ce33943f6c3f8835541e391626420f4e7b88` |
| 34 | `theorem` | [riesz_perron_integral_exact](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/riesz-perron-integral-exact.md) | 679 | `result-track:a86f212ce531c7231505bff83283c81485fa649c83e4a882cb1cf91fd0067363` |
| 35 | `theorem` | [riesz_perron_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/riesz-perron-integrable.md) | 699 | `result-track:d45d4655c6fa02713e18dd6063b1ebd461520b86fc673e64dec52d7f3887fd43` |
| 36 | `def` | [rieszPerronTruncation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/rieszperrontruncation.md) | 719 | `declaration-track:e644d0e5a8ced093b4804168c1cf05891fdbbc3d840707109b539ccc232a706d` |
| 37 | `theorem` | [riesz_perron_truncation_tendsto](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerPerronNamespaced.lean/declarations/riesz-perron-truncation-tendsto.md) | 724 | `result-track:861a488b7c5a1f5e38c2035f06a1d9d21b1ce2face9696d8c1be4dc8d7760851` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d66509a80cbaed0beba2d093d1cf5259d2bb835a4e2632c33d1f105ed26039ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant2144586cf608775f0afc69142afff56c652e5fe5b83ccc78ab9bcd4368bf2707.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant2144586cf608775f0afc69142afff56c652e5fe5b83ccc78ab9bcd4368bf2707.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
