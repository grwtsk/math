# Data Finset Powerset Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**59 observed declarations and anonymous commands**, 48 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variantf75bda32442ed32ed7c65b2f56728167860c9d817a853701c1cd86e51b1d9881.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `869a634995b330a3527eae71a98e82ded7eccc59`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [powerset](declarations/powerset.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_powerset](declarations/mem-powerset.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [coe_powerset](declarations/coe-powerset.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [empty_mem_powerset](declarations/empty-mem-powerset.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mem_powerset_self](declarations/mem-powerset-self.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [powerset_nonempty](declarations/powerset-nonempty.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [powerset_mono](declarations/powerset-mono.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [powerset_injective](declarations/powerset-injective.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [powerset_inj](declarations/powerset-inj.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [powerset_empty](declarations/powerset-empty.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [powerset_eq_singleton_empty](declarations/powerset-eq-singleton-empty.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [image_injOn_powerset_of_injOn](declarations/image-injon-powerset-of-injon.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [injOn_image_of_biUnion_injOn](declarations/injon-image-of-biunion-injon.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [biUnion_id_subset_iff_subset_powerset](declarations/biunion-id-subset-iff-subset-powerset.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [image_surjOn_powerset](declarations/image-surjon-powerset.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [powerset_image](declarations/powerset-image.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [card_powerset](declarations/card-powerset.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [notMem_of_mem_powerset_of_notMem](declarations/notmem-of-mem-powerset-of-notmem.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [powerset_insert](declarations/powerset-insert.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [pairwiseDisjoint_pair_insert](declarations/pairwisedisjoint-pair-insert.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [decidableExistsOfDecidableSubsets](declarations/decidableexistsofdecidablesubsets-source-edition-2.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [decidableForallOfDecidableSubsets](declarations/decidableforallofdecidablesubsets-source-edition-2.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [decidableExistsOfDecidableSubsets'](declarations/decidableexistsofdecidablesubsets.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [decidableForallOfDecidableSubsets'](declarations/decidableforallofdecidablesubsets.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [ssubsets](declarations/ssubsets.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_ssubsets](declarations/mem-ssubsets.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [empty_mem_ssubsets](declarations/empty-mem-ssubsets.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [decidableExistsOfDecidableSSubsets](declarations/decidableexistsofdecidablessubsets.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [decidableForallOfDecidableSSubsets](declarations/decidableforallofdecidablessubsets.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [decidableExistsOfDecidableSSubsets'](declarations/decidableexistsofdecidablessubsets-source-edition-2.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [decidableForallOfDecidableSSubsets'](declarations/decidableforallofdecidablessubsets-source-edition-2.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [powersetCard](declarations/powersetcard.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [mem_powersetCard](declarations/mem-powersetcard.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [powersetCard_mono](declarations/powersetcard-mono.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [card_powersetCard](declarations/card-powersetcard.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [filter_powersetCard_subset](declarations/filter-powersetcard-subset.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [card_filter_powersetCard_subset](declarations/card-filter-powersetcard-subset.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [powersetCard_zero](declarations/powersetcard-zero.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [powersetCard_empty_subsingleton](declarations/powersetcard-empty-subsingleton.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [map_val_val_powersetCard](declarations/map-val-val-powersetcard.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [powersetCard_one](declarations/powersetcard-one.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [powersetCard_eq_empty](declarations/powersetcard-eq-empty.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [powersetCard_card_add](declarations/powersetcard-card-add.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [powersetCard_inter](declarations/powersetcard-inter.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [disjoint_powersetCard_powersetCard](declarations/disjoint-powersetcard-powersetcard.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [powersetCard_eq_filter](declarations/powersetcard-eq-filter.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [powersetCard_succ_insert](declarations/powersetcard-succ-insert.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [powersetCard_nonempty](declarations/powersetcard-nonempty.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [powersetCard_self](declarations/powersetcard-self.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [_root_.Disjoint.powersetCard_powersetCard_finset](declarations/root-disjoint-powersetcard-powersetcard-finset.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [disjoint_powersetCard_of_ne](declarations/disjoint-powersetcard-of-ne.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [pairwise_disjoint_powersetCard](declarations/pairwise-disjoint-powersetcard.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [powerset_card_disjiUnion](declarations/powerset-card-disjiunion.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [powerset_card_biUnion](declarations/powerset-card-biunion.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [powersetCard_sup](declarations/powersetcard-sup.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [powersetCard_biUnion](declarations/powersetcard-biunion.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [eq_of_powersetCard_eq](declarations/eq-of-powersetcard-eq.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [powersetCard_injOn](declarations/powersetcard-injon.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [powersetCard_map](declarations/powersetcard-map.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2cbf00620e7a87c57550519fbdd36ebf359305b8b35f7288a786044658834131 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variantf75bda32442ed32ed7c65b2f56728167860c9d817a853701c1cd86e51b1d9881.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
