# Multiset Powerset

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 41 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `279239380f9cb92aa9bdad1860905138576aca05`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/EnumerativeCombinatorics/MultisetPowerset.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [powersetAux](declarations/powersetaux.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [powersetAux_eq_map_coe](declarations/powersetaux-eq-map-coe.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_powersetAux](declarations/mem-powersetaux.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [powersetAux'](declarations/powersetaux-source-edition-2.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [powersetAux_perm_powersetAux'](declarations/powersetaux-perm-powersetaux.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [powersetAux'_nil](declarations/powersetaux-nil.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [powersetAux'_cons](declarations/powersetaux-cons.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [powerset_aux'_perm](declarations/powerset-aux-perm.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [powersetAux_perm](declarations/powersetaux-perm.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [powerset](declarations/powerset.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [powerset_coe](declarations/powerset-coe-source-edition-2.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [powerset_coe'](declarations/powerset-coe.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [powerset_zero](declarations/powerset-zero.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [powerset_cons](declarations/powerset-cons.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_powerset](declarations/mem-powerset.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [map_single_le_powerset](declarations/map-single-le-powerset.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [card_powerset](declarations/card-powerset.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [revzip_powersetAux](declarations/revzip-powersetaux.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [revzip_powersetAux'](declarations/revzip-powersetaux-source-edition-2.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [revzip_powersetAux_lemma](declarations/revzip-powersetaux-lemma.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [revzip_powersetAux_perm_aux'](declarations/revzip-powersetaux-perm-aux.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [revzip_powersetAux_perm](declarations/revzip-powersetaux-perm.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [powersetLenAux](declarations/powersetlenaux.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [powersetLenAux_eq_map_coe](declarations/powersetlenaux-eq-map-coe.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mem_powersetLenAux](declarations/mem-powersetlenaux.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [powersetLenAux_zero](declarations/powersetlenaux-zero.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [powersetLenAux_nil](declarations/powersetlenaux-nil.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [powersetLenAux_cons](declarations/powersetlenaux-cons.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [powersetLenAux_perm](declarations/powersetlenaux-perm.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [powersetLen](declarations/powersetlen.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [powersetLen_coe'](declarations/powersetlen-coe.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [powersetLen_coe](declarations/powersetlen-coe-source-edition-2.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [powersetLen_zero_left](declarations/powersetlen-zero-left.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [powersetLen_zero_right](declarations/powersetlen-zero-right.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [powersetLen_cons](declarations/powersetlen-cons.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mem_powersetLen](declarations/mem-powersetlen.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [card_powersetLen](declarations/card-powersetlen.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [powersetLen_le_powerset](declarations/powersetlen-le-powerset.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [powersetLen_mono](declarations/powersetlen-mono.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [powersetLen_empty](declarations/powersetlen-empty.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [powersetLen_card_add](declarations/powersetlen-card-add.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [powersetLen_map](declarations/powersetlen-map.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [pairwise_disjoint_powersetLen](declarations/pairwise-disjoint-powersetlen.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [bind_powerset_len](declarations/bind-powerset-len.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [nodup_powerset](declarations/nodup-powerset.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Nodup.powersetLen](declarations/nodup-powersetlen.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=654da871eb79bcf57159c0f27079712ac2e72f1f4718b7bc544d12ebb33a3a10 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
