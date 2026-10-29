# CStar Matrix Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**149 observed declarations and anonymous commands**, 65 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/CStarMatrix/Variant8257de46b6ef38883b6562bbae3e2858838836b0914d3bac70a271b5dc10a824.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4a163a01b299793de881cb3302f1ccf9494e853`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/CStarMatrixNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [CStarMatrix](declarations/cstarmatrix.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [ofMatrix](declarations/ofmatrix.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [ofMatrix_apply](declarations/ofmatrix-apply.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [ofMatrix_symm_apply](declarations/ofmatrix-symm-apply.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ext_iff](declarations/ext-iff.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [ext](declarations/ext.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [map](declarations/map.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [map_apply](declarations/map-apply.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [map_id](declarations/map-id.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [map_id'](declarations/map-id-source-edition-2.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [map_map](declarations/map-map.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [map_injective](declarations/map-injective.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [transpose](declarations/transpose.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [transpose_apply](declarations/transpose-apply.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [conjTranspose](declarations/conjtranspose.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [conjTranspose_apply](declarations/conjtranspose-apply.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [instStar](declarations/inststar.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [star_eq_conjTranspose](declarations/star-eq-conjtranspose.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [instInvolutiveStar](declarations/instinvolutivestar.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [instInhabited](declarations/instinhabited.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [instDecidableEq](declarations/instdecidableeq.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [instAdd](declarations/instadd.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [instAddSemigroup](declarations/instaddsemigroup.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [instAddCommSemigroup](declarations/instaddcommsemigroup.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [instZero](declarations/instzero.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [instAddZeroClass](declarations/instaddzeroclass.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [instAddMonoid](declarations/instaddmonoid.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [instAddCommMonoid](declarations/instaddcommmonoid.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [instNeg](declarations/instneg.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [instSub](declarations/instsub.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [instAddGroup](declarations/instaddgroup.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [instAddCommGroup](declarations/instaddcommgroup.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [instUnique](declarations/instunique.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [instSubsingleton](declarations/instsubsingleton.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [instNontrivial](declarations/instnontrivial.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [instSMul](declarations/instsmul.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [instSMulCommClass](declarations/instsmulcommclass.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [instIsScalarTower](declarations/instisscalartower.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [instIsCentralScalar](declarations/instiscentralscalar.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [instMulAction](declarations/instmulaction.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [instDistribMulAction](declarations/instdistribmulaction.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [instModule](declarations/instmodule.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [zero_apply](declarations/zero-apply.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [add_apply](declarations/add-apply.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [smul_apply](declarations/smul-apply.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [sub_apply](declarations/sub-apply.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [neg_apply](declarations/neg-apply.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [conjTranspose_zero](declarations/conjtranspose-zero.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [of_zero](declarations/of-zero.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [of_add_of](declarations/of-add-of.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [of_sub_of](declarations/of-sub-of.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [neg_of](declarations/neg-of.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [smul_of](declarations/smul-of.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [star_apply](declarations/star-apply.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [star_apply_of_isSelfAdjoint](declarations/star-apply-of-isselfadjoint.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [instStarAddMonoid](declarations/inststaraddmonoid.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [instStarModule](declarations/inststarmodule.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [ofMatrixₗ](declarations/ofmatrix-source-edition-2.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [mapₗ](declarations/map-source-edition-2.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [instOne](declarations/instone.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [one_apply](declarations/one-apply.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [one_apply_eq](declarations/one-apply-eq.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [one_apply_ne](declarations/one-apply-ne.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [one_apply_ne'](declarations/one-apply-ne-source-edition-2.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [instAddMonoidWithOne](declarations/instaddmonoidwithone.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [instAddGroupWithOne](declarations/instaddgroupwithone.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [instAddCommMonoidWithOne](declarations/instaddcommmonoidwithone.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [instAddCommGroupWithOne](declarations/instaddcommgroupwithone.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [(anonymous)](declarations/instance.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [mul_apply](declarations/mul-apply.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [mul_apply'](declarations/mul-apply-source-edition-2.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [smul_mul](declarations/smul-mul.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [mul_smul](declarations/mul-smul.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [mul_zero](declarations/mul-zero.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [zero_mul](declarations/zero-mul.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [mul_add](declarations/mul-add.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [add_mul](declarations/add-mul.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [instNonUnitalNonAssocSemiring](declarations/instnonunitalnonassocsemiring.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [instNonUnitalNonAssocRing](declarations/instnonunitalnonassocring.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `instance` | [instNonUnitalSemiring](declarations/instnonunitalsemiring.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [instNonAssocSemiring](declarations/instnonassocsemiring.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [instNonUnitalRing](declarations/instnonunitalring.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [instNonAssocRing](declarations/instnonassocring.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [instSemiring](declarations/instsemiring.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [instRing](declarations/instring.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [ofMatrixRingEquiv](declarations/ofmatrixringequiv.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `instance` | [instStarRing](declarations/inststarring.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `instance` | [instAlgebra](declarations/instalgebra.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [ofMatrixStarAlgEquiv](declarations/ofmatrixstaralgequiv.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `lemma` | [ofMatrix_eq_ofMatrixStarAlgEquiv](declarations/ofmatrix-eq-ofmatrixstaralgequiv.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [reindexₗ](declarations/reindex-source-edition-2.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [reindexₗ_apply](declarations/reindex-apply.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [reindexₐ](declarations/reindex.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `lemma` | [reindexₐ_apply](declarations/reindex-apply-source-edition-2.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `lemma` | [mapₗ_reindexₐ](declarations/map-reindex.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [reindexₐ_symm](declarations/reindex-symm.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [mapₙₐ](declarations/map-source-edition-3.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [algebraMap_apply](declarations/algebramap-apply.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [toOneByOne](declarations/toonebyone.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [toCLM](declarations/toclm.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `lemma` | [toCLM_apply](declarations/toclm-apply.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `lemma` | [toCLM_apply_eq_sum](declarations/toclm-apply-eq-sum.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [toCLMNonUnitalAlgHom](declarations/toclmnonunitalalghom.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `lemma` | [toCLMNonUnitalAlgHom_eq_toCLM](declarations/toclmnonunitalalghom-eq-toclm.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `lemma` | [toCLM_apply_single](declarations/toclm-apply-single.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `lemma` | [toCLM_apply_single_apply](declarations/toclm-apply-single-apply.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `lemma` | [mul_entry_mul_eq_inner_toCLM](declarations/mul-entry-mul-eq-inner-toclm.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `lemma` | [toCLM_injective](declarations/toclm-injective.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `lemma` | [inner_toCLM_conjTranspose_left](declarations/inner-toclm-conjtranspose-left.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `lemma` | [inner_toCLM_conjTranspose_right](declarations/inner-toclm-conjtranspose-right.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `instance` | [instNorm](declarations/instnorm.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `lemma` | [norm_def](declarations/norm-def.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `lemma` | [norm_def'](declarations/norm-def-source-edition-2.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `lemma` | [normedSpaceCore](declarations/normedspacecore.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `lemma` | [norm_entry_le_norm](declarations/norm-entry-le-norm.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `lemma` | [norm_le_of_forall_inner_le](declarations/norm-le-of-forall-inner-le.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [normedAddCommGroupAux](declarations/normedaddcommgroupaux.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [normedSpaceAux](declarations/normedspaceaux.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `lemma` | [nnnorm_le_of_forall_inner_le](declarations/nnnorm-le-of-forall-inner-le.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `lemma` | [lipschitzWith_toMatrixAux](declarations/lipschitzwith-tomatrixaux.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `lemma` | [antilipschitzWith_toMatrixAux](declarations/antilipschitzwith-tomatrixaux.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `lemma` | [uniformInducing_toMatrixAux](declarations/uniforminducing-tomatrixaux.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `lemma` | [uniformity_eq_aux](declarations/uniformity-eq-aux.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `lemma` | [cobounded_eq_aux](declarations/cobounded-eq-aux.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `instance` | [instTopologicalSpace](declarations/insttopologicalspace.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `instance` | [instUniformSpace](declarations/instuniformspace.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `instance` | [instBornology](declarations/instbornology.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `instance` | [instCompleteSpace](declarations/instcompletespace.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `instance` | [instT2Space](declarations/instt2space.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `instance` | [instT3Space](declarations/instt3space.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `instance` | [instIsTopologicalAddGroup](declarations/instistopologicaladdgroup.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `instance` | [instIsUniformAddGroup](declarations/instisuniformaddgroup.md) | 726 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `instance` | [instContinuousSMul](declarations/instcontinuoussmul.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `instance` | [instNormedAddCommGroup](declarations/instnormedaddcommgroup.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `instance` | [instNormedSpace](declarations/instnormedspace.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `instance` | [instNonUnitalNormedRing](declarations/instnonunitalnormedring.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `instance` | [instCStarRing](declarations/instcstarring.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `instance` | [instNonUnitalCStarAlgebra](declarations/instnonunitalcstaralgebra.md) | 782 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `instance` | [instPartialOrder](declarations/instpartialorder.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `instance` | [instStarOrderedRing](declarations/inststarorderedring.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `instance` | [instNormedRing](declarations/instnormedring.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `instance` | [instNormedAlgebra](declarations/instnormedalgebra.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `instance` | [instCStarAlgebra](declarations/instcstaralgebra.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `lemma` | [uniformEmbedding_ofMatrix](declarations/uniformembedding-ofmatrix.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `def` | [ofMatrixL](declarations/ofmatrixl.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `lemma` | [ofMatrix_eq_ofMatrixL](declarations/ofmatrix-eq-ofmatrixl.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14933372566b2ba08198dda0fe24241d5576ab84f42ca89dbe8acccb44809ea4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/CStarMatrix/Variant8257de46b6ef38883b6562bbae3e2858838836b0914d3bac70a271b5dc10a824.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
