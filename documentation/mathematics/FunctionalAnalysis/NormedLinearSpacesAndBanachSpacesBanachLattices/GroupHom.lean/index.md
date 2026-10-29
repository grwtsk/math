# Group Hom

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**137 observed declarations and anonymous commands**, 96 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/MetricTopology/Hom/Variantf6b9bbcf4e39637ef93fd977065137602fcbd1b1f717a183ea4012838dc8b13b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12f7c81f13026706600a5b1f77099ba6016a9b3f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupHom.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [NormedAddGroupHom](declarations/normedaddgrouphom.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [mkNormedAddGroupHom](declarations/mknormedaddgrouphom-source-edition-2.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [mkNormedAddGroupHom'](declarations/mknormedaddgrouphom.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [exists_pos_bound_of_bound](declarations/exists-pos-bound-of-bound.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [ofLipschitz](declarations/oflipschitz.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [funLike](declarations/funlike.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [toAddMonoidHomClass](declarations/toaddmonoidhomclass.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coe_inj](declarations/coe-inj.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_injective](declarations/coe-injective.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coe_inj_iff](declarations/coe-inj-iff.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ext](declarations/ext.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toFun_eq_coe](declarations/tofun-eq-coe.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coe_mk](declarations/coe-mk.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coe_mkNormedAddGroupHom](declarations/coe-mknormedaddgrouphom.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [coe_mkNormedAddGroupHom'](declarations/coe-mknormedaddgrouphom-source-edition-2.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [toAddMonoidHom](declarations/toaddmonoidhom.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_toAddMonoidHom](declarations/coe-toaddmonoidhom.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [toAddMonoidHom_injective](declarations/toaddmonoidhom-injective.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mk_toAddMonoidHom](declarations/mk-toaddmonoidhom.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [bound](declarations/bound.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [antilipschitz_of_norm_ge](declarations/antilipschitz-of-norm-ge.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [SurjectiveOnWith](declarations/surjectiveonwith.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [SurjectiveOnWith.mono](declarations/surjectiveonwith-mono.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [SurjectiveOnWith.exists_pos](declarations/surjectiveonwith-exists-pos.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [SurjectiveOnWith.surjOn](declarations/surjectiveonwith-surjon.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [opNorm](declarations/opnorm.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [hasOpNorm](declarations/hasopnorm.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [norm_def](declarations/norm-def.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [bounds_nonempty](declarations/bounds-nonempty.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [bounds_bddBelow](declarations/bounds-bddbelow.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [opNorm_nonneg](declarations/opnorm-nonneg.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [le_opNorm](declarations/le-opnorm.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [le_opNorm_of_le](declarations/le-opnorm-of-le.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [le_of_opNorm_le](declarations/le-of-opnorm-le.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [lipschitz](declarations/lipschitz.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [uniformContinuous](declarations/uniformcontinuous.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [continuous](declarations/continuous.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [ratio_le_opNorm](declarations/ratio-le-opnorm.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [opNorm_le_bound](declarations/opnorm-le-bound.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [opNorm_eq_of_bounds](declarations/opnorm-eq-of-bounds.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [opNorm_le_of_lipschitz](declarations/opnorm-le-of-lipschitz.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [mkNormedAddGroupHom_norm_le](declarations/mknormedaddgrouphom-norm-le-source-edition-2.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [ofLipschitz_norm_le](declarations/oflipschitz-norm-le.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [mkNormedAddGroupHom_norm_le'](declarations/mknormedaddgrouphom-norm-le.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [add](declarations/add.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [opNorm_add_le](declarations/opnorm-add-le.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [coe_add](declarations/coe-add.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [add_apply](declarations/add-apply.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [zero](declarations/zero.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [inhabited](declarations/inhabited.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [opNorm_zero](declarations/opnorm-zero.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [opNorm_zero_iff](declarations/opnorm-zero-iff.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [coe_zero](declarations/coe-zero.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [zero_apply](declarations/zero-apply.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [id](declarations/id-source-edition-2.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [norm_id_le](declarations/norm-id-le.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [norm_id_of_nontrivial_seminorm](declarations/norm-id-of-nontrivial-seminorm.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [norm_id](declarations/norm-id.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [coe_id](declarations/coe-id.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [neg](declarations/neg.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [coe_neg](declarations/coe-neg.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [neg_apply](declarations/neg-apply.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [opNorm_neg](declarations/opnorm-neg.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [sub](declarations/sub.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [coe_sub](declarations/coe-sub.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [sub_apply](declarations/sub-apply.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [smul](declarations/smul.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [coe_smul](declarations/coe-smul.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [smul_apply](declarations/smul-apply.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [smulCommClass](declarations/smulcommclass.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [isScalarTower](declarations/isscalartower.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [isCentralScalar](declarations/iscentralscalar.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [nsmul](declarations/nsmul.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [coe_nsmul](declarations/coe-nsmul.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [nsmul_apply](declarations/nsmul-apply.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [zsmul](declarations/zsmul.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [coe_zsmul](declarations/coe-zsmul.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [zsmul_apply](declarations/zsmul-apply.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [toAddCommGroup](declarations/toaddcommgroup.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [toSeminormedAddCommGroup](declarations/toseminormedaddcommgroup.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [toNormedAddCommGroup](declarations/tonormedaddcommgroup.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [coeAddHom](declarations/coeaddhom.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [coe_sum](declarations/coe-sum.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [sum_apply](declarations/sum-apply.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [distribMulAction](declarations/distribmulaction.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [module](declarations/module.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [comp](declarations/comp-source-edition-2.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [norm_comp_le](declarations/norm-comp-le.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [norm_comp_le_of_le](declarations/norm-comp-le-of-le-source-edition-2.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [norm_comp_le_of_le'](declarations/norm-comp-le-of-le.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [compHom](declarations/comphom.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [comp_zero](declarations/comp-zero.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [zero_comp](declarations/zero-comp.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [coe_comp](declarations/coe-comp.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [incl](declarations/incl.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [norm_incl](declarations/norm-incl.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [ker](declarations/ker.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [mem_ker](declarations/mem-ker.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [ker.lift](declarations/ker-lift.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [ker.incl_comp_lift](declarations/ker-incl-comp-lift.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [ker_zero](declarations/ker-zero.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [coe_ker](declarations/coe-ker.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [isClosed_ker](declarations/isclosed-ker.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [range](declarations/range.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [mem_range](declarations/mem-range.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [mem_range_self](declarations/mem-range-self.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [comp_range](declarations/comp-range.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [incl_range](declarations/incl-range.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [range_comp_incl_top](declarations/range-comp-incl-top.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `def` | [NormNoninc](declarations/normnoninc-source-edition-2.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [normNoninc_iff_norm_le_one](declarations/normnoninc-iff-norm-le-one.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [zero](declarations/zero-source-edition-2.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [id](declarations/id.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [comp](declarations/comp.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [neg_iff](declarations/neg-iff.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [norm_eq_of_isometry](declarations/norm-eq-of-isometry.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [isometry_id](declarations/isometry-id.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [isometry_comp](declarations/isometry-comp.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [normNoninc_of_isometry](declarations/normnoninc-of-isometry.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `def` | [equalizer](declarations/equalizer.md) | 759 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [ι](declarations/anonymous.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [comp_ι_eq](declarations/comp-eq.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [lift](declarations/lift.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [ι_comp_lift](declarations/comp-lift.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [liftEquiv](declarations/liftequiv.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [map](declarations/map.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [ι_comp_map](declarations/comp-map.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [map_id](declarations/map-id.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [comm_sq₂](declarations/comm-sq.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [map_comp_map](declarations/map-comp-map.md) | 835 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [ι_normNoninc](declarations/normnoninc.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [lift_normNoninc](declarations/lift-normnoninc.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [norm_lift_le](declarations/norm-lift-le.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [map_normNoninc](declarations/map-normnoninc.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [norm_map_le](declarations/norm-map-le.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b07da5d0d015a0d8250f026f95868a29d7d7a007619ce9fa06908d548b1a934d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Hom/Variantf6b9bbcf4e39637ef93fd977065137602fcbd1b1f717a183ea4012838dc8b13b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
