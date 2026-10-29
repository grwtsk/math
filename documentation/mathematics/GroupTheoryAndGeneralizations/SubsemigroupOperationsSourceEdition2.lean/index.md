# Subsemigroup Operations Source Edition2

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**110 observed declarations and anonymous commands**, 88 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant8e2d4ad8078612765b3f9da2f0a55a44d3fedfba4d2b1c8801219fd06cf0bbea.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `01690fee987de4416200196ad3922bcc51e7df6e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Subsemigroup.toAddSubsemigroup](declarations/subsemigroup-toaddsubsemigroup-source-edition-2.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [AddSubsemigroup.toSubsemigroup'](declarations/addsubsemigroup-tosubsemigroup.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Subsemigroup.toAddSubsemigroup_closure](declarations/subsemigroup-toaddsubsemigroup-closure-source-edition-2.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [AddSubsemigroup.toSubsemigroup'_closure](declarations/addsubsemigroup-tosubsemigroup-closure-source-edition-2.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [AddSubsemigroup.toSubsemigroup](declarations/addsubsemigroup-tosubsemigroup-source-edition-2.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [Subsemigroup.toAddSubsemigroup'](declarations/subsemigroup-toaddsubsemigroup.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [AddSubsemigroup.toSubsemigroup_closure](declarations/addsubsemigroup-tosubsemigroup-closure.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Subsemigroup.toAddSubsemigroup'_closure](declarations/subsemigroup-toaddsubsemigroup-closure.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [comap](declarations/comap.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coe_comap](declarations/coe-comap.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_comap](declarations/mem-comap.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [comap_comap](declarations/comap-comap.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [comap_id](declarations/comap-id.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [map](declarations/map.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [coe_map](declarations/coe-map.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_map](declarations/mem-map.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_map_of_mem](declarations/mem-map-of-mem.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [apply_coe_mem_map](declarations/apply-coe-mem-map.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [map_map](declarations/map-map.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mem_map_iff_mem](declarations/mem-map-iff-mem.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [map_le_iff_le_comap](declarations/map-le-iff-le-comap.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [gc_map_comap](declarations/gc-map-comap.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [map_le_of_le_comap](declarations/map-le-of-le-comap.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [le_comap_of_map_le](declarations/le-comap-of-map-le.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [le_comap_map](declarations/le-comap-map.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [map_comap_le](declarations/map-comap-le.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [monotone_map](declarations/monotone-map.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [monotone_comap](declarations/monotone-comap.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [map_comap_map](declarations/map-comap-map.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [comap_map_comap](declarations/comap-map-comap.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [map_sup](declarations/map-sup.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [map_iSup](declarations/map-isup.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [map_inf](declarations/map-inf.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [map_iInf](declarations/map-iinf.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [comap_inf](declarations/comap-inf.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [comap_iInf](declarations/comap-iinf.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [map_bot](declarations/map-bot.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [comap_top](declarations/comap-top.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [map_id](declarations/map-id.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [gciMapComap](declarations/gcimapcomap.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [comap_map_eq_of_injective](declarations/comap-map-eq-of-injective.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [comap_surjective_of_injective](declarations/comap-surjective-of-injective.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [map_injective_of_injective](declarations/map-injective-of-injective.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [comap_inf_map_of_injective](declarations/comap-inf-map-of-injective.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [comap_iInf_map_of_injective](declarations/comap-iinf-map-of-injective.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [comap_sup_map_of_injective](declarations/comap-sup-map-of-injective.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [comap_iSup_map_of_injective](declarations/comap-isup-map-of-injective.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [map_le_map_iff_of_injective](declarations/map-le-map-iff-of-injective.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [map_strictMono_of_injective](declarations/map-strictmono-of-injective.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [giMapComap](declarations/gimapcomap.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [map_comap_eq_of_surjective](declarations/map-comap-eq-of-surjective.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [map_surjective_of_surjective](declarations/map-surjective-of-surjective.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [comap_injective_of_surjective](declarations/comap-injective-of-surjective.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [map_inf_comap_of_surjective](declarations/map-inf-comap-of-surjective.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [map_iInf_comap_of_surjective](declarations/map-iinf-comap-of-surjective.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [map_sup_comap_of_surjective](declarations/map-sup-comap-of-surjective.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [map_iSup_comap_of_surjective](declarations/map-isup-comap-of-surjective.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [comap_le_comap_iff_of_surjective](declarations/comap-le-comap-iff-of-surjective.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [comap_strictMono_of_surjective](declarations/comap-strictmono-of-surjective.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [topEquiv](declarations/topequiv.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [topEquiv_toMulHom](declarations/topequiv-tomulhom.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [equivMapOfInjective](declarations/equivmapofinjective.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coe_equivMapOfInjective_apply](declarations/coe-equivmapofinjective-apply.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [closure_closure_coe_preimage](declarations/closure-closure-coe-preimage.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [prod](declarations/prod.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [coe_prod](declarations/coe-prod.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [mem_prod](declarations/mem-prod.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [prod_mono](declarations/prod-mono.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [prod_top](declarations/prod-top.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [top_prod](declarations/top-prod.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [top_prod_top](declarations/top-prod-top.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [bot_prod_bot](declarations/bot-prod-bot.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [prodEquiv](declarations/prodequiv.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [mem_map_equiv](declarations/mem-map-equiv.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [map_equiv_eq_comap_symm](declarations/map-equiv-eq-comap-symm.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [comap_equiv_eq_map_symm](declarations/comap-equiv-eq-map-symm.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [map_equiv_top](declarations/map-equiv-top.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [le_prod_iff](declarations/le-prod-iff.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [srange](declarations/srange.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [coe_srange](declarations/coe-srange.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [mem_srange](declarations/mem-srange.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [srange_mk_aux_mul](declarations/srange-mk-aux-mul.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [srange_mk](declarations/srange-mk.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [srange_eq_map](declarations/srange-eq-map.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [map_srange](declarations/map-srange.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [srange_eq_top_iff_surjective](declarations/srange-eq-top-iff-surjective.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [srange_eq_top_of_surjective](declarations/srange-eq-top-of-surjective.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [mclosure_preimage_le](declarations/mclosure-preimage-le.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [map_mclosure](declarations/map-mclosure.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [restrict](declarations/restrict.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [restrict_apply](declarations/restrict-apply.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [codRestrict](declarations/codrestrict.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [srangeRestrict](declarations/srangerestrict.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [coe_srangeRestrict](declarations/coe-srangerestrict.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [srangeRestrict_surjective](declarations/srangerestrict-surjective.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [prod_map_comap_prod'](declarations/prod-map-comap-prod.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [subsemigroupComap](declarations/subsemigroupcomap.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [subsemigroupMap](declarations/subsemigroupmap-source-edition-2.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [subsemigroupMap_surjective](declarations/subsemigroupmap-surjective.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [srange_fst](declarations/srange-fst.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [srange_snd](declarations/srange-snd.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [prod_eq_top_iff](declarations/prod-eq-top-iff.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [inclusion](declarations/inclusion.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [range_subtype](declarations/range-subtype.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [eq_top_iff'](declarations/eq-top-iff.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [subsemigroupCongr](declarations/subsemigroupcongr.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [ofLeftInverse](declarations/ofleftinverse.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [subsemigroupMap](declarations/subsemigroupmap.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [map_comap_eq](declarations/map-comap-eq.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [map_comap_eq_self](declarations/map-comap-eq-self.md) | 759 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2c48b076f9202d3e03961f7a4cb9f9cd0faf8ffb736f2e53c30cce83976a1891 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant8e2d4ad8078612765b3f9da2f0a55a44d3fedfba4d2b1c8801219fd06cf0bbea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
