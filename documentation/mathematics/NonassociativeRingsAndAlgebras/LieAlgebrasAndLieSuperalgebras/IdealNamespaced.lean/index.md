# Ideal Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**77 observed declarations and anonymous commands**, 59 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Ideal/Variant623db89dabedf2f9715277c4310f721b312710dfe33d61f8cb9ef9fd0e61e521.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a81eb1da715dc2870d83cb7dd514f54dd18623d7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LieIdeal](declarations/lieideal.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [lie_mem_right](declarations/lie-mem-right.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [lie_mem_left](declarations/lie-mem-left.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [LieIdeal.toLieSubalgebra](declarations/lieideal-toliesubalgebra.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [LieIdeal.coe_toLieSubalgebra](declarations/lieideal-coe-toliesubalgebra.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [LieIdeal.toLieSubalgebra_toSubmodule](declarations/lieideal-toliesubalgebra-tosubmodule.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [LieIdeal.lieRing](declarations/lieideal-liering.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [LieIdeal.lieAlgebra](declarations/lieideal-liealgebra.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [LieIdeal.lieRingModule](declarations/lieideal-lieringmodule.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [LieIdeal.coe_bracket_of_module](declarations/lieideal-coe-bracket-of-module.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [LieIdeal.lieModule](declarations/lieideal-liemodule.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [exists_lieIdeal_coe_eq_iff](declarations/exists-lieideal-coe-eq-iff.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [exists_nested_lieIdeal_coe_eq_iff](declarations/exists-nested-lieideal-coe-eq-iff.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [top_toLieSubalgebra](declarations/top-toliesubalgebra.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [map](declarations/map.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [comap](declarations/comap.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [map_toSubmodule](declarations/map-tosubmodule.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [comap_toSubmodule](declarations/comap-tosubmodule.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [map_le](declarations/map-le.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mem_map](declarations/mem-map.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mem_comap](declarations/mem-comap.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [map_le_iff_le_comap](declarations/map-le-iff-le-comap.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [gc_map_comap](declarations/gc-map-comap.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [map_sup](declarations/map-sup.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [map_comap_le](declarations/map-comap-le.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [comap_map_le](declarations/comap-map-le.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [map_mono](declarations/map-mono.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [comap_mono](declarations/comap-mono.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [map_of_image](declarations/map-of-image.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [subsingleton_of_bot](declarations/subsingleton-of-bot.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [ker](declarations/ker.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [idealRange](declarations/idealrange.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [idealRange_eq_lieSpan_range](declarations/idealrange-eq-liespan-range.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [idealRange_eq_map](declarations/idealrange-eq-map.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [IsIdealMorphism](declarations/isidealmorphism.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [isIdealMorphism_def](declarations/isidealmorphism-def.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [IsIdealMorphism.eq](declarations/isidealmorphism-eq.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [isIdealMorphism_iff](declarations/isidealmorphism-iff.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [range_subset_idealRange](declarations/range-subset-idealrange.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [map_le_idealRange](declarations/map-le-idealrange.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [ker_le_comap](declarations/ker-le-comap.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [ker_toSubmodule](declarations/ker-tosubmodule.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [mem_ker](declarations/mem-ker.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [mem_idealRange](declarations/mem-idealrange.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [mem_idealRange_iff](declarations/mem-idealrange-iff.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [le_ker_iff](declarations/le-ker-iff.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [ker_eq_bot](declarations/ker-eq-bot.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [range_toSubmodule](declarations/range-tosubmodule.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [range_eq_top](declarations/range-eq-top.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [idealRange_eq_top_of_surjective](declarations/idealrange-eq-top-of-surjective.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [isIdealMorphism_of_surjective](declarations/isidealmorphism-of-surjective.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [map_eq_bot_iff](declarations/map-eq-bot-iff.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [coe_map_of_surjective](declarations/coe-map-of-surjective.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [mem_map_of_surjective](declarations/mem-map-of-surjective.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [bot_of_map_eq_bot](declarations/bot-of-map-eq-bot.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [inclusion](declarations/inclusion.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [coe_inclusion](declarations/coe-inclusion.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [inclusion_apply](declarations/inclusion-apply.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [inclusion_injective](declarations/inclusion-injective.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [map_sup_ker_eq_map](declarations/map-sup-ker-eq-map.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [map_sup_ker_eq_map'](declarations/map-sup-ker-eq-map-source-edition-2.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [map_comap_eq](declarations/map-comap-eq.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [comap_map_eq](declarations/comap-map-eq.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [incl](declarations/incl.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [incl_range](declarations/incl-range.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [incl_apply](declarations/incl-apply.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [incl_coe](declarations/incl-coe.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [incl_injective](declarations/incl-injective.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [comap_incl_self](declarations/comap-incl-self.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [ker_incl](declarations/ker-incl.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [incl_idealRange](declarations/incl-idealrange.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [incl_isIdealMorphism](declarations/incl-isidealmorphism.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [LieIdeal.topEquiv](declarations/lieideal-topequiv.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [LieIdeal.topEquiv_apply](declarations/lieideal-topequiv-apply.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b26329b47128dc5e310d8b65c4151864f32ce382e11698ab31777685610f8db8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Ideal/Variant623db89dabedf2f9715277c4310f721b312710dfe33d61f8cb9ef9fd0e61e521.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
