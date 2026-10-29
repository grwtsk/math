# Module Basic Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**80 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant23b747ffe43fab18204e61f63779a797121cdb23b59d966578e8265105a49246.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b7b64d2a6ed6dc245a1babb322492685b0c36e1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [NormedSpace](declarations/normedspace.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [NormedSpace.toIsBoundedSMul](declarations/normedspace-toisboundedsmul.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [NormedField.toNormedSpace](declarations/normedfield-tonormedspace.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [norm_zsmul](declarations/norm-zsmul.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [norm_intCast_eq_abs_mul_norm_one](declarations/norm-intcast-eq-abs-mul-norm-one.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [norm_natCast_eq_mul_norm_one](declarations/norm-natcast-eq-mul-norm-one.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [eventually_nhds_norm_smul_sub_lt](declarations/eventually-nhds-norm-smul-sub-lt.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Filter.Tendsto.zero_smul_isBoundedUnder_le](declarations/filter-tendsto-zero-smul-isboundedunder-le.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Filter.IsBoundedUnder.smul_tendsto_zero](declarations/filter-isboundedunder-smul-tendsto-zero.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [NormedSpace.discreteTopology_zmultiples](declarations/normedspace-discretetopology-zmultiples.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [ULift.normedSpace](declarations/ulift-normedspace.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [Prod.normedSpace](declarations/prod-normedspace.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [Pi.normedSpace](declarations/pi-normedspace.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [SeparationQuotient.instNormedSpace](declarations/separationquotient-instnormedspace.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [MulOpposite.instNormedSpace](declarations/mulopposite-instnormedspace.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [Submodule.normedSpace](declarations/submodule-normedspace.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `abbrev` | [NormedSpace.induced](declarations/normedspace-induced.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [NormedSpace.exists_lt_norm](declarations/normedspace-exists-lt-norm.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [NormedSpace.unbounded_univ](declarations/normedspace-unbounded-univ.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [NormedSpace.cobounded_neBot](declarations/normedspace-cobounded-nebot.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-20.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [NormedSpace.noncompactSpace](declarations/normedspace-noncompactspace.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `class` | [NormedAlgebra](declarations/normedalgebra.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [norm_algebraMap](declarations/norm-algebramap-source-edition-2.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [nnnorm_algebraMap](declarations/nnnorm-algebramap-source-edition-2.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [dist_algebraMap](declarations/dist-algebramap.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [norm_algebraMap'](declarations/norm-algebramap.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [nnnorm_algebraMap'](declarations/nnnorm-algebramap.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [dist_algebraMap'](declarations/dist-algebramap-source-edition-2.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [norm_algebraMap_nnreal](declarations/norm-algebramap-nnreal.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [nnnorm_algebraMap_nnreal](declarations/nnnorm-algebramap-nnreal.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [algebraMap_isometry](declarations/algebramap-isometry.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [NormedAlgebra.id](declarations/normedalgebra-id.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [normedAlgebraRat](declarations/normedalgebrarat.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [PUnit.normedAlgebra](declarations/punit-normedalgebra.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [Prod.normedAlgebra](declarations/prod-normedalgebra.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [Pi.normedAlgebra](declarations/pi-normedalgebra.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [SeparationQuotient.instNormedAlgebra](declarations/separationquotient-instnormedalgebra.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [MulOpposite.instNormedAlgebra](declarations/mulopposite-instnormedalgebra.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `abbrev` | [NormedAlgebra.induced](declarations/normedalgebra-induced.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [Subalgebra.toNormedAlgebra](declarations/subalgebra-tonormedalgebra.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [(anonymous)](declarations/instance.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance-source-edition-19.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [RestrictScalars.normedSpace](declarations/restrictscalars-normedspace.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [Module.RestrictScalars.normedSpaceOrig](declarations/module-restrictscalars-normedspaceorig.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `abbrev` | [NormedSpace.restrictScalars](declarations/normedspace-restrictscalars.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [RestrictScalars.normedAlgebra](declarations/restrictscalars-normedalgebra.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [Module.RestrictScalars.normedAlgebraOrig](declarations/module-restrictscalars-normedalgebraorig.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `abbrev` | [NormedAlgebra.restrictScalars](declarations/normedalgebra-restrictscalars.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `structure` | [SeminormedAddCommGroup.Core](declarations/seminormedaddcommgroup-core.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `abbrev` | [PseudoMetricSpace.ofSeminormedAddCommGroupCore](declarations/pseudometricspace-ofseminormedaddcommgroupcore.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `abbrev` | [PseudoEMetricSpace.ofSeminormedAddCommGroupCore](declarations/pseudoemetricspace-ofseminormedaddcommgroupcore.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `abbrev` | [PseudoMetricSpace.ofSeminormedAddCommGroupCoreReplaceUniformity](declarations/pseudometricspace-ofseminormedaddcommgroupcorereplaceuniformity.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `abbrev` | [PseudoMetricSpace.ofSeminormedAddCommGroupCoreReplaceAll](declarations/pseudometricspace-ofseminormedaddcommgroupcorereplaceall.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `abbrev` | [SeminormedAddCommGroup.ofCore](declarations/seminormedaddcommgroup-ofcore.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `abbrev` | [SeminormedAddCommGroup.ofCoreReplaceUniformity](declarations/seminormedaddcommgroup-ofcorereplaceuniformity.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `abbrev` | [SeminormedAddCommGroup.ofCoreReplaceAll](declarations/seminormedaddcommgroup-ofcorereplaceall.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `structure` | [NormedSpace.Core](declarations/normedspace-core.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `abbrev` | [NormedAddCommGroup.ofCore](declarations/normedaddcommgroup-ofcore.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `abbrev` | [NormedAddCommGroup.ofCoreReplaceUniformity](declarations/normedaddcommgroup-ofcorereplaceuniformity.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `abbrev` | [NormedAddCommGroup.ofCoreReplaceAll](declarations/normedaddcommgroup-ofcorereplaceall.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `abbrev` | [NormedSpace.ofCore](declarations/normedspace-ofcore.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [AddMonoidHom.continuous_of_isBounded_nhds_zero](declarations/addmonoidhom-continuous-of-isbounded-nhds-zero.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=599a4af488602dbc214d57cf4f6cabd75ca6e054d2640f913a5c24a19bd358d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant23b747ffe43fab18204e61f63779a797121cdb23b59d966578e8265105a49246.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
