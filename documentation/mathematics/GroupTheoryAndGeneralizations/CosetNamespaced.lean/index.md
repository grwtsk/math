# Coset Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**86 observed declarations and anonymous commands**, 59 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Coset/Variantd2cea386d4f1a620d78cb17985b93ab60eebae5c3805fe6fda802f881b41c775.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `614f663419b27d156f65a333ed44a8668f7c0409`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/CosetNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [leftCoset](declarations/leftcoset.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [rightCoset](declarations/rightcoset.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_leftCoset](declarations/mem-leftcoset.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_rightCoset](declarations/mem-rightcoset.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [LeftCosetEquivalence](declarations/leftcosetequivalence.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [leftCosetEquivalence_rel](declarations/leftcosetequivalence-rel.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [RightCosetEquivalence](declarations/rightcosetequivalence.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [rightCosetEquivalence_rel](declarations/rightcosetequivalence-rel.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [leftCoset_assoc](declarations/leftcoset-assoc.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [rightCoset_assoc](declarations/rightcoset-assoc.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [leftCoset_rightCoset](declarations/leftcoset-rightcoset.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [one_leftCoset](declarations/one-leftcoset.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [rightCoset_one](declarations/rightcoset-one.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mem_own_leftCoset](declarations/mem-own-leftcoset.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_own_rightCoset](declarations/mem-own-rightcoset.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_leftCoset_leftCoset](declarations/mem-leftcoset-leftcoset.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_rightCoset_rightCoset](declarations/mem-rightcoset-rightcoset.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mem_leftCoset_iff](declarations/mem-leftcoset-iff.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mem_rightCoset_iff](declarations/mem-rightcoset-iff.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [leftCoset_mem_leftCoset](declarations/leftcoset-mem-leftcoset.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [rightCoset_mem_rightCoset](declarations/rightcoset-mem-rightcoset.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [orbit_subgroup_eq_rightCoset](declarations/orbit-subgroup-eq-rightcoset.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [orbit_subgroup_eq_self_of_mem](declarations/orbit-subgroup-eq-self-of-mem.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [orbit_subgroup_one_eq_self](declarations/orbit-subgroup-one-eq-self.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [eq_cosets_of_normal](declarations/eq-cosets-of-normal.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [normal_of_eq_cosets](declarations/normal-of-eq-cosets.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [normal_iff_eq_cosets](declarations/normal-iff-eq-cosets.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [leftCoset_eq_iff](declarations/leftcoset-eq-iff.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rightCoset_eq_iff](declarations/rightcoset-eq-iff.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [leftRel](declarations/leftrel.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [leftRel_apply](declarations/leftrel-apply.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [leftRel_eq](declarations/leftrel-eq.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [leftRel_r_eq_leftCosetEquivalence](declarations/leftrel-r-eq-leftcosetequivalence.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [leftRelDecidable](declarations/leftreldecidable.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [instHasQuotientSubgroup](declarations/insthasquotientsubgroup.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [rightRel](declarations/rightrel.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [rightRel_apply](declarations/rightrel-apply.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [rightRel_eq](declarations/rightrel-eq.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [rightRel_r_eq_rightCosetEquivalence](declarations/rightrel-r-eq-rightcosetequivalence.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [rightRelDecidable](declarations/rightreldecidable.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [quotientRightRelEquivQuotientLeftRel](declarations/quotientrightrelequivquotientleftrel.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [fintypeQuotientRightRel](declarations/fintypequotientrightrel.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [card_quotient_rightRel](declarations/card-quotient-rightrel.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [fintype](declarations/fintype.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `abbrev` | [mk](declarations/mk.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [mk_surjective](declarations/mk-surjective.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [range_mk](declarations/range-mk.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [induction_on](declarations/induction-on-source-edition-2.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [induction_on'](declarations/induction-on.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [quotient_liftOn_mk](declarations/quotient-lifton-mk.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [forall_mk](declarations/forall-mk.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [exists_mk](declarations/exists-mk.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [eq](declarations/eq-source-edition-2.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [eq'](declarations/eq.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [out_eq'](declarations/out-eq.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [mk_out'_eq_mul](declarations/mk-out-eq-mul.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [mk_mul_of_mem](declarations/mk-mul-of-mem.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [eq_class_eq_leftCoset](declarations/eq-class-eq-leftcoset.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [preimage_image_mk](declarations/preimage-image-mk.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [preimage_image_mk_eq_iUnion_image](declarations/preimage-image-mk-eq-iunion-image.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [leftCosetEquivSubgroup](declarations/leftcosetequivsubgroup.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [rightCosetEquivSubgroup](declarations/rightcosetequivsubgroup.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [groupEquivQuotientProdSubgroup](declarations/groupequivquotientprodsubgroup.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [quotientEquivOfEq](declarations/quotientequivofeq.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [quotientEquivOfEq_mk](declarations/quotientequivofeq-mk.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [quotientEquivProdOfLE'](declarations/quotientequivprodofle-source-edition-2.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [quotientEquivProdOfLE](declarations/quotientequivprodofle.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [quotientSubgroupOfEmbeddingOfLE](declarations/quotientsubgroupofembeddingofle.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [quotientSubgroupOfEmbeddingOfLE_apply_mk](declarations/quotientsubgroupofembeddingofle-apply-mk.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [quotientSubgroupOfMapOfLE](declarations/quotientsubgroupofmapofle.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [quotientSubgroupOfMapOfLE_apply_mk](declarations/quotientsubgroupofmapofle-apply-mk.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [quotientMapOfLE](declarations/quotientmapofle.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [quotientMapOfLE_apply_mk](declarations/quotientmapofle-apply-mk.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [quotientiInfSubgroupOfEmbedding](declarations/quotientiinfsubgroupofembedding.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [quotientiInfSubgroupOfEmbedding_apply_mk](declarations/quotientiinfsubgroupofembedding-apply-mk.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [quotientiInfEmbedding](declarations/quotientiinfembedding.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [quotientiInfEmbedding_apply_mk](declarations/quotientiinfembedding-apply-mk.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [card_eq_card_quotient_mul_card_subgroup](declarations/card-eq-card-quotient-mul-card-subgroup.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [card_subgroup_dvd_card](declarations/card-subgroup-dvd-card.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [card_quotient_dvd_card](declarations/card-quotient-dvd-card.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [card_dvd_of_injective](declarations/card-dvd-of-injective.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [card_dvd_of_le](declarations/card-dvd-of-le.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [card_comap_dvd_of_injective](declarations/card-comap-dvd-of-injective.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [preimageMkEquivSubgroupProdSet](declarations/preimagemkequivsubgroupprodset.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cded2bd94a3a185e87f6be417a138475a212af8f07b91f22b2a74a3dcf75f61e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Coset/Variantd2cea386d4f1a620d78cb17985b93ab60eebae5c3805fe6fda802f881b41c775.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
