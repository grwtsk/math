# Verification target: GRWTSK.Analysis.Complex.IntervalMellinQuadrature

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34afcf9d49fd8d20e0defcbd73953708d44fe06a",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/IntervalMellinQuadrature.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/index.md) · [Full source](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34afcf9d49fd8d20e0defcbd73953708d44fe06a`.

Source path: `GRWTSK/Analysis/Complex/IntervalMellinQuadrature.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/IntervalMellinQuadrature.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.IntervalMellinKernel`](../../../../MeasureAndIntegration/IntervalMellinKernel.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [spatialSlopeBound](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/spatialslopebound.md) | 31 | `declaration-track:bfa5fbc78acd245f2486374a5f4ecf630ab9df24ef7805fe287ad7c1e7df3081` |
| 2 | `theorem` | [spatialSlopeBound_nonneg](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/spatialslopebound-nonneg.md) | 34 | `result-track:d89f675d921a7c8a4ae699800eee68d12166f145357be07aacf502793d7f8010` |
| 3 | `theorem` | [hasDerivAt_density_real](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/hasderivat-density-real.md) | 39 | `result-track:f28643e05a104fe97e5ee2072fc4690dc520ace1903208bcb7fc4960c68b2c4e` |
| 4 | `theorem` | [norm_spatial_derivative_le](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/norm-spatial-derivative-le.md) | 43 | `result-track:daec94f4e92c09349e3e0e4c3a2fd81d342caf705a3bde67156df026fe2530f7` |
| 5 | `theorem` | [density_spatial_lipschitz](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/density-spatial-lipschitz.md) | 51 | `result-track:0a9d46cb3a8c4b902c572d62fa927b59028ab8d8be90c47c6c91cf8cbe2a449a` |
| 6 | `theorem` | [left_cell_error](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/left-cell-error.md) | 61 | `result-track:49500c751935fbf42319c5209cd4fcab0f7fb9d475654d5f8385ef06695c37fa` |
| 7 | `def` | [leftSum](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/leftsum.md) | 87 | `declaration-track:9dc3cce30d14bba42c44a2328c03310224587752a0cfda38686a2904ef4cfa03` |
| 8 | `def` | [partitionError](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/partitionerror.md) | 91 | `declaration-track:9e9d9d7149cc7311b50b87cb3ed02b6f71f08a0efcdd22c5063018de6e74326d` |
| 9 | `theorem` | [partitionError_nonneg](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/partitionerror-nonneg.md) | 95 | `result-track:a9b916eebb7a1f30c45a4b661e0c858b01658f3ee6c426cdf0002e4adec2d820` |
| 10 | `theorem` | [kernel_eq_partition](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/kernel-eq-partition.md) | 101 | `result-track:5967dfc6945bf67e2b2dd135ad4024809f65ac423fffa0bcf464f96bd3228c60` |
| 11 | `theorem` | [leftSum_error](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/leftsum-error.md) | 111 | `result-track:59bcdfec118d487686ea124ba0068801b64deef44abc61731ebef7c05bdb0005` |
| 12 | `theorem` | [leftSum_sample_error](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/leftsum-sample-error.md) | 135 | `result-track:6d331935e3be58134abfdae0cd75d82aec64e16ffcb035367742cdb550e167bf` |
| 13 | `theorem` | [kernel_sample_error](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/kernel-sample-error.md) | 154 | `result-track:9496d632bcac47e2e3cc65831da19b8eecb9022f3b4c259546453fb1db7699b2` |
| 14 | `theorem` | [finite_weighted_sample_error](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/finite-weighted-sample-error.md) | 174 | `result-track:36b0e72e6a5f741fffa449490d99bf6902e41e295ef28271983b8a23e0717152` |
| 15 | `def` | [uniformNodes](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/uniformnodes.md) | 199 | `declaration-track:0efb1fbf271fde94fb3c9113d4484b10b2d3b3cc74bc0765daca95e4fe0d7234` |
| 16 | `theorem` | [uniformNodes_zero](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/uniformnodes-zero.md) | 202 | `result-track:4a6baf198bc560181e3f2869f40053f041c844140c11559ad81b4f93b207f08b` |
| 17 | `theorem` | [uniformNodes_end](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/uniformnodes-end.md) | 205 | `result-track:422c3e0248e0e9ce2f37b98d7e784ec66d070385857c5f5bbae5551aae8d9c73` |
| 18 | `theorem` | [uniformNodes_step](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/uniformnodes-step.md) | 211 | `result-track:95c0456459c9321700cdc3d3a246cab36e305fa7644ab5861645c8a9462b6406` |
| 19 | `theorem` | [uniformNodes_monotone](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/uniformnodes-monotone.md) | 216 | `result-track:f3d376d11cdd7dde4cb3f141df56626bd5c322ed45f4cce86b6513dee8eccc6b` |
| 20 | `theorem` | [uniform_leftSum_error](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/uniform-leftsum-error.md) | 224 | `result-track:2f5f8349667ddc546289fe9f890b8659138d5bde390fd2d27771c3694d06f8e4` |
| 21 | `theorem` | [leftSum_one](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/leftsum-one.md) | 239 | `result-track:5b35ae24fbacfb4b2d0e9c2fca079314e09dec7c8de3a251e342d88110be8506` |
| 22 | `theorem` | [density_two](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/density-two.md) | 247 | `result-track:48ae6d10e099ae9aa194032bcb79ee59a332a2497c816ab4990ed1d1cd013680` |
| 23 | `theorem` | [kernel_two](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/kernel-two.md) | 251 | `result-track:6838bbe2f08bd862961620ca490f1be8f1efd673a8f5797567d51871fe6cd52d` |
| 24 | `theorem` | [left_cell_error_at_two](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/left-cell-error-at-two.md) | 261 | `result-track:6f8c2642b465fbdb7bb311d8c332b92e0d0bcbfba1b831a2036941920eb3242b` |
| 25 | `theorem` | [sharp_half_control](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/sharp-half-control.md) | 267 | `result-track:056ae389e26d47ec659fffd7d5e777b3955fcb9924f04726bcb75f741db17f2b` |
| 26 | `theorem` | [zero_cells_not_full_interval](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/zero-cells-not-full-interval.md) | 273 | `result-track:e1a598b7c92fd5626ef4638b56de0b482cb3b36fcfef8ab935f8b20dd5c4717d` |
| 27 | `theorem` | [zero_samples_keep_error](../../../../MeasureAndIntegration/IntervalMellinQuadrature.lean/declarations/zero-samples-keep-error.md) | 279 | `result-track:b9f606faf3e71abf4c68c397ea21f30610c9607c12c3e84af3b9e9d10dfe042a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0cdbd433bef105f0129433f307fa9af5346144dc0bf6cc9a634ab1ccdcc4975 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/IntervalMellinQuadrature.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/IntervalMellinQuadrature.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
