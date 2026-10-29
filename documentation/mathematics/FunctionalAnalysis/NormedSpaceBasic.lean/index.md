# Normed Space Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**63 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant4333f436fc9a3617c3a0a2a9b04ffec7363013807a9772c88b4ca4007602f93b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a769baec052fefdfb172eaa92c85cfb7d9cfbe84`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/NormedSpaceBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [NormedSpace](declarations/normedspace.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [NormedField.toNormedSpace](declarations/normedfield-tonormedspace.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [NormedField.to_boundedSMul](declarations/normedfield-to-boundedsmul.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [norm_zsmul](declarations/norm-zsmul.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [abs_norm](declarations/abs-norm.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [inv_norm_smul_mem_closed_unit_ball](declarations/inv-norm-smul-mem-closed-unit-ball.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [norm_smul_of_nonneg](declarations/norm-smul-of-nonneg.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [eventually_nhds_norm_smul_sub_lt](declarations/eventually-nhds-norm-smul-sub-lt.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Filter.Tendsto.zero_smul_isBoundedUnder_le](declarations/filter-tendsto-zero-smul-isboundedunder-le.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Filter.IsBoundedUnder.smul_tendsto_zero](declarations/filter-isboundedunder-smul-tendsto-zero.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [closure_ball](declarations/closure-ball.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [frontier_ball](declarations/frontier-ball.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [interior_closedBall](declarations/interior-closedball-source-edition-2.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [frontier_closedBall](declarations/frontier-closedball.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [interior_sphere](declarations/interior-sphere-source-edition-2.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [frontier_sphere](declarations/frontier-sphere-source-edition-2.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [NormedSpace.discreteTopology_zmultiples](declarations/normedspace-discretetopology-zmultiples.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [ULift.normedSpace](declarations/ulift-normedspace.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [Prod.normedSpace](declarations/prod-normedspace.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [Pi.normedSpace](declarations/pi-normedspace.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [MulOpposite.normedSpace](declarations/mulopposite-normedspace.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [Submodule.normedSpace](declarations/submodule-normedspace.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [NormedSpace.induced](declarations/normedspace-induced.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [exists_norm_eq](declarations/exists-norm-eq.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [range_norm](declarations/range-norm.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [nnnorm_surjective](declarations/nnnorm-surjective.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [range_nnnorm](declarations/range-nnnorm.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [Real.punctured_nhds_module_neBot](declarations/real-punctured-nhds-module-nebot.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [interior_closedBall'](declarations/interior-closedball.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [frontier_closedBall'](declarations/frontier-closedball-source-edition-2.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [interior_sphere'](declarations/interior-sphere.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [frontier_sphere'](declarations/frontier-sphere.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [NormedSpace.exists_lt_norm](declarations/normedspace-exists-lt-norm.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [NormedSpace.unbounded_univ](declarations/normedspace-unbounded-univ.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [NormedSpace.noncompactSpace](declarations/normedspace-noncompactspace.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `class` | [NormedAlgebra](declarations/normedalgebra.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [norm_algebraMap](declarations/norm-algebramap.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [nnnorm_algebraMap](declarations/nnnorm-algebramap-source-edition-2.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [norm_algebraMap'](declarations/norm-algebramap-source-edition-2.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [nnnorm_algebraMap'](declarations/nnnorm-algebramap.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [norm_algebraMap_nNReal](declarations/norm-algebramap-nnreal.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [nnnorm_algebraMap_nNReal](declarations/nnnorm-algebramap-nnreal.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [algebraMap_isometry](declarations/algebramap-isometry.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [NormedAlgebra.id](declarations/normedalgebra-id.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [normedAlgebraRat](declarations/normedalgebrarat.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [PUnit.normedAlgebra](declarations/punit-normedalgebra.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [Prod.normedAlgebra](declarations/prod-normedalgebra.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [Pi.normedAlgebra](declarations/pi-normedalgebra.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [MulOpposite.normedAlgebra](declarations/mulopposite-normedalgebra.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [NormedAlgebra.induced](declarations/normedalgebra-induced.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [Subalgebra.toNormedAlgebra](declarations/subalgebra-tonormedalgebra.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [RestrictScalars.normedSpace](declarations/restrictscalars-normedspace.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [Module.RestrictScalars.normedSpaceOrig](declarations/module-restrictscalars-normedspaceorig.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [NormedSpace.restrictScalars](declarations/normedspace-restrictscalars.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2643fc856a249e34b9b1ed8ddcd8581b232acef432ecfcfb4618139221eea65b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant4333f436fc9a3617c3a0a2a9b04ffec7363013807a9772c88b4ca4007602f93b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
