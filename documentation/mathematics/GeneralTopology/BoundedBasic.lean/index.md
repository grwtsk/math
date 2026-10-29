# Bounded Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**115 observed declarations and anonymous commands**, 69 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Basic/Variant4a8ca6fe2838649bc862a0936b2475d99edf9f592786d5426217c4a0768d9e2b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7b18a2f76582351c69ec6bcf0f9c21e4df7bce5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/BoundedBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BoundedContinuousFunction](declarations/boundedcontinuousfunction.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [BoundedContinuousMapClass](declarations/boundedcontinuousmapclass.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instFunLike](declarations/instfunlike.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instBoundedContinuousMapClass](declarations/instboundedcontinuousmapclass.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [instCoeTC](declarations/instcoetc.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coe_toContinuousMap](declarations/coe-tocontinuousmap.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Simps.apply](declarations/simps-apply.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [bounded](declarations/bounded.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [continuous](declarations/continuous.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext](declarations/ext.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isBounded_range](declarations/isbounded-range.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isBounded_image](declarations/isbounded-image.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [eq_of_empty](declarations/eq-of-empty.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [mkOfBound](declarations/mkofbound.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mkOfBound_coe](declarations/mkofbound-coe.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mkOfCompact](declarations/mkofcompact.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mkOfCompact_apply](declarations/mkofcompact-apply.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [mkOfDiscrete](declarations/mkofdiscrete.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [instDist](declarations/instdist.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [dist_eq](declarations/dist-eq.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [dist_set_exists](declarations/dist-set-exists.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [dist_coe_le_dist](declarations/dist-coe-le-dist.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [dist_nonneg'](declarations/dist-nonneg.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [dist_le](declarations/dist-le.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [dist_le_iff_of_nonempty](declarations/dist-le-iff-of-nonempty.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [dist_lt_of_nonempty_compact](declarations/dist-lt-of-nonempty-compact.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [dist_lt_iff_of_compact](declarations/dist-lt-iff-of-compact.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [dist_lt_iff_of_nonempty_compact](declarations/dist-lt-iff-of-nonempty-compact.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [instPseudoMetricSpace](declarations/instpseudometricspace.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [instMetricSpace](declarations/instmetricspace.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [nndist_eq](declarations/nndist-eq.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [nndist_set_exists](declarations/nndist-set-exists.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [nndist_coe_le_nndist](declarations/nndist-coe-le-nndist.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [dist_zero_of_empty](declarations/dist-zero-of-empty.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [dist_eq_iSup](declarations/dist-eq-isup.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [nndist_eq_iSup](declarations/nndist-eq-isup.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [tendsto_iff_tendstoUniformly](declarations/tendsto-iff-tendstouniformly.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [isInducing_coeFn](declarations/isinducing-coefn.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [isEmbedding_coeFn](declarations/isembedding-coefn.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [const](declarations/const.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [const_apply'](declarations/const-apply.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [lipschitz_evalx](declarations/lipschitz-evalx.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [uniformContinuous_coe](declarations/uniformcontinuous-coe.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [continuous_coe](declarations/continuous-coe.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [continuous_eval_const](declarations/continuous-eval-const.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [continuous_eval](declarations/continuous-eval.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [instCompleteSpace](declarations/instcompletespace.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [compContinuous](declarations/compcontinuous.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [coe_compContinuous](declarations/coe-compcontinuous.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [compContinuous_apply](declarations/compcontinuous-apply.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [lipschitz_compContinuous](declarations/lipschitz-compcontinuous.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [continuous_compContinuous](declarations/continuous-compcontinuous.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [restrict](declarations/restrict.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [coe_restrict](declarations/coe-restrict.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [restrict_apply](declarations/restrict-apply.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [comp](declarations/comp.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [comp_apply](declarations/comp-apply.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [lipschitz_comp](declarations/lipschitz-comp.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [uniformContinuous_comp](declarations/uniformcontinuous-comp.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [continuous_comp](declarations/continuous-comp.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [codRestrict](declarations/codrestrict.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [extend](declarations/extend.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [extend_apply](declarations/extend-apply.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [extend_comp](declarations/extend-comp.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [extend_apply'](declarations/extend-apply-source-edition-2.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [extend_of_empty](declarations/extend-of-empty.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [dist_extend_extend](declarations/dist-extend-extend.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [isometry_extend](declarations/isometry-extend.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [indicator](declarations/indicator.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [instOne](declarations/instone.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [coe_one](declarations/coe-one.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [mkOfCompact_one](declarations/mkofcompact-one.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [forall_coe_one_iff_one](declarations/forall-coe-one-iff-one.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [one_compContinuous](declarations/one-compcontinuous.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [instMul](declarations/instmul.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [coe_mul](declarations/coe-mul.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [mul_apply](declarations/mul-apply.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [coe_nsmulRec](declarations/coe-nsmulrec.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [instSMulNat](declarations/instsmulnat.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [instPow](declarations/instpow.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [coe_pow](declarations/coe-pow.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [pow_apply](declarations/pow-apply.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [instMonoid](declarations/instmonoid.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [instCommMonoid](declarations/instcommmonoid.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [instMulOneClass](declarations/instmuloneclass.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [_root_.MonoidHom.compLeftContinuousBounded](declarations/root-monoidhom-compleftcontinuousbounded.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [mkOfCompact_add](declarations/mkofcompact-add.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [add_compContinuous](declarations/add-compcontinuous.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [coeFnAddHom](declarations/coefnaddhom.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [toContinuousMapAddHom](declarations/tocontinuousmapaddhom.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [coe_sum](declarations/coe-sum.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [sum_apply](declarations/sum-apply.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `instance` | [instLipschitzAdd](declarations/instlipschitzadd.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `instance` | [instSub](declarations/instsub.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [sub_apply](declarations/sub-apply.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [coe_sub](declarations/coe-sub.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [natCast_apply](declarations/natcast-apply.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [intCast_apply](declarations/intcast-apply.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `instance` | [instSemiring](declarations/instsemiring.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `instance` | [instSMul](declarations/instsmul.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [coe_smul](declarations/coe-smul.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [smul_apply](declarations/smul-apply.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `instance` | [instIsScalarTower](declarations/instisscalartower.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `instance` | [instSMulCommClass](declarations/instsmulcommclass.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `instance` | [instIsCentralScalar](declarations/instiscentralscalar.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `instance` | [instIsBoundedSMul](declarations/instisboundedsmul.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `instance` | [instMulAction](declarations/instmulaction.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `instance` | [instDistribMulAction](declarations/instdistribmulaction.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `instance` | [instModule](declarations/instmodule.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [evalCLM](declarations/evalclm.md) | 769 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [toContinuousMapLinearMap](declarations/tocontinuousmaplinearmap.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [NNReal.upper_bound](declarations/nnreal-upper-bound.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4cc51a1940ee1bd5f5494d9b1e867c7639dfb044ff21f309448e2c0d3ab73020 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant4a8ca6fe2838649bc862a0936b2475d99edf9f592786d5426217c4a0768d9e2b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
