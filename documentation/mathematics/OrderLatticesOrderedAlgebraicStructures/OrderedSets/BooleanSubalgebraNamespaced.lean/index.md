# Boolean Subalgebra Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**123 observed declarations and anonymous commands**, 98 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant870a345e93bccbb44c678dbea91fedbd8a85597d5a30a9b0c43bf67b20c64765.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2df4ec8c54ae7e704c08e13291b8e45f4d9ece71`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanSubalgebraNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BooleanSubalgebra](declarations/booleansubalgebra.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instSetLike](declarations/instsetlike.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [coe_inj](declarations/coe-inj.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [supClosed](declarations/supclosed.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [infClosed](declarations/infclosed.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [compl_mem](declarations/compl-mem.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [compl_mem_iff](declarations/compl-mem-iff.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [bot_mem](declarations/bot-mem.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [top_mem](declarations/top-mem.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [sup_mem](declarations/sup-mem.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [inf_mem](declarations/inf-mem.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [sdiff_mem](declarations/sdiff-mem.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [himp_mem](declarations/himp-mem.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [mem_carrier](declarations/mem-carrier.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [mem_toSublattice](declarations/mem-tosublattice.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [mem_mk](declarations/mem-mk.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [coe_mk](declarations/coe-mk.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [mk_le_mk](declarations/mk-le-mk.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [mk_lt_mk](declarations/mk-lt-mk.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [copy](declarations/copy.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [coe_copy](declarations/coe-copy.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [copy_eq](declarations/copy-eq.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [ext](declarations/ext.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [instBotCoe](declarations/instbotcoe.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [instTopCoe](declarations/insttopcoe.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [instSupCoe](declarations/instsupcoe.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [instInfCoe](declarations/instinfcoe.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [instHasComplCoe](declarations/insthascomplcoe.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [instSDiffCoe](declarations/instsdiffcoe.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [instHImpCoe](declarations/insthimpcoe.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [val_bot](declarations/val-bot.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [val_top](declarations/val-top.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [val_sup](declarations/val-sup.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [val_inf](declarations/val-inf.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [val_compl](declarations/val-compl.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [val_sdiff](declarations/val-sdiff.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [val_himp](declarations/val-himp.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [mk_bot](declarations/mk-bot.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [mk_top](declarations/mk-top.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [mk_sup_mk](declarations/mk-sup-mk.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [mk_inf_mk](declarations/mk-inf-mk.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [compl_mk](declarations/compl-mk.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [mk_sdiff_mk](declarations/mk-sdiff-mk.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [mk_himp_mk](declarations/mk-himp-mk.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [instBooleanAlgebraCoe](declarations/instbooleanalgebracoe.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [subtype](declarations/subtype.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [coe_subtype](declarations/coe-subtype.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [subtype_apply](declarations/subtype-apply.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [subtype_injective](declarations/subtype-injective.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [inclusion](declarations/inclusion.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [coe_inclusion](declarations/coe-inclusion.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [inclusion_apply](declarations/inclusion-apply.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [inclusion_injective](declarations/inclusion-injective.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [inclusion_rfl](declarations/inclusion-rfl.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [subtype_comp_inclusion](declarations/subtype-comp-inclusion.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [instTop](declarations/insttop.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [instBot](declarations/instbot.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [instInf](declarations/instinf.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [instInfSet](declarations/instinfset.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [instInhabited](declarations/instinhabited.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [topEquiv](declarations/topequiv.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [coe_top](declarations/coe-top.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [coe_bot](declarations/coe-bot.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [coe_inf](declarations/coe-inf.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [coe_sInf](declarations/coe-sinf.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [coe_iInf](declarations/coe-iinf.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [coe_eq_univ](declarations/coe-eq-univ.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [mem_bot](declarations/mem-bot.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [mem_top](declarations/mem-top.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [mem_inf](declarations/mem-inf.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [mem_sInf](declarations/mem-sinf.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [mem_iInf](declarations/mem-iinf.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [instCompleteLattice](declarations/instcompletelattice.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [(anonymous)](declarations/instance.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [comap](declarations/comap.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [coe_comap](declarations/coe-comap.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [mem_comap](declarations/mem-comap.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [comap_mono](declarations/comap-mono.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [comap_id](declarations/comap-id.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `lemma` | [comap_comap](declarations/comap-comap.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [map](declarations/map.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `lemma` | [coe_map](declarations/coe-map.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `lemma` | [mem_map](declarations/mem-map.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `lemma` | [mem_map_of_mem](declarations/mem-map-of-mem.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [apply_coe_mem_map](declarations/apply-coe-mem-map.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [map_mono](declarations/map-mono.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [map_id](declarations/map-id.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [map_map](declarations/map-map.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `lemma` | [mem_map_equiv](declarations/mem-map-equiv.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `lemma` | [apply_mem_map_iff](declarations/apply-mem-map-iff.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `lemma` | [map_equiv_eq_comap_symm](declarations/map-equiv-eq-comap-symm.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `lemma` | [comap_equiv_eq_map_symm](declarations/comap-equiv-eq-map-symm.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [map_symm_eq_iff_eq_map](declarations/map-symm-eq-iff-eq-map.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [map_le_iff_le_comap](declarations/map-le-iff-le-comap.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `lemma` | [gc_map_comap](declarations/gc-map-comap.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `lemma` | [map_bot](declarations/map-bot.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `lemma` | [map_sup](declarations/map-sup.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [map_iSup](declarations/map-isup.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `lemma` | [comap_top](declarations/comap-top.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `lemma` | [comap_inf](declarations/comap-inf.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `lemma` | [comap_iInf](declarations/comap-iinf.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `lemma` | [map_inf_le](declarations/map-inf-le.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `lemma` | [le_comap_sup](declarations/le-comap-sup.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `lemma` | [le_comap_iSup](declarations/le-comap-isup.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `lemma` | [map_inf](declarations/map-inf.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `lemma` | [map_top](declarations/map-top.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [closure](declarations/closure.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `lemma` | [mem_closure](declarations/mem-closure.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `lemma` | [subset_closure](declarations/subset-closure.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `lemma` | [closure_le](declarations/closure-le.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `lemma` | [closure_mono](declarations/closure-mono.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `lemma` | [latticeClosure_subset_closure](declarations/latticeclosure-subset-closure.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `lemma` | [closure_latticeClosure](declarations/closure-latticeclosure.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `lemma` | [closure_bot_sup_induction](declarations/closure-bot-sup-induction.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [mem_closure_iff_sup_sdiff](declarations/mem-closure-iff-sup-sdiff.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [closure_sdiff_sup_induction](declarations/closure-sdiff-sup-induction.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `lemma` | [iSup_mem](declarations/isup-mem.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `lemma` | [iInf_mem](declarations/iinf-mem.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `lemma` | [sSup_mem](declarations/ssup-mem.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `lemma` | [sInf_mem](declarations/sinf-mem.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `lemma` | [biSup_mem](declarations/bisup-mem.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `lemma` | [biInf_mem](declarations/biinf-mem.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=63eee30ad12b462c8cdd4cc0cc53572d8acdd6311f409539aed73438e0b8804e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant870a345e93bccbb44c678dbea91fedbd8a85597d5a30a9b0c43bf67b20c64765.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
