# Ideal Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**82 observed declarations and anonymous commands**, 62 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Ideal/Variant2ad45e82e565b32f61141a40100697c03e80d507249c58c249d1c130eb261fda.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66f233a06d3bee55297e90179f85e1272bd0a990`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LieIdeal](declarations/lieideal.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [lie_mem_right](declarations/lie-mem-right.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [lie_mem_left](declarations/lie-mem-left.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [LieIdeal.toLieSubalgebra](declarations/lieideal-toliesubalgebra.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [LieIdeal.mem_toLieSubalgebra](declarations/lieideal-mem-toliesubalgebra.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [LieIdeal.coe_toLieSubalgebra](declarations/lieideal-coe-toliesubalgebra.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [LieIdeal.toLieSubalgebra_toSubmodule](declarations/lieideal-toliesubalgebra-tosubmodule.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [LieIdeal.bracket](declarations/lieideal-bracket.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [LieIdeal.lieRing](declarations/lieideal-liering.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [LieIdeal.lieAlgebra](declarations/lieideal-liealgebra.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [LieIdeal.lieRingModule](declarations/lieideal-lieringmodule.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [LieIdeal.coe_bracket_of_module](declarations/lieideal-coe-bracket-of-module.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [LieIdeal.lieModule](declarations/lieideal-liemodule.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [exists_lieIdeal_coe_eq_iff](declarations/exists-lieideal-coe-eq-iff.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [exists_nested_lieIdeal_coe_eq_iff](declarations/exists-nested-lieideal-coe-eq-iff.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [top_toLieSubalgebra](declarations/top-toliesubalgebra.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [map](declarations/map.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [comap](declarations/comap.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [map_toSubmodule](declarations/map-tosubmodule.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [comap_toSubmodule](declarations/comap-tosubmodule.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [map_le](declarations/map-le.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_map](declarations/mem-map.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_comap](declarations/mem-comap.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [map_le_iff_le_comap](declarations/map-le-iff-le-comap.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [gc_map_comap](declarations/gc-map-comap.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [map_sup](declarations/map-sup.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [map_comap_le](declarations/map-comap-le.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [comap_map_le](declarations/comap-map-le.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [map_mono](declarations/map-mono.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [comap_mono](declarations/comap-mono.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [map_of_image](declarations/map-of-image.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [subsingleton_of_bot](declarations/subsingleton-of-bot.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [ker](declarations/ker.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [idealRange](declarations/idealrange.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [idealRange_eq_lieSpan_range](declarations/idealrange-eq-liespan-range.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [idealRange_eq_map](declarations/idealrange-eq-map.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [IsIdealMorphism](declarations/isidealmorphism.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [isIdealMorphism_def](declarations/isidealmorphism-def.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [IsIdealMorphism.eq](declarations/isidealmorphism-eq.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [isIdealMorphism_iff](declarations/isidealmorphism-iff.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [range_subset_idealRange](declarations/range-subset-idealrange.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [map_le_idealRange](declarations/map-le-idealrange.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [ker_le_comap](declarations/ker-le-comap.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [ker_toSubmodule](declarations/ker-tosubmodule.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [mem_ker](declarations/mem-ker.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [mem_idealRange](declarations/mem-idealrange.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mem_idealRange_iff](declarations/mem-idealrange-iff.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [le_ker_iff](declarations/le-ker-iff.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [ker_eq_bot](declarations/ker-eq-bot.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [range_toSubmodule](declarations/range-tosubmodule.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [range_eq_top](declarations/range-eq-top.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [idealRange_eq_top_of_surjective](declarations/idealrange-eq-top-of-surjective.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [isIdealMorphism_of_surjective](declarations/isidealmorphism-of-surjective.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [map_eq_bot_iff](declarations/map-eq-bot-iff.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [coe_map_of_surjective](declarations/coe-map-of-surjective.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [mem_map_of_surjective](declarations/mem-map-of-surjective.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [bot_of_map_eq_bot](declarations/bot-of-map-eq-bot.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [inclusion](declarations/inclusion.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coe_inclusion](declarations/coe-inclusion.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [inclusion_apply](declarations/inclusion-apply.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [inclusion_injective](declarations/inclusion-injective.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [map_sup_ker_eq_map](declarations/map-sup-ker-eq-map.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [map_sup_ker_eq_map'](declarations/map-sup-ker-eq-map-source-edition-2.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [map_comap_eq](declarations/map-comap-eq.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [comap_map_eq](declarations/comap-map-eq.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [incl](declarations/incl.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [incl_range](declarations/incl-range.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [incl_apply](declarations/incl-apply.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [incl_coe](declarations/incl-coe.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [incl_injective](declarations/incl-injective.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [comap_incl_self](declarations/comap-incl-self.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [ker_incl](declarations/ker-incl.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [incl_idealRange](declarations/incl-idealrange.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [incl_isIdealMorphism](declarations/incl-isidealmorphism.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [comap_incl_eq_top](declarations/comap-incl-eq-top.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [comap_incl_eq_bot](declarations/comap-incl-eq-bot.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [LieIdeal.topEquiv](declarations/lieideal-topequiv.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [LieIdeal.topEquiv_apply](declarations/lieideal-topequiv-apply.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=669e099a38bd91be41ca7939ff47e1a8a5f0d9a4234460e7106e53277c7aa605 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Ideal/Variant2ad45e82e565b32f61141a40100697c03e80d507249c58c249d1c130eb261fda.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
