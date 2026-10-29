# Powerset Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 42 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `516b8bdb7bbe0d89b38888b1ed89f602d0a36809`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/EnumerativeCombinatorics/PowersetNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [powersetAux](declarations/powersetaux-source-edition-2.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [powersetAux_eq_map_coe](declarations/powersetaux-eq-map-coe.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_powersetAux](declarations/mem-powersetaux.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [powersetAux'](declarations/powersetaux.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [powersetAux_perm_powersetAux'](declarations/powersetaux-perm-powersetaux.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [powersetAux'_nil](declarations/powersetaux-nil.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [powersetAux'_cons](declarations/powersetaux-cons.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [powerset_aux'_perm](declarations/powerset-aux-perm.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [powersetAux_perm](declarations/powersetaux-perm.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [powerset](declarations/powerset.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [powerset_coe](declarations/powerset-coe.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [powerset_coe'](declarations/powerset-coe-source-edition-2.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [powerset_zero](declarations/powerset-zero.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [powerset_cons](declarations/powerset-cons.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_powerset](declarations/mem-powerset.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [map_single_le_powerset](declarations/map-single-le-powerset.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [card_powerset](declarations/card-powerset.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [revzip_powersetAux](declarations/revzip-powersetaux.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [revzip_powersetAux'](declarations/revzip-powersetaux-source-edition-2.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [revzip_powersetAux_lemma](declarations/revzip-powersetaux-lemma.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [revzip_powersetAux_perm_aux'](declarations/revzip-powersetaux-perm-aux.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [revzip_powersetAux_perm](declarations/revzip-powersetaux-perm.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [powersetCardAux](declarations/powersetcardaux.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [powersetCardAux_eq_map_coe](declarations/powersetcardaux-eq-map-coe.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mem_powersetCardAux](declarations/mem-powersetcardaux.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [powersetCardAux_zero](declarations/powersetcardaux-zero.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [powersetCardAux_nil](declarations/powersetcardaux-nil.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [powersetCardAux_cons](declarations/powersetcardaux-cons.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [powersetCardAux_perm](declarations/powersetcardaux-perm.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [powersetCard](declarations/powersetcard.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [powersetCard_coe'](declarations/powersetcard-coe-source-edition-2.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [powersetCard_coe](declarations/powersetcard-coe.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [powersetCard_zero_left](declarations/powersetcard-zero-left.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [powersetCard_zero_right](declarations/powersetcard-zero-right.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [powersetCard_cons](declarations/powersetcard-cons.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [powersetCard_one](declarations/powersetcard-one.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mem_powersetCard](declarations/mem-powersetcard.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [card_powersetCard](declarations/card-powersetcard.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [powersetCard_le_powerset](declarations/powersetcard-le-powerset.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [powersetCard_mono](declarations/powersetcard-mono.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [powersetCard_eq_empty](declarations/powersetcard-eq-empty.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [powersetCard_card_add](declarations/powersetcard-card-add.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [powersetCard_map](declarations/powersetcard-map.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [pairwise_disjoint_powersetCard](declarations/pairwise-disjoint-powersetcard.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [bind_powerset_len](declarations/bind-powerset-len.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [nodup_powerset](declarations/nodup-powerset.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Nodup.powersetCard](declarations/nodup-powersetcard.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56318b82052996e4c7f68fdfda8d53cf26953a52d4d43f12343fe39797a02986 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant510a94fc99d3961f479dd16dae08c282fe91f8354c8b612e858cf11e269687ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
