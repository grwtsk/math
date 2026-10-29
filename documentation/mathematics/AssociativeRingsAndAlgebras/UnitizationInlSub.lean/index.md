# Unitization Inl Sub

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**118 observed declarations and anonymous commands**, 62 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Unitization/Variant4d5915a259624cfa9d83016f92c7e0ec3c222476d02bc2bd5b82cad3bf6d09f2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7e2e7c4b962a92dfa6733c99b68ab2205c64aff7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/AssociativeRingsAndAlgebras/UnitizationInlSub.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Unitization](declarations/unitization.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [inl](declarations/inl.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [inr](declarations/inr.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [fst](declarations/fst.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [snd](declarations/snd.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [ext](declarations/ext.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [fst_inl](declarations/fst-inl.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [snd_inl](declarations/snd-inl.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [fst_inr](declarations/fst-inr.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [snd_inr](declarations/snd-inr.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [inl_injective](declarations/inl-injective.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [inr_injective](declarations/inr-injective.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [instNontrivialLeft](declarations/instnontrivialleft.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [instNontrivialRight](declarations/instnontrivialright.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [instCanLift](declarations/instcanlift.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [instInhabited](declarations/instinhabited.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [instZero](declarations/instzero.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [instAdd](declarations/instadd.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [instNeg](declarations/instneg.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [instAddSemigroup](declarations/instaddsemigroup.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [instAddZeroClass](declarations/instaddzeroclass.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [instAddMonoid](declarations/instaddmonoid.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [instAddGroup](declarations/instaddgroup.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [instAddCommSemigroup](declarations/instaddcommsemigroup.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [instAddCommMonoid](declarations/instaddcommmonoid.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [instAddCommGroup](declarations/instaddcommgroup.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [instSMul](declarations/instsmul.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [instIsScalarTower](declarations/instisscalartower.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [instSMulCommClass](declarations/instsmulcommclass.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [instIsCentralScalar](declarations/instiscentralscalar.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [instMulAction](declarations/instmulaction.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [instDistribMulAction](declarations/instdistribmulaction.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [instModule](declarations/instmodule.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [addEquiv](declarations/addequiv.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [fst_zero](declarations/fst-zero.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [snd_zero](declarations/snd-zero.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [fst_add](declarations/fst-add.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [snd_add](declarations/snd-add.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [fst_neg](declarations/fst-neg.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [snd_neg](declarations/snd-neg.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [fst_smul](declarations/fst-smul.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [snd_smul](declarations/snd-smul.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [inl_zero](declarations/inl-zero.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [inl_add](declarations/inl-add.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [inl_neg](declarations/inl-neg.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [inl_sub](declarations/inl-sub.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [inl_smul](declarations/inl-smul.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [inr_zero](declarations/inr-zero.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [inr_add](declarations/inr-add.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [inr_neg](declarations/inr-neg.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [inr_sub](declarations/inr-sub.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [inr_smul](declarations/inr-smul.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [inl_fst_add_inr_snd_eq](declarations/inl-fst-add-inr-snd-eq.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [ind](declarations/ind.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [linearMap_ext](declarations/linearmap-ext.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [inrHom](declarations/inrhom.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [sndHom](declarations/sndhom.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [instOne](declarations/instone.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [instMul](declarations/instmul.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [fst_one](declarations/fst-one.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [snd_one](declarations/snd-one.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [fst_mul](declarations/fst-mul.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [snd_mul](declarations/snd-mul.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [inl_one](declarations/inl-one.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [inl_mul](declarations/inl-mul.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [inl_mul_inl](declarations/inl-mul-inl.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [inr_mul](declarations/inr-mul.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [inl_mul_inr](declarations/inl-mul-inr.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [inr_mul_inl](declarations/inr-mul-inl.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [instMulOneClass](declarations/instmuloneclass.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [instNonAssocSemiring](declarations/instnonassocsemiring.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [instMonoid](declarations/instmonoid.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [instCommMonoid](declarations/instcommmonoid.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [instSemiring](declarations/instsemiring.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [instCommSemiring](declarations/instcommsemiring.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [instNonAssocRing](declarations/instnonassocring.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [instRing](declarations/instring.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [instCommRing](declarations/instcommring.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [inlRingHom](declarations/inlringhom.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [instStar](declarations/inststar.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [fst_star](declarations/fst-star.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [snd_star](declarations/snd-star.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [inl_star](declarations/inl-star.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [inr_star](declarations/inr-star.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [instStarAddMonoid](declarations/inststaraddmonoid.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [instStarModule](declarations/inststarmodule.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [instStarRing](declarations/inststarring.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [instAlgebra](declarations/instalgebra.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [algebraMap_eq_inl_comp](declarations/algebramap-eq-inl-comp.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [algebraMap_eq_inlRingHom_comp](declarations/algebramap-eq-inlringhom-comp.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [algebraMap_eq_inl](declarations/algebramap-eq-inl.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [algebraMap_eq_inlRingHom](declarations/algebramap-eq-inlringhom.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [fstHom](declarations/fsthom.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [inrNonUnitalAlgHom](declarations/inrnonunitalalghom.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [inrNonUnitalStarAlgHom](declarations/inrnonunitalstaralghom.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [inrRangeEquiv](declarations/inrrangeequiv.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [algHom_ext](declarations/alghom-ext-source-edition-2.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [algHom_ext''](declarations/alghom-ext.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [algHom_ext'](declarations/alghom-ext-source-edition-3.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [_root_.NonUnitalAlgHom.toAlgHom](declarations/root-nonunitalalghom-toalghom.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [lift](declarations/lift.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [lift_symm_apply_apply](declarations/lift-symm-apply-apply.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `lemma` | [_root_.NonUnitalAlgHom.toAlgHom_zero](declarations/root-nonunitalalghom-toalghom-zero.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [starAlgHom_ext](declarations/staralghom-ext.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [starLift](declarations/starlift.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [starLift_symm_apply_apply](declarations/starlift-symm-apply-apply.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [starMap](declarations/starmap.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `lemma` | [starMap_inr](declarations/starmap-inr.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `lemma` | [starMap_inl](declarations/starmap-inl.md) | 773 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `lemma` | [starMap_injective](declarations/starmap-injective.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `lemma` | [starMap_surjective](declarations/starmap-surjective.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `lemma` | [starMap_comp](declarations/starmap-comp.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `lemma` | [starMap_id](declarations/starmap-id.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `lemma` | [isSelfAdjoint_inr](declarations/isselfadjoint-inr.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `lemma` | [_root_.IsSelfAdjoint.inr](declarations/root-isselfadjoint-inr.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `lemma` | [isStarNormal_inr](declarations/isstarnormal-inr.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `instance` | [instIsStarNormal](declarations/instisstarnormal.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=28bacf91e0ad6084e835e412dddd6418e447e0d08bc20b0200bc2d2dc335d670 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Unitization/Variant4d5915a259624cfa9d83016f92c7e0ec3c222476d02bc2bd5b82cad3bf6d09f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
