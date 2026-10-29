# Verification target: Levy Prokhorov Metric

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5a3cec9b3322e6a6337e53352aee7d75562b9d9",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant757c2e88728386685877902bcbc7d4bb5285e66cf2ec9540252c6a9a0e6c3c73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5a3cec9b3322e6a6337e53352aee7d75562b9d9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant757c2e88728386685877902bcbc7d4bb5285e66cf2ec9540252c6a9a0e6c3c73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant757c2e88728386685877902bcbc7d4bb5285e66cf2ec9540252c6a9a0e6c3c73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Portmanteau` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Layercake` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.BoundedContinuousFunction` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [levyProkhorovEDist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/levyprokhorovedist.md) | 50 | `declaration-track:0b833c054984473699823e0976cd709b9f2f2afa114291fcd86aae5ab67a5075` |
| 2 | `lemma` | [meas_le_of_le_of_forall_le_meas_thickening_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/meas-le-of-le-of-forall-le-meas-thickening-add.md) | 56 | `result-track:d3b4dfeb8ccf84ba6c2084ad1b0192768d5b3672fa42a292f8307c2c8a164dab` |
| 3 | `lemma` | [left_measure_le_of_levyProkhorovEDist_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/left-measure-le-of-levyprokhorovedist-lt.md) | 65 | `result-track:0b18db55925f0776169a5cb09e36a6e6534eb48888d3576716967aaba080e351` |
| 4 | `lemma` | [right_measure_le_of_levyProkhorovEDist_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/right-measure-le-of-levyprokhorovedist-lt.md) | 71 | `result-track:5a9cd1cf474ba45057520e58652e2e94dc76a5680e3b81f975c2babcb0cb1ab8` |
| 5 | `lemma` | [levyProkhorovEDist_le_of_forall_add_pos_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/levyprokhorovedist-le-of-forall-add-pos-le.md) | 78 | `result-track:b2384ce6dbf79658da5fdf407749d39904e0ddcc3099dd610850a0de86c4d756` |
| 6 | `lemma` | [levyProkhorovEDist_le_of_forall](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/levyprokhorovedist-le-of-forall.md) | 92 | `result-track:64dff6669db028a1242bdc76128b7b7b78535092d904472e9e2901306b0c225b` |
| 7 | `lemma` | [levyProkhorovEDist_le_max_measure_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/levyprokhorovedist-le-max-measure-univ.md) | 103 | `result-track:6b963039243f267f33b683e3142aa966d1e04ea130a2b673399cdec5292176e6` |
| 8 | `lemma` | [levyProkhorovEDist_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/levyprokhorovedist-lt-top.md) | 107 | `result-track:b0e3311ce0f740f7ad6a2ee56cc023c3ad24317e28d4093b11847a78f91f9477` |
| 9 | `lemma` | [levyProkhorovEDist_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/levyprokhorovedist-ne-top.md) | 111 | `result-track:7a9a2ec6dbec1892ba74f3d61280b67c921a41a07467001ab9b1b389b24d7297` |
| 10 | `lemma` | [levyProkhorovEDist_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/levyprokhorovedist-self.md) | 114 | `result-track:71a3ee4f9c9862927c8e0624a91ee0bac06c8c5a0d7eaba1eaa4fdcb47f0643c` |
| 11 | `lemma` | [levyProkhorovEDist_comm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/levyprokhorovedist-comm.md) | 121 | `result-track:64bdc908d8ea0e64c129dd62f4d0f7d08777494b9d81fd7363e1f4081b613488` |
| 12 | `lemma` | [levyProkhorovEDist_triangle](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/levyprokhorovedist-triangle.md) | 125 | `result-track:5c47e813ca6ba0e67e7d1f4704e64ce3437d537eff7295504df5bc14a2ae2fe4` |
| 13 | `def` | [levyProkhorovDist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/levyprokhorovdist.md) | 169 | `declaration-track:d5849a1847f6763eab0b8685e464d96f54ad03841d8db907ed836ed804223282` |
| 14 | `lemma` | [levyProkhorovDist_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/levyprokhorovdist-self.md) | 172 | `result-track:e4553eb58a85cbb9db6440c9662400e9e4490038318329cc8c94bc136aec0fa4` |
| 15 | `lemma` | [levyProkhorovDist_comm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/levyprokhorovdist-comm.md) | 176 | `result-track:e6a33c4862c449f6cdd607515ae297cdc22a821aff5496e61cfd40ee80727ce8` |
| 16 | `lemma` | [levyProkhorovDist_triangle](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/levyprokhorovdist-triangle.md) | 180 | `result-track:39873a3ac5c33e2b4607bd21ae19ced5df3391de479f1038387fa3c5a8cc4b9c` |
| 17 | `def` | [LevyProkhorov](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/levyprokhorov.md) | 191 | `declaration-track:c6752450b67663d934f96f469b9802a514019e34bf6734006a59c66f1cd043d8` |
| 18 | `def` | [LevyProkhorov.equiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/levyprokhorov-equiv.md) | 194 | `declaration-track:6edad25b54fcf433d4ec48d8aebc0831aaa14ea7a8509464d94578f30a139f42` |
| 19 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/instance.md) | 200 | `declaration-track:44a67d444e56d570c74d7abe6c49d5adb71a9d86bdf349e17999417cc762659b` |
| 20 | `instance` | [levyProkhorovDist_pseudoMetricSpace_finiteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/levyprokhorovdist-pseudometricspace-finitemeasure.md) | 209 | `declaration-track:a7496c7668f8670c0e391b35f0a3a74664bcd9285323de57c69558139b131359` |
| 21 | `lemma` | [measure_le_measure_closure_of_levyProkhorovEDist_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/measure-le-measure-closure-of-levyprokhorovedist-eq-zero.md) | 217 | `result-track:d8f2699ad76b6cd5ceef4f0143a070fd2d001cfd4d6333b5fc897121913fcb3f` |
| 22 | `lemma` | [measure_eq_measure_of_levyProkhorovEDist_eq_zero_of_isClosed](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/measure-eq-measure-of-levyprokhorovedist-eq-zero-of-isclosed.md) | 236 | `result-track:9d227acf26f83c6574603138a12d4e91e37527fc882d4ec540eb0b22940028f8` |
| 23 | `instance` | [levyProkhorovDist_pseudoMetricSpace_probabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/levyprokhorovdist-pseudometricspace-probabilitymeasure.md) | 254 | `declaration-track:0a50831f6c15bb9ab7f37ebb9fcb0dca8fb1fb6517c112a3ac1d353d057b1bcf` |
| 24 | `lemma` | [LevyProkhorov.dist_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/levyprokhorov-dist-def.md) | 262 | `result-track:ce36bd21013afe639700107f101a4a6009a2a4679bb4519d22652407dee7e266` |
| 25 | `instance` | [levyProkhorovDist_metricSpace_probabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/levyprokhorovdist-metricspace-probabilitymeasure.md) | 271 | `declaration-track:d67e8448dd2dae2bc2f3421ec628fdb5b5c44a0bc8d41575b4a443e1869e076d` |
| 26 | `lemma` | [levyProkhorovEDist_le_of_forall_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/levyprokhorovedist-le-of-forall-le.md) | 290 | `result-track:46ec1d3bcc285314f4054c001b49bcf8577e6565cc6310557f292518a1e84610` |
| 27 | `lemma` | [levyProkhorovDist_le_of_forall_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/levyprokhorovdist-le-of-forall-le.md) | 310 | `result-track:5d3a1d360e4547addc7f0340297d87b0d69e83e86364d41f5d28922d312e3c9a` |
| 28 | `lemma` | [BoundedContinuousFunction.integral_eq_integral_meas_le_of_hasFiniteIntegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/boundedcontinuousfunction-integral-eq-integral-meas-le-of-hasfiniteinteg.md) | 338 | `result-track:d3c0c0435df50303267f1935c59259edc96176855c743d3b16aa67677eaea937` |
| 29 | `lemma` | [BoundedContinuousFunction.integral_eq_integral_meas_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/boundedcontinuousfunction-integral-eq-integral-meas-le.md) | 348 | `result-track:fb90aa54d8b6298e20c1d9194b6637e74a1dfaea98f8b27f9580f4f0df2f31bb` |
| 30 | `lemma` | [BoundedContinuousFunction.integral_le_of_levyProkhorovEDist_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/boundedcontinuousfunction-integral-le-of-levyprokhorovedist-lt.md) | 356 | `result-track:6daecd498b67d58cadf22ca9a928b5039d29874fc07a6cb19474fe2a3c05b7dc` |
| 31 | `lemma` | [tendsto_integral_meas_thickening_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/tendsto-integral-meas-thickening-le.md) | 396 | `result-track:0bb48299e533e8469bc1ef69f4ce24b7fa3e05718edc222ceeb404ab839256e2` |
| 32 | `lemma` | [LevyProkhorov.continuous_equiv_probabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/levyprokhorov-continuous-equiv-probabilitymeasure.md) | 421 | `result-track:931338bcbca6b29eaef72f5352768495e8328277a1fb3cc065b57ad971047211` |
| 33 | `theorem` | [levyProkhorov_le_convergenceInDistribution](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/levyprokhorov-le-convergenceindistribution.md) | 477 | `result-track:c00fbfbed4ea778bade57ce622b25828b500bc7d41157885d1ff97ba0da64823` |
| 34 | `lemma` | [ProbabilityMeasure.toMeasure_add_pos_gt_mem_nhds](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/probabilitymeasure-tomeasure-add-pos-gt-mem-nhds.md) | 493 | `result-track:03502a128886ef0eb3d6975a13284bd33a87bb71b7baeb27beba4a6314e3bb93` |
| 35 | `lemma` | [SeparableSpace.exists_measurable_partition_diam_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/separablespace-exists-measurable-partition-diam-le.md) | 517 | `result-track:5e618f3d4358ed9d7bfd8e05919aeeaf327f9ff2228c9bb77d691dc70f0c7763` |
| 36 | `lemma` | [LevyProkhorov.continuous_equiv_symm_probabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/levyprokhorov-continuous-equiv-symm-probabilitymeasure.md) | 547 | `result-track:cb41eb74dc0227d51b8a8f2e63b7d7e1aa0c8d1c6af75c32e3ec93fa8db9ee3a` |
| 37 | `theorem` | [levyProkhorov_eq_convergenceInDistribution](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/levyprokhorov-eq-convergenceindistribution.md) | 646 | `result-track:896e5bd03ad922f20c5f9b8bd8a2fbb5964222407bd4bbec50810fc64c0cbb2c` |
| 38 | `def` | [homeomorph_probabilityMeasure_levyProkhorov](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/homeomorph-probabilitymeasure-levyprokhorov.md) | 654 | `declaration-track:6835a5e8c07790a044e30940d78966047af28fa2db38cc5bdc3a90a9b6e5b936` |
| 39 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/instance-source-edition-2.md) | 664 | `declaration-track:f1dc8161a6d0d669ee5933fdb41a28235afb8b58d87fc2b40d07c5a9105f58f6` |
| 40 | `instance` | [instMetrizableSpaceProbabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LevyProkhorovMetric.lean/declarations/instmetrizablespaceprobabilitymeasure.md) | 671 | `declaration-track:c240939d19f991562ab1338cf4fd081434f4697686cb4bd8df5726892ba16af8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ddbc7bd8fe0bd20ffd1578ebd55e1377e6428dc00b867f8b3e7866b566e615e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant757c2e88728386685877902bcbc7d4bb5285e66cf2ec9540252c6a9a0e6c3c73.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant757c2e88728386685877902bcbc7d4bb5285e66cf2ec9540252c6a9a0e6c3c73.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
