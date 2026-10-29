# Continuous Map Zero At Infty Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**93 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variant64563bf4bdecb8eae7f53ea140926f7a60e75b9507d3784011924d7b6c8e4169.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f79b9219f4bdf77ba4f929d6bab7b66539c77b0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/ContinuousMapZeroAtInftyPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ZeroAtInftyContinuousMap](declarations/zeroatinftycontinuousmap.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [ZeroAtInftyContinuousMapClass](declarations/zeroatinftycontinuousmapclass.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instFunLike](declarations/instfunlike.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instZeroAtInftyContinuousMapClass](declarations/instzeroatinftycontinuousmapclass.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [instCoeTC](declarations/instcoetc.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coe_toContinuousMap](declarations/coe-tocontinuousmap.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [ext](declarations/ext.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [coe_mk](declarations/coe-mk.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [copy](declarations/copy.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coe_copy](declarations/coe-copy.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [copy_eq](declarations/copy-eq.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eq_of_empty](declarations/eq-of-empty.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [ContinuousMap.liftZeroAtInfty](declarations/continuousmap-liftzeroatinfty.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [zeroAtInftyContinuousMapClass.ofCompact](declarations/zeroatinftycontinuousmapclass-ofcompact.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [instZero](declarations/instzero.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [instInhabited](declarations/instinhabited.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_zero](declarations/coe-zero.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [zero_apply](declarations/zero-apply.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [instMul](declarations/instmul.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coe_mul](declarations/coe-mul.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mul_apply](declarations/mul-apply.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [instMulZeroClass](declarations/instmulzeroclass.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [instSemigroupWithZero](declarations/instsemigroupwithzero.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [instAdd](declarations/instadd.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coe_add](declarations/coe-add.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [add_apply](declarations/add-apply.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [instAddZeroClass](declarations/instaddzeroclass.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [instSMul](declarations/instsmul.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coe_smul](declarations/coe-smul.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [smul_apply](declarations/smul-apply.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [instAddMonoid](declarations/instaddmonoid.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [instAddCommMonoid](declarations/instaddcommmonoid.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [instNeg](declarations/instneg.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coe_neg](declarations/coe-neg.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [neg_apply](declarations/neg-apply.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [instSub](declarations/instsub.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [coe_sub](declarations/coe-sub.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [sub_apply](declarations/sub-apply.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [instAddGroup](declarations/instaddgroup.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [instAddCommGroup](declarations/instaddcommgroup.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [instIsCentralScalar](declarations/instiscentralscalar.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [instIsScalarTower'](declarations/instisscalartower.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [instSMulCommClass'](declarations/instsmulcommclass.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [instSMulWithZero](declarations/instsmulwithzero.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [instMulActionWithZero](declarations/instmulactionwithzero.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [instModule](declarations/instmodule.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [instNonUnitalNonAssocSemiring](declarations/instnonunitalnonassocsemiring.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [instNonUnitalSemiring](declarations/instnonunitalsemiring.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [instNonUnitalCommSemiring](declarations/instnonunitalcommsemiring.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [instNonUnitalNonAssocRing](declarations/instnonunitalnonassocring.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [instNonUnitalRing](declarations/instnonunitalring.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [instNonUnitalCommRing](declarations/instnonunitalcommring.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [instIsScalarTower](declarations/instisscalartower-source-edition-2.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [instSMulCommClass](declarations/instsmulcommclass-source-edition-2.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [uniformContinuous](declarations/uniformcontinuous.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [bounded](declarations/bounded.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [isBounded_range](declarations/isbounded-range.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [isBounded_image](declarations/isbounded-image.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [toBCF](declarations/tobcf.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [toBCF_injective](declarations/tobcf-injective.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [instPseudoMetricSpace](declarations/instpseudometricspace.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [instMetricSpace](declarations/instmetricspace.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [dist_toBCF_eq_dist](declarations/dist-tobcf-eq-dist.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [tendsto_iff_tendstoUniformly](declarations/tendsto-iff-tendstouniformly.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [isometry_toBCF](declarations/isometry-tobcf.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [isClosed_range_toBCF](declarations/isclosed-range-tobcf.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [instCompleteSpace](declarations/instcompletespace.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [instSeminormedAddCommGroup](declarations/instseminormedaddcommgroup.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [instNormedAddCommGroup](declarations/instnormedaddcommgroup.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [norm_toBCF_eq_norm](declarations/norm-tobcf-eq-norm.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [(anonymous)](declarations/instance.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [instNonUnitalSeminormedRing](declarations/instnonunitalseminormedring.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [instNonUnitalNormedRing](declarations/instnonunitalnormedring.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [instNonUnitalSeminormedCommRing](declarations/instnonunitalseminormedcommring.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [instNonUnitalNormedCommRing](declarations/instnonunitalnormedcommring.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [instStar](declarations/inststar.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [coe_star](declarations/coe-star.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [star_apply](declarations/star-apply.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [instStarAddMonoid](declarations/inststaraddmonoid.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [instNormedStarGroup](declarations/instnormedstargroup.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [instStarModule](declarations/inststarmodule.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `instance` | [instStarRing](declarations/inststarring.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [instCStarRing](declarations/instcstarring.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [comp](declarations/comp.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [coe_comp_to_continuous_fun](declarations/coe-comp-to-continuous-fun.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [comp_id](declarations/comp-id.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [zero_comp](declarations/zero-comp.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [compAddMonoidHom](declarations/compaddmonoidhom.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [compMulHom](declarations/compmulhom.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [compLinearMap](declarations/complinearmap.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [compNonUnitalAlgHom](declarations/compnonunitalalghom.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e66858d0acca1642ac0c0682eb57639bbeb0925965f30743f296bcaefb719c8d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variant64563bf4bdecb8eae7f53ea140926f7a60e75b9507d3784011924d7b6c8e4169.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
