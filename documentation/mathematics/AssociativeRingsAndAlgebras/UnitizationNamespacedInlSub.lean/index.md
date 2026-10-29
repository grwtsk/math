# Unitization Namespaced Inl Sub

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**118 observed declarations and anonymous commands**, 62 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Unitization/Variantb4ee6f66307d594a13f57a0a2b48c230d135f0a1719066901ae1b19e5b15a710.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9c92df87edba1a7978358a785dbab0dc0256d67`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/AssociativeRingsAndAlgebras/UnitizationNamespacedInlSub.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Unitization](declarations/unitization.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [inl](declarations/inl.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [inr](declarations/inr.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [fst](declarations/fst.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [snd](declarations/snd.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [ext](declarations/ext.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [fst_inl](declarations/fst-inl.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [snd_inl](declarations/snd-inl.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [fst_inr](declarations/fst-inr.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [snd_inr](declarations/snd-inr.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [inl_injective](declarations/inl-injective.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [inr_injective](declarations/inr-injective.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [instNontrivialLeft](declarations/instnontrivialleft.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [instNontrivialRight](declarations/instnontrivialright.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [instCanLift](declarations/instcanlift.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [instInhabited](declarations/instinhabited.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [instZero](declarations/instzero.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [instAdd](declarations/instadd.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [instNeg](declarations/instneg.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [instAddSemigroup](declarations/instaddsemigroup.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [instAddZeroClass](declarations/instaddzeroclass.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [instAddMonoid](declarations/instaddmonoid.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [instAddGroup](declarations/instaddgroup.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [instAddCommSemigroup](declarations/instaddcommsemigroup.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [instAddCommMonoid](declarations/instaddcommmonoid.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [instAddCommGroup](declarations/instaddcommgroup.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [instSMul](declarations/instsmul.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [instIsScalarTower](declarations/instisscalartower.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [instSMulCommClass](declarations/instsmulcommclass.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [instIsCentralScalar](declarations/instiscentralscalar.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [instMulAction](declarations/instmulaction.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [instDistribMulAction](declarations/instdistribmulaction.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [instModule](declarations/instmodule.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [addEquiv](declarations/addequiv.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [fst_zero](declarations/fst-zero.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [snd_zero](declarations/snd-zero.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [fst_add](declarations/fst-add.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [snd_add](declarations/snd-add.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [fst_neg](declarations/fst-neg.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [snd_neg](declarations/snd-neg.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [fst_smul](declarations/fst-smul.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [snd_smul](declarations/snd-smul.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [inl_zero](declarations/inl-zero.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [inl_add](declarations/inl-add.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [inl_neg](declarations/inl-neg.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [inl_sub](declarations/inl-sub.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [inl_smul](declarations/inl-smul.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [inr_zero](declarations/inr-zero.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [inr_add](declarations/inr-add.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [inr_neg](declarations/inr-neg.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [inr_sub](declarations/inr-sub.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [inr_smul](declarations/inr-smul.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [inl_fst_add_inr_snd_eq](declarations/inl-fst-add-inr-snd-eq.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [ind](declarations/ind.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [linearMap_ext](declarations/linearmap-ext.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [inrHom](declarations/inrhom.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [sndHom](declarations/sndhom.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [instOne](declarations/instone.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [instMul](declarations/instmul.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [fst_one](declarations/fst-one.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [snd_one](declarations/snd-one.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [fst_mul](declarations/fst-mul.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [snd_mul](declarations/snd-mul.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [inl_one](declarations/inl-one.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [inl_mul](declarations/inl-mul.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [inl_mul_inl](declarations/inl-mul-inl.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [inr_mul](declarations/inr-mul.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [inl_mul_inr](declarations/inl-mul-inr.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [inr_mul_inl](declarations/inr-mul-inl.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [instMulOneClass](declarations/instmuloneclass.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [instNonAssocSemiring](declarations/instnonassocsemiring.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [instMonoid](declarations/instmonoid.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [instCommMonoid](declarations/instcommmonoid.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [instSemiring](declarations/instsemiring.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [instCommSemiring](declarations/instcommsemiring.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [instNonAssocRing](declarations/instnonassocring.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [instRing](declarations/instring.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [instCommRing](declarations/instcommring.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [inlRingHom](declarations/inlringhom.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [instStar](declarations/inststar.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [fst_star](declarations/fst-star.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [snd_star](declarations/snd-star.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [inl_star](declarations/inl-star.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [inr_star](declarations/inr-star.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [instStarAddMonoid](declarations/inststaraddmonoid.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [instStarModule](declarations/inststarmodule.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [instStarRing](declarations/inststarring.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [instAlgebra](declarations/instalgebra.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [algebraMap_eq_inl_comp](declarations/algebramap-eq-inl-comp.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [algebraMap_eq_inlRingHom_comp](declarations/algebramap-eq-inlringhom-comp.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [algebraMap_eq_inl](declarations/algebramap-eq-inl.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [algebraMap_eq_inlRingHom](declarations/algebramap-eq-inlringhom.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [fstHom](declarations/fsthom.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [inrNonUnitalAlgHom](declarations/inrnonunitalalghom.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [inrNonUnitalStarAlgHom](declarations/inrnonunitalstaralghom.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [inrRangeEquiv](declarations/inrrangeequiv.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [algHom_ext](declarations/alghom-ext-source-edition-2.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [algHom_ext''](declarations/alghom-ext-source-edition-3.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [algHom_ext'](declarations/alghom-ext.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [Unitization Namespaced Inl Sub](declarations/toalghom.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [lift](declarations/lift.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [lift_symm_apply_apply](declarations/lift-symm-apply-apply.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `lemma` | [Unitization Namespaced Inl Sub](declarations/toalghom-zero.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [starAlgHom_ext](declarations/staralghom-ext.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [starLift](declarations/starlift.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [starLift_symm_apply_apply](declarations/starlift-symm-apply-apply.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [starMap](declarations/starmap.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `lemma` | [starMap_inr](declarations/starmap-inr.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `lemma` | [starMap_inl](declarations/starmap-inl.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `lemma` | [starMap_injective](declarations/starmap-injective.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `lemma` | [starMap_surjective](declarations/starmap-surjective.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `lemma` | [starMap_comp](declarations/starmap-comp.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `lemma` | [starMap_id](declarations/starmap-id.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `lemma` | [isSelfAdjoint_inr](declarations/isselfadjoint-inr.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `lemma` | [Unitization Namespaced Inl Sub](declarations/inr-source-line-830-occurrence-2.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `lemma` | [isStarNormal_inr](declarations/isstarnormal-inr.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `instance` | [instIsStarNormal](declarations/instisstarnormal.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a08fc3da12b5bd2081696588f8df209f8ef975d3b7113467e1b6f5d4a048515e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Unitization/Variantb4ee6f66307d594a13f57a0a2b48c230d135f0a1719066901ae1b19e5b15a710.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
