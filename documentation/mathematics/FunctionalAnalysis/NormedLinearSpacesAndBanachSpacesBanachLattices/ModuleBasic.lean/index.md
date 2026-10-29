# Module Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**80 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant52a7c99e112cc29f39c5f0b2dedb1d645c74a6ee6e13872d51f5cb894320631f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c77fe8ce4676de7bd21c3a0f6adf1017168bdcc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [NormedSpace](declarations/normedspace.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [NormedSpace.toIsBoundedSMul](declarations/normedspace-toisboundedsmul.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [NormedField.toNormedSpace](declarations/normedfield-tonormedspace.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [norm_zsmul](declarations/norm-zsmul.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [norm_intCast_eq_abs_mul_norm_one](declarations/norm-intcast-eq-abs-mul-norm-one.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [norm_natCast_eq_mul_norm_one](declarations/norm-natcast-eq-mul-norm-one.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [eventually_nhds_norm_smul_sub_lt](declarations/eventually-nhds-norm-smul-sub-lt.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Filter.Tendsto.zero_smul_isBoundedUnder_le](declarations/filter-tendsto-zero-smul-isboundedunder-le.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Filter.IsBoundedUnder.smul_tendsto_zero](declarations/filter-isboundedunder-smul-tendsto-zero.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [NormedSpace.discreteTopology_zmultiples](declarations/normedspace-discretetopology-zmultiples.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [ULift.normedSpace](declarations/ulift-normedspace.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [Prod.normedSpace](declarations/prod-normedspace.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [Pi.normedSpace](declarations/pi-normedspace.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [SeparationQuotient.instNormedSpace](declarations/separationquotient-instnormedspace.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [MulOpposite.instNormedSpace](declarations/mulopposite-instnormedspace.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [Submodule.normedSpace](declarations/submodule-normedspace.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `abbrev` | [NormedSpace.induced](declarations/normedspace-induced.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [NormedSpace.exists_lt_norm](declarations/normedspace-exists-lt-norm.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [NormedSpace.unbounded_univ](declarations/normedspace-unbounded-univ.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [NormedSpace.cobounded_neBot](declarations/normedspace-cobounded-nebot.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [NormedSpace.noncompactSpace](declarations/normedspace-noncompactspace.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `class` | [NormedAlgebra](declarations/normedalgebra.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-20.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [norm_algebraMap](declarations/norm-algebramap-source-edition-2.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [nnnorm_algebraMap](declarations/nnnorm-algebramap-source-edition-2.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [dist_algebraMap](declarations/dist-algebramap.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [norm_algebraMap'](declarations/norm-algebramap.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [nnnorm_algebraMap'](declarations/nnnorm-algebramap.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [dist_algebraMap'](declarations/dist-algebramap-source-edition-2.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [norm_algebraMap_nnreal](declarations/norm-algebramap-nnreal.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [nnnorm_algebraMap_nnreal](declarations/nnnorm-algebramap-nnreal.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [algebraMap_isometry](declarations/algebramap-isometry.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [NormedAlgebra.id](declarations/normedalgebra-id.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [normedAlgebraRat](declarations/normedalgebrarat.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [PUnit.normedAlgebra](declarations/punit-normedalgebra.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [Prod.normedAlgebra](declarations/prod-normedalgebra.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [Pi.normedAlgebra](declarations/pi-normedalgebra.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [SeparationQuotient.instNormedAlgebra](declarations/separationquotient-instnormedalgebra.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [MulOpposite.instNormedAlgebra](declarations/mulopposite-instnormedalgebra.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `abbrev` | [NormedAlgebra.induced](declarations/normedalgebra-induced.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [Subalgebra.toNormedAlgebra](declarations/subalgebra-tonormedalgebra.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-19.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [RestrictScalars.normedSpace](declarations/restrictscalars-normedspace.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [Module.RestrictScalars.normedSpaceOrig](declarations/module-restrictscalars-normedspaceorig.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `abbrev` | [NormedSpace.restrictScalars](declarations/normedspace-restrictscalars.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [RestrictScalars.normedAlgebra](declarations/restrictscalars-normedalgebra.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [Module.RestrictScalars.normedAlgebraOrig](declarations/module-restrictscalars-normedalgebraorig.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `abbrev` | [NormedAlgebra.restrictScalars](declarations/normedalgebra-restrictscalars.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `structure` | [SeminormedAddCommGroup.Core](declarations/seminormedaddcommgroup-core.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `abbrev` | [PseudoMetricSpace.ofSeminormedAddCommGroupCore](declarations/pseudometricspace-ofseminormedaddcommgroupcore.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `abbrev` | [PseudoEMetricSpace.ofSeminormedAddCommGroupCore](declarations/pseudoemetricspace-ofseminormedaddcommgroupcore.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `abbrev` | [PseudoMetricSpace.ofSeminormedAddCommGroupCoreReplaceUniformity](declarations/pseudometricspace-ofseminormedaddcommgroupcorereplaceuniformity.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `abbrev` | [PseudoMetricSpace.ofSeminormedAddCommGroupCoreReplaceAll](declarations/pseudometricspace-ofseminormedaddcommgroupcorereplaceall.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `abbrev` | [SeminormedAddCommGroup.ofCore](declarations/seminormedaddcommgroup-ofcore.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `abbrev` | [SeminormedAddCommGroup.ofCoreReplaceUniformity](declarations/seminormedaddcommgroup-ofcorereplaceuniformity.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `abbrev` | [SeminormedAddCommGroup.ofCoreReplaceAll](declarations/seminormedaddcommgroup-ofcorereplaceall.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `structure` | [NormedSpace.Core](declarations/normedspace-core.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `abbrev` | [NormedAddCommGroup.ofCore](declarations/normedaddcommgroup-ofcore.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `abbrev` | [NormedAddCommGroup.ofCoreReplaceUniformity](declarations/normedaddcommgroup-ofcorereplaceuniformity.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `abbrev` | [NormedAddCommGroup.ofCoreReplaceAll](declarations/normedaddcommgroup-ofcorereplaceall.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `abbrev` | [NormedSpace.ofCore](declarations/normedspace-ofcore.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [AddMonoidHom.continuous_of_isBounded_nhds_zero](declarations/addmonoidhom-continuous-of-isbounded-nhds-zero.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e222d0b07243db24b215ce3f9621529049982fa4ea608ced68d5f7d478658bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant52a7c99e112cc29f39c5f0b2dedb1d645c74a6ee6e13872d51f5cb894320631f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
