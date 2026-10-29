# Coset

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**86 observed declarations and anonymous commands**, 59 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Coset/Variant61b268f9dcc1c57462d3a0a088e1f8443256ebaca032a325aefa62a08ed31dc7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f0dc57e1d8d59761ae0a61c675061a3fa4caae3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/Coset.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [leftCoset](declarations/leftcoset.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [rightCoset](declarations/rightcoset.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_leftCoset](declarations/mem-leftcoset.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_rightCoset](declarations/mem-rightcoset.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [LeftCosetEquivalence](declarations/leftcosetequivalence.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [leftCosetEquivalence_rel](declarations/leftcosetequivalence-rel.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [RightCosetEquivalence](declarations/rightcosetequivalence.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [rightCosetEquivalence_rel](declarations/rightcosetequivalence-rel.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [leftCoset_assoc](declarations/leftcoset-assoc.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [rightCoset_assoc](declarations/rightcoset-assoc.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [leftCoset_rightCoset](declarations/leftcoset-rightcoset.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [one_leftCoset](declarations/one-leftcoset.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [rightCoset_one](declarations/rightcoset-one.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mem_own_leftCoset](declarations/mem-own-leftcoset.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_own_rightCoset](declarations/mem-own-rightcoset.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_leftCoset_leftCoset](declarations/mem-leftcoset-leftcoset.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_rightCoset_rightCoset](declarations/mem-rightcoset-rightcoset.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mem_leftCoset_iff](declarations/mem-leftcoset-iff.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mem_rightCoset_iff](declarations/mem-rightcoset-iff.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [leftCoset_mem_leftCoset](declarations/leftcoset-mem-leftcoset.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [rightCoset_mem_rightCoset](declarations/rightcoset-mem-rightcoset.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [orbit_subgroup_eq_rightCoset](declarations/orbit-subgroup-eq-rightcoset.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [orbit_subgroup_eq_self_of_mem](declarations/orbit-subgroup-eq-self-of-mem.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [orbit_subgroup_one_eq_self](declarations/orbit-subgroup-one-eq-self.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [eq_cosets_of_normal](declarations/eq-cosets-of-normal.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [normal_of_eq_cosets](declarations/normal-of-eq-cosets.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [normal_iff_eq_cosets](declarations/normal-iff-eq-cosets.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [leftCoset_eq_iff](declarations/leftcoset-eq-iff.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rightCoset_eq_iff](declarations/rightcoset-eq-iff.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [leftRel](declarations/leftrel.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [leftRel_apply](declarations/leftrel-apply.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [leftRel_eq](declarations/leftrel-eq.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [leftRel_r_eq_leftCosetEquivalence](declarations/leftrel-r-eq-leftcosetequivalence.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [leftRelDecidable](declarations/leftreldecidable.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [instHasQuotientSubgroup](declarations/insthasquotientsubgroup.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [rightRel](declarations/rightrel.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [rightRel_apply](declarations/rightrel-apply.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [rightRel_eq](declarations/rightrel-eq.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [rightRel_r_eq_rightCosetEquivalence](declarations/rightrel-r-eq-rightcosetequivalence.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [rightRelDecidable](declarations/rightreldecidable.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [quotientRightRelEquivQuotientLeftRel](declarations/quotientrightrelequivquotientleftrel.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [fintypeQuotientRightRel](declarations/fintypequotientrightrel.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [card_quotient_rightRel](declarations/card-quotient-rightrel.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [fintype](declarations/fintype.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `abbrev` | [mk](declarations/mk.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [mk_surjective](declarations/mk-surjective.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [range_mk](declarations/range-mk.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [induction_on](declarations/induction-on-source-edition-2.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [induction_on'](declarations/induction-on.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [quotient_liftOn_mk](declarations/quotient-lifton-mk.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [forall_mk](declarations/forall-mk.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [exists_mk](declarations/exists-mk.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [eq](declarations/eq.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [eq'](declarations/eq-source-edition-2.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [out_eq'](declarations/out-eq.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [mk_out'_eq_mul](declarations/mk-out-eq-mul.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [mk_mul_of_mem](declarations/mk-mul-of-mem.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [eq_class_eq_leftCoset](declarations/eq-class-eq-leftcoset.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [preimage_image_mk](declarations/preimage-image-mk.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [preimage_image_mk_eq_iUnion_image](declarations/preimage-image-mk-eq-iunion-image.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [leftCosetEquivSubgroup](declarations/leftcosetequivsubgroup.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [rightCosetEquivSubgroup](declarations/rightcosetequivsubgroup.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [groupEquivQuotientProdSubgroup](declarations/groupequivquotientprodsubgroup.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [quotientEquivOfEq](declarations/quotientequivofeq.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [quotientEquivOfEq_mk](declarations/quotientequivofeq-mk.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [quotientEquivProdOfLE'](declarations/quotientequivprodofle.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [quotientEquivProdOfLE](declarations/quotientequivprodofle-source-edition-2.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [quotientSubgroupOfEmbeddingOfLE](declarations/quotientsubgroupofembeddingofle.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [quotientSubgroupOfEmbeddingOfLE_apply_mk](declarations/quotientsubgroupofembeddingofle-apply-mk.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [quotientSubgroupOfMapOfLE](declarations/quotientsubgroupofmapofle.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [quotientSubgroupOfMapOfLE_apply_mk](declarations/quotientsubgroupofmapofle-apply-mk.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [quotientMapOfLE](declarations/quotientmapofle.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [quotientMapOfLE_apply_mk](declarations/quotientmapofle-apply-mk.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [quotientiInfSubgroupOfEmbedding](declarations/quotientiinfsubgroupofembedding.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [quotientiInfSubgroupOfEmbedding_apply_mk](declarations/quotientiinfsubgroupofembedding-apply-mk.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [quotientiInfEmbedding](declarations/quotientiinfembedding.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [quotientiInfEmbedding_apply_mk](declarations/quotientiinfembedding-apply-mk.md) | 782 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [card_eq_card_quotient_mul_card_subgroup](declarations/card-eq-card-quotient-mul-card-subgroup.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [card_subgroup_dvd_card](declarations/card-subgroup-dvd-card.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [card_quotient_dvd_card](declarations/card-quotient-dvd-card.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [card_dvd_of_injective](declarations/card-dvd-of-injective.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [card_dvd_of_le](declarations/card-dvd-of-le.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [card_comap_dvd_of_injective](declarations/card-comap-dvd-of-injective.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [preimageMkEquivSubgroupProdSet](declarations/preimagemkequivsubgroupprodset.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d03b78d81dcb1dd517f309d654537fba1c3f957f1248386e1b6f3ad3947eeeeb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Coset/Variant61b268f9dcc1c57462d3a0a088e1f8443256ebaca032a325aefa62a08ed31dc7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
