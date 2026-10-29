# CStar Matrix Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**149 observed declarations and anonymous commands**, 65 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/CStarMatrix/Variant979fabaf7589313b77f15cb771fb3ea74344e1942d6817b1c53648b8a2dbda77.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be1a38097998dad5c98fe948b6b723db534af057`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [CStarMatrix](declarations/cstarmatrix.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [ofMatrix](declarations/ofmatrix.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [ofMatrix_apply](declarations/ofmatrix-apply.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [ofMatrix_symm_apply](declarations/ofmatrix-symm-apply.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ext_iff](declarations/ext-iff.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [ext](declarations/ext.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [map](declarations/map.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [map_apply](declarations/map-apply.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [map_id](declarations/map-id.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [map_id'](declarations/map-id-source-edition-2.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [map_map](declarations/map-map.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [map_injective](declarations/map-injective.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [transpose](declarations/transpose.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [transpose_apply](declarations/transpose-apply.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [conjTranspose](declarations/conjtranspose.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [conjTranspose_apply](declarations/conjtranspose-apply.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [instStar](declarations/inststar.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [star_eq_conjTranspose](declarations/star-eq-conjtranspose.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [instInvolutiveStar](declarations/instinvolutivestar.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [instInhabited](declarations/instinhabited.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [instDecidableEq](declarations/instdecidableeq.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [instAdd](declarations/instadd.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [instAddSemigroup](declarations/instaddsemigroup.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [instAddCommSemigroup](declarations/instaddcommsemigroup.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [instZero](declarations/instzero.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [instAddZeroClass](declarations/instaddzeroclass.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [instSMul](declarations/instsmul.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [instAddMonoid](declarations/instaddmonoid.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [instAddCommMonoid](declarations/instaddcommmonoid.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [instNeg](declarations/instneg.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [instSub](declarations/instsub.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [instAddGroup](declarations/instaddgroup.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [instAddCommGroup](declarations/instaddcommgroup.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [instUnique](declarations/instunique.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [instSubsingleton](declarations/instsubsingleton.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [instNontrivial](declarations/instnontrivial.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [instSMulCommClass](declarations/instsmulcommclass.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [instIsScalarTower](declarations/instisscalartower.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [instIsCentralScalar](declarations/instiscentralscalar.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [instMulAction](declarations/instmulaction.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [instDistribMulAction](declarations/instdistribmulaction.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [instModule](declarations/instmodule.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [zero_apply](declarations/zero-apply.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [add_apply](declarations/add-apply.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [smul_apply](declarations/smul-apply.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [sub_apply](declarations/sub-apply.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [neg_apply](declarations/neg-apply.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [conjTranspose_zero](declarations/conjtranspose-zero.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [of_zero](declarations/of-zero.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [of_add_of](declarations/of-add-of.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [of_sub_of](declarations/of-sub-of.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [neg_of](declarations/neg-of.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [smul_of](declarations/smul-of.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [star_apply](declarations/star-apply.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [star_apply_of_isSelfAdjoint](declarations/star-apply-of-isselfadjoint.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [instStarAddMonoid](declarations/inststaraddmonoid.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [instStarModule](declarations/inststarmodule.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [ofMatrixₗ](declarations/ofmatrix-source-edition-2.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [mapₗ](declarations/map-source-edition-3.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [instOne](declarations/instone.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [one_apply](declarations/one-apply.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [one_apply_eq](declarations/one-apply-eq.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [one_apply_ne](declarations/one-apply-ne-source-edition-2.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [one_apply_ne'](declarations/one-apply-ne.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [instAddMonoidWithOne](declarations/instaddmonoidwithone.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [instAddGroupWithOne](declarations/instaddgroupwithone.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [instAddCommMonoidWithOne](declarations/instaddcommmonoidwithone.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [instAddCommGroupWithOne](declarations/instaddcommgroupwithone.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [mul_apply](declarations/mul-apply-source-edition-2.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [mul_apply'](declarations/mul-apply.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [smul_mul](declarations/smul-mul.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [mul_smul](declarations/mul-smul.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [mul_zero](declarations/mul-zero.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [zero_mul](declarations/zero-mul.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [mul_add](declarations/mul-add.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [add_mul](declarations/add-mul.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [instNonUnitalNonAssocSemiring](declarations/instnonunitalnonassocsemiring.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [instNonUnitalNonAssocRing](declarations/instnonunitalnonassocring.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `instance` | [instNonUnitalSemiring](declarations/instnonunitalsemiring.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [instNonAssocSemiring](declarations/instnonassocsemiring.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [instNonUnitalRing](declarations/instnonunitalring.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [instNonAssocRing](declarations/instnonassocring.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [instSemiring](declarations/instsemiring.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [instRing](declarations/instring.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [ofMatrixRingEquiv](declarations/ofmatrixringequiv.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `instance` | [instStarRing](declarations/inststarring.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `instance` | [instAlgebra](declarations/instalgebra.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [ofMatrixStarAlgEquiv](declarations/ofmatrixstaralgequiv.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `lemma` | [ofMatrix_eq_ofMatrixStarAlgEquiv](declarations/ofmatrix-eq-ofmatrixstaralgequiv.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [reindexₗ](declarations/reindex-source-edition-2.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [reindexₗ_apply](declarations/reindex-apply.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [reindexₐ](declarations/reindex.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `lemma` | [reindexₐ_apply](declarations/reindex-apply-source-edition-2.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `lemma` | [mapₗ_reindexₐ](declarations/map-reindex.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [reindexₐ_symm](declarations/reindex-symm.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [mapₙₐ](declarations/map-source-edition-2.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [algebraMap_apply](declarations/algebramap-apply.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [toOneByOne](declarations/toonebyone.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [toCLM](declarations/toclm.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `lemma` | [toCLM_apply](declarations/toclm-apply.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `lemma` | [toCLM_apply_eq_sum](declarations/toclm-apply-eq-sum.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [toCLMNonUnitalAlgHom](declarations/toclmnonunitalalghom.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `lemma` | [toCLMNonUnitalAlgHom_eq_toCLM](declarations/toclmnonunitalalghom-eq-toclm.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `lemma` | [toCLM_apply_single](declarations/toclm-apply-single.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `lemma` | [toCLM_apply_single_apply](declarations/toclm-apply-single-apply.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `lemma` | [toCLM_injective](declarations/toclm-injective.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `lemma` | [mul_entry_mul_eq_inner_toCLM](declarations/mul-entry-mul-eq-inner-toclm.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `lemma` | [inner_toCLM_conjTranspose_left](declarations/inner-toclm-conjtranspose-left.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `lemma` | [inner_toCLM_conjTranspose_right](declarations/inner-toclm-conjtranspose-right.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `instance` | [instNorm](declarations/instnorm.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `lemma` | [norm_def](declarations/norm-def.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `lemma` | [norm_def'](declarations/norm-def-source-edition-2.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `lemma` | [normedSpaceCore](declarations/normedspacecore.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `lemma` | [norm_entry_le_norm](declarations/norm-entry-le-norm.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `lemma` | [norm_le_of_forall_inner_le](declarations/norm-le-of-forall-inner-le.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `instance` | [normedAddCommGroupAux](declarations/normedaddcommgroupaux.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [normedSpaceAux](declarations/normedspaceaux.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `lemma` | [nnnorm_le_of_forall_inner_le](declarations/nnnorm-le-of-forall-inner-le.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `lemma` | [lipschitzWith_toMatrixAux](declarations/lipschitzwith-tomatrixaux.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `lemma` | [antilipschitzWith_toMatrixAux](declarations/antilipschitzwith-tomatrixaux.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `lemma` | [uniformInducing_toMatrixAux](declarations/uniforminducing-tomatrixaux.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `lemma` | [uniformity_eq_aux](declarations/uniformity-eq-aux.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `lemma` | [cobounded_eq_aux](declarations/cobounded-eq-aux.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `instance` | [instTopologicalSpace](declarations/insttopologicalspace.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `instance` | [instUniformSpace](declarations/instuniformspace.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `instance` | [instBornology](declarations/instbornology.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `instance` | [instCompleteSpace](declarations/instcompletespace.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `instance` | [instT2Space](declarations/instt2space.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `instance` | [instT3Space](declarations/instt3space.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `instance` | [instIsTopologicalAddGroup](declarations/instistopologicaladdgroup.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `instance` | [instIsUniformAddGroup](declarations/instisuniformaddgroup.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `instance` | [instContinuousSMul](declarations/instcontinuoussmul.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `instance` | [instNormedAddCommGroup](declarations/instnormedaddcommgroup.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `instance` | [instNormedSpace](declarations/instnormedspace.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `instance` | [instNonUnitalNormedRing](declarations/instnonunitalnormedring.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `instance` | [instCStarRing](declarations/instcstarring.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `instance` | [instNonUnitalCStarAlgebra](declarations/instnonunitalcstaralgebra.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `instance` | [instPartialOrder](declarations/instpartialorder.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `instance` | [instStarOrderedRing](declarations/inststarorderedring.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `instance` | [instNormedRing](declarations/instnormedring.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `instance` | [instNormedAlgebra](declarations/instnormedalgebra.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `instance` | [instCStarAlgebra](declarations/instcstaralgebra.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `lemma` | [uniformEmbedding_ofMatrix](declarations/uniformembedding-ofmatrix.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `def` | [ofMatrixL](declarations/ofmatrixl.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `lemma` | [ofMatrix_eq_ofMatrixL](declarations/ofmatrix-eq-ofmatrixl.md) | 851 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a94df38ba5edefc38fd286b2eaf5b5cd9f3d4bc055b60007deaeacc15e58f0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/CStarMatrix/Variant979fabaf7589313b77f15cb771fb3ea74344e1942d6817b1c53648b8a2dbda77.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
