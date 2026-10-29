# Multiset Powerset Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 52 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2441649b62c55a5be063524ad7c0c8e78eac25a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/EnumerativeCombinatorics/MultisetPowersetPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [powersetAux](declarations/powersetaux.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [powersetAux_eq_map_coe](declarations/powersetaux-eq-map-coe.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_powersetAux](declarations/mem-powersetaux.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [powersetAux'](declarations/powersetaux-source-edition-2.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [powersetAux_perm_powersetAux'](declarations/powersetaux-perm-powersetaux.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [powersetAux'_nil](declarations/powersetaux-nil.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [powersetAux'_cons](declarations/powersetaux-cons.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [powerset_aux'_perm](declarations/powerset-aux-perm.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [powersetAux_perm](declarations/powersetaux-perm.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [powerset](declarations/powerset.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [powerset_coe](declarations/powerset-coe-source-edition-2.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [powerset_coe'](declarations/powerset-coe.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [powerset_zero](declarations/powerset-zero.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [powerset_cons](declarations/powerset-cons.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_powerset](declarations/mem-powerset.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [map_single_le_powerset](declarations/map-single-le-powerset.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [zero_mem_powerset](declarations/zero-mem-powerset.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [self_mem_powerset](declarations/self-mem-powerset.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [card_powerset](declarations/card-powerset.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [powerset_eq_singleton_zero_iff](declarations/powerset-eq-singleton-zero-iff.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [revzip_powersetAux](declarations/revzip-powersetaux-source-edition-2.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [revzip_powersetAux'](declarations/revzip-powersetaux.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [revzip_powersetAux_lemma](declarations/revzip-powersetaux-lemma.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [revzip_powersetAux_perm_aux'](declarations/revzip-powersetaux-perm-aux.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [revzip_powersetAux_perm](declarations/revzip-powersetaux-perm.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [powerset_le_powerset_iff_le](declarations/powerset-le-powerset-iff-le.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [powerset_injective](declarations/powerset-injective.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [powerset_strictMono](declarations/powerset-strictmono.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [powerset_mono](declarations/powerset-mono.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [powersetCardAux](declarations/powersetcardaux.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [powersetCardAux_eq_map_coe](declarations/powersetcardaux-eq-map-coe.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mem_powersetCardAux](declarations/mem-powersetcardaux.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [powersetCardAux_zero](declarations/powersetcardaux-zero.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [powersetCardAux_nil](declarations/powersetcardaux-nil.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [powersetCardAux_cons](declarations/powersetcardaux-cons.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [powersetCardAux_perm](declarations/powersetcardaux-perm.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [powersetCard](declarations/powersetcard.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [powersetCard_coe'](declarations/powersetcard-coe.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [powersetCard_coe](declarations/powersetcard-coe-source-edition-2.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [powersetCard_zero_left](declarations/powersetcard-zero-left.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [powersetCard_zero_right](declarations/powersetcard-zero-right.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [powersetCard_cons](declarations/powersetcard-cons.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [powersetCard_one](declarations/powersetcard-one.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [mem_powersetCard](declarations/mem-powersetcard.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [card_powersetCard](declarations/card-powersetcard.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [powersetCard_le_powerset](declarations/powersetcard-le-powerset.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [powersetCard_mono](declarations/powersetcard-mono.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [powersetCard_eq_empty](declarations/powersetcard-eq-empty.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [powersetCard_card_add](declarations/powersetcard-card-add.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [powersetCard_self](declarations/powersetcard-self.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [powersetCard_map](declarations/powersetcard-map.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [_root_.Disjoint.powersetCard_powersetCard_multiset](declarations/root-disjoint-powersetcard-powersetcard-multiset.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [disjoint_powersetCard_of_ne](declarations/disjoint-powersetcard-of-ne.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [pairwise_disjoint_powersetCard](declarations/pairwise-disjoint-powersetcard.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [bind_powerset_len](declarations/bind-powerset-len.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [nodup_powerset](declarations/nodup-powerset.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [Nodup.powersetCard](declarations/nodup-powersetcard.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f49a875a8fcd47f899fe77603d6632a8a9cf06c49e5177dc6a183ada202f6bb0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant93405508fd0081e97624ea4bb33860b05ee19baa0718d7e509f6234744dce3b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
