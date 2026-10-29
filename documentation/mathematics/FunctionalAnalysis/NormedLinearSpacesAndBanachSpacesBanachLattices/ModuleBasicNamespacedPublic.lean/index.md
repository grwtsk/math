# Module Basic Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**94 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantacef8f6d856223660765ef15b98bf4c3b07e62e4281b25559af7e812e8c346dc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `343df2571d6445e1c6b7188fdfe11dda639d55be`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [NormedSpace](declarations/normedspace.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [NormedSpace.toIsBoundedSMul](declarations/normedspace-toisboundedsmul.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [NormedField.toNormedSpace](declarations/normedfield-tonormedspace.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [norm_zsmul](declarations/norm-zsmul.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [norm_intCast_eq_abs_mul_norm_one](declarations/norm-intcast-eq-abs-mul-norm-one.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [norm_natCast_eq_mul_norm_one](declarations/norm-natcast-eq-mul-norm-one.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [norm_natCast](declarations/norm-natcast.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [eventually_nhds_norm_smul_sub_lt](declarations/eventually-nhds-norm-smul-sub-lt.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Filter.Tendsto.zero_smul_isBoundedUnder_le](declarations/filter-tendsto-zero-smul-isboundedunder-le.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Filter.IsBoundedUnder.smul_tendsto_zero](declarations/filter-isboundedunder-smul-tendsto-zero.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [NormedSpace.discreteTopology_zmultiples](declarations/normedspace-discretetopology-zmultiples.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [Metric.diam_sphere_eq](declarations/metric-diam-sphere-eq.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [Metric.diam_closedBall_eq](declarations/metric-diam-closedball-eq.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [Metric.diam_ball_eq](declarations/metric-diam-ball-eq.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [ULift.normedSpace](declarations/ulift-normedspace.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [Prod.normedSpace](declarations/prod-normedspace.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [Pi.normedSpace](declarations/pi-normedspace.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [SeparationQuotient.instNormedSpace](declarations/separationquotient-instnormedspace.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [MulOpposite.instNormedSpace](declarations/mulopposite-instnormedspace.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [Submodule.normedSpace](declarations/submodule-normedspace.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [ClosedSubmodule.normedSpace](declarations/closedsubmodule-normedspace.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `abbrev` | [NormedSpace.induced](declarations/normedspace-induced.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [NormedSpace.exists_lt_norm](declarations/normedspace-exists-lt-norm.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [NormedSpace.unbounded_univ](declarations/normedspace-unbounded-univ.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [NormedSpace.cobounded_neBot](declarations/normedspace-cobounded-nebot.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [NormedSpace.noncompactSpace](declarations/normedspace-noncompactspace.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `class` | [NormedAlgebra](declarations/normedalgebra.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [norm_algebraMap](declarations/norm-algebramap-source-edition-2.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [nnnorm_algebraMap](declarations/nnnorm-algebramap-source-edition-2.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [enorm_algebraMap](declarations/enorm-algebramap.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [dist_algebraMap](declarations/dist-algebramap-source-edition-2.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [norm_algebraMap'](declarations/norm-algebramap.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Algebra.norm_smul_one_eq_norm](declarations/algebra-norm-smul-one-eq-norm.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [nnnorm_algebraMap'](declarations/nnnorm-algebramap.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [enorm_algebraMap'](declarations/enorm-algebramap-source-edition-2.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [dist_algebraMap'](declarations/dist-algebramap.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [norm_algebraMap_nnreal](declarations/norm-algebramap-nnreal.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [nnnorm_algebraMap_nnreal](declarations/nnnorm-algebramap-nnreal.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [tendsto_algebraMap_cobounded](declarations/tendsto-algebramap-cobounded.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [algebraMap_isometry](declarations/algebramap-isometry.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [NormedAlgebra.id](declarations/normedalgebra-id.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [normedAlgebraRat](declarations/normedalgebrarat.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [PUnit.normedAlgebra](declarations/punit-normedalgebra.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [Prod.normedAlgebra](declarations/prod-normedalgebra.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [Pi.normedAlgebra](declarations/pi-normedalgebra.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [SeparationQuotient.instNormedAlgebra](declarations/separationquotient-instnormedalgebra.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [MulOpposite.instNormedAlgebra](declarations/mulopposite-instnormedalgebra.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `abbrev` | [NormedAlgebra.induced](declarations/normedalgebra-induced.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [Subalgebra.toNormedAlgebra](declarations/subalgebra-tonormedalgebra.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance-source-edition-20.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance-source-edition-19.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [NormedSpace.restrictScalars](declarations/normedspace-restrictscalars.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [NormedSpace.restrictScalars_eq](declarations/normedspace-restrictscalars-eq.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [RestrictScalars.normedSpace](declarations/restrictscalars-normedspace.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [Module.RestrictScalars.normedSpaceOrig](declarations/module-restrictscalars-normedspaceorig.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [NormedAlgebra.restrictScalars](declarations/normedalgebra-restrictscalars.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [RestrictScalars.normedAlgebra](declarations/restrictscalars-normedalgebra.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [Module.RestrictScalars.normedAlgebraOrig](declarations/module-restrictscalars-normedalgebraorig.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `structure` | [SeminormedSpace.Core](declarations/seminormedspace-core.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `abbrev` | [PseudoMetricSpace.ofSeminormedSpaceCore](declarations/pseudometricspace-ofseminormedspacecore.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `abbrev` | [PseudoEMetricSpace.ofSeminormedSpaceCore](declarations/pseudoemetricspace-ofseminormedspacecore.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `abbrev` | [PseudoMetricSpace.ofSeminormedSpaceCoreReplaceUniformity](declarations/pseudometricspace-ofseminormedspacecorereplaceuniformity.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `abbrev` | [PseudoMetricSpace.ofSeminormedSpaceCoreReplaceTopology](declarations/pseudometricspace-ofseminormedspacecorereplacetopology.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `abbrev` | [PseudoMetricSpace.ofSeminormedSpaceCoreReplaceAll](declarations/pseudometricspace-ofseminormedspacecorereplaceall.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `abbrev` | [SeminormedAddCommGroup.ofCore](declarations/seminormedaddcommgroup-ofcore.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `abbrev` | [SeminormedAddCommGroup.ofCoreReplaceUniformity](declarations/seminormedaddcommgroup-ofcorereplaceuniformity.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `abbrev` | [SeminormedAddCommGroup.ofCoreReplaceTopology](declarations/seminormedaddcommgroup-ofcorereplacetopology.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `abbrev` | [SeminormedAddCommGroup.ofCoreReplaceAll](declarations/seminormedaddcommgroup-ofcorereplaceall.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `structure` | [NormedSpace.Core](declarations/normedspace-core.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `abbrev` | [NormedAddCommGroup.ofCore](declarations/normedaddcommgroup-ofcore.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `abbrev` | [NormedAddCommGroup.ofCoreReplaceUniformity](declarations/normedaddcommgroup-ofcorereplaceuniformity.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `abbrev` | [NormedAddCommGroup.ofCoreReplaceTopology](declarations/normedaddcommgroup-ofcorereplacetopology.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `abbrev` | [NormedAddCommGroup.ofCoreReplaceAll](declarations/normedaddcommgroup-ofcorereplaceall.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `abbrev` | [NormedSpace.ofCore](declarations/normedspace-ofcore.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `lemma` | [AddMonoidHom.continuous_of_isBounded_nhds_zero](declarations/addmonoidhom-continuous-of-isbounded-nhds-zero.md) | 782 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `abbrev` | [IsUnital.toNormedAlgebra](declarations/isunital-tonormedalgebra.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=97d0550f064cd9f234d394e7dc1b0e17526b788d2cd63a77eb4f206943ce08b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantacef8f6d856223660765ef15b98bf4c3b07e62e4281b25559af7e812e8c346dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
