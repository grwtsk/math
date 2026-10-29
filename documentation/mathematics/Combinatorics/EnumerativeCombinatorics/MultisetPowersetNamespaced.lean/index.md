# Multiset Powerset Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 41 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ff0f8942de785862a19912944f97094477c822e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/EnumerativeCombinatorics/MultisetPowersetNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [powersetAux](declarations/powersetaux.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [powersetAux_eq_map_coe](declarations/powersetaux-eq-map-coe.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_powersetAux](declarations/mem-powersetaux.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [powersetAux'](declarations/powersetaux-source-edition-2.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [powersetAux_perm_powersetAux'](declarations/powersetaux-perm-powersetaux.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [powersetAux'_nil](declarations/powersetaux-nil.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [powersetAux'_cons](declarations/powersetaux-cons.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [powerset_aux'_perm](declarations/powerset-aux-perm.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [powersetAux_perm](declarations/powersetaux-perm.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [powerset](declarations/powerset.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [powerset_coe](declarations/powerset-coe.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [powerset_coe'](declarations/powerset-coe-source-edition-2.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [powerset_zero](declarations/powerset-zero.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [powerset_cons](declarations/powerset-cons.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_powerset](declarations/mem-powerset.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [map_single_le_powerset](declarations/map-single-le-powerset.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [card_powerset](declarations/card-powerset.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [revzip_powersetAux](declarations/revzip-powersetaux-source-edition-2.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [revzip_powersetAux'](declarations/revzip-powersetaux.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [revzip_powersetAux_lemma](declarations/revzip-powersetaux-lemma.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [revzip_powersetAux_perm_aux'](declarations/revzip-powersetaux-perm-aux.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [revzip_powersetAux_perm](declarations/revzip-powersetaux-perm.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [powersetLenAux](declarations/powersetlenaux.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [powersetLenAux_eq_map_coe](declarations/powersetlenaux-eq-map-coe.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mem_powersetLenAux](declarations/mem-powersetlenaux.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [powersetLenAux_zero](declarations/powersetlenaux-zero.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [powersetLenAux_nil](declarations/powersetlenaux-nil.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [powersetLenAux_cons](declarations/powersetlenaux-cons.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [powersetLenAux_perm](declarations/powersetlenaux-perm.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [powersetLen](declarations/powersetlen.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [powersetLen_coe'](declarations/powersetlen-coe-source-edition-2.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [powersetLen_coe](declarations/powersetlen-coe.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [powersetLen_zero_left](declarations/powersetlen-zero-left.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [powersetLen_zero_right](declarations/powersetlen-zero-right.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [powersetLen_cons](declarations/powersetlen-cons.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mem_powersetLen](declarations/mem-powersetlen.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [card_powersetLen](declarations/card-powersetlen.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [powersetLen_le_powerset](declarations/powersetlen-le-powerset.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [powersetLen_mono](declarations/powersetlen-mono.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [powersetLen_empty](declarations/powersetlen-empty.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [powersetLen_card_add](declarations/powersetlen-card-add.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [powersetLen_map](declarations/powersetlen-map.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [pairwise_disjoint_powersetLen](declarations/pairwise-disjoint-powersetlen.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [bind_powerset_len](declarations/bind-powerset-len.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [nodup_powerset](declarations/nodup-powerset.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Nodup.powersetLen](declarations/nodup-powersetlen.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=92036e81cf2a6cad52c91d35618827f828a0cbf9fdd4ca096a40b468dd5294b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
