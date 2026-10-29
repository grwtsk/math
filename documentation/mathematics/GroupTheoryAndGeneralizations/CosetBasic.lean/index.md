# Coset Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**66 observed declarations and anonymous commands**, 46 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a26d3a95fa5836d451f1e40803a417a2a64221a4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/CosetBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_leftCoset](declarations/mem-leftcoset.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_rightCoset](declarations/mem-rightcoset.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [LeftCosetEquivalence](declarations/leftcosetequivalence.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [leftCosetEquivalence_rel](declarations/leftcosetequivalence-rel.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [RightCosetEquivalence](declarations/rightcosetequivalence.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [rightCosetEquivalence_rel](declarations/rightcosetequivalence-rel.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [leftCoset_assoc](declarations/leftcoset-assoc.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [rightCoset_assoc](declarations/rightcoset-assoc.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [leftCoset_rightCoset](declarations/leftcoset-rightcoset.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [one_leftCoset](declarations/one-leftcoset.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [rightCoset_one](declarations/rightcoset-one.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mem_own_leftCoset](declarations/mem-own-leftcoset.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_own_rightCoset](declarations/mem-own-rightcoset.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mem_leftCoset_leftCoset](declarations/mem-leftcoset-leftcoset.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_rightCoset_rightCoset](declarations/mem-rightcoset-rightcoset.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_leftCoset_iff](declarations/mem-leftcoset-iff.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_rightCoset_iff](declarations/mem-rightcoset-iff.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [leftCoset_mem_leftCoset](declarations/leftcoset-mem-leftcoset.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rightCoset_mem_rightCoset](declarations/rightcoset-mem-rightcoset.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [orbit_subgroup_eq_rightCoset](declarations/orbit-subgroup-eq-rightcoset.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [orbit_subgroup_eq_self_of_mem](declarations/orbit-subgroup-eq-self-of-mem.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [orbit_subgroup_one_eq_self](declarations/orbit-subgroup-one-eq-self.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eq_cosets_of_normal](declarations/eq-cosets-of-normal.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [normal_of_eq_cosets](declarations/normal-of-eq-cosets.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [normal_iff_eq_cosets](declarations/normal-iff-eq-cosets.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [leftCoset_eq_iff](declarations/leftcoset-eq-iff.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [rightCoset_eq_iff](declarations/rightcoset-eq-iff.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [leftRel_r_eq_leftCosetEquivalence](declarations/leftrel-r-eq-leftcosetequivalence.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [leftRel_prod](declarations/leftrel-prod.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [leftRel_pi](declarations/leftrel-pi.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [rightRel_r_eq_rightCosetEquivalence](declarations/rightrel-r-eq-rightcosetequivalence.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [rightRel_prod](declarations/rightrel-prod.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [rightRel_pi](declarations/rightrel-pi.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [fintypeQuotientRightRel](declarations/fintypequotientrightrel.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [card_quotient_rightRel](declarations/card-quotient-rightrel.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [fintype](declarations/fintype.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [strictMono_comap_prod_image](declarations/strictmono-comap-prod-image.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [eq_class_eq_leftCoset](declarations/eq-class-eq-leftcoset.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [orbit_mk_eq_smul](declarations/orbit-mk-eq-smul.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [orbit_eq_out_smul](declarations/orbit-eq-out-smul.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [leftCosetEquivSubgroup](declarations/leftcosetequivsubgroup.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [rightCosetEquivSubgroup](declarations/rightcosetequivsubgroup.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [groupEquivQuotientProdSubgroup](declarations/groupequivquotientprodsubgroup.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [quotientEquivProdOfLE'](declarations/quotientequivprodofle.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [quotientEquivProdOfLE](declarations/quotientequivprodofle-source-edition-2.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [quotientSubgroupOfEmbeddingOfLE](declarations/quotientsubgroupofembeddingofle.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [quotientSubgroupOfEmbeddingOfLE_apply_mk](declarations/quotientsubgroupofembeddingofle-apply-mk.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [quotientSubgroupOfMapOfLE](declarations/quotientsubgroupofmapofle.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [quotientSubgroupOfMapOfLE_apply_mk](declarations/quotientsubgroupofmapofle-apply-mk.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [quotientMapOfLE](declarations/quotientmapofle.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [quotientMapOfLE_apply_mk](declarations/quotientmapofle-apply-mk.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [quotientiInfSubgroupOfEmbedding](declarations/quotientiinfsubgroupofembedding.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [quotientiInfSubgroupOfEmbedding_apply_mk](declarations/quotientiinfsubgroupofembedding-apply-mk.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [quotientiInfEmbedding](declarations/quotientiinfembedding.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [quotientiInfEmbedding_apply_mk](declarations/quotientiinfembedding-apply-mk.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [fiberEquivKer](declarations/fiberequivker.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [fiberEquivKer_apply](declarations/fiberequivker-apply.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [fiberEquivKer_symm_apply](declarations/fiberequivker-symm-apply.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [fiberEquivKerOfSurjective](declarations/fiberequivkerofsurjective.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [fiberEquiv](declarations/fiberequiv.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [fiberEquiv_apply](declarations/fiberequiv-apply.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [fiberEquiv_symm_apply](declarations/fiberequiv-symm-apply.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [fiberEquivOfSurjective](declarations/fiberequivofsurjective.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [preimageMkEquivSubgroupProdSet](declarations/preimagemkequivsubgroupprodset.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [univ_eq_iUnion_smul](declarations/univ-eq-iunion-smul.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [quotientEquivSelf](declarations/quotientequivself.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d80b67b3e62fcf8189434c8880afce5a9546cd1060cc9f2da8f098e557d4714 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
