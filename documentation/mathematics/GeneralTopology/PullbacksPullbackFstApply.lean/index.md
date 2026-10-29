# Pullbacks Pullback Fst Apply

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6046e580c381b8b72dfed57006c09fb974a994b1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/PullbacksPullbackFstApply.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [pullbackFst](declarations/pullbackfst.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [pullbackFst_apply](declarations/pullbackfst-apply.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [pullbackSnd](declarations/pullbacksnd.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [pullbackSnd_apply](declarations/pullbacksnd-apply.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [pullbackCone](declarations/pullbackcone.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [pullbackConeIsLimit](declarations/pullbackconeislimit.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [pullbackIsoProdSubtype](declarations/pullbackisoprodsubtype.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [pullbackIsoProdSubtype_inv_fst](declarations/pullbackisoprodsubtype-inv-fst.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [pullbackIsoProdSubtype_inv_fst_apply](declarations/pullbackisoprodsubtype-inv-fst-apply.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [pullbackIsoProdSubtype_inv_snd](declarations/pullbackisoprodsubtype-inv-snd.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [pullbackIsoProdSubtype_inv_snd_apply](declarations/pullbackisoprodsubtype-inv-snd-apply.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [pullbackIsoProdSubtype_hom_fst](declarations/pullbackisoprodsubtype-hom-fst.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [pullbackIsoProdSubtype_hom_snd](declarations/pullbackisoprodsubtype-hom-snd.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [pullbackIsoProdSubtype_hom_apply](declarations/pullbackisoprodsubtype-hom-apply.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [pullback_topology](declarations/pullback-topology.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [range_pullback_to_prod](declarations/range-pullback-to-prod.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [pullbackHomeoPreimage](declarations/pullbackhomeopreimage.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isInducing_pullback_to_prod](declarations/isinducing-pullback-to-prod.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isEmbedding_pullback_to_prod](declarations/isembedding-pullback-to-prod.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [range_pullback_map](declarations/range-pullback-map.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [pullback_fst_range](declarations/pullback-fst-range.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [pullback_snd_range](declarations/pullback-snd-range.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [pullback_map_isEmbedding](declarations/pullback-map-isembedding.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [pullback_map_isOpenEmbedding](declarations/pullback-map-isopenembedding.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [snd_isEmbedding_of_left](declarations/snd-isembedding-of-left.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [fst_isEmbedding_of_right](declarations/fst-isembedding-of-right.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isEmbedding_of_pullback](declarations/isembedding-of-pullback.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [snd_isOpenEmbedding_of_left](declarations/snd-isopenembedding-of-left.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [fst_isOpenEmbedding_of_right](declarations/fst-isopenembedding-of-right.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isOpenEmbedding_of_pullback](declarations/isopenembedding-of-pullback.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [fst_iso_of_right_embedding_range_subset](declarations/fst-iso-of-right-embedding-range-subset.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [snd_iso_of_left_embedding_range_subset](declarations/snd-iso-of-left-embedding-range-subset.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [pullback_snd_image_fst_preimage](declarations/pullback-snd-image-fst-preimage.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [pullback_fst_image_snd_preimage](declarations/pullback-fst-image-snd-preimage.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [isOpen_iff_of_isColimit_cofork](declarations/isopen-iff-of-iscolimit-cofork.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [isQuotientMap_of_isColimit_cofork](declarations/isquotientmap-of-iscolimit-cofork.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [coequalizer_isOpen_iff](declarations/coequalizer-isopen-iff.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=030b0b823314c22b31824716551a60b8ed65d6be26603c46c11dd503c37dbf96 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
